using UnityEngine;

namespace Instance
{

public class InstanceActivateBehaviour : InstanceGotoBehaviour
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
        float distance = Vector3.Distance(_controller.targetPosition, _controller.transform.position);

        if (distance < InstanceController.satisfactionRadius) {
            _controller.Stop();
            _controller.GotoState(new InstanceIdleBehaviour(_controller));
        }
        else if (distance > InstanceController.urgencyRadius) {
            _controller.Resume(true);
        }

        return base.run();
	}

    public override void OnExitState() {
        _controller.Activate();
    }
}

}

