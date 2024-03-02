
cmake_minimum_required(VERSION 3.25.1)
project("NOP - Processing() Build Test")

include_directories(
	"./main"
)

add_definitions(
	"-DCONFIG_PROC_HAVE_LOG=1"
)

add_executable(
	app
	main/main.cpp
)

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

