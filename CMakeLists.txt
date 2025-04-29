
cmake_minimum_required(VERSION 3.25.1)
project("NOP - Build Test")

set(CMAKE_CXX_STANDARD 11)

include_directories(
	"./SystemCore"
	"./main"
)

add_definitions(
	"-DCONFIG_PROC_HAVE_LOG=1"
)

add_executable(
	app
	SystemCore/Processing.cpp
	SystemCore/Log.cpp
	SystemCore/SystemDebugging.cpp
	SystemCore/SystemCommanding.cpp
	SystemCore/TcpListening.cpp
	SystemCore/TcpTransfering.cpp
	main/main.cpp
	main/Supervising.cpp
)

if (MSVC)
	set (CMAKE_CXX_FLAGS "/EHsc")
endif()

if (WIN32)
	add_definitions(
		"-D_WIN32_WINNT=_WIN32_WINNT_WIN10"
		"-DWINVER=_WIN32_WINNT_WIN10"
	)
	target_link_libraries(
		app
		"ws2_32"
	)
endif()

