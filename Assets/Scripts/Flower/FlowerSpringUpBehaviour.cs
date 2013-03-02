using UnityEngine;

namespace Flower
{
	public class FlowerSpringUpBehaviour : FlowerBehaviour
	{
		public FlowerSpringUpBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.SPRINGUP; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			return ret;
		}
	}
}

