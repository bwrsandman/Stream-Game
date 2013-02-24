using UnityEngine;
using System.Collections;

public class Headturn : MonoBehaviour {
	
	
	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void LateUpdate () {
		float camRot = Camera.main.transform.eulerAngles.y;
		float playerRot = transform.root.eulerAngles.y;
		
		Debug.Log(camRot - playerRot);
		
		float difference = Mathf.Min(Mathf.Max(camRot - playerRot, -65.0f), 80.0f) - 270.0f;
		
		Quaternion rotation = Quaternion.Euler(0.0f, difference, -90.0f);
	    transform.rotation = rotation;
		
	//	Debug.Log(rotation);
	}
}
			