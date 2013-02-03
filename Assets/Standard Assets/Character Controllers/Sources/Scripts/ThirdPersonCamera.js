

var cameraTransform : Transform;
private var _target : Transform;

// The distance in the x-z plane to the target

var distance = 7.0;

// the height we want the camera to be above the target
var height = 3.0;

var angularSmoothLag = 0.3;
var angularMaxSpeed = 15.0;

var camera_turn_speed_v = 20.0;
var camera_turn_speed_h = 20.0;
var currentAngle_v = 0.0;
var currentAngle_h = 0.0;
var max_rotation_v = 60.0;
var min_rotation_v = -60.0;

var heightSmoothLag = 0.3;

var snapSmoothLag = 0.2;
var snapMaxSpeed = 720.0;

var clampHeadPositionScreenSpace = 0.75;

var lockCameraTimeout = 0.2;

var headOffset = Vector3.zero;
var centerOffset = Vector3.zero;

private var heightVelocity = 0.0;
private var angleVelocity = 0.0;
private var snap = false;
private var controller : ThirdPersonController;
private var targetHeight = 100000.0; 

function Awake ()
{
	if(!cameraTransform && Camera.main)
		cameraTransform = Camera.main.transform;
	if(!cameraTransform) {
		Debug.Log("Please assign a camera to the ThirdPersonCamera script.");
		enabled = false;	
	}
			
		
	_target = transform;
	if (_target)
	{
		controller = _target.GetComponent(ThirdPersonController);
	}
	
	if (controller)
	{
		var characterController : CharacterController = _target.collider;
		centerOffset = characterController.bounds.center - _target.position;
		headOffset = centerOffset;
		headOffset.y = characterController.bounds.max.y - _target.position.y;
	}
	else
		Debug.Log("Please assign a target to the camera that has a ThirdPersonController script attached.");

	
	Cut(_target, centerOffset);
}

function DebugDrawStuff ()
{
	Debug.DrawLine(_target.position, _target.position + headOffset);

}

function AngleDistance (a : float, b : float)
{
	a = Mathf.Repeat(a, 360);
	b = Mathf.Repeat(b, 360);
	
	return Mathf.Abs(b - a);
}

function Apply (dummyTarget : Transform, dummyCenter : Vector3)
{
	/* Early out if we don't have a target */
	if (!controller)
		return;
	
	var targetCenter = _target.position + centerOffset;
	var targetHead = _target.position + headOffset;

	/* Get input from Xbox Controller */
	var h = Input.GetAxisRaw("Horizontal Look");
	var v = Input.GetAxisRaw("Vertical Look");
	if (Mathf.Abs (v) < 0.1)
		v = 0.0;
	if (Mathf.Abs (h) < 0.1)
		h = 0.0;
	
	/* Calculate the new angles */
	currentAngle_h = currentAngle_h + h * camera_turn_speed_h * Time.deltaTime;
	currentAngle_v = currentAngle_v + v * camera_turn_speed_v * Time.deltaTime;

	/* Avoid overflow */
	if (currentAngle_h > 360.0)
		currentAngle_h -= 360.0;
	if (currentAngle_h < 0.0)
		currentAngle_h += 360.0;
		
	/* Cap rotation */
	if (currentAngle_v > max_rotation_v)
		currentAngle_v = max_rotation_v;
	if (currentAngle_v < min_rotation_v)
		currentAngle_v = min_rotation_v;
		
	// Convert the angle into a rotation, by which we then reposition the camera
	var rotation : Quaternion; //Current orientation
	rotation = Quaternion.Euler(currentAngle_v, currentAngle_h, 0);
    cameraTransform.rotation = rotation;
	
	
	/* TODO: Adjust distance if camera is obstructed
	 *       Shoot ray from camera to targetHead to find out */
	// Set position	
	cameraTransform.position = rotation * Vector3(0.0, 0.0, -distance)
                                  + targetHead;
	
	// Always look at the target	
	SetUpRotation(targetCenter, targetHead);
}

function OnGUI ()
{
	/*GUI.TextArea(new Rect(400, 200, 250, 50), "cameraTransform.eulerAngles.y: " + cameraTransform.eulerAngles.y);
	GUI.TextArea(new Rect(400, 300, 250, 50), "cameraTransform.eulerAngles.x: " + cameraTransform.eulerAngles.x);
	GUI.TextArea(new Rect(400, 400, 250, 50), "currentAngle_v: " +  currentAngle_v);
	GUI.TextArea(new Rect(400, 500, 250, 50), "currentAngle_h: " +  currentAngle_h);*/
}

function LateUpdate () {
	Apply (transform, Vector3.zero);
}

function Cut (dummyTarget : Transform, dummyCenter : Vector3)
{
	var oldHeightSmooth = heightSmoothLag;
	var oldSnapMaxSpeed = snapMaxSpeed;
	var oldSnapSmooth = snapSmoothLag;
	
	snapMaxSpeed = 10000;
	snapSmoothLag = 0.001;
	heightSmoothLag = 0.001;
	
	snap = true;
	Apply (transform, Vector3.zero);
	
	heightSmoothLag = oldHeightSmooth;
	snapMaxSpeed = oldSnapMaxSpeed;
	snapSmoothLag = oldSnapSmooth;
}

function SetUpRotation (centerPos : Vector3, headPos : Vector3)
{
	var cameraPos = cameraTransform.position;
	var offsetToCenter = centerPos - cameraPos;
	var offsetToHead = headPos - cameraPos;
	
	// Generate base rotation only around y-axis
	var yRotation = Quaternion.LookRotation(Vector3(offsetToHead.x, offsetToHead.y, offsetToHead.z));

	var relativeOffset = Vector3.forward * distance + Vector3.down * height;
	cameraTransform.rotation = yRotation * Quaternion.LookRotation(relativeOffset);

	// Calculate the projected center position and top position in world space
	var centerRay = cameraTransform.camera.ViewportPointToRay(Vector3(.5, 0.5, 1));
	var topRay = cameraTransform.camera.ViewportPointToRay(Vector3(.5, clampHeadPositionScreenSpace, 1));

	var centerRayPos = centerRay.GetPoint(distance);
	var topRayPos = topRay.GetPoint(distance);
	
	var centerToTopAngle = Vector3.Angle(centerRay.direction, topRay.direction);
	
	var heightToAngle = centerToTopAngle / (centerRayPos.y - topRayPos.y);

	var extraLookAngle = heightToAngle * (centerRayPos.y - centerPos.y);
	if (extraLookAngle < centerToTopAngle)
	{
		extraLookAngle = 0;
	}
	else
	{
		extraLookAngle = extraLookAngle - centerToTopAngle;
		cameraTransform.rotation *= Quaternion.Euler(-extraLookAngle, 0, 0);
	}
}

function GetCenterOffset ()
{
	return centerOffset;
}
