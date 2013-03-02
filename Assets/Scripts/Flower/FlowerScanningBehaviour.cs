using UnityEngine;

namespace Flower
{
	public class FlowerScanningBehaviour : FlowerBehaviour
	{
		public FlowerScanningBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.SCANNING; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			return ret;
		}
	}
}

