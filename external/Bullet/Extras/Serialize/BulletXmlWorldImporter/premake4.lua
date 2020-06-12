	project "BulletXmlWorldImporter"
		
	kind "SharedLib"
	targetdir "../../lib"
	includedirs {
		"../BulletWorldImporter",
		"../BulletFileLoader",
		"../../../src"
	}
	 
	files {
		"**.cpp",
		"**.h"
	}
