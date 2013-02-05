using UnityEngine;
using System.Collections;

// Require these components when using this script
[RequireComponent(typeof (Animator))]
//[RequireComponent(typeof (CapsuleCollider))]
[RequireComponent(typeof (Rigidbody))]

public class CharControlScript : MonoBehaviour {
	
	private Animator anim;							// a reference to the animator on the character
	private AnimatorStateInfo currentBaseState;			// a reference to the current state of the animator, used for base layer
	private AnimatorStateInfo layer2CurrentState;	// a reference to the current state of the animator, used for layer 2
	//private CapsuleCollider col;	
	
	static int idleState = Animator.StringToHash("Base Layer.Idle");	
	static int waveState = Animator.StringToHash("Layer2.Wave");

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator>();					  
		//col = GetComponent<CapsuleCollider>();		
		if(anim.layerCount == 2)
			anim.SetLayerWeight(1, 1);
		
	}
	
	// Update is called once per frame
	void Update () {
		/*currentBaseState = anim.GetCurrentAnimatorStateInfo(0);
		layer2CurrentState = anim.GetCurrentAnimatorStateInfo(1);
		
		//if (currentBaseState.nameHash == idleState)
		//{
			if (Input.GetKeyDown("t")) 
			{	
				Debug.Log(("Wave"));
				anim.SetBool("Wave", true);
			}
			if (Input.GetKeyDown("r")) 
			{	
				anim.SetBool("Wave", true);
			}
		//}
		if(layer2CurrentState.nameHash == waveState)
		{
			anim.SetBool("Wave", false);
		}*/
	}
	
	void FixedUpdate ()
	{
		float h = Input.GetAxis("Horizontal");				// setup h variable as our horizontal input axis
		float v = Input.GetAxis("Vertical");				// setup v variables as our vertical input axis
		anim.SetFloat("Speed", v);							// set our animator's float parameter 'Speed' equal to the vertical input axis				
		anim.SetFloat("Direction", h);
		

	}
}
