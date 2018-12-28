set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%

echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\base64.d >obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\counting.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\memory.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\multicast.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\operations.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\stdio.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\taskpipe.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\wrapper.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream\vibe\stream\zlib.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.dep dmd -g -gf -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.json" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\core" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\data" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils" -I"..\..\..\..\AppData\Local\dub\packages\stdx-allocator-2.77.4\stdx-allocator\source" -version=Have_vibe_d_stream -version=Have_vibe_d_core -version=VibeWin32Driver -version=Have_vibe_d_data -version=Have_vibe_d_utils -version=Have_stdx_allocator -c -odobj/debug/dummy/dummy/dummy/dummy/vibe-d_stream @obj\debug\dummy\dummy\dummy\dummy\vibe-d_stream\vibe-d_stream.build.rsp
if %errorlevel% neq 0 goto reportError

goto noError

:reportError
echo Building lib\vibe-d_stream.lib failed!

:noError
