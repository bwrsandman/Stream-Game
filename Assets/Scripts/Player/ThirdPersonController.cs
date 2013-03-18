using UnityEngine;
using System.Collections;

// Require these components when using this script
[RequireComponent(typeof (Animator))]
[RequireComponent(typeof (TimeActions))]

public class ThirdPersonController : MonoBehaviour {
	
	private Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;			// a reference to the current state of the animator, used for base layer
	private AnimatorStateInfo CheckpointLayerCurrentState;	// a reference to the current state of the animator, used for layer 2
	private TimeActions timeScript; 
	private bool moving;
	private bool inLargeRoom = false;
	private bool locked = false;
	
	public void setLargeRoom(Transform target)
	{
		inLargeRoom = true;
		locked = true;
	}
	
	public void unsetLargeRoom()
	{
		inLargeRoom = false;
		locked = false;
	}
	
		
	//private CapsuleCollider col;	
	static int SettingWaypointState = Animator.StringToHash("CheckpointLayer.SettingWaypoint");

	void Start () {
		anim = GetComponent<Animator>();	
		anim.SetLayerWeight(1, 1.0f);
		anim.SetLayerWeight(2, 1.0f);
		timeScript = GetComponent<TimeActions>();
		if(anim.layerCount == 2)
			anim.SetLayerWeight(1, 1);
		
		moving = false;
	}
	
	// Update is called once per frame
	void LateUpdate () {
		//currentBaseState = anim.GetCurrentAnimatorStateInfo(0);
		CheckpointLayerCurrentState = anim.GetCurrentAnimatorStateInfo(2);
		
		anim.SetBool("SettingWaypoint", false);
		
		if (!timeScript.isTeleporting()) {
			if (Input.GetKeyDown("e")) 
			{	
				anim.SetBool("SettingWaypoint", true);
				timeScript.setCheckpoint();	
			}
			if (Input.GetKeyDown("t")) 
			{	
				anim.SetBool("SettingWaypoint", true);
				StartCoroutine(timeScript.teleport());	
			}
			if (Input.GetKeyDown("r")) 
			{	
				anim.SetBool("SettingWaypoint", true);
				StartCoroutine(timeScript.teleportCloner());	
			}
			if (Input.GetKeyDown("y")) 
			{	
				timeScript.sendYoungestBack();	
			}	
		}
	}
	
	void Update () {

		updateMovement(); 
	}
	
	void updateMovement () {
		float h = Input.GetAxis("Horizontal Move");				// setup h variable as our horizontal input axis
		float v = Input.GetAxis("Vertical Move");				// setup v variables as our vertical input axis
		
		bool run = Input.GetKey("left shift");
		anim.SetBool("Running", run);
		
		if (inLargeRoom && Mathf.Abs(v) < 0.01f)
			locked = false;
		
		if(inLargeRoom && locked) {
			v = -Mathf.Abs(v);
		}
		
		Transform cameraTransform = Camera.main.transform;
		
		Vector3 forward = cameraTransform.TransformDirection(Vector3.forward);
		forward.y = 0.0f;
		forward.Normalize();
		
		Vector3 right = new Vector3(forward.z, 0.0f, -forward.x);		
		
		Vector3 dir = h * right + v * forward;
		float mag = dir.magnitude;
		dir.Normalize();
		
		bool wasMoving = moving;
		moving = mag > 0.01f; 

		if (moving)  {			
			anim.SetFloat("Speed", mag);
			
			float x = dir.x;
			float y = dir.z;			
			
			float rot = Mathf.Atan2(x,y) * Mathf.Rad2Deg;
			transform.eulerAngles = new Vector3(0.0f, rot, 0.0f);
		}
	}
}
