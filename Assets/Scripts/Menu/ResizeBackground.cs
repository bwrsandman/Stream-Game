using UnityEngine;
using System.Collections;

public class ResizeBackground : MonoBehaviour {
	private float startTime;
	private float foregroundRatio = 1.0f;
	private GameObject foregroundTopObject;
	private GameObject foregroundBottomObject;
	private GameObject barTopObject;
	private GameObject barBottomObject;
	private GameObject backgroundObject;
	private GameObject btnNewGameObject;
	private GameObject btnContinueObject;
	private GameObject btnSettingsObject;
	private GameObject btnQuitObject;
	private int menuPosition = 1;
	private int oldMenuPosition = 0;
	
	void Start(){
		foregroundTopObject = GameObject.Find("foregroundtop");
		foregroundBottomObject = GameObject.Find("foregroundbottom");
		barTopObject = GameObject.Find("bartop");
		barBottomObject = GameObject.Find("barbottom");
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
				
		foregroundBottomObject.guiTexture.pixelInset = new Rect(
		Screen.width - foregroundBottomObject.guiTexture.pixelInset.width, 
		0,
		foregroundBottomObject.guiTexture.pixelInset.width,
		foregroundBottomObject.guiTexture.pixelInset.height);
		
		foregroundTopObject.guiTexture.pixelInset = new Rect(
		Screen.width - foregroundTopObject.guiTexture.pixelInset.width, 
		Screen.height - foregroundTopObject.guiTexture.pixelInset.height,
		foregroundTopObject.guiTexture.pixelInset.width,
		foregroundTopObject.guiTexture.pixelInset.height);
		
		barTopObject.guiTexture.pixelInset = new Rect(
		foregroundTopObject.guiTexture.pixelInset.x - barTopObject.guiTexture.pixelInset.width,
		foregroundTopObject.guiTexture.pixelInset.y,
		barTopObject.guiTexture.pixelInset.width,
		barTopObject.guiTexture.pixelInset.height);
		
		barBottomObject.guiTexture.pixelInset = new Rect(
		foregroundBottomObject.guiTexture.pixelInset.x - barBottomObject.guiTexture.pixelInset.width,
		foregroundBottomObject.guiTexture.pixelInset.y,
		barBottomObject.guiTexture.pixelInset.width,
		barBottomObject.guiTexture.pixelInset.height);
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
    }
}
