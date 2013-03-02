using UnityEngine;

namespace Flower
{
	public class FlowerIdleBehaviour : FlowerBehaviour
	{
		public FlowerIdleBehaviour (SurveillanceBotAI ai)
			:base (ai)
		{
		}
		
		public override void run ()
		{
			AI.opened = 0.5f * (Mathf.Abs(Mathf.Sin(Time.time * 0.5f)));
			base.run ();
		}
	}
}

