using UnityEngine;

namespace Flower
{
	public class FlowerCloseUpBehaviour : FlowerOpenCloseBehaviour
	{
		const float close_speed = 8.0f;
	
		protected override FlowerState next_state
		{ get { return FlowerState.DROPDOWN; } }
		
		public FlowerCloseUpBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.CLOSEUP; }
		}
		
		protected override float openclose_speed
		{
			get { return close_speed; }
		}
		
		protected override float opening_goal
		{
			get { return 0.01f; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			return ret;
		}
	}
}

