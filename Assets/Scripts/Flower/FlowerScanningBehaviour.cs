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
		const float scan_acceleration = 2.0f;
		const float max_scan = 2.0f;
		
		float circling;
		public FlowerScanningBehaviour (FlowerBotController controller)
			:base (controller)
		{
			circling = 0.0f;
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.SCANNING; }
		}
		
		public override FlowerState run ()
		{
			Debug.Log("Scanning...");
			// TODO generalize scan acceleration so we don't need to update this every time
			controller.angular_acceleration = scan_acceleration;
			controller.max_angular_velocity = max_scan;
			
			FlowerState ret = base.run ();
			circling += controller.angular_velocity * Time.deltaTime;
			//if(sense_player)
			//	controller.face_target();
			if (circling > Mathf.PI * 2.0f)
			{
				ret = FlowerState.CLOSEUP;
				circling = 0.0f;
			}
			return ret;
		}
	}
}

