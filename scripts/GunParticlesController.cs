using Godot;
using System;

public partial class GunParticlesController : Node3D
{
	[Export] GpuParticles3D particles;
	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		particles.Emitting = true;
		particles.OneShot = true;
		particles.Restart();

		particles.Finished += DestroyNode;

		GD.Print("Particles");
	}

	private void DestroyNode()
	{
		QueueFree();
	}
}
