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
			uint ret = state;
			controller.targetTransform = controller.player;
			
			Vector3 travelVector = controller.travelVector;
			
			travelVector.y = 0.0f;
			float distance = travelVector.magnitude;
			controller.rotateY(Quaternion.LookRotation(travelVector).eulerAngles.y);
			
			
			if(distance < InstanceController.satisfaction_radius) {
				//Debug.Log("Player within satisfaction radius. Idling.");
				controller.Stop();
			}
			else if(distance < InstanceController.urgency_radius) {
				//Debug.Log("Just outside satisfaction radius. Walking to follow.");
				controller.Resume(false);
			}
			else {
				//Debug.Log("Player outside of urgency radius. Must run to catch up.");
				controller.Resume(true);
			}
			
			return ret;
		}
	}
}

