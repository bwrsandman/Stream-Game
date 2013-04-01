using UnityEngine;

namespace Instance
{

public class InstanceFollowBehaviour : InstanceBehaviour
{
	public InstanceFollowBehaviour (InstanceController controller)
		:base (controller)
	{ }

    public override void OnEnterState() {
        _controller.targetTransform = _controller._player_transform;
        _controller.Resume(false);
    }

	public override uint run ()
	{
        if (Seek(_controller._player_transform.position))
            _controller.GotoState(new InstanceIdleBehaviour(_controller));

		return base.run();
	}
}

}

