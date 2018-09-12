set(SOURCES_TEST_3
	${test-3_SOURCE_DIR}/../../../src/metaprogramming/test-3/main.cpp
)

add_executable(test-3 ${SOURCES_TEST_3})

if (UNIX)
	# link Dll
	set_target_properties(
		test-3
		PROPERTIES
			LINK_FLAGS "-lrt"
    )
endif(UNIX)
