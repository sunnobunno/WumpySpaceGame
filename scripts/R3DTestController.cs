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

	[Export] ComponentRotateToMouse rotateToMouseComponent;
	[Export] ComponentMove moveComponent;
	[Export] ComponentHover hoverComponent;

	[Export] Node3D eyeHeightTransform;

	Vector3 torqueBuffer;
	Vector3 moveForceBuffer;


	// PUBLIC PARAMETERS
	public float Acceleration { get { return accel; } set { accel = value; } }
	public float MaxSpeed { get { return maxSpeed; } }
	public Vector3 EyeHeight { get { return eyeHeightTransform.GlobalPosition; } }
	
	public float TargetRestingHeight { get { return targetRestingHeight; } }
	public float SpringStrength { get { return springStrength; } }
	public float DampStrength { get { return dampStrength; } }


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
		moveComponent.ForceSignal += AddToMoveForceBuffer;

		hoverComponent.playerNode = this;
		hoverComponent.ForceSignal += AddToMoveForceBuffer;
	}

	#endregion

	#region Main loop

	public override void _PhysicsProcess(double delta)
	{

	}

	public override void _IntegrateForces(PhysicsDirectBodyState3D state)
	{
		//GD.Print(GlobalPosition);

		ApplyMoveForceBuffer(state);
		ApplyTorqueBuffer(state);
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
	private void ApplyMoveForceBuffer(PhysicsDirectBodyState3D state)
	{
		state.ApplyForce(moveForceBuffer);

		moveForceBuffer = Vector3.Zero;
	}

	public void AddToMoveForceBuffer(Vector3 force)
	{
		moveForceBuffer += force;
	}

	#endregion
}
