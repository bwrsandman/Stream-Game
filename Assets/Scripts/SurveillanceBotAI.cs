using UnityEngine;
using System.Collections;

public class SurveillanceBotAI : MonoBehaviour {
	
	public float opened = 0.0f;
	float max_closed = 110.0f;
	public MeshFilter [] prisms = new MeshFilter[3];

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		close_prism();
	}
	
	void close_prism()
	{
		opened = Mathf.Max(Mathf.Min(1.0f, opened), 0.0f);
		for(int i = 0; i < 3; ++i)
		{
			float closed = Mathf.Max(Mathf.Min(1.0f, ((1.0f - opened) - i * 0.1f) * 1.8f), 0.0f);
			Transform tran = prisms[i].transform;
			tran.localRotation = Quaternion.Euler(0.0f, 0.0f, i * -120.0f) * 
								 Quaternion.Euler(max_closed * closed, 0.0f, 0.0f);
		}		
	}
}
