set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%

echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\crypto\vibe\crypto\cryptorand.d >obj\debug\dummy\dummy\dummy\dummy\vibe-d_crypto\vibe-d_crypto.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\crypto\vibe\crypto\passwordhash.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_crypto\vibe-d_crypto.build.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\vibe-d_crypto\vibe-d_crypto.dep dmd -g -gf -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dummy\vibe-d_crypto\vibe-d_crypto.json" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\crypto" -I"..\..\..\..\AppData\Local\dub\packages\mir-linux-kernel-1.0.1\mir-linux-kernel\source" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\core" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\data" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils" -I"..\..\..\..\AppData\Local\dub\packages\stdx-allocator-2.77.4\stdx-allocator\source" -version=Have_vibe_d_crypto -version=Have_mir_linux_kernel -version=Have_vibe_d_core -version=VibeWin32Driver -version=Have_vibe_d_data -version=Have_vibe_d_utils -version=Have_stdx_allocator -c -odobj/debug/dummy/dummy/dummy/dummy/vibe-d_crypto @obj\debug\dummy\dummy\dummy\dummy\vibe-d_crypto\vibe-d_crypto.build.rsp
if %errorlevel% neq 0 goto reportError

goto noError

:reportError
echo Building lib\vibe-d_crypto.lib failed!

:noError
