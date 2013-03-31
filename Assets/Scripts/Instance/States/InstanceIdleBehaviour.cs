using UnityEngine;

namespace Instance
{

public class InstanceIdleBehaviour : InstanceBehaviour
{
	public InstanceIdleBehaviour (InstanceController controller)
		:base (controller)
	{ }
		
		public override uint run ()
		{
			float distance = _controller.distanceToPlayer;
				
			if(distance > InstanceController.satisfactionRadius) {
				_controller.GotoState(new InstanceFollowBehaviour(_controller));
			}
			
		return base.run();
	}
}

}

