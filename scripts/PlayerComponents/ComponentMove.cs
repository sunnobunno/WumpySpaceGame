using Godot;
using System;

public partial class ComponentMove : Node3D
{
	[Signal] public delegate void ForceSignalEventHandler(Vector3 force);
	[Signal] public delegate void ImpulseSignalEventHandler(Vector3 impulse);

	// DEPENDENT PARAMETERS
	public R3DTestController playerNode { get; set; }

	// PUBLIC PARAMETERS
	public Vector3 MoveAxisLocal { get; set; }
	public Vector3 MoveAxisWorld { get; set; }
	public bool IsInputPressed { private set; get; }

    public override void _Process(double delta)
    {
    }

    public void PhysicsProcess(double delta)
	{
		MovePlayer(delta);
	}

	private void MovePlayer(double delta)
	{
		
		CaptureMoveInputs();
		MoveAxisWorld = TranslateLocalMoveAxisToWorld(MoveAxisLocal);

		var force = CalculateMovementForce(MoveAxisWorld,
			playerNode.Acceleration,
			playerNode.Mass,
			playerNode.MaxSpeed,
			playerNode.LinearVelocity,
			delta);

		if (!playerNode.IsOnGround) force *= 0.15f;

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
		float mass, float maxSpeed, Vector3 currentLinearVelocity,
		double delta)
	{
		var verticalComponentOfLinearVelocity = currentLinearVelocity.Dot(Vector3.Up) * Vector3.Up;
		currentLinearVelocity -= verticalComponentOfLinearVelocity;
		
		var targetVelocity = direction * maxSpeed;

		var targetVelocityDelta = targetVelocity - currentLinearVelocity;
		var targetDirection = targetVelocityDelta.Normalized();
		var targetMagnitude = targetVelocityDelta.Length();


        var accelVector = targetVelocityDelta * accel;
		var forceVector = mass * accelVector;

		var directionX = forceVector.Dot(Transform.Basis.X);
		var directionZ = forceVector.Dot(Transform.Basis.Z);

		//DebugDraw3D.DrawRay(GlobalPosition, currentLinearVelocity, currentLinearVelocity.Length() * 100f);
        return forceVector;
	}

	private bool DetectMovementStutter()
	{
		return true;
	}



	private void CaptureMoveInputs()
	{
		var moveAxis = Vector3.Zero;
		var jumpPressed = false;

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

		MoveAxisLocal = moveAxis;
	}

}
