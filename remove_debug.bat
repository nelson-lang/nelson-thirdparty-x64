set PLATFORM_NELSON=x64
set BOOST_NELSON=x64-1_82
set VC_VERSION=vc143
set QTDIR=%QTDIR64%
set NELSON_DIR=..\nelson

rem remove qt debug symbols
del %NELSON_DIR%\bin\%PLATFORM_NELSON%\plugins\*.pdb /s
del %NELSON_DIR%\bin\%PLATFORM_NELSON%\plugins\*d.dll /s
del %NELSON_DIR%\bin\%PLATFORM_NELSON%\qml\*.pdb /s
del %NELSON_DIR%\bin\%PLATFORM_NELSON%\qml\*d.dll /s
del %NELSON_DIR%\bin\%PLATFORM_NELSON%\Qt*d.dll /s
