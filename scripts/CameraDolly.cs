using Godot;
using System;

public partial class CameraDolly : Node3D
{
	[Export] Node3D followNode;
	[Export] float acceleration = 10f;

	private Vector3 velocity;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		velocity = Vector3.Zero;
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _PhysicsProcess(double delta)
	{
		FollowNode(followNode, delta);
	}

	private void FollowNode(Node3D node, double delta)
	{
		//var targetPosition = node.GlobalPosition;
		//var accel = CalculateAccelToTargetPosition(targetPosition,
		//	GlobalPosition, acceleration);
		//velocity += accel * (float)delta;
		//ApplyVelocity(velocity);

		var targetPosition = node.Position;
		var deltaPosition = (targetPosition - GlobalPosition) / 0.5f;
		var newPosition = GlobalPosition + deltaPosition * (float)delta;
		GlobalPosition = newPosition;

		//GD.Print(velocity, " ", accel);
	}

	private Vector3 CalculateAccelToTargetPosition(Vector3 targetPosition,
		Vector3 currentPosition, float accel)
	{
		var targetDirection = (targetPosition - currentPosition).Normalized();
		var accelVector = targetDirection * accel;

		//GD.Print(targetDirection, " ", accelVector);

		return accelVector;
	}

	private void ApplyVelocity(Vector3 velocity)
	{
		var currentPosition = GlobalPosition;
		var newPosition = currentPosition + velocity;

		GlobalPosition = newPosition;
	}
}
