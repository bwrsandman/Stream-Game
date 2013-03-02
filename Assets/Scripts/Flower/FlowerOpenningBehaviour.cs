using UnityEngine;

namespace Flower
{
	public class FlowerOpenningBehaviour : FlowerOpenCloseBehaviour
	{
		float av;
		const float open_speed = 10.0f;
		
		// TODO: figure out order: Idle->spring->open or Idle->open->spring
		protected override FlowerState next_state
		{ get { return FlowerState.SCANNING; } }
		
		public FlowerOpenningBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.OPENNING; }
		}
		
		protected override float openclose_speed
		{
			get { return open_speed / Mathf.Max(av, 1.0f); }
		}
		
		protected override float opening_goal
		{
			get { return 1.0f; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			
			av = controller.angular_velocity;
			controller.angular_velocity = Mathf.Min(Mathf.Lerp(
				av, 0.0f, Time.deltaTime), 0.1f);
			controller.face_target();
			return ret;
		}
	}
}

