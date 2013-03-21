using UnityEngine;

namespace Flower
{
	public class FlowerDropDownBehaviour : FlowerSpringUpDownBehaviour
	{
		float _speed = 0.0f;
		float _accel = 9.8f;
		const float _angular_speed = 5.0f;
		
		public FlowerDropDownBehaviour (FlowerBotController controller)
			:base (controller, controller.transform.position)
		{
		}
		
		protected override float speed
		{ get { return _speed; } }
		
		protected override float angular_speed
		{ get { return _angular_speed; } }
		
		protected override FlowerState next_state
		{ get { return FlowerState.IDLE; } }
		
		protected override FlowerState state
		{
			get { return FlowerState.DROPDOWN; }
		}
		
		public override FlowerState run ()
		{
			FlowerState ret = base.run ();
			_speed = (ret == next_state)? 0.0f : _speed + _accel * Time.deltaTime;
			return ret;
		}
	}
}

