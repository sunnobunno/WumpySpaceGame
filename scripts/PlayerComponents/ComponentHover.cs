using Godot;
using System;

public partial class ComponentHover : Node3D
{
	[Signal] public delegate void ForceSignalEventHandler(Vector3 force);
    [Signal] public delegate void ImpulseSignalEventHandler(Vector3 impulse);

    private PhysicsDirectSpaceState3D world;
	private float groundDistance;
	private bool jumpPressed = false;

	public R3DTestController playerNode { get; set; }

	public bool IsOnGround { get
		{
			if (groundDistance > playerNode.TargetRestingHeight) return false;
			else return true;
        }
	}
	

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		CaptureJumpInput();
		Jump();
	}

	public void PhysicsProcess(double delta)
	{
		world = GetWorld3D().DirectSpaceState;
		CastGroundRay();

        if (!IsOnGround) return;

        var targetSpringHeight = CalculateDesiredSpringHeight(
			playerNode.TargetRestingHeight,
			playerNode.SpringStrength);
        var springOffset = targetSpringHeight - groundDistance;
		var force = CalculateSpringForce(playerNode.SpringStrength,
			playerNode.DampStrength,
			springOffset,
			playerNode.LinearVelocity,
			Vector3.Up);

        //GD.Print(groundDistance);

        EmitSignal(SignalName.ForceSignal, force);
	}

	private void CastGroundRay()
	{
		var rayQuery = PhysicsRayQueryParameters3D.Create(GlobalPosition,
			GlobalPosition + new Vector3(0f, -10f, 0f));
		rayQuery.Exclude = new Godot.Collections.Array<Rid> { playerNode.GetRid() };
		var collision = world.IntersectRay(rayQuery);

		if (collision.Count > 0)
		{
			Vector3 collisionPosition = (Vector3)collision["position"];
			Vector3 distance = (GlobalPosition - collisionPosition);
			groundDistance = distance.Length();
		}

		
	}

	private Vector3 CalculateSpringForce(float springStrength, float dampStrength,
		float offset, Vector3 linearVelocity, Vector3 springDirection)
	{
		var velocity = linearVelocity.Dot(springDirection.Normalized());
		velocity = springDirection.Normalized().Dot(linearVelocity);

		var spring = springStrength * offset;
		var damp = dampStrength * velocity;

		var force = spring - damp;
		var forceVector = springDirection * force;

		//GD.Print(forceVector, " ", velocity, " ", offset, " ", GlobalPosition);

		return forceVector;
	}

	private float CalculateDesiredSpringHeight(float targetRestingHeight, float springStrength)
	{
		var gravityStrength = (float)(ProjectSettings.GetSetting("physics/3d/default_gravity"));

		var restingOffset = gravityStrength / springStrength;
		var targetSpringHeight = targetRestingHeight + restingOffset;

		//GD.Print(restingOffset, " ", groundDistance);

		return targetSpringHeight;
	}


	private void CaptureJumpInput()
	{
		var jumpPressed = false;

        if (Input.IsActionJustPressed("Jump"))
        {
            jumpPressed = true;
        }

		this.jumpPressed = jumpPressed;
    }

    private void Jump()
    {
        if (jumpPressed && IsOnGround)
        {
            var direction = Vector3.Up;
            var jumpStrength = playerNode.JumpStrength;
            var jumpForce = direction * jumpStrength;

            EmitSignal(SignalName.ImpulseSignal, jumpForce);
        }
    }
}
