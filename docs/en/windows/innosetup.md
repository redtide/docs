# InnoSetup

- Download and install [InnoSetup](http://www.jrsoftware.org/download.php/is.exe)
- Create a new InnoSetup script using the wizard or using some template

```
#define MyAppName "MyApp"
#define MyAppVersion "0.1.0"
#define MyAppPublisher "MyNameOrOrganization"
#define MyAppURL "https://my.website.tld/"
#define MyAppExeName "myapp.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
{%-assign UUID = "{{12345678-ABCD-1234-5678-1234567890AB}" %}
AppId={{ UUID }}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppPublisher}
OutputBaseFilename=myapp-setup
Compression=lzma
SolidCompression=yes
LicenseFile=Deployment\LICENSE.txt

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
; or any additional language

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "Deployment\myapp.exe"; DestDir: {app}; Flags: ignoreversion
Source: "Deployment\vc_redist.x64.exe"; DestDir: {tmp}; Flags: deleteafterinstall
Source: "Deployment\LICENSE.txt"; DestDir: {app}; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: {tmp}\vc_redist.x64.exe; \
    Parameters: "/install /passive /norestart"; \
    StatusMsg: "Installing Microsoft Visual C++ 2015-2019 Redistributable (x64)..."
Filename: {app}\{#MyAppExeName}; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
; this id you need to install additional packages like MSVC runtimes, don't edit MyAppName
```
