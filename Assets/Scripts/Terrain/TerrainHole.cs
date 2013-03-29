using UnityEngine;
using System.Collections;

public class TerrainHole : MonoBehaviour {

public Collider player; // assign in inspector
public TerrainCollider tCollider; // assign in inspector

void OnTriggerEnter (Collider c) {
  if (c.tag == "player") {
     Physics.IgnoreCollision(player, tCollider, true);
  }
}

void OnTriggerExit (Collider c) {
  if (c.tag == "player") {
     Physics.IgnoreCollision(player, tCollider, false);
  } 
}

}