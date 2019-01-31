using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class RemapDebugger : MonoBehaviour {
	public float step = 0.5f;
	public Text Text;
	public Text RemapText;
	[System.Serializable]
	public class Range{
	public float From1;
	public float To1;

	public float From2;
	public float To2;
	}
	public Range RemapRange;
    private float number;

    public float Remap ( float value, float from1, float to1, float from2, float to2) {
	RemapText.text = string.Format("{0} / {1} * {2} + {3}","Number",(to1 - from1),(to2 - from2),from2);
    return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
	}
	
	private void Start() {
		number = RemapRange.From1;
	}
	void Update () {
		if(number < RemapRange.To1){
		Text.text += Remap(number,RemapRange.From1,RemapRange.To1,RemapRange.From2,RemapRange.To2).ToString("0.00") + " ";
		//Text.text +=(number/6.28f +0.5f).ToString("0.00") + " "; //

		number+=step;
		}
	}
}
