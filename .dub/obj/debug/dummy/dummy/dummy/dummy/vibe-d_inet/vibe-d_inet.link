set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%
if %errorlevel% neq 0 goto reportError


echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_inet\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\message.obj >obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_inet\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\mimetypes.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_inet\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\path.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_inet\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\url.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_inet\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\urltransfer.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_inet\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet\vibe\inet\webform.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.link.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.lnkdep dmd -g -gf -debug -w -lib -op -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\core" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\data" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils" -I"..\..\..\..\AppData\Local\dub\packages\stdx-allocator-2.77.4\stdx-allocator\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\textfilter" -version=Have_vibe_d_inet -version=Have_vibe_d_core -version=Have_vibe_d_stream -version=Have_vibe_d_textfilter -version=VibeWin32Driver -version=Have_vibe_d_data -version=Have_vibe_d_utils -version=Have_stdx_allocator -oflib\vibe-d_inet.lib -map "obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dummy\vibe-d_inet\vibe-d_inet.link.rsp
if %errorlevel% neq 0 goto reportError
if not exist lib\vibe-d_inet.lib (echo lib\vibe-d_inet.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\vibe-d_inet.lib failed!

:noError
