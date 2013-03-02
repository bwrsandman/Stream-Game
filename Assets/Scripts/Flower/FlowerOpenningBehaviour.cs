using UnityEngine;

namespace Flower
{
	public class FlowerOpenningBehaviour : FlowerBehaviour
	{
		// TODO: figure out order: Idle->spring->open or Idle->open->spring
		private const FlowerState next_state = FlowerState.SCANNING;
		
		float look_speed = 4.0f;
		float open_speed = 10.0f;
		public FlowerOpenningBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.OPENNING; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			
			float av = controller.angular_velocity;
			controller.angular_velocity = Mathf.Min(Mathf.Lerp(
				av, 0.0f, Time.deltaTime),0.1f);
			controller.transform.rotation = Quaternion.Slerp(
				controller.transform.rotation, 
				controller.lookat_target(), 
				look_speed * Time.deltaTime);
			controller.opened = Mathf.Lerp(controller.opened, 1.01f, 
				(open_speed / Mathf.Max(av, 1.0f)) * Time.deltaTime);
			return (controller.opened >= 1.0f? next_state : ret);
		}
	}
}

