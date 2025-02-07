using Godot;
using System;

public partial class Test : RigidBody3D
{
	[Export] R3DTestController controller;

	double localPhysDelta;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		//CustomIntegrator = true;
    }

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
		//GlobalPosition = MouseRaycaster.PlayerAimHeightPlaneMouseIntersect;
	}

    public override void _PhysicsProcess(double delta)
    {
        localPhysDelta = delta;
    }

    public override void _IntegrateForces(PhysicsDirectBodyState3D state)
    {
        PhysicsMoveToTarget(state);
    }

    private void PhysicsMoveToTarget(PhysicsDirectBodyState3D state)
	{
		var targetPosition = MouseRaycaster.PlayerAimHeightPlaneMouseIntersect;
		var positionDifference = targetPosition - GlobalPosition;

		var targetVelocity = positionDifference / (float)localPhysDelta;
		var velocityAdjustment = targetVelocity - state.LinearVelocity;
		var accel = velocityAdjustment / (float)localPhysDelta;
		var force = Mass * accel;

		state.ApplyForce(force);
	}
}
