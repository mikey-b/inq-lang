set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%

echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\auth\basic_auth.d >obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\auth\digest_auth.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\client.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\common.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\dist.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\fileserver.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\form.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\log.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\proxy.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\router.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\server.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\session.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\status.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http\vibe\http\websockets.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.dep dmd -g -gf -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.json" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http" -I"..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\crypto" -I"..\..\..\..\AppData\Local\dub\packages\mir-linux-kernel-1.0.1\mir-linux-kernel\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\core" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\data" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils" -I"..\..\..\..\AppData\Local\dub\packages\stdx-allocator-2.77.4\stdx-allocator\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\textfilter" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\tls" -I"..\..\..\..\AppData\Local\dub\packages\openssl-1.1.6_1.0.1g\openssl" -version=Have_vibe_d_http -version=Have_diet_ng -version=Have_vibe_d_crypto -version=Have_vibe_d_inet -version=Have_vibe_d_textfilter -version=Have_vibe_d_tls -version=Have_mir_linux_kernel -version=Have_vibe_d_core -version=VibeWin32Driver -version=Have_vibe_d_data -version=Have_vibe_d_utils -version=Have_stdx_allocator -version=Have_vibe_d_stream -version=Have_openssl -c -odobj/debug/dummy/dummy/dummy/dummy/vibe-d_http @obj\debug\dummy\dummy\dummy\dummy\vibe-d_http\vibe-d_http.build.rsp
if %errorlevel% neq 0 goto reportError

goto noError

:reportError
echo Building lib\vibe-d_http.lib failed!

:noError
