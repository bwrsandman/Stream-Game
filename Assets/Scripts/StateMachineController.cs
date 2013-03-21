#region Using
using UnityEngine;
#endregion

public class StateMachineController : MonoBehaviour 
{
	#region Members
	protected uint behaviour_state;
	protected StateBehaviour [] behaviour;
	#endregion
	
	#region Public Members
	public Transform target_transform;
	#endregion
	
	#region Properties
	protected Vector3 target_pos
	{
		get { return target_transform.position; }
	}

	protected StateBehaviour currentBehaviour 
	{
		get { return behaviour[behaviour_state]; }
	}
	#endregion

	#region Internal Functions
	protected virtual void Update () 
	{
		behaviour_state = currentBehaviour.run ();
	}
	#endregion
}

