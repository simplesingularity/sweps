// Created by Crowbar 0.74

$modelname "shield\cashield.mdl"

$staticprop

$bodygroup "mybody"
{
	studio "reference.smd"
}


$surfaceprop "combine_metal"

$contents "solid"

$illumposition 0.007 0.004 3.804

$cdmaterials "models\shield\"

$cbox 0 0 0 0 0 0

$bbox -12.654 -12.669 -1.821 12.645 12.684 7.608

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"cashield_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "cashield_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}
