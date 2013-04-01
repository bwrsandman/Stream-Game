using UnityEngine;

namespace Flower
{
	public class FlowerOpenningLateBehaviour : FlowerOpenningBehaviour
	{
		const float open_goal = 1.0f;
		
		public FlowerOpenningLateBehaviour (FlowerBotController controller)
			:base (controller)
		{
		}
		
		protected override uint state
		{
			get { return (uint)FlowerState.OPENNING_FULL; }
		}
		
		protected override uint next_state
		{
			get { return (uint)FlowerState.SHOOTING; }
		}
		
		
		protected override float opening_goal
		{
			get { return open_goal; }
		}
		
		public override uint run ()
		{
			((FlowerBotController)mController).faceTarget(1.0f);
            uint ret = base.run ();
            if (ret == (uint)FlowerState.SHOOTING && !mController.audio.isPlaying)
                mController.audio.PlayOneShot(((FlowerBotController)mController).sweepSound);
            return ret;
		}
		
	}
}

