using UnityEngine;

namespace Flower
{
	public abstract class FlowerBehaviour
	{
		FlowerBehaviour [] children;
		protected FlowerBotController controller;
		public bool sense_player = false;
		
		protected abstract FlowerState state
		{
			get;
		}
		
		public FlowerBehaviour (FlowerBotController controller)
		{
			this.controller = controller;
		}
		
		public virtual FlowerState run()
		{
			controller.close_prism();
			controller.transform.RotateAroundLocal(Vector3.up,
				controller.angular_velocity * Time.deltaTime);
			return state;
		}
	}
}

