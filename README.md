# CarRentalSystem

## Overview
CarRentalSystem is an ASP.NET Web Forms application targeting .NET Framework 4.7.2. The project includes Web Forms pages under `View/` and server-side logic under `Models/`.

Relevant files:
- Solution: `CarRentalSystem.sln`
- Project file: `CarRentalSystem/CarRentalSystem.csproj`
- Global application file: `Global.asax`
- Main logic (example): `Models/Functions.cs`
- Login page: `View/Login.aspx`

## Prerequisites
- Windows OS
- Visual Studio 2017/2019/2022 (recommended) or Visual Studio Build Tools + IIS Express
- .NET Framework Developer Pack 4.7.2
- (Optional for editing) VS Code with C# extension

## Run with Visual Studio (recommended)
- Open the solution in Visual Studio Community: launch Visual Studio Community and open `CarRentalSystem.sln`.
- Restore NuGet packages (Visual Studio usually does this automatically).
- Press F5 to run with IIS Express.

## Run/edit with VS Code (limited)
VS Code can edit and build but cannot fully emulate Visual Studio Web Forms debugging/designers.
- Install C# extension (ms-dotnettools.csharp).
- Install Visual Studio Build Tools (for msbuild) and .NET Framework 4.7.2 Developer Pack.
- To build from terminal:
  `msbuild CarRentalSystem/CarRentalSystem.csproj /p:Configuration=Debug`
- To run with IIS Express:
  `"C:\Program Files\IIS Express\iisexpress.exe" /path:"<repo-root>/CarRentalSystem" /port:5000`

## Notes
- This is a Web Forms (.aspx) app; migrating to ASP.NET Core is required for cross-platform `dotnet run`.
- The project uses Microsoft.CodeDom.Providers.Roslyn (see packages) for runtime compilation.
