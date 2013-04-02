using UnityEngine;
using System.Collections;

public class ExtendCollider : MonoBehaviour {

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerEnter (Collider other) {
        if (other.name == "Sal") {
            other.gameObject.GetComponent<TimeActions>().setCurrentExtent(this.gameObject);
        }
        if (other.name != "Sal" && other.tag == "Player") {
            GameObject extent = other.gameObject.GetComponent<InstanceController>().getCurrentExtent();
            if (extent == null || extent.name != this.name)
                other.gameObject.GetComponent<InstanceHealth>().die();
        }

    }
}
