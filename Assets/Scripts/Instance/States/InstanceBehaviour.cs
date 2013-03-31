#region Using
using UnityEngine;
#endregion

namespace Instance
{

public abstract class InstanceBehaviour : StateBehaviour
{
	protected InstanceController _controller
    { get { return (InstanceController)mController; } }
		
	public InstanceBehaviour (InstanceController controller)
		: base(controller)
	{ }

    protected override uint state
    { get { return 0; } }


	public override uint run()
	{
		return state;
	}
}

}

