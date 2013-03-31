using UnityEngine;
using System.Collections.Generic;

public class SelfActivationHandler : ActivationHandler 
{
	InstanceController controller;
	
	protected override void Start ()
	{
		base.Start ();
		controller = GetComponent<InstanceController>();
	}
	
	/* 
	 * Handler for the clone to pick up objects
	 * Must be put on clone
	 */
	protected override List<System.Type> activateableTypes
	{
		get 
		{
			return new List<System.Type>(new System.Type [] { typeof(Weapon), typeof(Ledge) });
		}
	}
	
	public override void Activate ()
	{
		base.Activate ();
		if (!selectedObject) {
			return;
		} else if (selectedObject.GetType() == typeof(Ledge)) {
			animator.SetBool("Kneel", true);
			float theta = selectedObject.transform.eulerAngles.y;
			float phi = controller._player_transform.rotation.y;
			float offset = ((phi-theta) < 0)? 90.0f : -90.0f;
			controller.rotateY (theta + offset);
			unsetSelectedObject(selectedObject);
		}
	}
}
