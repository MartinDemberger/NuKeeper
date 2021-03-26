@echo off

REM Diese Datei darf nicht in das NuKeeper-Repo gemerged werden!

title Installing NuKeeper dotnet tool
echo Build solution:
dotnet build 

echo Pack NuKeeper dotnet tool:
dotnet pack .\NuKeeper\NuKeeper.csproj -o ".\artifacts"

..\nuget.exe push -Source "ePlatoOwn" -ApiKey VSTS artifacts\*.nupkg

pause
