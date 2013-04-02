using UnityEngine;
using System.Collections;

public class WallFlowerBotScanning : MonoBehaviour
{

	WallFlowerBotController botController;

	// Use this for initialization
	void Start ()
    {
		botController = transform.parent.gameObject.GetComponent<WallFlowerBotController>();
	}

	void OnTriggerEnter(Collider other) 
	{		
		if (other.tag == "Player") {
			botController.sense_player = true;
			botController.targetTransform = other.transform;
		}
    }

	void OnTriggerStay(Collider other) 
	{
		if (other.tag == "Player") {
            botController.sense_player = true;
		}
	}

    void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
			botController.sense_player = false;
    }
}
