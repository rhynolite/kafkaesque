#  Copyright (c) 2014, Facebook, Inc.
#  Copyright (c) 2016, Omer Shapira
#  All rights reserved.
#
#  This source code is licensed under the BSD-style license found in the
#  LICENSE file in the root directory of this source tree. An additional grant
#  of patent rights can be found in the PATENTS file in the same directory.
#
# - Try to find wanlge
# This will define
# WANGLE_FOUND
# WANGLE_INCLUDE_DIR
# WANGLE_LIBRARIES

CMAKE_MINIMUM_REQUIRED(VERSION 2.8.7 FATAL_ERROR)

INCLUDE(FindPackageHandleStandardArgs)

FIND_LIBRARY(WANGLE_LIBRARY folly PATHS ${WANGLE_LIBRARYDIR})
FIND_PATH(WANGLE_INCLUDE_DIR "wangle/acceptor/Acceptor.h" PATHS ${WANGLE_INCLUDEDIR})

SET(WANGLE_LIBRARIES ${WANGLE_LIBRARY})

FIND_PACKAGE_HANDLE_STANDARD_ARGS(Wangle
  REQUIRED_ARGS WANGLE_INCLUDE_DIR WANGLE_LIBRARIES)
