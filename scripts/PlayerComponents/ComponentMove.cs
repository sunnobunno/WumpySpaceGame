using Godot;
using System;

public partial class ComponentMove : Node3D
{
	[Signal] public delegate void ForceSignalEventHandler(Vector3 force);

	// DEPENDENT PARAMETERS
	public R3DTestController playerNode { get; set; }

	// PUBLIC PARAMETERS
	public Vector3 MoveAxisLocal { get; set; }
	public Vector3 MoveAxisWorld { get; set; }
	public bool IsInputPressed { private set; get; }


	public override void _PhysicsProcess(double delta)
	{
		MovePlayer();
	}

	private void MovePlayer()
	{
		MoveAxisLocal = CaptureMoveInputs();
		MoveAxisWorld = TranslateLocalMoveAxisToWorld(MoveAxisLocal);
		var force = CalculateMovementForce(MoveAxisWorld,
			playerNode.Acceleration,
			playerNode.Mass,
			playerNode.MaxSpeed,
			playerNode.LinearVelocity);

		GD.Print(force);

		EmitSignal(SignalName.ForceSignal, force);
	}

	private Vector3 TranslateLocalMoveAxisToWorld(Vector3 localMoveAxis)
	{
		var worldMoveAxis = Vector3.Zero;

		var cameraDirection = CameraController.CameraDirection;
		var worldDirection = Vector3.Forward * -1f;
		var cameraDirectionAngle = worldDirection.SignedAngleTo(cameraDirection, Vector3.Up);

		worldMoveAxis = localMoveAxis.Rotated(Vector3.Up, cameraDirectionAngle);

		return worldMoveAxis;
	}

	private Vector3 CalculateMovementForce(Vector3 direction, float accel,
		float mass, float maxSpeed, Vector3 linearVelocity)
	{
		var verticalComponentOfLinearVelocity = linearVelocity.Dot(Vector3.Up) * Vector3.Up;
		linearVelocity -= verticalComponentOfLinearVelocity;
		
		var targetVelocity = direction * maxSpeed;
		var targetDirection = (targetVelocity - linearVelocity).Normalized();
		
		var accelVector = targetDirection * accel;
		var forceVector = mass * accelVector;

		return forceVector;
	}



	private Vector3 CaptureMoveInputs()
	{
		var moveAxis = Vector3.Zero;

		if (Input.IsActionPressed("Up"))
		{
			moveAxis.Z += 1f;
		}

		if (Input.IsActionPressed("Down"))
		{
			moveAxis.Z += -1f;
		}

		if (Input.IsActionPressed("Right"))
		{
			moveAxis.X += -1f;
		}

		if (Input.IsActionPressed("Left"))
		{
			moveAxis.X += 1f;
		}

		if (moveAxis != Vector3.Zero) IsInputPressed = true;
		else IsInputPressed = false;

		return moveAxis.Normalized();
	}

}
