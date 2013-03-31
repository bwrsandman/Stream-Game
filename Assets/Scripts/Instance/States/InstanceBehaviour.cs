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

    protected bool Seek(Vector3 position) {
        float distance = _controller.GetTravelDistance(position);

        if (distance < InstanceController.satisfactionRadius * 1.2f) {
            _controller.Stop();
            return true;
        }
        else if (distance > InstanceController.urgencyRadius) {
            _controller.Resume(true);
        }
        return false;
    }
}

}

