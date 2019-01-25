echo off
copy *.dll %windir%\Syswow64
cd %windir%\Syswow64
regsvr32 %windir%\Syswow64\iconv.dll /s
regsvr32 %windir%\Syswow64\libxml2.dll /s
regsvr32 %windir%\Syswow64\libxmlsec.dll /s
regsvr32 %windir%\Syswow64\libxmlsec-openssl.dll /s
regsvr32 %windir%\Syswow64\libxslt.dll /s
regsvr32 %windir%\Syswow64\zlib1.dll /s
regsvr32 %windir%\Syswow64\midas.dll /s
regsvr32 %windir%\Syswow64\qtintf70.dll /s
pause