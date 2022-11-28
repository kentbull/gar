#!/bin/bash

##################################################################
##                                                              ##
##             Script for creating multisig aid                 ##
##                                                              ##
##################################################################

PWD=$(pwd)
source $PWD/source.sh

# Capture password and salt
passcode="$(security find-generic-password -w -a "${LOGNAME}" -s int-gar-passcode)"

kli multisig interact --name "${INT_GAR_NAME}" --passcode "${passcode}"  --alias "GLEIF Internal AID" --data @"/scripts/anchor.json"