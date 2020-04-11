cmake_minimum_required(VERSION 3.16.4)
project(model NONE)

include(cmake/UseLATEX.cmake)

add_latex_document(model.tex)


add_custom_command(TARGET model
    POST_BUILD
    COMMAND pkill -HUP mupdf
    COMMENT "running pkill -HUP mupdf"
    VERBATIM)
