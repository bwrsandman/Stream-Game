using UnityEngine;
using System.Collections;

public class CreditsScript : MonoBehaviour {

private GameObject creditsText;
private GameObject streamLogo;
private float creditsSpeed = 100.0f;
private bool scrooling = true;
 
void Start(){
    creditsText = GameObject.Find("CreditsText");
	streamLogo = GameObject.Find("StreamLogo");
    string credsText =
	"TEAM\n"+
	"\n"+
	"Sandy Carter\n"+
    "Samuel Tissot-Jobin\n"+
    "Olivia Colden\n"+
    "Mads Ronnow\n"+
    "Eileen Peng\n"+
	"Pascal Guay\n"+
	"\n"+
	"\n"+
	"PROFESSORS\n"+
	"\n"+
	"Thomas Fevens\n"+
	"Jonathan Lessard\n";
	creditsText.guiText.text = credsText;
	creditsText.guiText.pixelOffset = new Vector2(Screen.width/2.0f - creditsText.guiText.GetScreenRect().width/2.0f,0.0f);
	streamLogo.guiTexture.pixelInset = new Rect(
			Screen.width/2.0f - streamLogo.guiTexture.pixelInset.width/2.0f,
			creditsText.guiText.pixelOffset.y - creditsText.guiText.GetScreenRect().height - streamLogo.guiTexture.pixelInset.height,
			streamLogo.guiTexture.pixelInset.width,
			streamLogo.guiTexture.pixelInset.height);
}
	
	void Update(){
	   	if (scrooling){
			creditsText.guiText.pixelOffset += new Vector2(0.0f,creditsSpeed*Time.deltaTime);
			creditsText.guiText.pixelOffset = new Vector2(
				Screen.width/2.0f - creditsText.guiText.GetScreenRect().width/2.0f,
				creditsText.guiText.pixelOffset.y);
			if(streamLogo.guiTexture.pixelInset.y < Screen.height/2.0f - streamLogo.guiTexture.pixelInset.height/2.0f)
			{
			streamLogo.guiTexture.pixelInset = new Rect(Screen.width/2.0f - streamLogo.guiTexture.pixelInset.width/2.0f,
			streamLogo.guiTexture.pixelInset.y + creditsSpeed*Time.deltaTime,
			streamLogo.guiTexture.pixelInset.width,
			streamLogo.guiTexture.pixelInset.height);
			}
		}
	}	
}
