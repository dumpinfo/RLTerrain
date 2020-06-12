	project "BulletInverseDynamics"

	kind "SharedLib"
	includedirs {
		"..",
	}
	files {
		"IDMath.cpp",
		"MultiBodyTree.cpp",
		"details/MultiBodyTreeInitCache.cpp",
		"details/MultiBodyTreeImpl.cpp",
	}
