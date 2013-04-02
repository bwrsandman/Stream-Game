using UnityEngine;

namespace WallFlower
{
	public class WallFlowerIdleBehaviour : WallFlowerBehaviour
	{
		private const uint next_state = (uint)WallFlowerState.SCANNING;
		public WallFlowerIdleBehaviour (WallFlowerBotController controller)
			:base (controller)
		{
		}
		
		public override float sphereRadius {
			get { return 0.5f * ((WallFlowerBotController)mController)._sphereRadius; }
		}
		
		protected override uint state
		{
			get { return (uint)WallFlowerState.IDLE; }
		}

        public override float stateVolume { get { return ((WallFlowerBotController)mController).idleVolume; } }
		
		public override uint run ()
		{
            if (!mController.audio.isPlaying)
                mController.audio.PlayOneShot(((WallFlowerBotController)mController).idleSound);
            ((WallFlowerBotController)mController).opened = 0.5f * (Mathf.Abs(Mathf.Sin(Time.time * 0.5f)));
            uint ret = base.run ();
            if(sense_player){
                ((WallFlowerBotController)mController).timeout = 1.0f;
                return next_state;
            }
            return ret;
		}
	}
}

