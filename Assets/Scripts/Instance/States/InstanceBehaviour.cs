#region Using
using UnityEngine;
#endregion

namespace Instance
{
	public abstract class InstanceBehaviour : StateBehaviour
	{
		#region Members
		#endregion
		
		#region Properties
		protected InstanceController controller {
			get {
				return (InstanceController)mController;
			}
		}
		#endregion
		
		#region Initialization
		public InstanceBehaviour (InstanceController controller)
			: base(controller)
		{
		}
		#endregion
		
		#region Run Functions
		public override uint run()
		{
			return state;
		}
		#endregion
	}
}

