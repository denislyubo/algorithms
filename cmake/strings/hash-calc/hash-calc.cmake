set(SOURCES_HASH_CALC
	${hash-calc_SOURCE_DIR}/../../../src/strings/hash-calc/main.cpp
)

add_executable(hash-calc ${SOURCES_HASH_CALC})

if (UNIX)
	# link Dll
	set_target_properties(
		hash-calc
		PROPERTIES
			LINK_FLAGS "-lrt"
    )
endif(UNIX)
