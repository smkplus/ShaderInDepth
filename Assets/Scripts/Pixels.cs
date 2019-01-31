using UnityEngine;
using System.Collections.Generic;

public class Pixels : MonoBehaviour
{
    [Range(0,1)]
	public float value = 0;
    public int GridWidth;
    public int GridHeight;
    [Range(0,5)]
    public float distanceX;
    [Range(0,5)]
    public float distanceY;
    public Transform spawnPoint;
    public GameObject myPrefab;
    public List<GameObject> list = new List<GameObject>();

    void Start()
    {
        CreateGrid();
    }

	private void Update() {
		foreach (var item in list)
		{
		item.GetComponent<AngleCalculator>().value = value;	
		}
	}

    public void CreateGrid()
    {
        GameObject newEmptyGameObject = new GameObject("Grid");
        // following line is probably not neccessary
        newEmptyGameObject.transform.position = Vector3.zero;

        // some math to find the most left and bottom offset
        float offsetLeft = (-GridWidth / 2f) * distanceX + distanceX / 2f;
        float offsetBottom = (-GridHeight / 2f) * distanceY + distanceY / 2f;
        // set it as first spawn position (z=1 because you had it in your script)
        Vector3 nextPosition = new Vector3(offsetLeft, offsetBottom, 1f);

        for (int y = 0; y < GridHeight; y++)
        {
            for (int x = 0; x < GridWidth; x++)
            {
                GameObject clone = Instantiate(myPrefab, nextPosition, Quaternion.identity) as GameObject;
                clone.transform.parent = newEmptyGameObject.transform;
                // add to list
                list.Add(clone);

                // add x distance
                nextPosition.x += distanceX;
            }
            // reset x position and add y distance
            nextPosition.x = offsetLeft;
            nextPosition.y += distanceY;
        }
        // move the whole grid to the spawnPoint, if there is one
        if (spawnPoint != null)
            newEmptyGameObject.transform.position = spawnPoint.position;
    }
}