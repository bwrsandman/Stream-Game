using UnityEngine;

namespace Flower
{
	public class FlowerShootingBehaviour : FlowerBehaviour
	{
		// TODO: open up fully, slow down rotation, aim, fire, move, close half, scan again
		
		//LineRenderer
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
			//Debug.Log("Shooting...");
			
			FlowerState ret = base.run ();
			return (controller.face_target(-1.0f, 0.5f) < 2.5f)?
				FlowerState.OPENNING_MID : ret;
		}
	}
}

