using UnityEngine;
using System.Collections;

public class NavCubeCol : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnTriggerEnter(Collider other) {
		if (other.tag == "clone") {
			Animator anim = other.GetComponent<Animator>();
			anim.SetFloat("Speed", 0.0f);
		}
	}

	void OnTriggerExit(Collider other) {
		if (other.tag == "clone") {
			Animator anim = other.GetComponent<Animator>();
			anim.SetFloat("Speed", 0.11f);
		}
	}
}
