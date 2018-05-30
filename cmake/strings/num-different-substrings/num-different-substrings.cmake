set(SOURCES_NUM_DIFFERENT_SUBSTRINGS
	${num-different-substrings_SOURCE_DIR}/../../../src/strings/num-different-substrings/main.cpp
)

add_executable(num-different-substrings ${SOURCES_NUM_DIFFERENT_SUBSTRINGS})

if (UNIX)
	# link Dll
	set_target_properties(
			num-different-substrings
		PROPERTIES
			LINK_FLAGS "-lrt"
    )
endif(UNIX)
