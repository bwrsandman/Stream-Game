using UnityEngine;

namespace Instance
{
	public class InstanceIdleBehaviour : InstanceBehaviour
	{
		public InstanceIdleBehaviour (InstanceController controller)
			:base (controller)
		{
		}
		
		protected override uint state
		{
			get { return (uint)InstanceState.IDLE; }
		}
		
		public override uint run ()
		{
			Debug.Log("Idling.");
			uint ret = state;
			
			float distance = controller.distanceToPlayer;
			
			if(distance > InstanceController.satisfactionRadius) {
				controller.Resume(false);
				ret = (uint)InstanceState.FOLLOW;
			}
			
			return ret;
		}
	}
}

