using UnityEngine;
using System.Collections;

public class BotScanning : MonoBehaviour {
	
	FlowerBotController botController;
	SphereCollider scanCollider;
	
	// Use this for initialization
	void Start () {
		scanCollider = GetComponent<SphereCollider>();
		botController = transform.parent.gameObject.GetComponent<FlowerBotController>();
	}
	
	// Update is called once per frame
	void Update () {
		scanCollider.radius = botController.scan_radius;
	}
	
	void OnTriggerEnter(Collider other) 
	{		
		if (other.tag == "Player") {
			botController.sense_player = true;
			botController.target_transform = other.transform;
		}
    }
	
	void OnTriggerStay(Collider other) 
	{
		if (other.tag == "Player") {
			botController.other_direction = -transform.position + other.transform.position;
		}
	}
	
	void OnTriggerExit(Collider other) 
	{
		if (other.tag == "Player") 
			botController.sense_player = false;
    }
}
