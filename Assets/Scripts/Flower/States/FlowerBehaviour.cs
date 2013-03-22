#region Using
using UnityEngine;
#endregion

namespace Flower
{
	public abstract class FlowerBehaviour : StateBehaviour
	{
		#region Members
		#endregion
		
		#region Properties
		protected bool sense_player {
			get { return ((FlowerBotController)mController).sense_player; }
		}
		
		public virtual float sphereRadius {
			get { return ((FlowerBotController)mController)._sphereRadius; }
		}
		
		public virtual bool laserVisibility {
			get { return false; }
		}
		#endregion
		
		#region Initialization
		public FlowerBehaviour (FlowerBotController controller)
			: base (controller)
		{
		}
		#endregion
		
		#region Run Functions
		public override uint run()
		{
			((FlowerBotController)mController).laser.enabled = laserVisibility;
			((FlowerBotController)mController).close_prism();
			((FlowerBotController)mController).angular_velocity += ((FlowerBotController)mController).angular_acceleration * Time.deltaTime;
			((FlowerBotController)mController).angular_velocity = Mathf.Max(-((FlowerBotController)mController).max_angular_velocity, 
				Mathf.Min(((FlowerBotController)mController).max_angular_velocity, ((FlowerBotController)mController).angular_velocity));
			((FlowerBotController)mController).transform.RotateAroundLocal(Vector3.up,
				((FlowerBotController)mController).angular_velocity * Time.deltaTime);
			return state;
		}
		#endregion
	}
}