using UnityEngine;

namespace Flower
{
	public abstract class FlowerOpenCloseBehaviour: FlowerBehaviour
	{
		public FlowerOpenCloseBehaviour (FlowerBotController controller)
			:base (controller)
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
			FlowerState ret = base.run ();
			controller.opened = Mathf.Lerp(controller.opened, opening_goal, 
				openclose_speed * Time.deltaTime);
			return (Mathf.Approximately(controller.opened, opening_goal)? next_state : ret);
		}
	}
}

