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
		//Debug.Log("Following.");
			
		float distance = _controller.distanceToPlayer;
		//_controller.facePlayer();
		
		if(distance < InstanceController.satisfactionRadius * 1.2f) {
			//Debug.Log("Player within satisfaction radius. Idling.");
			_controller.Stop();
            _controller.GotoState(new InstanceIdleBehaviour(_controller));
		}
		else if(distance > InstanceController.urgencyRadius) {
			//Debug.Log("Player outside of urgency radius. Must run to catch up.");
			_controller.Resume(true);
		}
			
		return base.run();
	}
}

}

