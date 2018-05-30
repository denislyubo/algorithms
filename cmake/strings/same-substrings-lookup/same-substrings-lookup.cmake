set(SOURCES_SAME_SUBSTRINGS_LOOKUP
	${same-substrings-lookup_SOURCE_DIR}/../../../src/strings/same-substrings-lookup/main.cpp
)

add_executable(same-substrings-lookup ${SOURCES_SAME_SUBSTRINGS_LOOKUP})

if (UNIX)
	# link Dll
	set_target_properties(
		same-substrings-lookup
		PROPERTIES
			LINK_FLAGS "-lrt"
    )
endif(UNIX)
