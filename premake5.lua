project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
        targetdir ("Debug/bin-out/" .. outputdir .. "/%{prj.name}")
	    objdir ("Debug/bin-int/" .. outputdir .. "/%{prj.name}")

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
        targetdir ("Release/bin-out/" .. outputdir .. "/%{prj.name}")
	    objdir ("Release/bin-int/" .. outputdir .. "/%{prj.name}")

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        targetdir ("Dist/bin-out/" .. outputdir .. "/%{prj.name}")
	    objdir ("Dist/bin-int/" .. outputdir .. "/%{prj.name}")
