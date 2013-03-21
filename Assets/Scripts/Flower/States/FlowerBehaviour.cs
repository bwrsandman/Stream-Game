#region Using
using UnityEngine;
#endregion

namespace Flower
{
	public abstract class FlowerBehaviour
	{
		#region Members
		protected FlowerBotController mController;
		#endregion
		
		#region Properties
		protected bool sense_player {
			get { return mController.sense_player; }
		}
		
		protected abstract FlowerState state {
			get;
		}
		
		public virtual float sphereRadius {
			get { return mController._sphereRadius; }
		}
		
		public virtual bool laserVisibility {
			get { return false; }
		}
		#endregion
		
		#region Initialization
		public FlowerBehaviour (FlowerBotController controller)
		{
			this.mController = controller;
		}
		#endregion
		
		#region Run Functions
		public virtual FlowerState run()
		{
			mController.laser.enabled = laserVisibility;
			mController.close_prism();
			mController.angular_velocity += mController.angular_acceleration * Time.deltaTime;
			mController.angular_velocity = Mathf.Max(-mController.max_angular_velocity, 
				Mathf.Min(mController.max_angular_velocity, mController.angular_velocity));
			mController.transform.RotateAroundLocal(Vector3.up,
				mController.angular_velocity * Time.deltaTime);
			return state;
		}
		#endregion
	}
}

