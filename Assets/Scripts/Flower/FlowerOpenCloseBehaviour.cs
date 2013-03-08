using UnityEngine;

namespace Flower
{
	public abstract class FlowerOpenCloseBehaviour: FlowerBehaviour
	{
		const float angular_dec = 5.0f;
		public FlowerOpenCloseBehaviour (FlowerBotController controller)
			: base (controller)
		{
		}
		
		protected abstract float openclose_speed
		{ get; }
		
		protected abstract FlowerState next_state
		{ get; }
		
		protected abstract float opening_goal
		{ get; }
		
		public override FlowerState run ()
		{			
			controller.opened = Mathf.Lerp(controller.opened, opening_goal, 
				openclose_speed * Time.deltaTime);
			
			// TODO: implement this better
			controller.angular_acceleration = 0.0f;
			controller.angular_velocity = Mathf.Lerp(controller.angular_velocity, 0.0f, angular_dec * Time.deltaTime);
			
			FlowerState ret = base.run ();
			
			return (Mathf.Approximately(controller.opened, opening_goal)? 
					next_state : ret);
		}
	}
}

