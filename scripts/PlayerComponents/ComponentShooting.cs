using Godot;
using System;

public partial class ComponentShooting : Node3D
{
	private PhysicsDirectSpaceState3D world;

    // DEPENDENT PARAMETERS
    public R3DTestController playerNode { get; set; }

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
	{
	}

	public override void _PhysicsProcess(double delta)
	{
		world = GetWorld3D().DirectSpaceState;
		var rayQuery = GenerateShootingRay();
		CastShootingRay(rayQuery);
	}

	private PhysicsRayQueryParameters3D GenerateShootingRay()
	{
		var origin = playerNode.EyeHeight;
		var direction = playerNode.Transform.Basis.Z * 10f;
        var rayQuery = PhysicsRayQueryParameters3D.Create(origin, origin + direction);
        rayQuery.Exclude = new Godot.Collections.Array<Rid> { playerNode.GetRid() };

		return rayQuery;
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

}
