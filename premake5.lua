project "ImGui"
	kind "StaticLib"
	language "C++"

    files
	{
		"imgui.h",
		"imconfig.h",
		"imstb_rectpack.h",
		"imgui_internal.h",
		"imstb_textedit.h",
		"imstb_truetype.h",

        "imgui.cpp",
		"imgui_draw.cpp",
        "imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imgui_demo.cpp",

        "LICENSE.txt"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
        
    filter "configurations:Debug"
	        targetdir ("Debug/bin-out/" .. outputdir .. "/%{prj.name}")
        	objdir ("Debug/bin-int/" .. outputdir .. "/%{prj.name}")

	filter { "system:windows", "configurations:Release"}
		    buildoptions "/MT"
            targetdir ("Release/bin-out/" .. outputdir .. "/%{prj.name}")
            objdir ("Release/bin-int/" .. outputdir .. "/%{prj.name}")

    filter "configurations:Dist"
	        targetdir ("Dist/bin-out/" .. outputdir .. "/%{prj.name}")
            objdir ("Dist/bin-int/" .. outputdir .. "/%{prj.name}")
