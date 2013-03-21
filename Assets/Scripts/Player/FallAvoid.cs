using UnityEngine;
using System.Collections;

public class FallAvoid : MonoBehaviour {
	
	Animator anim;
	
	// Use this for initialization
	void Start () {
		anim = transform.root.GetComponent<Animator>();
	
	}
	
	void OnTriggerEnter(Collider other) {
		if (other.name == "Ground_1") {
			Debug.Log("entered " + other.name);	
			anim.SetBool("FallAvoid", false);
		}	
	}
	
	void OnTriggerExit(Collider other) {
		if (other.name == "Ground_1") {
			Debug.Log("exited " + other.name);	
			anim.SetBool("FallAvoid", true);
		}
	}
}
