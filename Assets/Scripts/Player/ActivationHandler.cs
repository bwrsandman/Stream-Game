using UnityEngine;
using System.Collections;

public abstract class ActivationHandler : MonoBehaviour 
{
	
	public Activateable selectedObject;
	public GameObject activationPrefab;
	protected GameObject activationTexture;
	
	protected WeaponHandler weaponHandler;
	
	protected virtual void Start () 
	{
		weaponHandler = GetComponent<WeaponHandler>();
	}
	
	public void setSelectedObject (Activateable obj)
	{
		// Can't select currently held weapon
		if(obj != weaponHandler.weapon)
		{
			selectedObject = obj;
			Destroy(activationTexture);
			Vector3 distance = gameObject.transform.position - obj.transform.position;
			distance.y = 0.0f;
			Quaternion rotation = Quaternion.Euler(90.0f, Quaternion.LookRotation(distance).eulerAngles.y, 0.0f);
			activationTexture = (GameObject)Instantiate(activationPrefab, obj.rigidbody.transform.position + Vector3.up, rotation);
		}
	}
	
	public void unsetSelectedObject (Activateable obj)
	{
		if(selectedObject == obj)
		{
			selectedObject = null;
			Destroy(activationTexture);
		}
	}
	
	public virtual void Activate ()
	{
		if (!selectedObject) {
			return;
		} else if (selectedObject.GetType() == typeof(Weapon)) {
			weaponHandler.PickUpWeapon((Weapon)selectedObject);
		}
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
