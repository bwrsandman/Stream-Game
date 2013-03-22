using UnityEngine;

namespace Instance
{
	public class InstanceAttackBehaviour : InstanceBehaviour
	{
		public InstanceAttackBehaviour (InstanceController controller)
			:base (controller)
		{
		}

		protected override uint state
		{
			get { return (uint)InstanceState.GOTO_IDLE; }
		}

		public override uint run ()
		{
			//Debug.Log("Attacking.");
			uint ret = state;

			return ret;
		}
	}
}

