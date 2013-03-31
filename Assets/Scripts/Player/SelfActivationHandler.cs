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
			Ledge ledge = (Ledge)selectedObject;
			ledge.supporter = controller.gameObject;
			
			controller.facing = false;
			
			float theta = selectedObject.transform.eulerAngles.y;
			float offset = 90.0f;
			Vector3 target = selectedObject.transform.position + 0.3f * selectedObject.transform.up;
			target.y = transform.position.y;
			transform.position = target;
			controller.rotateY (theta + offset);
			
			animator.SetBool("Kneel", true);
			unsetSelectedObject(selectedObject);
		}
	}
}
