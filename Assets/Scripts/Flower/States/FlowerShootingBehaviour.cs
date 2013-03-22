using UnityEngine;

namespace Flower
{
	public class FlowerShootingBehaviour : FlowerBehaviour
	{
		public FlowerShootingBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
				
		public override bool laserVisibility {
			get { return true; }
		}
		
		protected override uint state
		{
			get { return (uint)FlowerState.SHOOTING; }
		}
		
		public override uint run ()
		{
			uint ret = base.run ();
			return (((FlowerBotController)mController).faceTarget(-1.0f, 0.5f) < 2.5f)?
				(uint)FlowerState.OPENNING_MID : ret;
		}
	}
}

