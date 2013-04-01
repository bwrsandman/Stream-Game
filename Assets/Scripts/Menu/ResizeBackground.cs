using UnityEngine;
using System.Collections;

public class ResizeBackground : MonoBehaviour {
	private float startTime;
	private float foregroundRatio = 1.0f;
	private GameObject foregroundObject;
	private GameObject backgroundObject;
	private GameObject btnNewGameObject;
	private GameObject btnContinueObject;
	private GameObject btnSettingsObject;
	private GameObject btnQuitObject;
	private int menuPosition = 1;
	private int oldMenuPosition = 0;
	
	void Start(){
		foregroundObject = GameObject.Find("foreground");
		backgroundObject = GameObject.Find("MenuBackground");
		btnNewGameObject = GameObject.Find("btnNewGame");
		btnContinueObject = GameObject.Find("btnContinue");
		btnSettingsObject = GameObject.Find("btnSettings");
		btnQuitObject = GameObject.Find("btnQuit");
	}
	
	void Update(){
		float elapsedMilliseconds = (Time.time - startTime) * 1000.0f;
		if(elapsedMilliseconds > 100.0f)
		{
			if(Input.GetAxis("Vertical Move") > 0.9f){
				menuPosition--;
				if(menuPosition < 1) menuPosition = 4;
				startTime = Time.time;
			}
			else if(Input.GetAxis("Vertical Move") < -0.9f){
				menuPosition++;
				if(menuPosition > 4) menuPosition = 1;
				startTime = Time.time;
			}
		}
		
		if(oldMenuPosition != menuPosition)
		{
			oldMenuPosition = menuPosition;
			btnNewGameObject.GetComponent<MenuButton>().DeactivateButton();
			btnContinueObject.GetComponent<MenuButton>().DeactivateButton();
			btnSettingsObject.GetComponent<MenuButton>().DeactivateButton();
			btnQuitObject.GetComponent<MenuButton>().DeactivateButton();
		    switch(menuPosition)       
		    {
			   case 0:
		            break;
		       case 1:
				    btnNewGameObject.GetComponent<MenuButton>().ActivateButton();
		            break;
		       case 2:
					btnContinueObject.GetComponent<MenuButton>().ActivateButton();
					break;
			   case 3:
					btnSettingsObject.GetComponent<MenuButton>().ActivateButton();
					break;
			   case 4:
					btnQuitObject.GetComponent<MenuButton>().ActivateButton();
					break;		
			}
		}
		if(Input.GetButton("A"))
		{
			switch(menuPosition)       
			{
			   case 0:
			        break;
			   case 1:
				    btnNewGameObject.GetComponent<MenuButton>().ExecuteButtonAction(null);
			        break;
			   case 2:
					btnContinueObject.GetComponent<MenuButton>().ExecuteButtonAction(null);
					break;
			   case 3:
					btnSettingsObject.GetComponent<MenuButton>().ExecuteButtonAction(null);
					break;
			   case 4:
					btnQuitObject.GetComponent<MenuButton>().ExecuteButtonAction(null);
					break;		
			}
		}
	}
	
	void Awake() { 
	   startTime = Time.time;
	}
	
	public void DeactivateButtons(){
	menuPosition = 0;
	}
	
    void OnGUI() {
		backgroundObject.guiTexture.pixelInset = new Rect(
			0.0f, 
			0.0f,
			Screen.width,Screen.height);
		foregroundObject.guiTexture.pixelInset = new Rect(
			foregroundObject.guiTexture.pixelInset.x,
			Screen.height/2.0f-(Screen.width*foregroundRatio)/2.0f,
			Screen.width, Screen.width * foregroundRatio);
    }
}
