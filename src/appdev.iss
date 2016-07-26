; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Aplicaciones Desarrollo"
#define MyAppName1 "Arduino IDE 1.6.9 x32"
#define MyAppName2 "Eclipse Java Neon x64"
#define MyAppName3 "NetBeans IDE 8.1 x64"
#define MyAppName4 "Android Studio 2.1.2 x64"
#define MyAppName5 "Xampp 7.0.8 VC14 x32"
#define MyAppVersion "2.0.0.0"
#define MyAppPublisher "Antonio Horrillo Horrillo"
#define MyAppURL "http://www.antoniohorrillo.com"
#define MyAppExeName1 "arduino.exe"
#define MyAppExeName2 "eclipse.exe"
#define MyAppExeName3 "netbeans64.exe"
#define MyAppExeName4 "studio64.exe"
#define MyAppExeName5 "xampp-control.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8A54553B-3CED-45F2-9FE4-F6294F940CBF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\AppDev
DisableProgramGroupPage=yes
LicenseFile=C:\Dev\commonfiles\about\LICENSE
InfoBeforeFile=C:\Dev\commonfiles\about\README.txt
OutputDir=C:\AppDevIns
OutputBaseFilename=AppDevIns
SetupIconFile=C:\Dev\commonfiles\about\appdev.ico
Compression=lzma2/ultra64
SolidCompression=yes
ChangesEnvironment=yes
AlwaysRestart=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[CustomMessages]
varjavahome=Agregamos la variable de entorno "JAVA_HOME" al registro.
varpathbin=Agregamos al Path "\commonfiles\jdk\bin".
varandroid=Agregamos variable de entorno "ANDROID_HOME" al registro.
varidea64=Agregamos la variable de entorno "IDEA_JDK_64" al registro.
varpathtools=Agregamos al Path "\commonfiles\sdk\tools".
varpathplatform=Agregamos al Path "\commonfiles\sdk\platform-tools".

[Types]
Name: "todo"; Description: "Instalación Completa"
Name: "usuario"; Description: "Instalación Usuario"; Flags: iscustom

[Components]
Name: "cf"; Description:"Common Files"; Types: todo usuario; Flags: fixed
Name: "arduino"; Description:"Arduino IDE 1.6.9 x32"; Types: todo 
Name: "eclipse"; Description:"Eclipse Java Neon x64"; Types: todo
Name: "netbeans"; Description:"NetBeans IDE 8.1 x64"; Types: todo usuario; Flags: fixedName: "studio"; Description:"Android Studio 2.1.2 x64"; Types: todo
Name: "xampp"; Description:"Xampp 7.0.8 VC14 x32"; Types: todo usuario; Flags: fixed

[Tasks]
Name: "arduino"; Description: "{cm:CreateDesktopIcon} de Arduino IDE 1.6.9 x32"; GroupDescription: "{cm:AdditionalIcons}"; Components: arduino; Flags: unchecked
Name: "eclipse"; Description: "{cm:CreateDesktopIcon} de Eclipse Java Neon x64"; GroupDescription: "{cm:AdditionalIcons}"; Components: eclipse; Flags: unchecked
Name: "netbeans"; Description: "{cm:CreateDesktopIcon} de NetBeans IDE 8.1 x64"; GroupDescription: "{cm:AdditionalIcons}"; Components: netbeans; Flags: unchecked
Name: "studio"; Description: "{cm:CreateDesktopIcon} de Android Studio 2.1.2 x64"; GroupDescription: "{cm:AdditionalIcons}"; Components: studio; Flags: unchecked
Name: "xampp"; Description: "{cm:CreateDesktopIcon} de Xampp 7.0.8 VC14 x32"; GroupDescription: "{cm:AdditionalIcons}"; Components: xampp; Flags: unchecked
Name: "varjavahome"; Description:{cm:varjavahome}; Components: cf;
Name: "varpathbin"; Description:{cm:varpathbin}; Components: cf;
Name: "varandroid"; Description:{cm:varandroid}; Components: studio;
Name: "varidea64"; Description:{cm:varidea64}; Components: studio;
Name: "varpathtools"; Description:{cm:varpathtools}; Components: studio;
Name: "varpathplatform"; Description:{cm:varpathplatform}; Components: studio;

[Files]
Source: "C:\dev\arduino\arduino.exe"; DestDir: "{app}\arduino"; Components: arduino; Flags: ignoreversion
Source: "C:\dev\eclipse\eclipse.exe"; DestDir: "{app}\eclipse"; Components: eclipse; Flags: ignoreversion
Source: "C:\dev\netbeans\bin\netbeans64.exe"; DestDir: "{app}\netbeans\bin"; Components: netbeans; Flags: ignoreversion
Source: "C:\dev\studio\bin\studio64.exe"; DestDir: "{app}\studio\bin"; Components: studio; Flags: ignoreversion
Source: "C:\dev\xampp\xampp-control.exe"; DestDir: "{app}\xampp"; Components: xampp; Flags: ignoreversion
Source: "C:\dev\arduino\*"; DestDir: "{app}\arduino"; Components: arduino; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\dev\eclipse\*"; DestDir: "{app}\eclipse"; Components: eclipse; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\dev\netbeans\*"; DestDir: "{app}\netbeans"; Components: netbeans; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\dev\studio\*"; DestDir: "{app}\studio"; Components: studio; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\dev\xampp\*"; DestDir: "{app}\xampp"; Components: xampp; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\dev\commonfiles\*"; DestDir: "{app}\commonfiles"; Components: cf; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{commonprograms}\{#MyAppName1}"; Filename: "{app}\arduino\{#MyAppExeName1}"; Components: arduino
Name: "{commondesktop}\{#MyAppName1}"; Filename: "{app}\arduino\{#MyAppExeName1}"; Components: arduino; Tasks: arduino
Name: "{commonprograms}\{#MyAppName2}"; Filename: "{app}\eclipse\{#MyAppExeName2}"; Components: eclipse
Name: "{commondesktop}\{#MyAppName2}"; Filename: "{app}\eclipse\{#MyAppExeName2}"; Components: eclipse; Tasks: eclipse
Name: "{commonprograms}\{#MyAppName3}"; Filename: "{app}\netbeans\bin\{#MyAppExeName3}"; Components: netbeans
Name: "{commondesktop}\{#MyAppName3}"; Filename: "{app}\netbeans\bin\{#MyAppExeName3}"; Components: netbeans; Tasks: netbeans
Name: "{commonprograms}\{#MyAppName4}"; Filename: "{app}\studio\bin\{#MyAppExeName4}"; Components: studio
Name: "{commondesktop}\{#MyAppName4}"; Filename: "{app}\studio\bin\{#MyAppExeName4}"; Components: studio; Tasks: studio
Name: "{commonprograms}\{#MyAppName5}"; Filename: "{app}\xampp\{#MyAppExeName5}"; Components: xampp
Name: "{commondesktop}\{#MyAppName5}"; Filename: "{app}\xampp\{#MyAppExeName5}"; Components: xampp; Tasks: xampp

[Registry]
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "JAVA_HOME"; ValueData: "{app}\commonfiles\jdk"; Components: cf; Tasks: varjavahome
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}\commonfiles\jdk\bin"; Components: cf; Tasks: varpathbin
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "ANDROID_HOME"; ValueData: "{app}\commonfiles\sdk"; Components: studio; Tasks: varandroid
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "IDEA_JDK_64"; ValueData: "{app}\commonfiles\jdk"; Components: studio; Tasks: varidea64
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}\commonfiles\sdk\tools"; Components: studio; Tasks: varpathtools
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}\commonfiles\sdk\platform-tools"; Components: studio; Tasks: varpathplatform