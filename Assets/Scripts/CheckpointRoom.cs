using UnityEngine;
using System.Collections;

public class CheckpointRoom : MonoBehaviour 
{
	Transform cameraTransform;

	// Use this for initialization
	void Start () 
	{
		cameraTransform = GetComponentsInChildren<Transform>()[1];
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	void OnTriggerEnter(Collider other)
	{
		if (other.tag == "Player") 
		{
			ThirdPersonCamera camera = other.GetComponent<ThirdPersonCamera>();
			ThirdPersonController controller = other.GetComponent<ThirdPersonController>();
        	
			camera.setLargeRoom(cameraTransform);
			controller.setLargeRoom(cameraTransform);
		}
    }
	
	void OnTriggerExit(Collider other) 
	{
		if (other.tag == "Player") 
		{
			ThirdPersonCamera camera = other.GetComponent<ThirdPersonCamera>();
			ThirdPersonController controller = other.GetComponent<ThirdPersonController>();
        	
			camera.unsetLargeRoom();
			controller.unsetLargeRoom();
		}
	}
}
