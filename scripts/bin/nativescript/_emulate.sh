#!/usr/bin/env bash
# ---------------------------------------------------------------------------------------------------|
#  Repo                    : https://github.com/bradyhouse/house_____________________________________|
#  Specification           : N/A_____________________________________________________________________|
#  Specification Path      : N/A_____________________________________________________________________|
#  Author                  : brady house_____________________________________________________________|
#  Create date             : 12/24/2016______________________________________________________________|
#  Description             : MASTER ANDROID EMULATE FUNCTION_________________________________________|
#  Entry Point             : emulate_________________________________________________________________|
#  Input Parameters        : N/A_____________________________________________________________________|
#  Initial Consumer        : ../fiddle-emulate.sh____________________________________________________|
# ---------------------------------------------------------------------------------------------------|
#  Revision History::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::|
# ---------------------------------------------------------------------------------------------------|
# Baseline Ver - CHANGELOG @ 201612240420
# ---------------------------------------------------------------------------------------------------|

function startAndroidEmulator() {
  groupLog "startEmulator";
  ${__ANDROID_EMULATOR_EXE__} -netdelay none -netspeed full -avd "${__ANDROID_EMULATOR_PROFILE__}"
}

function emulate() {
    groupLog "emulate";
    startAndroidEmulator || exit $?;
}
