using UnityEngine;
using System.Collections.Generic;

public class Menu : MonoBehaviour {
	private List<int> menuStack;
	public enum MenuState
	{
		MENU,
	    START,
	    OPTIONS,
		SOUND,
	    CREDITS,
		EXIT
	}
	// Use this for initialization
	void Start () {
		menuStack = new List<int>();
		menuStack.Add((int)MenuState.MENU);
	}
	
	void StartButton_Click()
    {
		menuStack.Add((int)MenuState.START);
	}
	
	void OptionsButton_Click()
    {
		menuStack.Add((int)MenuState.OPTIONS);
	}
	
	void SoundButton_Click()
    {
		menuStack.Add((int)MenuState.OPTIONS);
	}
	
	void CreditButton_Click()
    {
		menuStack.Add((int)MenuState.CREDITS);
	}
	
	void ExitButton_Click()
    {
		menuStack.Add((int)MenuState.EXIT);
	}
	
	void BackButton_Click()
    {
		menuStack.RemoveAt(menuStack.Count - 1);
	}
	
	// Update is called once per frame
	void Update () {
		  switch (menuStack[menuStack.Count - 1])
           {
		case (int)MenuState.MENU:
			 DisplayMenu(); 
			 break;
        case (int)MenuState.START:
			 DisplayStart(); 
			 break;
	    case (int)MenuState.OPTIONS:
		 	DisplayOptions();
		    break;
		case (int)MenuState.SOUND:
			DisplaySound();
	    	break;
		case (int)MenuState.CREDITS:
			DisplayCredits();
			break;
		case (int)MenuState.EXIT:
				
		 	break;
           }
		
		if(Input.GetKeyDown(KeyCode.Escape))
		{
			menuStack.RemoveAt(menuStack.Count - 1);
		}
		
	}
	
	void DisplayMenu()
	{
		
	}
	
	void DisplayStart()
	{
		
	}
	
	void DisplayOptions()
	{
		
	}
	
	void DisplaySound()
	{
		
	}
	
	void DisplayCredits()
	{
	}
}
