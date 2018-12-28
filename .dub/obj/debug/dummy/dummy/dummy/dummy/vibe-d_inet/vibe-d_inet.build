set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%

echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\message.d >obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\mimetypes.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\path.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\url.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\urltransfer.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\webform.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.build.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.dep dmd -g -gf -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.json" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\core" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\data" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils" -I"..\..\..\..\AppData\Local\dub\packages\stdx-allocator-2.77.4\stdx-allocator\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\textfilter" -version=Have_vibe_d_inet -version=Have_vibe_d_core -version=Have_vibe_d_stream -version=Have_vibe_d_textfilter -version=VibeWin32Driver -version=Have_vibe_d_data -version=Have_vibe_d_utils -version=Have_stdx_allocator -c -odobj/debug/dummy/dummy/dummy/dummy/vibe-d_inet @obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.build.rsp
if %errorlevel% neq 0 goto reportError

goto noError

:reportError
echo Building lib\vibe-d_inet.lib failed!

:noError
