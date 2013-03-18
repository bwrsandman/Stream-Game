using UnityEngine;
using System.Collections;

public class Headturn : MonoBehaviour {
	
	private float prevAngle = 0.0f;
	private Transform camTransform;
	private Transform playerTransform;
	private Animator anim;

	public float turnLimit = -10.0f;
	public float headTiltAngle = -70.0f;
	public Transform headTransform;

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
			float deltaAngle = Mathf.Abs(Mathf.DeltaAngle(prevAngle, playerRot + 90.0f));
	
			if (playerCamDiff > -turnLimit && playerCamDiff < turnLimit) { 
	
				//don't lerp if the change in angle is greater than "turnLimit":
				if (Mathf.Ceil(deltaAngle) < turnLimit) {
					prevAngle = Mathf.LerpAngle(prevAngle, camRot + 90.0f, .2f);
					Quaternion rotation = Quaternion.Euler(0.0f, prevAngle, headTiltAngle);
			    	headTransform.rotation = rotation;
				}
				else
					prevAngle = playerRot + 90.0f;
			}
			//if the camera is looking behind the player, the head should turn to face the front.
			else {
				Quaternion rotation = Quaternion.Euler(0.0f, prevAngle, headTiltAngle);
		    	headTransform.rotation = rotation;
	
				//if the player turns more than "turnLimit" on the spot, don't lerp:
				if (deltaAngle < turnLimit && deltaAngle > 0.1) 
					prevAngle = Mathf.LerpAngle(prevAngle, playerRot + 90.0f, .05f);
				else
					prevAngle = playerRot + 90.0f;
			}
		}
	}
}
			