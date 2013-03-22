#region Using
using UnityEngine;
using System.Collections;
#endregion

#region Required components
[RequireComponent(typeof (Animator))]
[RequireComponent(typeof (TimeActions))]
#endregion

public class ThirdPersonController : MonoBehaviour 
{
	
	#region References
	private Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;			// a reference to the current state of the animator, used for base layer
	private AnimatorStateInfo CheckpointLayerCurrentState;	// a reference to the current state of the animator, used for layer 2
	private TimeActions timeScript; 
	private ThirdPersonCamera camScript;
	private Aiming aimScript;
	private ActivationHandler activationHandler;
	static int SettingWaypointState = Animator.StringToHash("CheckpointLayer.SettingWaypoint");
	#endregion
	
	#region Members
	private bool mMoving;
	private bool mInLargeRoom = false;
	private bool mLocked = false;
	public Transform spine;
	public float walkSensitivity = 0.1f;
	public float runSensitivity = 0.65f;
	
	#endregion
	
	#region Initialization
	void Start () 
	{
		anim = GetComponent<Animator>();	
		anim.SetLayerWeight(1, 1.0f);
		anim.SetLayerWeight(2, 1.0f);
		timeScript = GetComponent<TimeActions>();
		camScript = GetComponent<ThirdPersonCamera>();
		aimScript = GetComponent<Aiming>();
		activationHandler = GetComponent<ActivationHandler>();
		if(anim.layerCount == 2)
			anim.SetLayerWeight(1, 1);
		
		mMoving = false;
	}
	#endregion
	
	#region Public functions
	public void setLargeRoom(Transform target)
	{
		mInLargeRoom = true;
		mLocked = true;
	}
	
	public void unsetLargeRoom()
	{
		mInLargeRoom = false;
		mLocked = false;
	}
	#endregion
		
	#region Member functions
	void updateMovement () 
	{
		float h = Input.GetAxis("Horizontal Move");				// setup h variable as our horizontal input axis
		float v = Input.GetAxis("Vertical Move");				// setup v variables as our vertical input axis
		
		bool run = Input.GetKey("left shift");
		anim.SetBool("Running", run);
		
		if (mInLargeRoom && Mathf.Abs(v) < 0.01f)
			mLocked = false;
		
		if(mInLargeRoom && mLocked) {
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
		
		bool wasMoving = mMoving;
		mMoving = mag > walkSensitivity; 

		if (mMoving)  {			
			anim.SetFloat("Speed", dir.magnitude);
			anim.SetBool("Running", mag > runSensitivity);
			
			float x = dir.x;
			float y = dir.z;			
			
			float rot = Mathf.Atan2(x,y) * Mathf.Rad2Deg;
			transform.eulerAngles = new Vector3(0.0f, rot, 0.0f);
		}
		else
			anim.SetFloat("Speed", 0.0f);
	}
	
	void updateAim () 
	{
		if (anim.GetBool("Aiming")) {
			Transform cameraTransform = Camera.main.transform;
			spine.localRotation = Quaternion.Euler(180.0f, 0.0f, cameraTransform.eulerAngles.x);
		}	
	}
	#endregion
	
	#region Internal Member functions
	void Update () 
	{
		updateMovement(); 
	}
	
	void LateUpdate () 
	{
		//currentBaseState = anim.GetCurrentAnimatorStateInfo(0);
		CheckpointLayerCurrentState = anim.GetCurrentAnimatorStateInfo(2);
		
		anim.SetBool("SettingWaypoint", false);
		
		if (!timeScript.isTeleporting()) {
			if (Input.GetKeyDown("e")) 
			{	
				anim.SetBool("SettingWaypoint", true);
				timeScript.setCheckpoint();	
			}
			if (Input.GetButton("Y")) 
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
			
			if (Input.GetButton("A")) {
				activationHandler.Activate();
			}

			Debug.Log(Input.GetAxis("Left Trigger"));
			Debug.Log(Input.GetAxis("Right Trigger"));

			bool aim = false;
			if (Input.GetAxis("Left Trigger") > 0.5f)
				aim = true;

			anim.SetBool("Aiming", aim);
			camScript.setDistance(aim ? 1.0f : 2.0f);

			bool shoot = false;
			if (Input.GetAxis("Right Trigger") > 0.5f)
				shoot = true;

			//(Input should be changed to a cross-platform solution)
			if (shoot && anim.GetBool("Aiming")) {
				aimScript.shootRay();
				if (!aimScript.hit.point.Equals(Vector3.zero))
					aimScript.shootProjectile();
			}

		}
		
		updateAim();
	}
	#endregion
}
