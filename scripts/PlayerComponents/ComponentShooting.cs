using Godot;
using System;

public partial class ComponentShooting : Node3D
{
	private PhysicsDirectSpaceState3D world;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	public override void _PhysicsProcess(double delta)
	{
		world = GetWorld3D().DirectSpaceState;
	}




}
