using UnityEngine;
using System.Collections;

public class MenuButton : MonoBehaviour {

	public Texture2D inactiveTexture;
	public Texture2D activeTexture;
	
	public void DeactivateButton()
	{
		guiTexture.texture = inactiveTexture;
	}
	
	public void ActivateButton()
	{
		guiTexture.texture = activeTexture;
	}
	
	void OnMouseEnter () {
		guiTexture.texture = activeTexture;
	}
	 
	void OnMouseExit(){
		guiTexture.texture = inactiveTexture;
	}
		
	void OnMouseDown(){
		ExecuteButtonAction(gameObject.name);
	}
	
	public void ExecuteButtonAction(string buttonName)
	{
		if(buttonName == null) buttonName = gameObject.name;
		switch(buttonName)       
		{         
			case "btnNewGame":
			    Application.LoadLevel(1); 
				Time.timeScale = 1.0f;
			    break;                  
			case "btnContinue":            
				Application.LoadLevel(1); 
				Time.timeScale = 1.0f;    
			    break;
			case "btnSettings":            
	    	  	break;
			case "btnQuit":            
			  	Application.Quit();
			  	break;
		}
	}
}
