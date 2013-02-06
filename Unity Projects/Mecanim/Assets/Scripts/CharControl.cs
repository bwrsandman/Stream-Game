using UnityEngine;
using System.Collections;

// Require these components when using this script
[RequireComponent(typeof (Animator))]
//[RequireComponent(typeof (CapsuleCollider))]
[RequireComponent(typeof (Rigidbody))]
[RequireComponent(typeof (TimeActions))]

public class CharControl : MonoBehaviour {
	
	private Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;			// a reference to the current state of the animator, used for base layer
	private AnimatorStateInfo layer2CurrentState;	// a reference to the current state of the animator, used for layer 2
	private TimeActions timeScript; 
		
	//private CapsuleCollider col;	
	static int waveState = Animator.StringToHash("Layer2.Wave");

	void Start () {
		anim = GetComponent<Animator>();	
		timeScript = GetComponent<TimeActions>();
		//col = GetComponent<CapsuleCollider>();		
		if(anim.layerCount == 2)
			anim.SetLayerWeight(1, 1);
		
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
		float h = Input.GetAxis("Horizontal");				// setup h variable as our horizontal input axis
		float v = Input.GetAxis("Vertical");				// setup v variables as our vertical input axis
		anim.SetFloat("Speed", v);							// set our animator's float parameter 'Speed' equal to the vertical input axis				
		anim.SetFloat("Direction", h);
		

	}
}
