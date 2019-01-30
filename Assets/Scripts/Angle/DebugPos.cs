using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class DebugPos : MonoBehaviour {
[HideInInspector]
public float value = 1;
public float angle;
public float degree;

	void Start () {
		var pos = transform.position;
		angle = Mathf.Atan2(pos.y, pos.x) * Mathf.Rad2Deg;
		transform.rotation = Quaternion.AngleAxis(angle, Vector3.forward);
	}
	
	void Update () {
	var pos = transform.position;
	GetComponent<SpriteRenderer>().color = new Color(pos.x,pos.y,0,1);	
	}
}
