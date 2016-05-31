#!/bin/bash
#: Title	: virtualenv_py27
#: Date		: May 17th 2016
#: Author	: "Michael Okuboyejo" <mykelokuboyejo@gmail.com>
#: Version	: 1.0
#: Description	: create a Virtual Environment for Python27
#: Options	: preferred name of Directory for Environment


if [[$1 == "--help"]]; then
	echo "This script creates a Python 2.7  Virtual Environment in your current directory. Usage: virtualenv_py27 dir_name"
	exit 0
elif [[$1 == ""]]; then
	echo "No directory given, I would create a p_env dir for you then"
	virtualenv p_env
	exit 0
else 
	VIRTUAL_ENV_DIRECTORY = $1
	echo "Creating a python version 2.7 Virtual Environment in ${VIRTUAL_ENV_DIRECTORY}"
	virtualenv --python=python2.7 $1
	exit 0
fi
