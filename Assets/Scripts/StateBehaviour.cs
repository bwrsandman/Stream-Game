public abstract class StateBehaviour
{
	#region Members
	protected StateMachineController mController;
	#endregion
	
	#region Properties
	protected abstract uint state {
		get;
	}
	#endregion
	
	#region Initialization
	public StateBehaviour (StateMachineController controller)
	{
		this.mController = controller;
	}
	#endregion
	
	#region Run Functions
	public abstract uint run();
	#endregion
}

