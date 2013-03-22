using UnityEngine;
using System.Collections.Generic;

public class CloneActivationHandler : ActivationHandler 
{
	protected override List<System.Type> activateableTypes
	{
		get 
		{
			return new List<System.Type>(new System.Type [] {typeof(Weapon)});
		}
	}
}
