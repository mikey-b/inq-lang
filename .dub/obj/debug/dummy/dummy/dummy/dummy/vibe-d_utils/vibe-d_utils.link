set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%
if %errorlevel% neq 0 goto reportError


echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\all.obj >obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\codegen.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\funcattr.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\traits.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\typetuple.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\meta\uda.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\exception.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\memory_legacy.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\rangeutil.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\utilallocator.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\internal\win32.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\array.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\dictionarylist.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\hashmap.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\memory.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\string.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/vibe-d_utils\..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils\vibe\utils\validation.obj >>obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.lnkdep dmd -g -gf -debug -w -lib -op -I"..\..\..\..\AppData\Local\dub\packages\vibe-d-0.8.4\vibe-d\utils" -I"..\..\..\..\AppData\Local\dub\packages\stdx-allocator-2.77.4\stdx-allocator\source" -version=VibeWin32Driver -version=Have_vibe_d_utils -version=Have_stdx_allocator -oflib\vibe-d_utils.lib -map "obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dummy\vibe-d_utils\vibe-d_utils.link.rsp
if %errorlevel% neq 0 goto reportError
if not exist lib\vibe-d_utils.lib (echo lib\vibe-d_utils.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\vibe-d_utils.lib failed!

:noError
