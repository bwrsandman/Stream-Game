using UnityEngine;
using System.Collections.Generic;

public class PlayerActivationHandler : SelectionActivationHandler 
{	
	PackHandler packHandler;
	
	protected override List<System.Type> activateableTypes
	{
		get 
		{
			return new List<System.Type>(new System.Type [] {
				typeof(Weapon), 
				typeof(Equipment), 
				typeof(TimeRift), 
				typeof(Ledge)
			});
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
		if (!selectedObject) {
			return;
		} else if (selectedObject.GetType() == typeof(Equipment)) {
			if (selectedObject.name == "Powerpack") {
				Destroy(selectedObject.gameObject);
				packHandler.Show();
				unsetSelectedObject(selectedObject);
				GetComponent<PlayerHealth>().setIndicator();
			}
		} else if (selectedObject.GetType() == typeof(Ledge)) {
			Ledge ledge = (Ledge)selectedObject;
			if(ledge.supporter) {
				gameObject.rigidbody.useGravity = false;
				gameObject.rigidbody.Sleep();
				
				Vector3 target = ledge.supporter.transform.position;
				target += 0.45f * ledge.supporter.transform.forward;
				target += 0.35f * ledge.supporter.transform.right;
				
				target.y = gameObject.transform.position.y;
				gameObject.transform.position = target;
				Quaternion rot = Quaternion.Euler(0.0f, ledge.supporter.transform.rotation.eulerAngles.y - 90.0f, 0.0f);
				gameObject.transform.rotation = rot;
				
				gameObject.collider.enabled = false;
				animator.SetBool("Climbing", true);
			}
		}
	}
}
