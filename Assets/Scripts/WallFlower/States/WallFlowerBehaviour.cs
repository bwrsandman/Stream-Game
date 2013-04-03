#region Using
using UnityEngine;
#endregion

namespace WallFlower
{
	public abstract class WallFlowerBehaviour : StateBehaviour {

		protected WallFlowerBotController _flower_controller
        { get { return (WallFlowerBotController)mController; } }

		protected bool sense_player
        { get { return _flower_controller.sense_player; } }
		
		public virtual float sphereRadius
        { get { return _flower_controller._sphereRadius; } }
		
		public virtual bool laserVisibility
        { get { return false; } }
		
		public WallFlowerBehaviour (WallFlowerBotController controller)
			: base (controller)
		{ }

        public virtual float stateVolume { get { return ((WallFlowerBotController)mController).volume; } }
		
		public override uint run()
		{
			_flower_controller.laser.enabled = laserVisibility;
			_flower_controller.close_prism();
            mController.audio.volume = stateVolume;
			return state;
		}
	}
}