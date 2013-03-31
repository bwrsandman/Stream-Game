using UnityEngine;

namespace Instance
{

public class InstanceGotoBehaviour : InstanceBehaviour
{
	public InstanceGotoBehaviour (InstanceController controller)
		:base (controller)
	{ }

    public override void OnEnterState() {
        _controller._use_point_target = true;
    }

    public override void OnExitState() {
        _controller._use_point_target = false;
        _controller._target_point = Vector3.zero;
    }

	public override uint run()
	{
        Debug.Log("GOTO POINT!");
        Debug.Log(_controller._target_point);
        if(Seek(_controller._target_point))
            _controller.GotoState(new InstanceIdleBehaviour(_controller));

        return base.run();
	}
}

}

