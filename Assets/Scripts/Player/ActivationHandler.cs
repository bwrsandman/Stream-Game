using UnityEngine;
using System.Collections;

public class ActivationHandler : MonoBehaviour {
	
	public Activateable selectedObject;
	WeaponHandler weaponHandler;
	
	void Start () 
	{
		weaponHandler = GetComponent<WeaponHandler>();
	}
	
	public void setSelectedObject (Activateable obj)
	{
		if(obj != weaponHandler.mWeapon)
			selectedObject = obj;
	}
	
	public void unsetSelectedObject (Activateable obj)
	{
		if(selectedObject == obj)
			selectedObject = null;
	}
	
	void EarlyUpdate () 
	{
		selectedObject = null;
	}
	
	void Update () 
	{
		if (Input.GetKeyDown("q")) {	
			Activate();
		}
	}
	
	void Activate ()
	{
		if (!selectedObject)
			return;
		if (selectedObject.GetType() == typeof(Weapon))
			weaponHandler.PickUpWeapon((Weapon)selectedObject);
	}
}
