using UnityEngine;

namespace Flower
{
	public class FlowerShootingBehaviour : FlowerBehaviour
	{
		public FlowerShootingBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.SHOOTING; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			return ret;
		}
	}
}

