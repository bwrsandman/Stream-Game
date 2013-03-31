using UnityEngine;
using System.Collections.Generic;

public class PlayerActivationHandler : SelectionActivationHandler 
{	
	PackHandler packHandler;
	
	protected override List<System.Type> activateableTypes
	{
		get 
		{
			return new List<System.Type>(new System.Type [] {typeof(Weapon), typeof(Equipment), typeof(TimeRift)});
		}
	}
	
	protected override void Start () 
	{
		base.Start();
		packHandler = GetComponent<PackHandler>();
	}
	
	public override void Activate ()
	{
		base.Activate();
		if (selectedObject && selectedObject.GetType() == typeof(Equipment)) {
			if (selectedObject.name == "Powerpack") {
				Destroy(selectedObject.gameObject);
				packHandler.Show();
				unsetSelectedObject(selectedObject);
			}
		}
	}
}
