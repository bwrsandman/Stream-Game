using UnityEngine;

namespace Flower
{
	public class FlowerOpenningBehaviour : FlowerOpenCloseBehaviour
	{
		float av;
		const float open_speed = 10.0f;
		const float open_goal = 0.75f;
		const float align_speed = 75.0f;
		const float align_y = -0.1f;
		
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
			get { return open_goal; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			
			Vector3 looking_at = controller.transform.forward;			
			Vector3 target_at = new Vector3(looking_at.x, align_y, looking_at.z);
			
			float angle = Quaternion.Angle(controller.transform.rotation, Quaternion.LookRotation(target_at));
			controller.transform.rotation = Quaternion.Lerp(controller.transform.rotation,
															Quaternion.LookRotation(target_at),
															(1.0f + align_speed) / angle * Time.deltaTime);
			
			
			av = controller.angular_velocity;
			controller.angular_velocity = Mathf.Min(Mathf.Lerp(
				av, 0.0f, Time.deltaTime), 0.5f);
			
			return ret;
		}
	}
}

