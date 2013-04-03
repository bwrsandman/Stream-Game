using UnityEngine;
using System.Collections;

public class MenuInGameHandler : MonoBehaviour {
	
	void Start () {
	}
	
	void Update () {
		if (Input.GetKeyDown(KeyCode.Escape) || Input.GetButton("Back")){
			ShowMenu();
			Time.timeScale = 0.0f;
		}	
	}
	
	public void HideMenu()
	{
		ToggleVisibility(transform.parent.gameObject.transform, false);
	}
	
	public void ShowMenu()
	{
		ToggleVisibility(transform.parent.gameObject.transform, true);
	}
	
	void ToggleVisibility(Transform obj, bool state)
	{
    	for (int i = 0; i < obj.GetChildCount(); i++)
    	{
    	    if (obj.GetChild(i).guiTexture != null)
    	        obj.GetChild(i).guiTexture.enabled = state;
    	    if (obj.GetChild(i).guiText != null)
    	        obj.GetChild(i).guiText.enabled = state;
    	
    	    if (obj.GetChild(i).GetChildCount() > 0)
    	    {
    	        ToggleVisibility(obj.GetChild(i), state);
    	    }
    	}
	}
}
