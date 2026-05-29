#version 3.7; // 3.6
global_settings { assumed_gamma 1.0 }
#default { finish { ambient 0.2 diffuse 0.9 } }
#default { pigment { rgb <0.447, 0.475, 0.502> } }

//------------------------------------------
#include "colors.inc"
#include "textures.inc"

//------------------------------------------
#include "assembly_textures.inc"
#include "assembly_meshes.inc"

//------------------------------------------
// Camera ----------------------------------
#declare CamUp = < 0, 0, 197.94>;
#declare CamRight = <263.92, 0, 0>;
#declare CamRotation = <-35.26438616973055, 6.2985768780846825e-06, -135.0000077757388>;
#declare CamPosition = <-45.27910614013672, 126.20439910888672, 186.36199951171875>;
camera {
	orthographic
	location <0, 0, 0>
	direction <0, 1, 0>
	up CamUp
	right CamRight
	rotate CamRotation
	translate CamPosition
}

// FreeCAD Light -------------------------------------
light_source { CamPosition color rgb <0.5, 0.5, 0.5> }

// Background ------------------------------

polygon {
	5, <-131.96061197916666, -98.970458984375>, <-131.96061197916666, 98.970458984375>, <131.96061197916666, 98.970458984375>, <131.96061197916666, -98.970458984375>, <-131.96061197916666, -98.970458984375>
	pigment { color rgb<0.122, 0.122, 0.122> }
	finish { ambient 1 diffuse 0 }
	rotate <54.73561383026945, 6.2985768780846825e-06, -135.0000077757388>
	translate <-45.27910614013672, 126.20439910888672, 186.36199951171875>
	translate <57735.02588272095, -57735.031843185425, -57735.01992225647>
}
sky_sphere {
	pigment {
		color rgb<0.122, 0.122, 0.122>
	}
}

//------------------------------------------

#include "assembly_user.inc"

// Objects in Scene ------------------------

//----- Assembly -----
//----- X_axis -----
//----- Y_axis -----
//----- Z_axis -----
//----- XY_plane -----
//----- XZ_plane -----
//----- YZ_plane -----
//----- Origin001 -----
//----- Joints -----
//----- Bottom_Plate -----
object { Bottom_Plate_mesh
	finish {
	ambient rgb<0.333, 0.333, 0.333>
	emission rgb<0.000, 0.000, 0.000>
	phong 0.53 phong_size 44.999998807907104 
}

}

//----- globals -----
//----- board_1 -----
//----- Kailh_Polia_v86 -----
//----- Kailh_Polia_v001 -----
//----- Kailh_Polia_v002 -----
//----- Kailh_Polia_v003 -----
//----- Kailh_Polia_v004 -----
//----- Kailh_Polia_v005 -----
//----- Kailh_Polia_v006 -----
//----- Kailh_Polia_v007 -----
//----- Kailh_Polia_v008 -----
//----- Kailh_Polia_v009 -----
//----- Kailh_Polia_v010 -----
//----- Kailh_Polia_v011 -----