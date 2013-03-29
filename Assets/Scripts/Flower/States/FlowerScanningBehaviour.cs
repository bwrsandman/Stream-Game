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
		
		protected override uint state
		{
			get { return (uint)FlowerState.SCANNING; }
		}
		
		private bool spot_player()
		{

			return ((FlowerBotController)mController).sense_player && spot_threshold > ((FlowerBotController)mController).angle_to_other();
		}
		
		public override uint run ()
		{
			//Debug.Log("Scanning...");
			// TODO generalize scan acceleration so we don't need to update this every time
			((FlowerBotController)mController).angular_acceleration = (rotate_forwards? 1.0f : -1.0f) * scan_acceleration;
			((FlowerBotController)mController).max_angular_velocity = max_scan;
			
			uint ret = base.run ();
			circling += Mathf.Abs(((FlowerBotController)mController).angular_velocity * Time.deltaTime);
			if(spot_player())
			{
				ret = (uint)FlowerState.OPENNING_FULL;
				((FlowerBotController)mController).set_offset((rotate_forwards? 1.0f : -1.0f));
				((FlowerBotController)mController).faceTarget(1.0f);
				circling = 0.0f;
				rotate_forwards ^= true;
			}
			else if (circling > Mathf.PI * 2.0f)
			{
				ret = (uint)FlowerState.CLOSEUP;
				circling = 0.0f;
			}
			return ret;
		}
	}
}

