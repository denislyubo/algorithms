set(SOURCES_SEGMENTS_UNION_ON_LINE
	${segments-union-on-line_SOURCE_DIR}/../../src/segments-union-on-line/main.cpp
)

add_executable(segments-union-on-line ${SOURCES_SEGMENTS_UNION_ON_LINE})

if (UNIX)
	# link Dll
	set_target_properties(
		segments-union-on-line
		PROPERTIES
			LINK_FLAGS "-lrt"
    )
endif(UNIX)
