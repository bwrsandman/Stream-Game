using UnityEngine;

namespace Flower
{
	public class FlowerCloseUpBehaviour : FlowerOpenCloseBehaviour
	{
		const float close_speed = 8.0f;
		const float look_speed = 2.0f;
	
		protected override uint next_state
		{ get { return (uint)FlowerState.DROPDOWN; } }
		
		public FlowerCloseUpBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override uint state
		{
			get { return (uint)FlowerState.CLOSEUP; }
		}
		
		protected override float openclose_speed
		{
			get { return close_speed; }
		}
		
		protected override float opening_goal
		{
			get { return 0.01f; }
		}
		
		public override uint run ()
		{
			//Debug.Log("Closing...");
			mController.transform.rotation = Quaternion.Slerp(mController.transform.rotation,
				Quaternion.LookRotation(Vector3.up), look_speed * Time.deltaTime);
			uint ret = base.run ();
			return ret;
		}
	}
}

