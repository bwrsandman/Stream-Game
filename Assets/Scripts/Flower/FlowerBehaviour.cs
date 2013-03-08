using UnityEngine;

namespace Flower
{
	public abstract class FlowerBehaviour
	{
		FlowerBehaviour [] children;
		protected FlowerBotController controller;
		protected bool sense_player {
			get { return controller.sense_player; }
		}
		
		protected abstract FlowerState state {
			get;
		}
		
		public FlowerBehaviour (FlowerBotController controller)
		{
			this.controller = controller;
		}
		
		public virtual FlowerState run()
		{
			controller.close_prism();
			controller.angular_velocity += controller.angular_acceleration * Time.deltaTime;
			controller.angular_velocity = Mathf.Max(-controller.max_angular_velocity, 
				Mathf.Min(controller.max_angular_velocity, controller.angular_velocity));
			controller.transform.RotateAroundLocal(Vector3.up,
				controller.angular_velocity * Time.deltaTime);
			return state;
		}
	}
}

