using UnityEngine;

namespace Flower
{
	public class FlowerIdleBehaviour : FlowerBehaviour
	{
		private const uint next_state = (uint)FlowerState.SPRINGUP;
		public FlowerIdleBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		public override float sphereRadius {
			get { return 0.5f * ((FlowerBotController)mController)._sphereRadius; }
		}
		
		protected override uint state
		{
			get { return (uint)FlowerState.IDLE; }
		}
		
		public override uint run ()
		{
			((FlowerBotController)mController).angular_velocity = 0.0f;
			((FlowerBotController)mController).opened = 0.5f * (Mathf.Abs(Mathf.Sin(Time.time * 0.5f)));
			uint ret = base.run ();
			return (sense_player? next_state : ret);
		}
	}
}

