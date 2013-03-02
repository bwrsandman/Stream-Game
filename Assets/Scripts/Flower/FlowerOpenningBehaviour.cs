using UnityEngine;

namespace Flower
{
	public class FlowerOpenningBehaviour : FlowerBehaviour
	{
		public FlowerOpenningBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.OPENNING; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			return ret;
		}
	}
}

