@ECHO OFF
PUSHD %cd%
CD %~dp0..
SET BASEDIR=%cd%
POPD
SET VOLUMEDIR=%BASEDIR%\volumes

SET COMPOSE_CONVERT_WINDOWS_PATHS=true

SET DOCKERCOMPOSE=docker-compose -f "%BASEDIR%\base.yml"

%DOCKERCOMPOSE% %*
