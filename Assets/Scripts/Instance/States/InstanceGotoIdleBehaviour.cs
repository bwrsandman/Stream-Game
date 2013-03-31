using UnityEngine;

namespace Instance
{

public class InstanceGotoIdleBehaviour : InstanceBehaviour
{
    public InstanceGotoIdleBehaviour(InstanceController controller)
        :base (controller)
    { }

    private float _time;

    public override void OnEnterState() {
        _time = Time.time;
    }

    public override uint run()
    {
        if ((Time.time - _time) > 5.0f)
            _controller.GotoState(new InstanceIdleBehaviour(_controller));

        return base.run();
    }
}

}
