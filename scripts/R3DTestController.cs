using Godot;
using System;
using static Godot.WebSocketPeer;

public partial class R3DTestController : RigidBody3D
{

	PhysicsDirectSpaceState3D world;

	public float groundDistance = 0f;
	[Export] float targetRestingHeight = 2f;
	[Export] float springStrength = 30f;
	[Export] float dampStrength = 5f;
	[Export] float accel = 1f;
	[Export] float maxSpeed = 2f;
	[Export] float jumpStrength = 5f;

	[Export] ComponentRotateToMouse rotateToMouseComponent;
	[Export] ComponentMove moveComponent;
	[Export] ComponentHover hoverComponent;
	[Export] ComponentShooting shootingComponent;

	[Export] Node3D eyeHeightTransform;
	[Export] Node3D gunTip;

	Vector3 torqueBuffer;
	Vector3 linearForceBuffer;
	Vector3 linearImpulseBuffer;

	double physDelta = 0f;

	// PUBLIC PARAMETERS
	public float Acceleration { get { return accel; } set { accel = value; } }
	public float MaxSpeed { get { return maxSpeed; } }
	public float JumpStrength { get { return jumpStrength; } }
	public Vector3 EyeHeight { get { return eyeHeightTransform.GlobalPosition; } }
	public Node3D GunTip { get { return gunTip; } }

	public float TargetRestingHeight { get { return targetRestingHeight; } }
	public float SpringStrength { get { return springStrength; } }
	public float DampStrength { get { return dampStrength; } }
	public bool IsOnGround { get { return hoverComponent.IsOnGround; } }


	#region Initialization

	public override void _Ready()
	{
		InitializeFields();
		InitializeComponents();
		
	}

	private void InitializeFields()
	{

	}

	private void InitializeComponents()
	{
		rotateToMouseComponent.playerNode = this;
		rotateToMouseComponent.TorqueSignal += AddToTorqueBuffer;

		moveComponent.playerNode = this;
		moveComponent.ForceSignal += AddToLinearForceBuffer;

		hoverComponent.playerNode = this;
		hoverComponent.ForceSignal += AddToLinearForceBuffer;
		hoverComponent.ImpulseSignal += AddToLinearImuplseBuffer;

		shootingComponent.playerNode = this;
		shootingComponent.ImpulseSignal += AddToLinearImuplseBuffer;
	}

	#endregion

	#region Main loop

	public override void _PhysicsProcess(double delta)
	{
		physDelta = delta;
	}

	public override void _IntegrateForces(PhysicsDirectBodyState3D state)
	{
		//GD.Print(GlobalPosition);

		rotateToMouseComponent.PhysicsProcess(physDelta);
		moveComponent.PhysicsProcess(physDelta);
        hoverComponent.PhysicsProcess(physDelta);

        ApplyLinearForceBuffer(state);
		ApplyTorqueBuffer(state);
		ApplyLinearImpulseBuffer(state);
	}

	#endregion

	#region BUFFERS

	// TORQUE
	private void ApplyTorqueBuffer(PhysicsDirectBodyState3D state)
	{
		state.ApplyTorque(torqueBuffer);

		torqueBuffer = Vector3.Zero;
	}

	public void AddToTorqueBuffer(Vector3 torque)
	{
		torqueBuffer += torque;
	}

	// MOVEMENT
	private void ApplyLinearForceBuffer(PhysicsDirectBodyState3D state)
	{
		state.ApplyForce(linearForceBuffer);

		linearForceBuffer = Vector3.Zero;
	}

	public void AddToLinearForceBuffer(Vector3 force)
	{
		linearForceBuffer += force;
	}

	private void ApplyLinearImpulseBuffer(PhysicsDirectBodyState3D state)
	{
		state.ApplyImpulse(linearImpulseBuffer);

		linearImpulseBuffer = Vector3.Zero;
	}

	public void AddToLinearImuplseBuffer(Vector3 impulse)
	{
		linearImpulseBuffer += impulse;
	}

	#endregion
}
