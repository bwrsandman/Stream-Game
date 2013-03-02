using UnityEngine;

namespace Flower
{
	public class FlowerSpringUpBehaviour : FlowerBehaviour
	{
		// TODO: figure out order: Idle->spring->open or Idle->open->spring
		private const FlowerState next_state = FlowerState.OPENNING;
		
		Vector3 target;
		Transform transform;
		float speed = 5.0f;
		float angular_speed = 20.0f;
		
		public FlowerSpringUpBehaviour (FlowerBotController controller)
			:base (controller)
		{
			transform = controller.transform;
			target = transform.position + new Vector3(0.0f, 3.5f, 0.0f);
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.SPRINGUP; }
		}
		
		public override FlowerState run ()
		{
			controller.angular_velocity = angular_speed;
			Vector3 pos = transform.position;
			transform.position = Vector3.Slerp(pos, target, speed * Time.deltaTime);
			FlowerState ret = base.run ();
			return ((pos - target).sqrMagnitude < 0.01f? next_state : ret);
		}
	}
}

