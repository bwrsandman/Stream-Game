#region Using
using UnityEngine;
#endregion

public abstract class StateMachineController : MonoBehaviour 
{
	#region Members
	protected uint behaviourState;
	protected StateBehaviour [] behaviour;
	public Transform targetTransform;
	#endregion
	
	#region Properties

	public Vector3 targetPosition
    { get { return targetTransform.position; } }

	public abstract Vector3 otherDirection
    { get; }

	protected StateBehaviour currentBehaviour
    { get { return behaviour[behaviourState]; } }
	
	protected abstract uint beginState
    { get; }
	
	protected abstract float lookSpeed
    { get; }
	
	protected abstract Vector3 mOffset
    { get; }

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
		behaviourState = currentBehaviour.run();
	}

	protected virtual void LateUpdate () { }
	#endregion

    #region Anton's cool shit

    public StateBehaviour _state_behaviour;

    public void GotoState(StateBehaviour state) {
        _state_behaviour.OnExitState();
        _state_behaviour = state;
        _state_behaviour.OnEnterState();
    }

    public void PushState(StateBehaviour state){
        _state_behaviour.OnExitState();
        state._last_state = _state_behaviour;
        _state_behaviour = state;
        _state_behaviour.OnEnterState();
    }

    public void PopState(){
        _state_behaviour.OnExitState();
        _state_behaviour = _state_behaviour._last_state;
        _state_behaviour.OnEnterState();
    }

    public void SafePopState() {
        if (_state_behaviour._last_state != null) {
            _state_behaviour.OnExitState();
            _state_behaviour = _state_behaviour._last_state;
            _state_behaviour.OnEnterState();
        }
    }

    #endregion
}

