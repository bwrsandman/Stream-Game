using UnityEngine;
using System.Collections;

public class ResizeBackground : MonoBehaviour {
	private float _deltaWidth;
	private float _screenWidth = Screen.width;
	private GameObject foregroundObject;
	
	void Start(){
		foregroundObject = GameObject.Find("foreground");
		foregroundObject.transform.position = new Vector3((0.5f*Screen.width)/951.0f,foregroundObject.transform.position.y,foregroundObject.transform.position.z);
	}
	
	void Update(){
		Debug.Log(Screen.width);
	}
	
    void OnGUI() {
		_deltaWidth = _screenWidth - Screen.width;
		if(_deltaWidth > 0 || _deltaWidth < 0){
			_screenWidth = Screen.width;
		}
		foregroundObject.transform.Translate(-_deltaWidth/1000.0f, 0, 0);
		
		//Supposed code for the scaling often proposed on the internet but it doesn't seem to have any effect on the scene.
		float horizRatio = Screen.width / 1920.0f;
		float vertRatio = Screen.height / 1080.0f;
		GUI.matrix = Matrix4x4.TRS(Vector3.zero, Quaternion.AngleAxis(0, new Vector3(0, 1, 0)), new Vector3(horizRatio, vertRatio, 1));
    }
}
