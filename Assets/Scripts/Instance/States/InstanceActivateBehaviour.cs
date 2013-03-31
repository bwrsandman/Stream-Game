using UnityEngine;

namespace Instance
{

public class InstanceActivateBehaviour : InstanceGotoBehaviour
{
	public InstanceActivateBehaviour (InstanceController controller)
		:base (controller)
	{ }

    public override void OnEnterState() {
        Debug.Log("I'm now in this really cool state!");
        Debug.Log(_controller._target.transform.position);
        Debug.Log(_controller._player_transform.position);
        _controller.targetTransform = _controller._target.transform;
        _controller.Resume(false);
    }

	public override uint run()
	{
        //Debug.Log("I'm now in this really cool state!");

        float distance = Vector3.Distance(_controller.targetPosition, _controller.transform.position);
        //_controller.facePlayer();

        if (distance < InstanceController.satisfactionRadius * 0.2f) {
            Debug.Log("Player within satisfaction radius. Idling.");
            _controller.Stop();
            _controller.GotoState(new InstanceIdleBehaviour(_controller));
        }
        else if (distance > InstanceController.urgencyRadius) {
            //Debug.Log("Player outside of urgency radius. Must run to catch up.");
            _controller.Resume(true);
        }

        return base.run();
	}

    public override void OnExitState() {
        Debug.Log("I'm LEAVING!");
        _controller.Activate();
    }
}

}

