#!/bin/bash
#
export WINEDEBUG=-all
echo "Running the test script"
echo -e "echo Hi there from wine!\nexit" | wine cmd
echo -e "\nRunning winejava"
scripts/winejava -version
echo -e "\nRunning winemvn"
scripts/winejava test
echo -e "\nWas wine installed?"
