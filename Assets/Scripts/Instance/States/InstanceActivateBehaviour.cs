using UnityEngine;

namespace Instance
{
	public class InstanceActivateBehaviour : InstanceGotoBehaviour
	{
		public InstanceActivateBehaviour (InstanceController controller)
			:base (controller)
		{
		}

		protected override uint state
		{
			get { return (uint)InstanceState.ACTIVATE; }
		}

		public override uint run ()
		{
			//Debug.Log("Activating.");
			uint ret = state;

			return ret;
		}
	}
}

