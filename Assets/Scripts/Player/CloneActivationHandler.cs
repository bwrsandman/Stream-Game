using UnityEngine;
using System.Collections.Generic;

public class CloneActivationHandler : SelectionActivationHandler 
{
	/* 
	 * Handler for the player to select objects to send clones to
	 * Must be put on player
	 */
	protected override List<System.Type> activateableTypes
	{
		get 
		{
			return new List<System.Type>(new System.Type [] { typeof(Weapon), typeof(Ledge) });
		}
	}
}
