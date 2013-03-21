using UnityEngine;

namespace Flower
{
	public abstract class FlowerOpenningBehaviour : FlowerOpenCloseBehaviour
	{
		float av;
		const float open_speed = 10.0f;
		const float align_speed = 75.0f;
		const float align_y = -0.1f;
		
		public FlowerOpenningBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override float openclose_speed
		{
			get { return open_speed / Mathf.Max(av, 1.0f); }
		}
		
		public override FlowerState run ()
		{
			//Debug.Log("Openning...");
			FlowerState ret = base.run ();
			
			Vector3 looking_at = mController.transform.forward;			
			Vector3 target_at = new Vector3(looking_at.x, align_y, looking_at.z);
			
			float angle = Quaternion.Angle(mController.transform.rotation, Quaternion.LookRotation(target_at));
			mController.transform.rotation = Quaternion.Lerp(mController.transform.rotation,
															Quaternion.LookRotation(target_at),
															(1.0f + align_speed) / angle * Time.deltaTime);
			
			
			av = mController.angular_velocity;
			mController.angular_velocity = Mathf.Min(Mathf.Lerp(
				av, 0.0f, Time.deltaTime), 0.5f);
			
			return ret;
		}
	}
}

