using UnityEngine;
using System.Collections.Generic;

public class SelfActivationHandler : ActivationHandler 
{
	/* 
	 * Handler for the clone to pick up objects
	 * Must be put on clone
	 */
	protected override List<System.Type> activateableTypes
	{
		get 
		{
			return new List<System.Type>(new System.Type [] {typeof(Weapon)});
		}
	}
}
