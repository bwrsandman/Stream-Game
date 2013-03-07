using UnityEngine;

namespace Flower
{
	/* ********************************************************
	 * Look for player or Instances.
	 * If the player has left the collision sphere, drop down
	 * and close up.
	 * If the player is still there, start shooting 
	 * ******************************************************** */
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
			Debug.Log("Scanning...");
			FlowerState ret = base.run ();
			if(sense_player)
				controller.face_target();
			else
				ret = FlowerState.CLOSEUP;
			return ret;
		}
	}
}

