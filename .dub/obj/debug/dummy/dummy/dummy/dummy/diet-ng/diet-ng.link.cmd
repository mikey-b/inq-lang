set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%
if %errorlevel% neq 0 goto reportError


echo obj/debug/dummy/dummy/dummy/dummy/diet-ng\..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\internal\html.obj >obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/diet-ng\..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\internal\string.obj >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/diet-ng\..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\defs.obj >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/diet-ng\..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\dom.obj >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/diet-ng\..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\html.obj >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/diet-ng\..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\input.obj >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/diet-ng\..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\parser.obj >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp
echo obj/debug/dummy/dummy/dummy/dummy/diet-ng\..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\traits.obj >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.lnkdep dmd -g -gf -debug -w -lib -op -I"..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source" -version=Have_diet_ng -oflib\diet-ng.lib -map "obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.link.rsp
if %errorlevel% neq 0 goto reportError
if not exist lib\diet-ng.lib (echo lib\diet-ng.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\diet-ng.lib failed!

:noError
