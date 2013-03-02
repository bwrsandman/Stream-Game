using UnityEngine;

namespace Flower
{
	public class FlowerDropDownBehaviour : FlowerBehaviour
	{
		public FlowerDropDownBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.DROPDOWN; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			return ret;
		}
	}
}

