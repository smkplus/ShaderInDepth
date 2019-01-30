using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class AngleCalculator : MonoBehaviour {
[HideInInspector]
public float value = 1;
public float angle;

	void Start () {
		var pos = transform.position;
		angle = Mathf.Atan2(pos.y, pos.x) * Mathf.Rad2Deg;
		transform.rotation = Quaternion.AngleAxis(angle, Vector3.forward);
	}

	public float Remap ( float value, float from1, float to1, float from2, float to2) {
    return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
	}
	
	void Update () {
	float RemappedAngle = Remap((angle/255.0f),-3.14f,3.14f,0,1);//Remapping From [-PI,PI] to [0,1]
	GetComponent<SpriteRenderer>().color = new Color(Mathf.Ceil(RemappedAngle-(1-value)),0,0,1);	
	}
}
