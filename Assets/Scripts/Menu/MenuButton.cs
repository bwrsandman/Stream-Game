using UnityEngine;
using System.Collections;

public class MenuButton : MonoBehaviour {

public Texture2D inactiveTexture;
public Texture2D activeTexture;
 
void OnMouseEnter () {
	guiTexture.texture = activeTexture;
}
 
void OnMouseExit(){
	guiTexture.texture = inactiveTexture;
}
 
void OnMouseDown(){
	switch(gameObject.name)       
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
