set(SOURCES_TEST_1
	${test-1_SOURCE_DIR}/../../../src/metaprogramming/test-1/main.cpp
)

add_executable(test-1 ${SOURCES_TEST_1})

if (UNIX)
	# link Dll
	set_target_properties(
		test-1
		PROPERTIES
			LINK_FLAGS "-lrt"
    )
endif(UNIX)
