using UnityEngine;

namespace Flower
{
	public class FlowerIdleBehaviour : FlowerBehaviour
	{
		// TODO: figure out order: Idle->spring->open or Idle->open->spring
		private const FlowerState next_state = FlowerState.SPRINGUP;
		public FlowerIdleBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.IDLE; }
		}
		
		public override FlowerState run ()
		{
			//Debug.Log("Idling...");
			controller.angular_velocity = 0.0f;
			controller.opened = 0.5f * (Mathf.Abs(Mathf.Sin(Time.time * 0.5f)));
			FlowerState ret = base.run ();
			return (sense_player? next_state : ret);
		}
	}
}

