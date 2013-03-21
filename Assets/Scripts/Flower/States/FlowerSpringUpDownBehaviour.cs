using UnityEngine;

namespace Flower
{
	public abstract class FlowerSpringUpDownBehaviour : FlowerBehaviour
	{
		Vector3 target;
		protected Transform transform;
		
		public FlowerSpringUpDownBehaviour (FlowerBotController controller, Vector3 target)
			:base (controller)
		{
			this.target = target;
			this.transform = controller.transform;
		}
		
		protected abstract FlowerState next_state
		{ get; }
		
		protected abstract float speed
		{ get; }
		
		protected abstract float angular_speed
		{ get; }
		
		public override FlowerState run ()
		{
			controller.angular_velocity = angular_speed;
			Vector3 pos = transform.position;
			transform.position = Vector3.Lerp(pos, target, speed * Time.deltaTime);
			FlowerState ret = base.run ();
			return ((pos - target).sqrMagnitude < 0.01f? next_state : ret);
		}
		
		
	}
}

