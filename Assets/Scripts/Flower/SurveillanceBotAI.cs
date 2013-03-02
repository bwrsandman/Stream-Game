using UnityEngine;
using System.Collections;

using Flower;

public class SurveillanceBotAI : MonoBehaviour {
	
	public float opened = 0.0f;
	const float max_closed = 110.0f;
	public MeshFilter [] prisms = new MeshFilter[3];
	FlowerBehaviour behaviour;

	// Use this for initialization
	void Start () 
	{
		behaviour = new FlowerIdleBehaviour(this);
	}
	
	// Update is called once per frame
	void Update () 
	{
		behaviour.run ();
	}
	
	public void close_prism()
	{
		opened = Mathf.Max(Mathf.Min(1.0f, opened), 0.0f);
		for(int i = 0; i < 3; ++i)
		{
			float closed = Mathf.Max(Mathf.Min(1.0f, ((1.0f - opened) - i * 0.05f) * 1.8f), 0.0f);
			Transform tran = prisms[i].transform;
			tran.localRotation = Quaternion.Euler(0.0f, 0.0f, i * -120.0f) * 
								 Quaternion.Euler(max_closed * closed, 0.0f, 0.0f);
		}		
	}
}
