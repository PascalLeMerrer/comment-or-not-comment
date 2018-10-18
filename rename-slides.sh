#!/bin/bash
cd slides
rename -N ...01 -X -e '$_ = "slide$N"' *.md
rename -N ...01 -X -e '$_ = "slide-$N"' *.md
