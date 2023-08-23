set(SDL2_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/include")

# Support both 32 and 64 bit builds
if (${CMAKE_SIZEOF_VOID_P} MATCHES 8)
  set(SDL2_LIBRARIES "${CMAKE_CURRENT_LIST_DIR}/lib/x64/SDL2.lib;${CMAKE_CURRENT_LIST_DIR}/lib/x64/SDL2main.lib;${CMAKE_CURRENT_LIST_DIR}/lib/x64/SDL2_image.lib;${CMAKE_CURRENT_LIST_DIR}/lib/x64/SDL2_mixer.lib;${CMAKE_CURRENT_LIST_DIR}/lib/x64/SDL2_ttf.lib")
else ()
  set(SDL2_LIBRARIES "${CMAKE_CURRENT_LIST_DIR}/lib/x86/SDL2.lib;${CMAKE_CURRENT_LIST_DIR}/lib/x86/SDL2main.lib;${CMAKE_CURRENT_LIST_DIR}/lib/x86/SDL2_image.lib;${CMAKE_CURRENT_LIST_DIR}/lib/x86/SDL2_mixer.lib;${CMAKE_CURRENT_LIST_DIR}/lib/x86/SDL2_ttf.lib")
endif ()

string(STRIP "${SDL2_LIBRARIES}" SDL2_LIBRARIES)