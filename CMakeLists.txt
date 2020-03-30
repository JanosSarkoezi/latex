cmake_minimum_required(VERSION 3.16.4)
project(covid NONE)

include(cmake/UseLATEX.cmake)

file(COPY data DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
add_latex_document(covid-19.tex
    IMAGE_DIRS images)

# add_custom_target(covid DEPENDS covid-19_pdf)

add_custom_command(TARGET covid-19
    POST_BUILD
    COMMAND pkill -HUP mupdf
    COMMENT "running pkill -HUP mupdf"
    VERBATIM)
