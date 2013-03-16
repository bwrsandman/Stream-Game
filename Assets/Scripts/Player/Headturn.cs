using UnityEngine;
using System.Collections;

public class Headturn : MonoBehaviour {
	
	private float prevAngle = 0.0f;
	private Transform camTransform;
	private Transform playerTransform;
	private Animator anim;
	
	public float turnLimit = 80.0f;
	public Transform headTransform;
	
	public float turnOffset = 90.0f;
	public float lookupOffset = -60.0f;
	
	// Use this for initialization
	void Start () {
		camTransform = Camera.main.transform;
		playerTransform = transform;
		anim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void LateUpdate () {
		if (!anim.GetBool("Aiming")) {
		float camRot = camTransform.eulerAngles.y;
		float playerRot = playerTransform.eulerAngles.y;
		
		float playerCamDiff = Mathf.DeltaAngle(camRot,playerRot);
		float deltaAngle = Mathf.Abs(Mathf.DeltaAngle(prevAngle, playerRot + lookupOffset));
		
		if (playerCamDiff > -turnLimit && playerCamDiff < turnLimit) { 
			
			//don't lerp if the change in angle is greater than "turnLimit":
			if (Mathf.Ceil(deltaAngle) < turnLimit) {
				prevAngle = Mathf.LerpAngle(prevAngle, camRot + turnOffset, .2f);
				Quaternion rotation = Quaternion.Euler(0.0f, prevAngle, lookupOffset);
		    	headTransform.rotation = rotation;
			}
			else
				prevAngle = playerRot + turnOffset;
		}
		//if the camera is looking behind the player, the head should turn to face the front.
		else {
			Quaternion rotation = Quaternion.Euler(0.0f, prevAngle, lookupOffset);
	    	headTransform.rotation = rotation;
			
			//if the player turns more than "turnLimit" on the spot, don't lerp:
			if (deltaAngle < turnLimit && deltaAngle > 0.1) 
				prevAngle = Mathf.LerpAngle(prevAngle, playerRot +turnOffset, .05f);
			else
				prevAngle = playerRot + turnOffset;
		}
		}
	}
}
			