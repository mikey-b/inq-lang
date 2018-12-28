set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%
if %errorlevel% neq 0 goto reportError


echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\client.obj >obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\collection.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\connection.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\cursor.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\database.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\flags.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\mongo.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\sasl.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\sessionstore.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_mongodb\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb\vibe\db\mongo\settings.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.lnkdep dmd -g -gf -debug -w -lib -op -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\mongodb" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\http" -I"..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\crypto" -I"..\..\..\..\AppData\Local\dub\packages\mir-linux-kernel-1.0.1\mir-linux-kernel\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\core" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\data" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils" -I"..\..\..\..\AppData\Local\dub\packages\stdx-allocator-2.77.4\stdx-allocator\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\inet" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\stream" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\textfilter" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\tls" -I"..\..\..\..\AppData\Local\dub\packages\openssl-1.1.6_1.0.1g\openssl" -version=Have_vibe_d_mongodb -version=Have_vibe_d_http -version=Have_diet_ng -version=Have_vibe_d_crypto -version=Have_vibe_d_inet -version=Have_vibe_d_textfilter -version=Have_vibe_d_tls -version=Have_mir_linux_kernel -version=Have_vibe_d_core -version=VibeWin32Driver -version=Have_vibe_d_data -version=Have_vibe_d_utils -version=Have_stdx_allocator -version=Have_vibe_d_stream -version=Have_openssl -oflib\vibe-d_mongodb.lib -map "obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dummy\vibe-d_mongodb\vibe-d_mongodb.link.rsp
if %errorlevel% neq 0 goto reportError
if not exist lib\vibe-d_mongodb.lib (echo lib\vibe-d_mongodb.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\vibe-d_mongodb.lib failed!

:noError
