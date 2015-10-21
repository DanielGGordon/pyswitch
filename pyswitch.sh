#!/bin/bash


### Shell script outline ###

# 1. Check to see what version of Python is found when executing `python -V'
# 2. If no version of Python, return error message saying to simply install what version you want.
#        - In the future, this can prompt the user to possibly install a version of their choosing. 
# 3. Save the value of PATH in a temp variable in case we need to revert
# 4. Check to see if there if Python exists for the other version
#        - if for example, Python 2 is found, check to see if Python 3 exists in bin
# 5. If the version exists, fix up the path
# 6. If the version does not exist, prompt user to install new version
# 7. Confirm with user if path looks ok



function getCurrentPythonVersion {
   # Return current python version (2 or 3)
   # If Python does not exist, then return a message saying that
   echo  $(python -V 2>&1 | grep -Po '(?<=Python )([0-9]{1})')
}
