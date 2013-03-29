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
		
		protected abstract uint next_state
		{ get; }
		
		protected abstract float opening_goal
		{ get; }
		
		public override uint run ()
		{			
			((FlowerBotController)mController).opened = Mathf.Lerp(((FlowerBotController)mController).opened, opening_goal, 
				openclose_speed * Time.deltaTime);
			
			// TODO: implement this better
			((FlowerBotController)mController).angular_acceleration = 0.0f;
			((FlowerBotController)mController).angular_velocity = Mathf.Lerp(((FlowerBotController)mController).angular_velocity, 0.0f, angular_dec * Time.deltaTime);
			
			uint ret = base.run ();
			
			return (Mathf.Approximately(((FlowerBotController)mController).opened, opening_goal)? 
					next_state : ret);
		}
	}
}

