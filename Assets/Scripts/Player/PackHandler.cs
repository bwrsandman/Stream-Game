#region Using
using UnityEngine;
using System.Collections;
#endregion

public class PackHandler : MonoBehaviour 
{
	public GameObject [] PackGeometry;
	
	#region Initialization
	void Start () 
	{
		Hide();
	}
	#endregion
	
	#region Member Functions
	public void Hide ()
	{
		foreach(GameObject geom in PackGeometry)
			geom.renderer.enabled = false;
	}
	
	public void Show ()
	{
		foreach(GameObject geom in PackGeometry)
			geom.renderer.enabled = true;
	}
	#endregion
	
	#region Internal Member functions
	void Update () 
	{
	
	}
	#endregion
}
