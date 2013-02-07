using UnityEngine;
using System.Collections;

public class ThirdPersonCamera : MonoBehaviour {
	
	Transform cameraTransform;
	private Transform _target;	
		
	public float distance = 7.0f;
	
	// the height we want the camera to be above the target
	public float height = 3.0f;
	
	public float angularSmoothLag = 0.3f;
	public float angularMaxSpeed = 15.0f;
	
	public float camera_turn_speed_v = 40.0f;
	public float camera_turn_speed_h = 200.0f;
	public float currentAngle_v = 0.0f;
	public float currentAngle_h = 0.0f;
	public float max_rotation_v = 60.0f;
	public float min_rotation_v = -60.0f;
	
	public float heightSmoothLag = 0.3f;
	
	public float snapSmoothLag = 0.2f;
	public float snapMaxSpeed = 720.0f;
		
	public float clampHeadPositionScreenSpace = 0.75f;
	
	public float lockCameraTimeout = 0.2f;
	
	public Vector3 headOffset = Vector3.zero;
	public Vector3 centerOffset = Vector3.zero;
	
	private float heightVelocity = 0.0f;
	private float angleVelocity = 0.0f;
	private bool snap = false;
	private ThirdPersonController controller;
	private float targetHeight = 100000.0f; 	
	
	void Awake ()
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
			controller = _target.GetComponent<ThirdPersonController>();
		}
		
		if (controller)
		{
			CharacterController characterController  = (CharacterController)_target.collider;
			centerOffset = characterController.bounds.center - _target.position;
			headOffset = centerOffset;
			headOffset.y = characterController.bounds.max.y - _target.position.y;
		}
		else
			Debug.Log("Please assign a target to the camera that has a ThirdPersonController script attached.");
	
		
		Cut(_target, centerOffset);
	}
	
	void DebugDrawStuff ()
	{
		Debug.DrawLine(_target.position, _target.position + headOffset);
	
	}
	
	float AngleDistance (float a, float b)
	{
		a = Mathf.Repeat(a, 360.0f);
		b = Mathf.Repeat(b, 360.0f);
		
		return Mathf.Abs(b - a);
	}
	
	void Apply (Transform dummyTarget, Vector3 dummyCenter)
	{
		/* Early out if we don't have a target */
		if (!controller)
			return;
		
		float dt = Time.deltaTime;
		
		Vector3 targetCenter = _target.position + centerOffset;
		Vector3 targetHead = _target.position + headOffset;
	
		/* Get input from Xbox Controller */
		float h = Input.GetAxisRaw("Horizontal Look");
		float v = Input.GetAxisRaw("Vertical Look");
		if (Mathf.Abs (v) < 0.1f)
			v = 0.0f;
		if (Mathf.Abs (h) < 0.1f)
			h = 0.0f;
		
		/* Calculate the new angles */
		currentAngle_h += h * camera_turn_speed_h * dt;
		currentAngle_v += v * camera_turn_speed_v * dt;
	
		/* Avoid overflow */
		if (currentAngle_h > 360.0f)
			currentAngle_h -= 360.0f;
		if (currentAngle_h < 0.0f)
			currentAngle_h += 360.0f;
			
		/* Cap rotation */
		if (currentAngle_v > max_rotation_v)
			currentAngle_v = max_rotation_v;
		if (currentAngle_v < min_rotation_v)
			currentAngle_v = min_rotation_v;
			
		// Convert the angle into a rotation, by which we then reposition the camera
		Quaternion rotation; //Current orientation
		rotation = Quaternion.Euler(currentAngle_v, currentAngle_h, 0);
	    cameraTransform.rotation = rotation;
		
		
		/* TODO: Adjust distance if camera is obstructed
		 *       Shoot ray from camera to targetHead to find out */
		// Set position	
		cameraTransform.position = rotation * new Vector3(0.0f, 0.0f, -distance)
	                                  + targetHead;
		
		// Always look at the target	
		//SetUpRotation(targetCenter, targetHead);
	}
	
	void OnGUI ()
	{
		/*GUI.TextArea(new Rect(400, 200, 250, 50), "cameraTransform.eulerAngles.y: " + cameraTransform.eulerAngles.y);
		GUI.TextArea(new Rect(400, 300, 250, 50), "cameraTransform.eulerAngles.x: " + cameraTransform.eulerAngles.x);
		GUI.TextArea(new Rect(400, 400, 250, 50), "currentAngle_v: " +  currentAngle_v);
		GUI.TextArea(new Rect(400, 500, 250, 50), "currentAngle_h: " +  currentAngle_h);*/
	}
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void LateUpdate () {
		Apply (transform, Vector3.zero);
	}
	
	void Cut (Transform dummyTarget , Vector3 dummyCenter)
	{
		float oldHeightSmooth = heightSmoothLag;
		float oldSnapMaxSpeed = snapMaxSpeed;
		float oldSnapSmooth = snapSmoothLag;
		
		snapMaxSpeed = 10000f;
		snapSmoothLag = 0.001f;
		heightSmoothLag = 0.001f;
		
		snap = true;
		Apply (transform, Vector3.zero);
		
		heightSmoothLag = oldHeightSmooth;
		snapMaxSpeed = oldSnapMaxSpeed;
		snapSmoothLag = oldSnapSmooth;
	}
	
	void SetUpRotation (Vector3 centerPos, Vector3 headPos)
	{
		Vector3 cameraPos = cameraTransform.position;
		Vector3 offsetToCenter = centerPos - cameraPos;
		Vector3 offsetToHead = headPos - cameraPos;
		
		// Generate base rotation only around y-axis
		Quaternion yRotation = Quaternion.LookRotation(new Vector3(offsetToHead.x, offsetToHead.y, offsetToHead.z));
	
		Vector3 relativeOffset = Vector3.forward * distance + Vector3.down * height;
		cameraTransform.rotation = yRotation * Quaternion.LookRotation(relativeOffset);
	
		// Calculate the projected center position and top position in world space
		Ray centerRay = cameraTransform.camera.ViewportPointToRay(new Vector3(0.5f, 0.5f, 1.0f));
		Ray topRay = cameraTransform.camera.ViewportPointToRay(new Vector3(0.5f, clampHeadPositionScreenSpace, 1.0f));
	
		Vector3 centerRayPos = centerRay.GetPoint(distance);
		Vector3 topRayPos = topRay.GetPoint(distance);
		
		float centerToTopAngle = Vector3.Angle(centerRay.direction, topRay.direction);
		
		float heightToAngle = centerToTopAngle / (centerRayPos.y - topRayPos.y);
	
		float extraLookAngle = heightToAngle * (centerRayPos.y - centerPos.y);
		if (extraLookAngle < centerToTopAngle)
		{
			extraLookAngle = 0.0f;
		}
		else
		{
			extraLookAngle = extraLookAngle - centerToTopAngle;
			cameraTransform.rotation *= Quaternion.Euler(-extraLookAngle, 0.0f, 0.0f);
		}
	}

	Vector3 GetCenterOffset ()
	{
		return centerOffset;
	}
	
	
}
