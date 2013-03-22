#region Using
using UnityEngine;
#endregion

public abstract class StateMachineController : MonoBehaviour 
{
	#region Members
	protected uint behaviourState;
	protected StateBehaviour [] behaviour;
	#endregion
	
	#region Public Members
	public Transform targetTransform;
	#endregion
	
	#region Properties
	public Vector3 targetPosition
	{
		get { return targetTransform.position; }
	}

	protected StateBehaviour currentBehaviour 
	{
		get { return behaviour[behaviourState]; }
	}
	
	protected abstract uint beginState
	{
		get;
	}
	
	protected abstract float lookSpeed
	{
		get;
	}
	
	protected abstract Vector3 mOffset
	{
		get;
	}
	
	public abstract Vector3 otherDirection
	{
		get;
	}
	#endregion
	
	#region Initialization
	protected virtual void Start()
	{
		behaviourState = beginState;
		BuildBehaviours();
	}
	#endregion
	
	#region Member functions
	protected abstract void BuildBehaviours();
	#endregion
	
	#region Public functions
	public Quaternion lookAtTarget(float delta)
	{
		return Quaternion.LookRotation(otherDirection + delta * mOffset);
	}

	public Vector3 vectorToTarget()
	{
		return targetPosition - transform.position;
	}
	#endregion
	
	#region Internal functions
	protected virtual void Update () 
	{
		behaviourState = currentBehaviour.run ();
	}
	#endregion
}

