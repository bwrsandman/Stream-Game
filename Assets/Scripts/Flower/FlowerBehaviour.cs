using UnityEngine;

namespace Flower
{
	public abstract class FlowerBehaviour
	{
		FlowerBehaviour [] children;
		protected static SurveillanceBotAI AI;
		
		public FlowerBehaviour (SurveillanceBotAI ai)
		{
			AI = ai;
		}
		
		public virtual void run()
		{
			AI.close_prism();
		}
	}
}

