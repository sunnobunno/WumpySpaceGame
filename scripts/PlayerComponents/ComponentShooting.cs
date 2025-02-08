using Godot;
using System;

public partial class ComponentShooting : Node3D
{
    [Signal] public delegate void ImpulseSignalEventHandler(Vector3 force);

	[Export] AudioStreamPlayer3D audioPlayer;
	[Export] AudioStream gunShotAudio;

	private PackedScene gunParticles;

    private PhysicsDirectSpaceState3D world;
	private bool shoot = false;

	private RandomNumberGenerator rng;

    // DEPENDENT PARAMETERS
    public R3DTestController playerNode { get; set; }

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
	{
		gunParticles = GD.Load<PackedScene>("res://scenes/gunParticles.tscn");
		rng = new RandomNumberGenerator();
	}

    public override void _Process(double delta)
    {
		shoot = CaptureShootingInputs();

		if (shoot)
		{
            FireWeapon();
        }
    }

    public override void _PhysicsProcess(double delta)
	{
		
	}

	private void FireWeapon()
	{
		
		
		world = GetWorld3D().DirectSpaceState;
        var rayQuery = GenerateShootingRay();
        CastShootingRay(rayQuery);

		var forwardDirection = playerNode.Transform.Basis.Z;
		var recoilImpulse = CalculateBackwardForce(10f, forwardDirection);
		EmitSignal(SignalName.ImpulseSignal, recoilImpulse);

		InstantiateShootingParticles();
		PlayGunShot();

        GD.Print(recoilImpulse);
    }

	private PhysicsRayQueryParameters3D GenerateShootingRay()
	{
		var origin = playerNode.EyeHeight;
		var direction = playerNode.Transform.Basis.Z * 10f;
        var rayQuery = PhysicsRayQueryParameters3D.Create(origin, origin + direction);
        rayQuery.Exclude = new Godot.Collections.Array<Rid> { playerNode.GetRid() };

		return rayQuery;
    }

	private Vector3 CalculateBackwardForce(float strength, Vector3 forwardDirection)
	{
		var backwardDirection = forwardDirection * -1f;
		var backwardForce = backwardDirection.Normalized() * strength;

		return backwardForce;
	}

	private void CastShootingRay(PhysicsRayQueryParameters3D rayQuery)
	{
        var collision = world.IntersectRay(rayQuery);

		if (collision.Count > 0)
		{
            Vector3 collisionPosition = (Vector3)collision["position"];
            Vector3 distance = (GlobalPosition - collisionPosition);

			//GD.Print(distance.Length());
        }
    }



	private bool CaptureShootingInputs()
	{
		var shootPressed = false;

		if (Input.IsActionJustPressed("Shoot"))
		{
			shootPressed = true;
		}

		return shootPressed;
	}


	private void InstantiateShootingParticles()
	{
		var instance = gunParticles.Instantiate();
		playerNode.GunTip.AddChild(instance);
	}

	private void PlayGunShot()
	{
		var pitch = rng.RandfRange(0.8f, 1.2f);
		
		audioPlayer.Stream = gunShotAudio;
		audioPlayer.PitchScale = pitch;
		audioPlayer.Play(0.2f);
	}
}
