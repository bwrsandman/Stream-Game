using UnityEngine;
using System.Collections.Generic;

public abstract class ActivationHandler : MonoBehaviour 
{
	
	public Activateable selectedObject;
	
	protected WeaponHandler weaponHandler;
	protected Animator animator;
	
	protected abstract List<System.Type> activateableTypes
	{
		get;
	}
	
	protected virtual void Start () 
	{
		weaponHandler = GetComponent<WeaponHandler>();
		animator = GetComponent<Animator>();
	}
	
	public virtual void setSelectedObject (Activateable obj, Vector3 offset)
	{
		// Can't select currently held weapon
		if(obj != weaponHandler.weapon && activateableTypes.Exists(t => t == obj.GetType().BaseType))
		{
			selectedObject = obj;
		}
	}
	
	public virtual void unsetSelectedObject (Activateable obj)
	{
		if(selectedObject == obj)
		{
			selectedObject = null;
		}
	}
	
	public virtual void Activate ()
	{
		if (!selectedObject) {
			return;
		} else if (selectedObject.GetType().BaseType == typeof(Weapon)) {
			weaponHandler.PickUpWeapon((Weapon)selectedObject);
			unsetSelectedObject(selectedObject);
		}
	}
	
	void EarlyUpdate () 
	{
		selectedObject = null;
	}
}
