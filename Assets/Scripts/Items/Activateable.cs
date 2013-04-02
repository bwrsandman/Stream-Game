using UnityEngine;

[RequireComponent(typeof(Collider), typeof(Rigidbody))]

public abstract class Activateable : MonoBehaviour
{
	protected static PlayerActivationHandler mPlayerActivate;
	protected static CloneActivationHandler mCloneActivate;
	
	void Awake () 
	{
		GameObject player = null;
		foreach(GameObject obj in GameObject.FindGameObjectsWithTag("Player"))
		{
			if (obj.name == "Sal")
			{
				player = obj;
				break;
			}
		}

		if(!player)
			Debug.LogError("Could not find player in Scene");

		if(!mPlayerActivate)
			mPlayerActivate = player.GetComponent<PlayerActivationHandler>();
		if(!mCloneActivate)
			mCloneActivate = player.GetComponent<CloneActivationHandler>();

	}
	
	protected virtual void OnTriggerEnter(Collider other) 
	{
		if (other.name == "PlayerCamera") {
			mPlayerActivate.setSelectedObject(this);
		}
		if (other.name == "LongDistance") {
			mCloneActivate.setSelectedObject(this);
		}
	}
	
	void OnTriggerExit(Collider other) 
	{
		if (other.name == "PlayerCamera") {
			mPlayerActivate.unsetSelectedObject(this);
		}
		if (other.name == "LongDistance") {
			mCloneActivate.unsetSelectedObject(this);
		}
	}
}
