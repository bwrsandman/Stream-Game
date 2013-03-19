using UnityEngine;
using System.Collections;

public class Activate : MonoBehaviour {
	
	public Activateable selectedObject;
	
	void Start () 
	{
	
	}
	
	public void setSelectedObject (Activateable obj)
	{
		selectedObject = obj;
	}
	
	public void unsetSelectedObject (Activateable obj)
	{
		if(selectedObject == obj)
			selectedObject = null;
	}
	
	void EarlyUpdate () 
	{
		selectedObject = null;
	}
}
