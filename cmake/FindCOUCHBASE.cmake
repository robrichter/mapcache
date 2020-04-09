
FIND_PATH(COUCHBASE_INCLUDE_DIR
    NAMES couchbase.h
    PATH_SUFFIXES libcouchbase
)

FIND_LIBRARY(COUCHBASE_LIBRARY
    NAMES couchbase
)

set(COUCHBASE_INCLUDE_DIRS ${COUCHBASE_INCLUDE_DIR})
set(COUCHBASE_LIBRARIES ${COUCHBASE_LIBRARY})
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(COUCHBASE DEFAULT_MSG COUCHBASE_LIBRARY COUCHBASE_INCLUDE_DIR)
mark_as_advanced(COUCHBASE_LIBRARY COUCHBASE_INCLUDE_DIR)
