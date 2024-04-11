
cmake_minimum_required(VERSION 3.25.1)
project("NOP - Processing() Build Test")

set(CMAKE_CXX_STANDARD 11)

include_directories(
	"./ProcessingCore"
	"./main"
)

add_definitions(
	"-DCONFIG_PROC_HAVE_LOG=1"
)

add_executable(
	app
	ProcessingCore/Processing.cpp
	ProcessingCore/Log.cpp
	ProcessingCore/SystemDebugging.cpp
	ProcessingCore/SystemCommanding.cpp
	ProcessingCore/TcpListening.cpp
	ProcessingCore/TcpTransfering.cpp
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

