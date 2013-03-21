using UnityEngine;

namespace Flower
{
	public class FlowerCloseUpBehaviour : FlowerOpenCloseBehaviour
	{
		const float close_speed = 8.0f;
		const float look_speed = 2.0f;
	
		protected override FlowerState next_state
		{ get { return FlowerState.DROPDOWN; } }
		
		public FlowerCloseUpBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.CLOSEUP; }
		}
		
		protected override float openclose_speed
		{
			get { return close_speed; }
		}
		
		protected override float opening_goal
		{
			get { return 0.01f; }
		}
		
		public override FlowerState run ()
		{
			//Debug.Log("Closing...");
			controller.transform.rotation = Quaternion.Slerp(controller.transform.rotation,
				Quaternion.LookRotation(Vector3.up), look_speed * Time.deltaTime);
			FlowerState ret = base.run ();
			return ret;
		}
	}
}

