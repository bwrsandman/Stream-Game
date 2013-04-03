using UnityEngine;
using System.Collections;

public class MiniBridgeActivator : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter (Collider other) {
        Debug.Log(other.name + " " + other.tag);

        if (other.tag == "Player") {
            transform.root.gameObject.renderer.enabled = true;
            transform.root.gameObject.collider.enabled = true;
        }
    }

    void OnTriggerExit (Collider other) {
        Debug.Log(other.name + " " + other.tag);

        if (other.tag == "Player") {
            transform.root.gameObject.renderer.enabled = false;
            transform.root.gameObject.collider.enabled = false;
        }
    }
}
