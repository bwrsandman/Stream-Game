#region Using
using UnityEngine;
using System.Collections;
#endregion

public class PackHandler : MonoBehaviour 
{
	public bool hideOnStart = true;
	public GameObject [] PackGeometry;
	public GameObject Pack
	{
		get { return PackGeometry[0]; }
	}
	
	#region Initialization
	void Start () 
	{
		if (hideOnStart)
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
