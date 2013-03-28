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
		
		protected override uint state
		{
			get { return (uint)FlowerState.OPENNING_MID; }
		}
		
		protected override uint next_state
		{ 
			get { return (uint)FlowerState.SCANNING; } 
		}
		
		protected override float opening_goal
		{
			get { return open_goal; }
		}		
		
	}
}
