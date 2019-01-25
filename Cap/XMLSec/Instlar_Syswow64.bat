echo off
copy *.dll %windir%\Syswow64
cd %windir%\Syswow64
regsvr32 %windir%\System32\iconv.dll /s
regsvr32 %windir%\System32\libxml2.dll /s
regsvr32 %windir%\System32\libxmlsec.dll /s
regsvr32 %windir%\System32\libxmlsec-openssl.dll /s
regsvr32 %windir%\System32\libxslt.dll /s
regsvr32 %windir%\System32\zlib1.dll /s
regsvr32 %windir%\System32\midas.dll /s
pause