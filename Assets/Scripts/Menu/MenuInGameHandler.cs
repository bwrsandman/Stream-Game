using UnityEngine;
using System.Collections;

public class MenuInGameHandler : MonoBehaviour {
	
	void Start () {

	}
	
	void Update () {
		if (Input.GetKeyDown(KeyCode.Escape) || Input.GetButton("Back")){
			Time.timeScale = 1.0f;
			Application.LoadLevel(0);
		}
		if (Input.GetKeyDown(KeyCode.P)){
			//Pause the game
			Time.timeScale = 0.0f;
		}
		if (Input.GetKeyDown(KeyCode.O)){
			Time.timeScale = 1.0f;
		}		
	}
}
