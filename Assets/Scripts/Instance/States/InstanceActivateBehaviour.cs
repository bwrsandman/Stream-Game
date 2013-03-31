using UnityEngine;

namespace Instance
{

public class InstanceActivateBehaviour : InstanceBehaviour
{
	public InstanceActivateBehaviour (InstanceController controller)
		:base (controller)
	{ }

    public override void OnEnterState() {
        _controller.targetTransform = _controller._target.transform;
        _controller.Resume(false);
    }

	public override uint run()
	{
        if (Seek(_controller.targetPosition, InstanceController.satisfactionRadius * 0.8f))
            _controller.GotoState(new InstanceIdleBehaviour(_controller));

        return base.run();
	}

    public override void OnExitState() {
        _controller.Activate();
    }
}

}

