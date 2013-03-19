using UnityEngine;

[RequireComponent(typeof(Collider), typeof(Rigidbody))]

public abstract class Activateable : MonoBehaviour
{
	static ActivationHandler mPlayerActivate;
	
	void Awake () 
	{
		if(!mPlayerActivate)
			mPlayerActivate = GameObject.FindWithTag("Player").GetComponent<ActivationHandler>();
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
