using UnityEngine;
using System.Collections;

public class TerrainHole : MonoBehaviour {

public TerrainCollider tCollider; // assign in inspector

void OnTriggerEnter (Collider c) {
  if (c.tag == "player" || c.tag == "clone") {
     Physics.IgnoreCollision(c, tCollider, true);
  }
}

void OnTriggerExit (Collider c) {
  if (c.tag == "player" || c.tag == "clone") {
     Physics.IgnoreCollision(c, tCollider, false);
  }
}

}