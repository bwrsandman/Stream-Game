using UnityEngine;
using System.Collections;

public class Boss : MonoBehaviour {

    public Transform[] wayPoints;

    private int currentWayPoint;
    public float speed = 5.0f;
    public Transform player;

    private Vector3 velocity = new Vector3(0.0f, 0.0f, 0.0f);

	// Use this for initialization
	void Start () {
	    currentWayPoint = 0;
	}
	
	// Update is called once per frame
	void Update () {
	    Vector3 direction = (wayPoints[currentWayPoint].position - transform.position).normalized;
        velocity += direction * 0.1f;

        velocity = velocity.normalized*speed;
        //velocity.y = 0.0f;

        transform.position += velocity;


        float dist = Vector3.Distance(transform.position, wayPoints[currentWayPoint].position);

        if (dist < 0.5f) {
            currentWayPoint = (currentWayPoint + 1) % wayPoints.Length;
            if (currentWayPoint == 0)
                wayPoints[currentWayPoint].position =  player.position;

        }
	}



}
