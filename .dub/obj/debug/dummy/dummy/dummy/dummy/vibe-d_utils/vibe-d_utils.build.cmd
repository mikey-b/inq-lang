set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%

echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\all.d >obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\codegen.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\funcattr.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\traits.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\typetuple.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\uda.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\exception.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\memory_legacy.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\rangeutil.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\utilallocator.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\win32.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\array.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\dictionarylist.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\hashmap.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\memory.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\string.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\validation.d >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.dep dmd -g -gf -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.json" -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils" -I"..\..\..\..\AppData\Local\dub\packages\stdx-allocator-2.77.4\stdx-allocator\source" -version=VibeWin32Driver -version=Have_vibe_d_utils -version=Have_stdx_allocator -c -odobj/debug/dummy/dummy/dummy/dummy/vibe-d_utils @obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.build.rsp
if %errorlevel% neq 0 goto reportError

goto noError

:reportError
echo Building lib\vibe-d_utils.lib failed!

:noError
