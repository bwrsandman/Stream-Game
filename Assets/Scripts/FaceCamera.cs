using UnityEngine;
using System.Collections;

public class FaceCamera : MonoBehaviour 
{
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		Vector3 direction = Camera.main.transform.position - transform.position;
		direction.y = 0.0f;
		transform.rotation = Quaternion.LookRotation(direction) * Quaternion.Euler(90.0f, 0.0f, 0.0f);
	}
}
