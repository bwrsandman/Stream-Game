using UnityEngine;
using System.Collections;

public class ResizeBackground : MonoBehaviour {
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
	
    void OnGUI() {
		backgroundObject.guiTexture.pixelInset = new Rect(
			0.0f, 
			0.0f,
			Screen.width,Screen.height);
    }
}
