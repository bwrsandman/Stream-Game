using UnityEngine;
using System.Collections;

public class MenuButton : MonoBehaviour {

	public Texture2D inactiveTexture;
	public Texture2D activeTexture;
	private GameObject menuHandler;
	public static bool isMenuShown = true;
	
	void Start(){
		menuHandler = GameObject.Find("MenuHandler");
		if(!isMenuShown)
		{
			menuHandler.GetComponent<MenuInGameHandler>().HideMenu();
			Time.timeScale = 1.0f;
		}
		else
		{
			Time.timeScale = 0.0f;
		}
	}
	
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
				Time.timeScale = 1.0f;
				isMenuShown = false;
				Application.LoadLevel(1);
				break;
			case "btnContinue":
				Time.timeScale = 1.0f;
				isMenuShown = false;
				menuHandler.GetComponent<MenuInGameHandler>().HideMenu();
			    break;
			case "btnSettings":            
	    	  	break;
			case "btnQuit":            
			  	Application.Quit();
			  	break;
		}
	}
	
	public bool IsMenuShown()
	{
		return isMenuShown;
	}
	
}
