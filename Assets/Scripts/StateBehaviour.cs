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

}

