using UnityEngine;
using System.Collections;

public class ThirdPersonCamera : MonoBehaviour {
	
	Transform cameraTransform;
	private Transform _target;	
		
	public float smooth = 10.0f;
	public float sweep_width = 0.25f;
	
	public float distance = 7.0f;
	public float walloffset = 0.05f;
	
	// the height we want the camera to be above the target
	public float height = 3.0f;
	
	public float angularSmoothLag = 0.3f;
	public float angularMaxSpeed = 15.0f;
	
	public float camera_turn_speed_v = 20.0f;
	public float camera_turn_speed_h = 20.0f;
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
	
	private ThirdPersonController controller;
	
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
			Collider characterController  = _target.collider;
			centerOffset = characterController.bounds.center - _target.position;
			headOffset = centerOffset;
			headOffset.y = characterController.bounds.max.y - _target.position.y;
		}
		else
			Debug.Log("Please assign a target to the camera that has a ThirdPersonController script attached.");
	
		
		Cut(_target, centerOffset);
	}
	
	float AngleDistance (float a, float b)
	{
		a = Mathf.Repeat(a, 360.0f);
		b = Mathf.Repeat(b, 360.0f);
		
		return Mathf.Abs(b - a);
	}
	
	public void Apply (Transform dummyTarget, Vector3 dummyCenter)
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
		
		
		// Set position	
		Vector3 cam_position = rotation * new Vector3(0.0f, 0.0f, -distance);
		Vector3 cam_no_head = cameraTransform.position - targetHead;
		
		
		/* Calculate offset orthogonal to the lookat vector and the up vector */
		
		Vector3 sweep_offset = Vector3.Cross(Vector3.up, cam_position).normalized * sweep_width;
		
		/* Show rays being cast */
		Debug.DrawRay(targetHead - sweep_offset, cam_position + sweep_offset);
		Debug.DrawRay(targetHead + sweep_offset, cam_position - sweep_offset);
		
		/* Shoot ray from camera to targetHead to find out */
		RaycastHit hit;
		if (Physics.Raycast(targetHead - sweep_offset, cam_position + sweep_offset, out hit, distance) || 
			Physics.Raycast(targetHead + sweep_offset, cam_position - sweep_offset, out hit, distance))
		{
			cam_position = rotation * new Vector3(0.0f, 0.0f, -hit.distance) + walloffset * hit.normal;
			cam_position = Vector3.Lerp(cam_no_head, cam_position, Time.deltaTime * smooth);
		}
		else if(cam_position.sqrMagnitude > cam_no_head.sqrMagnitude + 0.1f)
		{
			cam_position = Vector3.Lerp(cameraTransform.position - targetHead, cam_position, Time.deltaTime * smooth);
		}
		
		cameraTransform.position = cam_position + targetHead;
	}
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void FixedUpdate () {
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
		
		Apply (transform, Vector3.zero);
		
		heightSmoothLag = oldHeightSmooth;
		snapMaxSpeed = oldSnapMaxSpeed;
		snapSmoothLag = oldSnapSmooth;
	}	
	
}
