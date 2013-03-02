using UnityEngine;

namespace Flower
{
	public class FlowerCloseUpBehaviour : FlowerBehaviour
	{
		public FlowerCloseUpBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.CLOSEUP; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			return ret;
		}
	}
}

