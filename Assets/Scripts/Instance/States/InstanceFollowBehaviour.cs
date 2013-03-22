using UnityEngine;

namespace Instance
{
	public class InstanceFollowBehaviour : InstanceBehaviour
	{
		public InstanceFollowBehaviour (InstanceController controller)
			:base (controller)
		{
		}
		
		protected override uint state
		{
			get { return (uint)InstanceState.FOLLOW; }
		}
		
		public override uint run ()
		{
			//Debug.Log("Following.");
			uint ret = state;
			
			float distance = controller.distanceToPlayer;
			controller.facePlayer();
			
			
			if(distance < InstanceController.satisfactionRadius * 1.2f) {
				//Debug.Log("Player within satisfaction radius. Idling.");
				controller.Stop();
				ret = (uint)InstanceState.IDLE;
			}
			else if(distance > InstanceController.urgencyRadius) {
				//Debug.Log("Player outside of urgency radius. Must run to catch up.");
				controller.Resume(true);
			}
			
			return ret;
		}
	}
}

