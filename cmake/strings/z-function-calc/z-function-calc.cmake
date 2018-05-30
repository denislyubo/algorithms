set(SOURCES_Z_FUNCTION_CALC
	${z-function-calc_SOURCE_DIR}/../../../src/strings/z-function-calc/main.cpp
)

add_executable(z-function-calc ${SOURCES_Z_FUNCTION_CALC})

if (UNIX)
	# link Dll
	set_target_properties(
		z-function-calc
		PROPERTIES
			LINK_FLAGS "-lrt"
    )
endif(UNIX)
