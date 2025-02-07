using Godot;
using System;

public partial class ComponentRotateToMouse : Node3D
{
	[Signal] public delegate void TorqueSignalEventHandler(Vector3 torque);
	
	public R3DTestController playerNode { get; set; }
	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{

	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{

	}

	public override void _PhysicsProcess(double delta)
	{
		var mouseLookDirection = GetMouseLookDirection();
		var torque = GetTorqueToRotateToDirection(mouseLookDirection, delta);

		EmitSignal(SignalName.TorqueSignal, torque);
	}


	private Vector3 GetMouseLookDirection()
	{
		var targetLookPosition = MouseRaycaster.PlayerAimHeightPlaneMouseIntersect;
		var targetLookDir = (targetLookPosition - playerNode.EyeHeight).Normalized();

		return targetLookDir;
	}

	private Vector3 GetTorqueToRotateToDirection(Vector3 direction, double delta)
	{
		var lookDir = GlobalTransform.Basis.Z;
		var angleDifference = lookDir.SignedAngleTo(direction, Vector3.Up) * GlobalTransform.Basis.Y;

		var targetAngularVel = angleDifference / (float)delta;
		var velAdjustment = targetAngularVel - playerNode.AngularVelocity;
		var accel = velAdjustment / (float)delta;
		var torque = accel * (float)delta - (playerNode.AngularVelocity * 4f);

		//GD.Print(angleDifference, " : ", force);

		return torque;
	}
}
