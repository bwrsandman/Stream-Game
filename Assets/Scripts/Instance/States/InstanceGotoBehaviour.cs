using UnityEngine;

namespace Instance
{
	public class InstanceGotoBehaviour : InstanceBehaviour
	{
		public InstanceGotoBehaviour (InstanceController controller)
			:base (controller)
		{
		}

		protected override uint state
		{
			get { return (uint)InstanceState.GOTO; }
		}

		public override uint run ()
		{
			//Debug.Log("Going to...");
			uint ret = state;

			return ret;
		}
	}
}

