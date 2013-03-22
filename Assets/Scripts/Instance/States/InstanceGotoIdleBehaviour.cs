using UnityEngine;

namespace Instance
{
	public class InstanceGotoIdleBehaviour : InstanceBehaviour
	{
		public InstanceGotoIdleBehaviour (InstanceController controller)
			:base (controller)
		{
		}

		protected override uint state
		{
			get { return (uint)InstanceState.GOTO_IDLE; }
		}

		public override uint run ()
		{
			//Debug.Log("Goto idling.");
			uint ret = state;

			return ret;
		}
	}
}
