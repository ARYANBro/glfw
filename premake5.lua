project "glfw"
	kind "StaticLib"
	cdialect "C99"
	language "C"
	staticruntime "on"

	targetdir ("%{wks.location}/Binaries/%{cfg.buildcfg}/Vendor/%{prj.name}")
	objdir ("%{wks.location}/Binaries/%{cfg.buildcfg}/Vendor/%{prj.name}/Objects")

	files
	{
		"src/glfw_config.h",
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
		"src/vulkan.c",
		"src/window.c",
		"src/win32_platform.h",
		"src/win32_joystick.h",
		"src/wgl_context.h",
		"src/egl_context.h",
		"src/win32_init.c",
		"src/win32_joystick.c",
		"src/win32_monitor.c",
		"src/win32_time.c",
		"src/win32_tls.c",
		"src/win32_window.c",
		"src/wgl_context.c",
		"src/egl_context.c"
	}

	defines 
	{ 
		"_GLFW_WIN32",
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	
	filter "configurations:Release"
		runtime "Release"
		optimize "on"