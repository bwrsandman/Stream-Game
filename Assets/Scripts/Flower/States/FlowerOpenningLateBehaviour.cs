using UnityEngine;

namespace Flower
{
	public class FlowerOpenningLateBehaviour : FlowerOpenningBehaviour
	{
		const float open_goal = 1.0f;
		
		public FlowerOpenningLateBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.OPENNING_FULL; }
		}
		
		protected override FlowerState next_state
		{
			get { return FlowerState.SHOOTING; }
		}
		
		
		protected override float opening_goal
		{
			get { return open_goal; }
		}
		
		public override FlowerState run ()
		{
			controller.face_target(1.0f);
			return base.run ();
		}
		
	}
}

