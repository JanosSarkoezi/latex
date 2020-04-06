cmake_minimum_required(VERSION 3.16.4)
project(model NONE)

include(cmake/UseLATEX.cmake)

add_latex_document(model.tex
    IMAGE_DIRS images)

add_custom_command(TARGET covid-19
    POST_BUILD
    COMMAND pkill -HUP mupdf
    COMMENT "running pkill -HUP mupdf"
    VERBATIM)
