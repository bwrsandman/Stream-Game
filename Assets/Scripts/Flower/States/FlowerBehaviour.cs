#region Using
using UnityEngine;
#endregion

namespace Flower
{
	public abstract class FlowerBehaviour : StateBehaviour {

		protected FlowerBotController _flower_controller
        { get { return (FlowerBotController)mController; } }

		protected bool sense_player
        { get { return _flower_controller.sense_player; } }
		
		public virtual float sphereRadius
        { get { return _flower_controller._sphereRadius; } }
		
		public virtual bool laserVisibility
        { get { return false; } }
		
		public FlowerBehaviour (FlowerBotController controller)
			: base (controller)
		{ }

        public virtual float stateVolume { get { return ((FlowerBotController)mController).volume; } }
		
		public override uint run()
		{
			_flower_controller.laser.enabled = laserVisibility;
			_flower_controller.close_prism();
			_flower_controller.angular_velocity += _flower_controller.angular_acceleration * Time.deltaTime;
            _flower_controller.angular_velocity = Mathf.Clamp(  _flower_controller.angular_velocity,
															  - _flower_controller.max_angular_velocity, 
																_flower_controller.max_angular_velocity );
			_flower_controller.transform.RotateAroundLocal(	Vector3.up,
															_flower_controller.angular_velocity * Time.deltaTime);
            mController.audio.volume = stateVolume;
			return state;
		}
	}
}