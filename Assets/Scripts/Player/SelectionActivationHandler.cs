using UnityEngine;
using System.Collections.Generic;

public abstract class SelectionActivationHandler : ActivationHandler 
{
	
	public GameObject activationPrefab;
	public GameObject activationTexture;
	
	public override void setSelectedObject (Activateable obj)
	{
		// Can't select currently held weapon
		if(obj != weaponHandler.weapon && activateableTypes.Exists(t => t == obj.GetType().BaseType))
		{
			selectedObject = obj;
			Destroy(activationTexture);
			Vector3 distance = gameObject.transform.position - obj.transform.position;
			distance.y = 0.0f;
			Quaternion rotation = Quaternion.Euler(90.0f, Quaternion.LookRotation(distance).eulerAngles.y, 0.0f);
			activationTexture = (GameObject)Instantiate(activationPrefab, obj.rigidbody.transform.position + Vector3.up, rotation);
		}
	}
	
	public override void unsetSelectedObject (Activateable obj)
	{
		Destroy(activationTexture);
		base.unsetSelectedObject(obj);
	}
	
	void EarlyUpdate () 
	{
		selectedObject = null;
	}
	
	void Update () 
	{		
		// Update texture rotation
		if (activationTexture)
		{
			Vector3 distance = gameObject.transform.position - activationTexture.transform.position;
			distance.y = 0.0f;
			Quaternion rotation = Quaternion.Euler(90.0f, Quaternion.LookRotation(distance).eulerAngles.y, 0.0f);
			activationTexture.transform.rotation = rotation;
		}
	}
}
