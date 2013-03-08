using UnityEngine;

namespace Flower
{
	public class FlowerSpringUpBehaviour : FlowerSpringUpDownBehaviour
	{
		// TODO: figure out order: Idle->spring->open or Idle->open->spring
		const float _speed = 5.0f;
		const float _angular_speed = 20.0f;
		const float height = 3.5f;
		const float height_variation = 2.0f;
		
		protected override FlowerState next_state
		{ get { return FlowerState.OPENNING_MID; } }

		protected override float speed
		{ get { return _speed; } }
		
		protected override float angular_speed
		{ get { return _angular_speed; } }
		
		public FlowerSpringUpBehaviour (FlowerBotController controller)
			:base (controller, controller.transform.position + new Vector3(0.0f, height + Random.value * height_variation, 0.0f))
		{
		}
		
		protected override FlowerState state
		{
			get { return FlowerState.SPRINGUP; }
		}
		
		public override FlowerState run ()
		{
			//Debug.Log("Springing up...");
			FlowerState ret = base.run ();
			return ret;
		}
		
	}
}

