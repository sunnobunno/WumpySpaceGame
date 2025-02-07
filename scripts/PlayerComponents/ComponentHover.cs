using Godot;
using System;

public partial class ComponentHover : Node3D
{
	[Signal] public delegate void ForceSignalEventHandler(Vector3 force);

	private PhysicsDirectSpaceState3D world;
	private float groundDistance;

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
		
		world = GetWorld3D().DirectSpaceState;
		CastGroundRay();

		var springOffset = playerNode.SpringHeight - groundDistance;
		var force = CalculateSpringForce(playerNode.SpringStrength,
			playerNode.DampStrength,
			springOffset,
			playerNode.LinearVelocity,
			Vector3.Up);

		EmitSignal(SignalName.ForceSignal, force);
	}

	private void CastGroundRay()
	{
		var rayQuery = PhysicsRayQueryParameters3D.Create(GlobalPosition, GlobalPosition + new Vector3(0f, -10f, 0f));
		rayQuery.Exclude = new Godot.Collections.Array<Rid> { playerNode.GetRid() };
		var collision = world.IntersectRay(rayQuery);

		if (collision.Count > 0)
		{
			Vector3 collisionPosition = (Vector3)collision["position"];
			Vector3 distance = (GlobalPosition - collisionPosition);
			groundDistance = distance.Length();
		}
	}

	private Vector3 CalculateSpringForce(float springStrength, float dampStrength, float offset, Vector3 linearVelocity, Vector3 springDirection)
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
}
