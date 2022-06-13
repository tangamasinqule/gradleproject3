@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  gradleproject3 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLEPROJECT3_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\gradleproject3.jar;%APP_HOME%\lib\appcompat-1.0.2.aar;%APP_HOME%\lib\constraintlayout-1.1.3.aar;%APP_HOME%\lib\design-23.3.0.aar;%APP_HOME%\lib\appcompat-v7-23.3.0.aar;%APP_HOME%\lib\animated-vector-drawable-23.3.0.aar;%APP_HOME%\lib\support-vector-drawable-23.3.0.aar;%APP_HOME%\lib\recyclerview-v7-23.3.0.aar;%APP_HOME%\lib\support-v4-23.3.0.aar;%APP_HOME%\lib\fragment-1.0.0.aar;%APP_HOME%\lib\vectordrawable-animated-1.0.0.aar;%APP_HOME%\lib\legacy-support-core-ui-1.0.0.aar;%APP_HOME%\lib\legacy-support-core-utils-1.0.0.aar;%APP_HOME%\lib\vectordrawable-1.0.1.aar;%APP_HOME%\lib\loader-1.0.0.aar;%APP_HOME%\lib\viewpager-1.0.0.aar;%APP_HOME%\lib\coordinatorlayout-1.0.0.aar;%APP_HOME%\lib\drawerlayout-1.0.0.aar;%APP_HOME%\lib\slidingpanelayout-1.0.0.aar;%APP_HOME%\lib\customview-1.0.0.aar;%APP_HOME%\lib\swiperefreshlayout-1.0.0.aar;%APP_HOME%\lib\asynclayoutinflater-1.0.0.aar;%APP_HOME%\lib\core-1.0.1.aar;%APP_HOME%\lib\versionedparcelable-1.0.0.aar;%APP_HOME%\lib\collection-1.0.0.jar;%APP_HOME%\lib\cursoradapter-1.0.0.aar;%APP_HOME%\lib\lifecycle-runtime-2.0.0.aar;%APP_HOME%\lib\documentfile-1.0.0.aar;%APP_HOME%\lib\localbroadcastmanager-1.0.0.aar;%APP_HOME%\lib\print-1.0.0.aar;%APP_HOME%\lib\lifecycle-viewmodel-2.0.0.aar;%APP_HOME%\lib\lifecycle-livedata-2.0.0.aar;%APP_HOME%\lib\lifecycle-livedata-core-2.0.0.aar;%APP_HOME%\lib\lifecycle-common-2.0.0.jar;%APP_HOME%\lib\core-runtime-2.0.0.aar;%APP_HOME%\lib\core-common-2.0.0.jar;%APP_HOME%\lib\interpolator-1.0.0.aar;%APP_HOME%\lib\annotation-1.0.0.jar;%APP_HOME%\lib\constraintlayout-solver-1.1.3.jar;%APP_HOME%\lib\support-annotations-23.3.0.jar

@rem Execute gradleproject3
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLEPROJECT3_OPTS%  -classpath "%CLASSPATH%" gradleproject3.Main %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable GRADLEPROJECT3_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%GRADLEPROJECT3_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
