using UnityEngine;
using System.Collections;

public class PlayerActivationHandler : ActivationHandler 
{	
	PackHandler packHandler;
	
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
			}
		}
	}
}
