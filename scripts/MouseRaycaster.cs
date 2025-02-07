using Godot;
using System;

public partial class MouseRaycaster : Node3D
{
	[Export] Camera3D camera3D;
	
	
	PhysicsDirectSpaceState3D world;

	private Plane playerAimHeightPlane;
	private R3DTestController playerController;

	private static Vector3 playerAimHeightPlaneMouseIntersect;

	#region Public parameters

	public static Vector3 PlayerAimHeightPlaneMouseIntersect { get { return playerAimHeightPlaneMouseIntersect; } }
	public PhysicsDirectSpaceState3D WorldSpace { get { return world; } }

	#endregion


	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		var node = GetTree().GetFirstNodeInGroup("Player");
		var nodePath = node.GetPath();
		playerController = GetNode(nodePath) as R3DTestController;

		
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		RayCastAimPlane();
	}

	public override void _PhysicsProcess(double delta)
	{
		world = GetWorld3D().DirectSpaceState;
	}


	private void RayCastAimPlane()
	{
		if (camera3D == null) return;
		if (playerController == null) return;

		playerAimHeightPlane = new Plane(Vector3.Up, playerController.EyeHeight);

		var mousePosition = GetViewport().GetMousePosition();
		var cameraOrigin = camera3D.ProjectRayOrigin(mousePosition);
		var cameraPositionNormal = camera3D.ProjectRayNormal(mousePosition);

		var planeIntersect = playerAimHeightPlane.IntersectsRay(cameraOrigin, cameraPositionNormal);
		if (planeIntersect != null) playerAimHeightPlaneMouseIntersect = (Vector3)planeIntersect;


	}

}
