	project "BulletWorldImporter"
		
	kind "SharedLib"
	
	includedirs {
		"../BulletFileLoader",
		"../../../src"
	}
	 
	files {
		"**.cpp",
		"**.h"
	}
