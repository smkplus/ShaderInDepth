using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Remapping : MonoBehaviour {
[Range(-3.14f,3.14f)]
public float number;
public float Remap ( float value, float from1, float to1, float from2, float to2) {
    return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
}
void Update() {
	Debug.Log(Remap(number,-3.14f,3.14f,0,1));
}
}
