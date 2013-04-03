using UnityEngine;
using System.Collections;

public class AsyncMenuControl : MonoBehaviour {
	private float startTime;
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
	
   void Start()
    {
		btnNewGameObject = GameObject.Find("btnNewGame");
		btnContinueObject = GameObject.Find("btnContinue");
		btnSettingsObject = GameObject.Find("btnSettings");
		btnQuitObject = GameObject.Find("btnQuit");
        StartCoroutine(EventCoroutine());
		startTime = Time.realtimeSinceStartup;
    }
	
	void Awake() { 
	   startTime = Time.time;
	}
	
 	public void DeactivateButtons(){
		menuPosition = 0;
	}
	
    IEnumerator EventCoroutine() {
 
        while (true)
        {
            if (Input.GetKeyDown(KeyCode.P))
            {
                if (Time.timeScale == 0)
                {
                    Time.timeScale = 1;
                } else {
                    Time.timeScale = 0;
                }
            }
		float elapsedMilliseconds = (Time.realtimeSinceStartup - startTime) * 1000.0f;
		if(elapsedMilliseconds > 100.0f)
		{
			if(Input.GetButton("Y")){
				menuPosition--;
				if(menuPosition < 1) menuPosition = 4;
				startTime = Time.realtimeSinceStartup;
			}
			else if(Input.GetButton("A")){
				menuPosition++;
				if(menuPosition > 4) menuPosition = 1;
				startTime = Time.realtimeSinceStartup;
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
			if(Input.GetButton("Start") && btnNewGameObject.guiTexture.enabled)
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
            yield return null;    
        }
    }
}
