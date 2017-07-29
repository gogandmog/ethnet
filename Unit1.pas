unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinManager, ComCtrls, sPageControl, StdCtrls, sLabel, sButton,
  sEdit, sListBox, sGroupBox, sComboBox, ExtCtrls, sSplitter, sCheckBox,
  sCheckListBox, sScrollBox, sMemo, sSpinEdit, acProgressBar, math,
  Buttons, sSpeedButton, ShellAPI, Registry,  IdGlobal,  IdHash, IdHashMessageDigest;

type
  TForm1 = class(TForm)
    w: TsSkinManager;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sTabSheet3: TsTabSheet;
    sTabSheet4: TsTabSheet;
    sTabSheet5: TsTabSheet;
    sTabSheet6: TsTabSheet;
    sTabSheet7: TsTabSheet;
    sGroupBox1: TsGroupBox;
    sLabel2: TsLabel;
    sGroupBox2: TsGroupBox;
    msl1: TsLabel;
    msl2: TsLabel;
    sGroupBox4: TsGroupBox;
    sGroupBox5: TsGroupBox;
    cmbMode: TsComboBox;
    cmbGPUs: TsComboBox;
    msli1: TsLabel;
    sLabel41: TsLabel;
    cmbCPU: TsComboBox;
    sCheckBox6: TsCheckBox;
    sEdit3: TsEdit;
    sLabel42: TsLabel;
    sLabel43: TsLabel;
    cmbCPUCores: TsComboBox;
    sComboBox10: TsComboBox;
    sLabel44: TsLabel;
    sEdit4: TsEdit;
    sLabel45: TsLabel;
    sGroupBox3: TsGroupBox;
    sLabel16: TsLabel;
    sLabel17: TsLabel;
    sLabel18: TsLabel;
    sLabel19: TsLabel;
    sLabel20: TsLabel;
    sLabel21: TsLabel;
    Bevel1: TBevel;
    sLabel46: TsLabel;
    lblhashrate: TsLabel;
    sLabel47: TsLabel;
    cmbCoin: TsComboBox;
    cmbMSET: TsComboBox;
    cmbPSET: TsComboBox;
    sComboBox6: TsComboBox;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sCheckBox5: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sListBox1: TsListBox;
    sLabel7: TsLabel;
    listConsole: TsListBox;
    editConsole: TsEdit;
    btnExecute: TsButton;
    sMemo1: TsMemo;
    sLabel34: TsLabel;
    sLabel37: TsLabel;
    sLabel39: TsLabel;
    sLabel53: TsLabel;
    sButton10: TsButton;
    sButton11: TsButton;
    sButton12: TsButton;
    chkFailsafes: TsCheckBox;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    sGroupBox7: TsGroupBox;
    msl3: TsLabel;
    msli3: TsLabel;
    sLabel1: TsLabel;
    sLabel3: TsLabel;
    Bevel2: TBevel;
    sLabel51: TsLabel;
    sLabel52: TsLabel;
    sComboBox3: TsComboBox;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sComboBox4: TsComboBox;
    sComboBox5: TsComboBox;
    sEdit1: TsEdit;
    sComboBox11: TsComboBox;
    sButton7: TsButton;
    sButton8: TsButton;
    sButton9: TsButton;
    sEdit5: TsEdit;
    sGroupBox8: TsGroupBox;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel15: TsLabel;
    Bevel3: TBevel;
    cmbProfile: TsComboBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sComboBox8: TsComboBox;
    sComboBox9: TsComboBox;
    sEdit2: TsEdit;
    sCheckBox8: TsCheckBox;
    sLabel35: TsLabel;
    sLabel36: TsLabel;
    sLabel50: TsLabel;
    sLabel38: TsLabel;
    sCheckBox9: TsCheckBox;
    sLabel8: TsLabel;
    editbackport1: TsEdit;
    sLabel40: TsLabel;
    sLabel48: TsLabel;
    editpoolport: TsEdit;
    editpoolhost: TsEdit;
    sLabel49: TsLabel;
    sLabel54: TsLabel;
    boxFail: TsGroupBox;
    sLabel56: TsLabel;
    sCheckBox13: TsCheckBox;
    sCheckBox14: TsCheckBox;
    sCheckBox15: TsCheckBox;
    boxBeta: TsGroupBox;
    sButton13: TsButton;
    sButton14: TsButton;
    sButton15: TsButton;
    sRadioGroup1: TsRadioGroup;
    sCheckBox16: TsCheckBox;
    sCheckBox17: TsCheckBox;
    sCheckBox18: TsCheckBox;
    sLabel57: TsLabel;
    sCheckBox19: TsCheckBox;
    editback2: TsEdit;
    sLabel58: TsLabel;
    editbackport2: TsEdit;
    sLabel59: TsLabel;
    sLabel60: TsLabel;
    editbackport4: TsEdit;
    sLabel61: TsLabel;
    sLabel11: TsLabel;
    editbackport6: TsEdit;
    sCheckBox21: TsCheckBox;
    sCheckBox22: TsCheckBox;
    sCheckBox20: TsCheckBox;
    editback3: TsEdit;
    editback4: TsEdit;
    sCheckBox24: TsCheckBox;
    sLabel12: TsLabel;
    sComboBox12: TsComboBox;
    sButton19: TsButton;
    sButton20: TsButton;
    sButton21: TsButton;
    sEdit20: TsEdit;
    sLabel14: TsLabel;
    editback6: TsEdit;
    editback1: TsEdit;
    editbackport3: TsEdit;
    sLabel13: TsLabel;
    editfailed1: TsEdit;
    editfailed2: TsEdit;
    editfailed3: TsEdit;
    editfailed4: TsEdit;
    editfailed6: TsEdit;
    Bevel4: TBevel;
    sLabel22: TsLabel;
    sLabel23: TsLabel;
    sLabel24: TsLabel;
    sSpinEdit1: TsSpinEdit;
    sLabel25: TsLabel;
    sEdit27: TsEdit;
    sButton22: TsButton;
    sButton23: TsButton;
    sButton24: TsButton;
    sComboBox13: TsComboBox;
    sLabel26: TsLabel;
    sLabel27: TsLabel;
    sLabel28: TsLabel;
    sLabel29: TsLabel;
    sCheckBox25: TsCheckBox;
    sCheckBox10: TsCheckBox;
    sComboBox14: TsComboBox;
    sLabel55: TsLabel;
    Label1: TLabel;
    Label2: TLabel;
    timerefresh: TTimer;
    sLabel62: TsLabel;
    sLabel65: TsLabel;
    sEdit6: TsEdit;
    sEdit7: TsEdit;
    Memo1: TMemo;
    sButton4: TsButton;
    sButton5: TsButton;
    sCheckBox11: TsCheckBox;
    sButton6: TsButton;
    failcan: TsButton;
    btnxx: TsButton;
    timerrefresh: TTimer;
    ProgressTime: TTimer;
    procedure btnExecuteClick(Sender: TObject);

    procedure editConsoleKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sComboBox3Change(Sender: TObject);
    procedure cmbGPUsChange(Sender: TObject);
    procedure sComboBox5Change(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sLabel9Click(Sender: TObject);
    procedure sButton18Click(Sender: TObject);
    procedure sButton16Click(Sender: TObject);
    procedure sButton17Click(Sender: TObject);
    procedure sLabel10Click(Sender: TObject);

    procedure sLabel35Click(Sender: TObject);
    procedure sLabel36Click(Sender: TObject);
    procedure sCheckBox24Click(Sender: TObject);
    procedure sButton25Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure sCheckBox10Click(Sender: TObject);
    procedure timerefreshTimer(Sender: TObject);
    procedure sButton19Click(Sender: TObject);
    procedure sButton20Click(Sender: TObject);
    procedure sButton8Click(Sender: TObject);
    procedure sButton23Click(Sender: TObject);
    procedure sButton24Click(Sender: TObject);
    procedure sButton7Click(Sender: TObject);
    procedure sButton9Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure failcanClick(Sender: TObject);
    procedure btnxxClick(Sender: TObject);

    procedure timerrefreshTimer(Sender: TObject);
    procedure sLabel67DblClick(Sender: TObject);
    procedure sLabel73Click(Sender: TObject);
    procedure sLabel81Click(Sender: TObject);
    procedure sLabel72Click(Sender: TObject);
    procedure sLabel74Click(Sender: TObject);
    procedure sLabel75Click(Sender: TObject);
    procedure sLabel76Click(Sender: TObject);
    procedure sLabel77Click(Sender: TObject);
    procedure sLabel78Click(Sender: TObject);
    procedure sLabel80Click(Sender: TObject);
    procedure sLabel79Click(Sender: TObject);
    procedure win1Click(Sender: TObject);
    procedure win2Click(Sender: TObject);
    procedure win3Click(Sender: TObject);
    procedure win4Click(Sender: TObject);
    procedure win5Click(Sender: TObject);
    procedure win6Click(Sender: TObject);
    procedure win7Click(Sender: TObject);
    procedure win8Click(Sender: TObject);
    procedure win9Click(Sender: TObject);
    procedure win10Click(Sender: TObject);
    procedure win11Click(Sender: TObject);
    procedure win12Click(Sender: TObject);
    procedure win13Click(Sender: TObject);
    procedure win14Click(Sender: TObject);
    procedure win15Click(Sender: TObject);
    procedure win16Click(Sender: TObject);
    procedure btnlistClick(Sender: TObject);
    procedure ProgressTimeTimer(Sender: TObject);
    procedure sButton41Click(Sender: TObject);








  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

//FUNCTIONS AND PROCEDUTRES ---------------
uses
  TlHelp32;




function KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;



function RunApplication(const ACommandLine: string): THandle;
var
  CommandLine: string;
  StartupInfo: TStartupInfo;
  ProcessInformation: TProcessInformation;
begin
  Result := 0;
  FillChar(StartupInfo, SizeOf(TStartupInfo), 0);
  FillChar(ProcessInformation, SizeOf(TProcessInformation), 0);
  StartupInfo.cb := SizeOf(TStartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := SW_SHOW;
  CommandLine := ACommandLine;
  UniqueString(CommandLine);
  if CreateProcess(nil, PChar(CommandLine), nil, nil, False,
    NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInformation)
  then
    Result := ProcessInformation.hProcess;
end;


end.
