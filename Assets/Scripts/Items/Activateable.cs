using UnityEngine;

[RequireComponent(typeof(Collider), typeof(Rigidbody))]

public abstract class Activateable : MonoBehaviour
{
	static Activate mPlayerActivate;
	
	void Awake () 
	{
		if(!mPlayerActivate)
			mPlayerActivate = GameObject.FindWithTag("Player").GetComponent<Activate>();
	}
	
	void Update () 
	{
	}
	
	void OnTriggerEnter(Collider other) 
	{
		if (other.name == "PlayerCamera" || other.name == "Sal") {
			mPlayerActivate.setSelectedObject(this);
		}
	}
	
	void OnTriggerExit(Collider other) 
	{
		if (other.name == "PlayerCamera" || other.name == "Sal") {
			mPlayerActivate.unsetSelectedObject(this);
		}
	}
}
