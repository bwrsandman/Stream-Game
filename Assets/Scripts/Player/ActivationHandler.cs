using UnityEngine;
using System.Collections;

public class ActivationHandler : MonoBehaviour {
	
	public Activateable selectedObject;
	WeaponHandler weaponHandler;
	PackHandler packHandler;
	
	void Start () 
	{
		weaponHandler = GetComponent<WeaponHandler>();
		packHandler = GetComponent<PackHandler>();
	}
	
	public void setSelectedObject (Activateable obj)
	{
		if(obj != weaponHandler.weapon)
			selectedObject = obj;
	}
	
	public void unsetSelectedObject (Activateable obj)
	{
		if(selectedObject == obj)
			selectedObject = null;
	}
	
	void Activate ()
	{
		if (!selectedObject) {
			return;
		} else if (selectedObject.GetType() == typeof(Weapon)) {
			weaponHandler.PickUpWeapon((Weapon)selectedObject);
		} else if (selectedObject.GetType() == typeof(Equipment)) {
			if (selectedObject.name == "Powerpack")
			{
				Destroy(selectedObject.gameObject);
				packHandler.Show();
			}
		}
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
}
