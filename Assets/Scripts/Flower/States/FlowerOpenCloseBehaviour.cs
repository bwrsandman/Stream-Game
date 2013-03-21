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
			mController.opened = Mathf.Lerp(mController.opened, opening_goal, 
				openclose_speed * Time.deltaTime);
			
			// TODO: implement this better
			mController.angular_acceleration = 0.0f;
			mController.angular_velocity = Mathf.Lerp(mController.angular_velocity, 0.0f, angular_dec * Time.deltaTime);
			
			FlowerState ret = base.run ();
			
			return (Mathf.Approximately(mController.opened, opening_goal)? 
					next_state : ret);
		}
	}
}

