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
        _switched_state = false;
        _can_state_swap = true;
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
    protected bool _switched_state;
    protected bool _can_state_swap;

    protected void OnEnterState() {
        //Debug.Log("ENTERING STATE");
        _state_behaviour.OnEnterState();
        _switched_state = false;
    }

    protected void OnExitState() {
        //Debug.Log("EXITING STATE");
        _state_behaviour.OnExitState();
        _switched_state = true;
    }

    public void EnableStateSwap() {
        _can_state_swap = true;
    }

    public void DisableStateSwap() {
        _can_state_swap = false;
    }

    public void GotoState(StateBehaviour state) {
        if (!_can_state_swap)
            return;
        OnExitState();
        _state_behaviour = state;
    }

    public void PushState(StateBehaviour state) {
        if (!_can_state_swap)
            return;
        OnExitState();
        state._last_state = _state_behaviour;
        _state_behaviour = state;
    }

    public void PopState() {
        if (!_can_state_swap)
            return;
        OnExitState();
        _state_behaviour = _state_behaviour._last_state;
    }

    public void SafePopState() {
        if (!_can_state_swap || _state_behaviour._last_state == null)
            return;
        OnExitState();
        _state_behaviour = _state_behaviour._last_state;
    }

    #endregion
}

