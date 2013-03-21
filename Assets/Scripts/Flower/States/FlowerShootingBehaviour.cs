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
		
		protected override FlowerState state
		{
			get { return FlowerState.SHOOTING; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			return (controller.face_target(-1.0f, 0.5f) < 2.5f)?
				FlowerState.OPENNING_MID : ret;
		}
	}
}

