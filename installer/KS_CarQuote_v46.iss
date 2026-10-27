; KS오토트레이딩 46빌드 단일 Windows 설치 EXE
; 설치 위치/백업/서버 키는 기존 1.0.45와 동일하게 유지합니다.
#define MyAppVersion "1.0.46"
#define MyAppName "KS 차량 견적 관리"

[Setup]
AppId={{5C7D8391-3D52-4610-8E79-4BB33EBF060F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher=KS오토트레이딩
AppPublisherURL=https://github.com/ekqls5239-lang/carquote-updates
VersionInfoVersion=1.0.46.0
VersionInfoDescription=KS오토트레이딩 차량 견적 관리 설치 프로그램
DefaultDirName={localappdata}\CarQuoteManager
UsePreviousAppDir=no
DisableDirPage=yes
DefaultGroupName=KS오토트레이딩
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
MinVersion=10.0
OutputDir=..\dist
OutputBaseFilename=KS_CarQuote_v1.0.46_Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
CloseApplications=yes
CloseApplicationsFilter=CarQuoteManager.exe,Updater.exe
RestartApplications=no
UninstallDisplayIcon={app}\CarQuoteManager.exe
SetupLogging=yes
DisableWelcomePage=no

[Files]
; 실행 파일과 업데이트 프로그램만 교체합니다.
; 사용자 로그인 설정, 사진, 백업, 견적 DB는 설치 시 삭제하지 않습니다.
Source: "payload\CarQuoteManager.exe"; DestDir: "{app}"; DestName: "CarQuoteManager.exe"; Flags: ignoreversion
Source: "payload\Updater.exe"; DestDir: "{app}"; DestName: "Updater.exe"; Flags: ignoreversion
Source: "payload\installed_version.txt"; DestDir: "{app}"; DestName: "installed_version.txt"; Flags: ignoreversion

[Icons]
Name: "{userdesktop}\차량 견적 관리"; Filename: "{app}\CarQuoteManager.exe"; WorkingDir: "{app}"; Comment: "KS오토트레이딩 차량 견적 관리"
Name: "{userprograms}\KS오토트레이딩\차량 견적 관리"; Filename: "{app}\CarQuoteManager.exe"; WorkingDir: "{app}"

[Run]
Filename: "{app}\CarQuoteManager.exe"; Description: "설치 후 차량 견적 관리 실행"; Flags: nowait postinstall skipifsilent
