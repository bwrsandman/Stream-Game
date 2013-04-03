using UnityEngine;
using System.Collections;

#region Required components
[RequireComponent(typeof(BoxCollider), typeof(Rigidbody))]
#endregion

public class BridgeControl : Activateable
{
    public GameObject _bridgeOne;
    public GameObject _bridgeTwo;

    bool activated;

    void Start ()
    {
        if(!_bridgeOne || !_bridgeTwo)
            Debug.LogError("Bridges aren't set!");
        _bridgeTwo.GetComponent<MeshRenderer>().enabled = false;
        _bridgeTwo.collider.enabled = false;
    }

    public void ToggleBridges()
    {
        if(activated)
            return;

        bool one, two;
        one = _bridgeTwo.GetComponent<MeshRenderer>().enabled;
        two = !one;

        _bridgeOne.GetComponent<MeshRenderer>().enabled = one;
        _bridgeOne.collider.enabled = one;
        _bridgeTwo.GetComponent<MeshRenderer>().enabled = two;
        _bridgeTwo.collider.enabled = two;

        activated = true;
        StartCoroutine(WaitRenable(1.0f));
    }

    IEnumerator WaitRenable (float wait)
    {
        yield return new WaitForSeconds(wait);
        activated = false;
    }
}
