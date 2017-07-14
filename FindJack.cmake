# - Try to find Jack Audio Libraries
# libjack; libjackserver;
# Once done this will define
#  LIBJACK_FOUND - System has libjack.so
#  LIBJACK_INCLUDE_DIRS - The jack.h include directories
#  LIBJACK_LIBRARIES - The libraries needed to use jack

# Install jack on Ubuntu: apt-get install libjack-jackd2-dev
# Add user to audio group: usermod -a -G audio <yourUserName>

find_path(LIBJACK_INCLUDE_DIR
	NAMES
		jack/jack.h
	PATHS
		$ENV{PROGRAMFILES}/Jack/includes
)

find_library(LIBJACK_libjack_LIBRARY
	NAMES
		libjack64 jack64
	PATHS
		$ENV{PROGRAMFILES}/Jack/lib
)

set(LIBJACK_LIBRARIES ${LIBJACK_libjack_LIBRARY})
set(LIBJACK_LIBRARY ${LIBJACK_LIBRARIES})
set(LIBJACK_INCLUDE_DIRS ${LIBJACK_INCLUDE_DIR} )

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LIBJACK_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(LIBJACK  DEFAULT_MSG
                                  LIBJACK_LIBRARY LIBJACK_INCLUDE_DIR)
