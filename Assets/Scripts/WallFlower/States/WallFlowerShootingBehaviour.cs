using UnityEngine;

namespace WallFlower
{
	public class WallFlowerShootingBehaviour : WallFlowerBehaviour
	{
		public WallFlowerShootingBehaviour (WallFlowerBotController controller)
			:base (controller)
		{
		}

        public float timeout
        {
            get { return ((WallFlowerBotController)mController).timeout; }
            set { ((WallFlowerBotController)mController).timeout = value; }
        }


		public override bool laserVisibility {
			get { return true; }
		}
		
		protected override uint state
		{
			get { return (uint)WallFlowerState.SHOOTING; }
		}

		public override uint run ()
		{
            WallFlowerBotController contr = (WallFlowerBotController)mController;
            uint ret = base.run ();
            timeout -= Time.deltaTime;
            if(timeout < 0.0f) {
                contr.audio.Stop();
                contr.close_prism();
                timeout = 1.0f;
                return (uint)WallFlowerState.SCANNING;
            } else {
                return ret;
            }
		}
	}
}

