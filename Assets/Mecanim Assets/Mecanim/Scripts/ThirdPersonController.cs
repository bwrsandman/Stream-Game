using UnityEngine;
using System.Collections;

// Require these components when using this script
[RequireComponent(typeof (Animator))]
//[RequireComponent(typeof (CapsuleCollider))]
[RequireComponent(typeof (Rigidbody))]
[RequireComponent(typeof (TimeActions))]

public class ThirdPersonController : MonoBehaviour {
	
	private Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;			// a reference to the current state of the animator, used for base layer
	private AnimatorStateInfo layer2CurrentState;	// a reference to the current state of the animator, used for layer 2
	private TimeActions timeScript; 
	private bool isMoving;
	
		
	//private CapsuleCollider col;	
	static int waveState = Animator.StringToHash("Layer2.Wave");

	void Start () {
		anim = GetComponent<Animator>();	
		timeScript = GetComponent<TimeActions>();
		//col = GetComponent<CapsuleCollider>();		
		if(anim.layerCount == 2)
			anim.SetLayerWeight(1, 1);
		
		isMoving = false;
	}
	
	// Update is called once per frame
	void Update () {
		//currentBaseState = anim.GetCurrentAnimatorStateInfo(0);
		layer2CurrentState = anim.GetCurrentAnimatorStateInfo(1);
		
		if (!timeScript.isTeleporting()) {
			if (Input.GetKeyDown("e")) 
			{	
				timeScript.setCheckpoint();	
			}
			if (Input.GetKeyDown("t")) 
			{	
				anim.SetBool("Wave", true);
				StartCoroutine(timeScript.teleport());	
			}
			if (Input.GetKeyDown("r")) 
			{	
				anim.SetBool("Wave", true);
				StartCoroutine(timeScript.teleportCloner());	
			}
			if (Input.GetKeyDown("y")) 
			{	
				timeScript.sendYoungestBack();	
			}	
		}
		
		if(layer2CurrentState.nameHash == waveState)
		{
			anim.SetBool("Wave", false);
		}
	}
	
	void FixedUpdate ()
	{
		updateMovement();
	}
	
	void updateMovement () {
		float h = Input.GetAxis("Horizontal Move");				// setup h variable as our horizontal input axis
		float v = Input.GetAxis("Vertical Move");				// setup v variables as our vertical input axis
		
		Transform cameraTransform = Camera.main.transform;
		Debug.Log(cameraTransform.position);
		
		Vector3 forward = cameraTransform.TransformDirection(Vector3.forward);
		forward.y = 0.0f;
		forward.Normalize();
		
		Vector3 right = new Vector3(forward.z, 0.0f, -forward.x);
		
		
		Vector3 dir = h * right + v*forward;
		float mag = dir.magnitude;
		
		bool wasMoving = isMoving;
		isMoving = mag > 0.01f; 
		
		anim.SetFloat("Speed", mag);							// set our animator's float parameter 'Speed' equal to the vertical input axis				
		
		if (isMoving) {
			float x = dir.x;
			float y = dir.z;
			
			
			float rot = Mathf.Atan2(x,y)*Mathf.Rad2Deg;
			
			transform.eulerAngles = new Vector3(0,rot,0);
		}
		
	}
}
