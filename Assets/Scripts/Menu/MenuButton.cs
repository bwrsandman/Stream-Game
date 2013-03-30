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
	Debug.Log(gameObject.name + " clicked");
	switch(gameObject.name)       
	  {         
		 case "btnNewGame":
	        Application.LoadLevel("Level_01_Exterior_02"); 
	        break;                  
	     case "btnContinue":            

	        break;
		 case "btnSettings":            

	        break;
		 case "btnQuit":            
			Application.Quit();
			 Debug.Log("Application quit!");
	        break;
	   }
		
		

}

}
