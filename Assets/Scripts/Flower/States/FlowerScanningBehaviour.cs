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
		const float spot_threshold = 15.0f; // In Deg
		bool rotate_forwards = true;
		
		float circling;
		public FlowerScanningBehaviour (FlowerBotController controller)
			:base (controller)
		{
			circling = 0.0f;
			rotate_forwards = Random.value > 0.5f;
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.SCANNING; }
		}
		
		private bool spot_player()
		{

			return controller.sense_player && spot_threshold > controller.angle_to_other();
		}
		
		public override FlowerState run ()
		{
			//Debug.Log("Scanning...");
			// TODO generalize scan acceleration so we don't need to update this every time
			controller.angular_acceleration = (rotate_forwards? 1.0f : -1.0f) * scan_acceleration;
			controller.max_angular_velocity = max_scan;
			
			FlowerState ret = base.run ();
			circling += Mathf.Abs(controller.angular_velocity * Time.deltaTime);
			if(spot_player())
			{
				ret = FlowerState.OPENNING_FULL;
				controller.set_offset((rotate_forwards? 1.0f : -1.0f));
				controller.face_target(1.0f);
				circling = 0.0f;
				rotate_forwards ^= true;
			}
			else if (circling > Mathf.PI * 2.0f)
			{
				ret = FlowerState.CLOSEUP;
				circling = 0.0f;
			}
			return ret;
		}
	}
}

