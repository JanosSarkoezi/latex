cmake_minimum_required(VERSION 3.16.4)
project(covid NONE)

include(cmake/UseLATEX.cmake)
add_latex_document(covid-19.tex
    IMAGE_DIRS images)
