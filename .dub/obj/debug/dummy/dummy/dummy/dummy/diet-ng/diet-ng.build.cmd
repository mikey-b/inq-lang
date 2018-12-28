set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\10\bin;C:\D\dmd2\windows\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.16.27023\bin\HostX86\x86;%PATH%

echo ..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\internal\html.d >obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\internal\string.d >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\defs.d >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\dom.d >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\html.d >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\input.d >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\parser.d >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp
echo ..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source\diet\traits.d >>obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.dep dmd -g -gf -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.json" -I"..\..\..\..\AppData\Local\dub\packages\diet-ng-1.5.0\diet-ng\source" -version=Have_diet_ng -c -odobj/debug/dummy/dummy/dummy/dummy/diet-ng @obj\debug\dummy\dummy\dummy\dummy\diet-ng\diet-ng.build.rsp
if %errorlevel% neq 0 goto reportError

goto noError

:reportError
echo Building lib\diet-ng.lib failed!

:noError
