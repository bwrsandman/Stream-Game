using UnityEngine;

[RequireComponent(typeof(Collider), typeof(Rigidbody))]

public abstract class Activateable : MonoBehaviour
{
	static PlayerActivationHandler mPlayerActivate;
	static CloneActivationHandler mCloneActivate;
	
	void Awake () 
	{
		if(!mPlayerActivate)
			mPlayerActivate = GameObject.FindWithTag("player").GetComponent<PlayerActivationHandler>();
		if(!mCloneActivate)
			mCloneActivate = GameObject.FindWithTag("player").GetComponent<CloneActivationHandler>();
		
	}
	
	void OnTriggerEnter(Collider other) 
	{
		if (other.name == "PlayerCamera" || other.name == "Sal") {
			mPlayerActivate.setSelectedObject(this);
		}
		if (other.name == "LongDistance") {
			mCloneActivate.setSelectedObject(this);
		}
	}
	
	void OnTriggerExit(Collider other) 
	{
		if (other.name == "PlayerCamera" || other.name == "Sal") {
			mPlayerActivate.unsetSelectedObject(this);
		}
		if (other.name == "LongDistance") {
			mCloneActivate.unsetSelectedObject(this);
		}
	}
}
