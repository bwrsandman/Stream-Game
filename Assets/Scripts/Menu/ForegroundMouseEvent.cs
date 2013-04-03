using UnityEngine;
using System.Collections;

public class ForegroundMouseEvent : MonoBehaviour {
	private GameObject menuHandler;
	
	void Start () {
		menuHandler = GameObject.Find("MenuHandler");
	}
	
	void Update () {
	}
	
	void OnMouseEnter(){
		menuHandler.GetComponent<AsyncMenuControl>().DeactivateButtons();
	}
}
