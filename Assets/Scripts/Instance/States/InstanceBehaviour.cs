#region Using
using UnityEngine;
#endregion

namespace Instance
{
	public abstract class InstanceBehaviour
	{
		#region Members
		protected InstanceController mController;
		#endregion
		
		#region Properties
		protected abstract InstanceState state {
			get;
		}
		#endregion
		
		#region Initialization
		public InstanceBehaviour (InstanceController controller)
		{
			this.mController = controller;
		}
		#endregion
		
		#region Run Functions
		public virtual InstanceState run()
		{
			return state;
		}
		#endregion
	}
}

