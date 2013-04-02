using UnityEngine;
using System.Collections;

public class Screenflash : MonoBehaviour {

	// Use this for initialization
	void Start () {

        int width = Screen.width;
        int height = Screen.height;
        Debug.Log(width + " " + height);
        guiTexture.pixelInset = new Rect(-width/2, -height/2, width, height);

        guiTexture.color = new Color(guiTexture.color.r, guiTexture.color.g, guiTexture.color.b, 0.0f);
	}
	
	// Update is called once per frame
	void Update () {

	}

    public void setAlpha (float alpha, bool hasJustTeleported) {
        float a = hasJustTeleported ? 0.0f : alpha;
        guiTexture.color = new Color(guiTexture.color.r, guiTexture.color.g, guiTexture.color.b, a*.25f);
    }
}
