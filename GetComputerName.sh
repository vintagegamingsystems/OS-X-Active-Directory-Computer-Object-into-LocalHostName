#!/bin/bash

ComputerObjectName="$(dsconfigad -show | grep "Computer Account" | cut -d=  -f2- | cut -c 2- | rev| cut -c 2-| rev)"
scutil --set LocalHostName $ComputerObjectName
