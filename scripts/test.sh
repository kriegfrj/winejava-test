#!/bin/bash
#
export WINEDEBUG=-all
echo "Running the test script"
echo -e "echo Hi there from wine!\nexit" | wine cmd
echo -e "\nWas wine installed?"
