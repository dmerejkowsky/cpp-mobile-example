
message(STATUS "${CONAN_LIB_DIRS_SQLITE3}")

find_path(SQLITE3_INCLUDE_DIR NAMES sqlite3.h PATHS ${CONAN_INCLUDE_DIRS_SQLITE3})
find_library(SQLITE3_LIBRARY NAMES ${CONAN_LIBS_SQLITE3} PATHS ${CONAN_LIB_DIRS_SQLITE3})

IF(CMAKE_SYSTEM_NAME STREQUAL "Linux")
   SET(EXTRA_LIBS dl pthread)
ENDIF()

set(SQLITE3_INCLUDE_DIRS ${SQLITE3_INCLUDE_DIR})
set(SQLITE3_LIBRARIES ${SQLITE3_LIBRARY} ${EXTRA_LIBS})

mark_as_advanced(SQLITE3_LIBRARY SQLITE3_INCLUDE_DIR)

message("** SQLite3 found by Conan!")
set(SQLITE3_FOUND TRUE)
message("   - libraries:  ${SQLITE3_LIBRARIES}")
message("   - includes:  ${SQLITE3_INCLUDE_DIRS}")
