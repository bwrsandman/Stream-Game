#pragma strict
//to flicker the light that the script is attached to
function Start () {}
function Update()

{
   if ( Random.value > 0.94 ) //a random chance
        {
           if ( light.enabled == true ) //if the light is on...
           {
             light.enabled = false; //turn it off
           }
           else
           {
             light.enabled = true; //turn it on
           }
        }

}