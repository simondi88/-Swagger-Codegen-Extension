
call generate-all.bat ../schoolbus/apispec/SBIswagger.yaml mvc config.json


rem cd mvc\src\SchoolBusAPI
rem dotnet restore
rem dotnet ef migrations add initial
rem cd ..\..\..

rem copy over files.

xcopy /Y mvc\src\SchoolBusAPI\Controllers\*.* ..\schoolbus\Server\src\SchoolBusAPI\Controllers\
xcopy /Y mvc\src\SchoolBusAPI\Models\*.* ..\schoolbus\Server\src\SchoolBusAPI\Models\
xcopy /Y mvc\src\SchoolBusAPI\ViewModels\*.* ..\schoolbus\Server\src\SchoolBusAPI\ViewModels\
xcopy /Y mvc\src\SchoolBusAPI\Services\*.* ..\schoolbus\Server\src\SchoolBusAPI\Services\