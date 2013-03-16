using UnityEngine;

namespace Flower
{
	public class FlowerIdleBehaviour : FlowerBehaviour
	{
		private const FlowerState next_state = FlowerState.SPRINGUP;
		public FlowerIdleBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		public override float sphereRadius {
			get { return 0.5f * controller._sphereRadius; }
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.IDLE; }
		}
		
		public override FlowerState run ()
		{
			controller.angular_velocity = 0.0f;
			controller.opened = 0.5f * (Mathf.Abs(Mathf.Sin(Time.time * 0.5f)));
			FlowerState ret = base.run ();
			return (sense_player? next_state : ret);
		}
	}
}

