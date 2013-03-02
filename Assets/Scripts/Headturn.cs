using UnityEngine;
using System.Collections;

public class Headturn : MonoBehaviour {
	
	private float prevAngle = 0.0f;
	private Transform camTransform;
	private Transform playerTransform;
	
	public Transform headTransform;
	
	// Use this for initialization
	void Start () {
		camTransform = Camera.main.transform;
		playerTransform = transform;
	}
	
	// Update is called once per frame
	void LateUpdate () {
		float camRot = camTransform.eulerAngles.y;
		float playerRot = playerTransform.eulerAngles.y;
		
		float difference = camRot - playerRot;
			
		if (difference > -80.0f && difference < 80.0f) { 
			prevAngle = Mathf.LerpAngle(prevAngle, camRot - 90.0f, .2f);
			Quaternion rotation = Quaternion.Euler(0.0f, prevAngle, -90.0f);
	    	headTransform.rotation = rotation;
		}
		//if the camera is looking behind the player, the head should turn to face the front.
		else {
			Quaternion rotation = Quaternion.Euler(0.0f, prevAngle, -90.0f);
	    	headTransform.rotation = rotation;
			
			prevAngle = Mathf.LerpAngle(prevAngle, playerRot - 90.0f, .05f);
		}
	}
}
			