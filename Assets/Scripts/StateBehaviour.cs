public abstract class StateBehaviour
{
	protected StateMachineController mController;

	protected abstract uint state
    { get; }
	
	public StateBehaviour (StateMachineController controller)
	{ this.mController = controller; }

    public abstract uint run();

    // Anton's cool shit
    public StateBehaviour _last_state;
    public virtual void OnEnterState() { }
    public virtual void OnExitState() { }

    public void RunPushedState() {
        if (_last_state == null)
            return;
        mController.DisableStateSwap();
        _last_state.run();
        mController.EnableStateSwap();
    }

}

