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
	private Ammo ammoScript;
	private ActivationHandler activationHandler;
	private WeaponHandler weapHandler;
    private PlayerActivationHandler playerActivationHandler;
    private CloneActivationHandler cloneActivationHandler;
	static int SettingWaypointState = Animator.StringToHash("CheckpointLayer.SettingWaypoint");
	private static Vector3 screenMidPoint = new Vector3(Screen.width/2.0f, Screen.height/2.0f, 0.0f);
	#endregion
	
	#region Members
	private bool mMoving;
	private bool mInLargeRoom = false;
	private bool mLocked = false;
	private bool climbing = false;
	public Transform spine;
	public float walkSensitivity = 0.1f;
	public float runSensitivity = 0.65f;
	public bool getUpAtStart = false;
	public float ammoPerShot = 25f;
	
	#endregion
	
	#region Initialization
	void Start () 
	{
		anim = GetComponent<Animator>();	
		anim.SetLayerWeight(1, 1.0f);
		anim.SetLayerWeight(2, 1.0f);
		timeScript = GetComponent<TimeActions>();
		camScript = GetComponent<ThirdPersonCamera>();
		activationHandler = GetComponent<ActivationHandler>();
		weapHandler = GetComponent<WeaponHandler>();
		ammoScript = GetComponent<Ammo>();
		playerActivationHandler = GetComponent<PlayerActivationHandler>();
        cloneActivationHandler = GetComponent<CloneActivationHandler>();
		if(anim.layerCount == 2)
		anim.SetLayerWeight(1, 1);

		mMoving = false;

		anim.SetBool("GetUp", getUpAtStart);
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
	bool animationPlaying(string animation_name)
	{
		foreach(AnimationInfo s in anim.GetCurrentAnimationClipState(0))
			if(s.clip.name == animation_name)
				return true;
		return false;
	}
	
	void updateMovement ()
	{
        getUpAtStart = animationPlaying("Getting up");
        climbing = animationPlaying("Jump Ledge");

        if (getUpAtStart || climbing)
            return;

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

		if (mMoving) {
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
		anim.SetBool("Climbing", false);
		anim.SetBool("GetUp", false);
		anim.SetBool("SettingWaypoint", false);
		anim.SetBool("Kneel", false);
		
		if (getUpAtStart || climbing)
			return;

        //Debug.Log("climbing: " + climbing);
		rigidbody.useGravity = true;
		gameObject.rigidbody.WakeUp();

		CheckpointLayerCurrentState = anim.GetCurrentAnimatorStateInfo(2);
		
		if (!timeScript.isTeleporting()) {
			if (Input.GetKeyDown("e")) 
			{	
				anim.SetBool("SettingWaypoint", true);
				timeScript.setCheckpoint();	
			}
			if (Input.GetKeyDown("y")) 
			{	
				timeScript.sendYoungestBack();	
			}	
			
			if (Input.GetButton("A")) {
				playerActivationHandler.Activate();
			}

			if (weapHandler.hasWeapon()) {

				//Aiming
				bool aim = Input.GetButton("Left Trigger");
				anim.SetBool("Aiming", aim);
				camScript.setDistance(aim ? 1.0f : 2.0f);

				//Shooting
				bool shoot = Input.GetButton("Right Trigger");
				if (shoot && anim.GetBool("Aiming")) {
					weapHandler.weapon.shootProjectile();
					ammoScript.setSemiAuto(true);
				}
				else if (!shoot)
					ammoScript.setSemiAuto(false);
			}

			//Dpad clone activation
			Vector2 dPad = new Vector2(Input.GetAxis("Dpad X"), Input.GetAxis("Dpad Y"));

			if (dPad.sqrMagnitude > 0.25f) {
				int clone_index = 0;
				float dom = dPad.y;
				if (Mathf.Abs(dPad.x) > Mathf.Abs(dPad.y)) {
					dom = dPad.x;
					clone_index += 1;
				}
				if (dom < 0.0f) {
					clone_index += 2;
				}



            // do something with clone_index
            //Debug.Log("activate clone #" + clone_index);

                CallClone(clone_index);
			}

            if (Input.GetKeyDown("1")) CallClone(0);
            else if (Input.GetKeyDown("2")) CallClone(1);
            else if (Input.GetKeyDown("3")) CallClone(2);
            else if (Input.GetKeyDown("4")) CallClone(3);

			//Debug.Log(Input.GetAxis("Y") + " " + Input.GetAxis("B"));

			//Time travel
			if (Input.GetAxis("Y") >= .9f && Input.GetAxis("B") >= .9f)
			{
				anim.SetBool("SettingWaypoint", true);
				StartCoroutine(timeScript.teleportCloner());
			}
			//Teleport
			else if (Input.GetAxis("Y") >= 1.0f)
			{
				anim.SetBool("SettingWaypoint", true);
				StartCoroutine(timeScript.teleport());
			}

		}
		
		updateAim();
	}
	#endregion

    #region Anton's Cool Shit

    public bool HasClone(int number) {
        return number < timeScript.GetCloneCount();
    }

    public GameObject GetClone(int number) {
        return timeScript.GetClone(number);
    }

    public InstanceController GetCloneController(int number) {
        return (InstanceController)GetClone(number).GetComponent("InstanceController");
    }

    protected void CallClone(int number) {
        if (HasClone(number)) {
            InstanceController cloneAI = GetCloneController(number);
            if (cloneActivationHandler.selectedObject != null) {
                cloneAI.GotoState(new Instance.InstanceActivateBehaviour(cloneAI));
                cloneAI._target = cloneActivationHandler.selectedObject.rigidbody.gameObject;
                cloneAI.SetSelection(cloneActivationHandler.selectedObject);
            }
			Vector3 hitpoint;
			if (shootRay(out hitpoint)) {
				cloneAI.GotoState(new Instance.InstanceGotoBehaviour(cloneAI));
				cloneAI._target_point = hitpoint;
			}
        }
    }

	private bool shootRay (out Vector3 hitpoint) {
		Ray ray = Camera.main.ScreenPointToRay(screenMidPoint);
		RaycastHit hit;

		hitpoint = new Vector3();
		if (Physics.Raycast(ray, out hit)) {
			hitpoint = hit.point;
			return true;
		}

		//If nothing collides make the projectile goes in the direction of the ray.
		else
			return false;
	}


    #endregion
}
