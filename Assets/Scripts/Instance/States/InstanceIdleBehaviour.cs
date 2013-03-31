using UnityEngine;

namespace Instance
{

public class InstanceIdleBehaviour : InstanceBehaviour
{
	public InstanceIdleBehaviour (InstanceController controller)
		:base (controller)
	{ }
		
	public override uint run()
	{
		Debug.Log("Idling.");

        float distance = _controller.GetTravelDistance(_controller._player_transform.position);

        if(distance > InstanceController.satisfactionRadius) {
            _controller.GotoState(new InstanceFollowBehaviour(_controller));
		}
			
		return base.run();
	}
}

}

