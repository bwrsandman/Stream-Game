using UnityEngine;

namespace Flower
{
	public class FlowerOpenningEarlyBehaviour : FlowerOpenningBehaviour
	{
		const float open_goal = 0.75f;
		public FlowerOpenningEarlyBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.OPENNING_MID; }
		}
		
		protected override FlowerState next_state
		{ 
			get { return FlowerState.SCANNING; } 
		}
		
		protected override float opening_goal
		{
			get { return open_goal; }
		}		
		
	}
}

