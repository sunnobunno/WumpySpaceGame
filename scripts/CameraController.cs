using Godot;
using System;

public partial class CameraController : Camera3D
{
	[Export] float rotX = -25.2f;
	[Export] Node3D followNode;

	private static Vector3 cameraDirection;

	public static Vector3 CameraDirection { get { return cameraDirection; } }


	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		CalculateFlatCameraForward();
		var newRotation = RotationDegrees;
		newRotation.X = rotX;
		RotationDegrees = newRotation;
	}

	public void CalculateFlatCameraForward()
	{
		// I need camera forward and world up

		var cameraForward = Transform.Basis.Z * -1f;
		var worldForward = Vector3.Forward;
		var worldRight = Vector3.Right;

		var cameraForwardComponentForward = cameraForward.Dot(worldForward) * worldForward;
		var cameraForwardComponentRight = cameraForward.Dot(worldRight) * worldRight;
		var cameraForwardProjectedFlat = cameraForwardComponentForward + cameraForwardComponentRight;

		DebugDraw3D.DrawRay(Vector3.Zero, cameraForwardProjectedFlat, 1f);

		cameraDirection = cameraForwardProjectedFlat;
	}

	private void FollowNode(Node3D node)
	{

	}
}
