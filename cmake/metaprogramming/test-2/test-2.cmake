set(SOURCES_TEST_2
	${test-2_SOURCE_DIR}/../../../src/metaprogramming/test-2/main.cpp
)

add_executable(test-2 ${SOURCES_TEST_2})

if (UNIX)
	# link Dll
	set_target_properties(
		test-2
		PROPERTIES
			LINK_FLAGS "-lrt"
    )
endif(UNIX)
