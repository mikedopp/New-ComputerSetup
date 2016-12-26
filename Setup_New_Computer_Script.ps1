﻿
# Set your PowerShell execution policy
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

# Install Chocolatey
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# Install Chocolatey packages
choco install git.install -y
choco install conemu -y

# Install PowerShell modules
Install-PackageProvider NuGet -MinimumVersion '2.8.5.201' -Force
Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module -Name 'posh-git'


#Changing File Explorer Settings

$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty $key Hidden 1
Set-ItemProperty $key HideFileExt 0
Set-ItemProperty $key ShowSuperHidden 1
Stop-Process -processname explorer


#ConEmu Colors XML
$ConEMU = @"
<?xml version="1.0" encoding="utf-8"?>
<key name="Software">
	<key name="ConEmu">
		<key name=".Vanilla" modified="2016-10-07 10:00:27" build="161002">
			<value name="StartType" type="hex" data="02"/>
			<value name="CmdLine" type="string" data=""/>
			<value name="StartTasksFile" type="string" data=""/>
			<value name="StartTasksName" type="string" data="{Shells::PowerShell (Admin)}"/>
			<value name="StartFarFolders" type="hex" data="00"/>
			<value name="StartFarEditors" type="hex" data="00"/>
			<value name="ColorTable00" type="dword" data="00482a28"/>
			<value name="ColorTable01" type="dword" data="00cc6374"/>
			<value name="ColorTable02" type="dword" data="003dde66"/>
			<value name="ColorTable03" type="dword" data="00fbd677"/>
			<value name="ColorTable04" type="dword" data="003c3cee"/>
			<value name="ColorTable05" type="dword" data="00f993dd"/>
			<value name="ColorTable06" type="dword" data="006cb8ff"/>
			<value name="ColorTable07" type="dword" data="00dee4e4"/>
			<value name="ColorTable08" type="dword" data="00969a9a"/>
			<value name="ColorTable09" type="dword" data="00c47262"/>
			<value name="ColorTable10" type="dword" data="007bfa50"/>
			<value name="ColorTable11" type="dword" data="00fde98b"/>
			<value name="ColorTable12" type="dword" data="005555ff"/>
			<value name="ColorTable13" type="dword" data="00c679ff"/>
			<value name="ColorTable14" type="dword" data="008cfcfc"/>
			<value name="ColorTable15" type="dword" data="00f2f8f8"/>
			<value name="ColorTable16" type="dword" data="00000000"/>
			<value name="ColorTable17" type="dword" data="00800000"/>
			<value name="ColorTable18" type="dword" data="00008000"/>
			<value name="ColorTable19" type="dword" data="00808000"/>
			<value name="ColorTable20" type="dword" data="00000080"/>
			<value name="ColorTable21" type="dword" data="00800080"/>
			<value name="ColorTable22" type="dword" data="00008080"/>
			<value name="ColorTable23" type="dword" data="00c0c0c0"/>
			<value name="ColorTable24" type="dword" data="00808080"/>
			<value name="ColorTable25" type="dword" data="00ff0000"/>
			<value name="ColorTable26" type="dword" data="0000ff00"/>
			<value name="ColorTable27" type="dword" data="00ffff00"/>
			<value name="ColorTable28" type="dword" data="000000ff"/>
			<value name="ColorTable29" type="dword" data="00ff00ff"/>
			<value name="ColorTable30" type="dword" data="0000ffff"/>
			<value name="ColorTable31" type="dword" data="00ffffff"/>
			<value name="ExtendColors" type="hex" data="00"/>
			<value name="ExtendColorIdx" type="hex" data="0e"/>
			<value name="TextColorIdx" type="hex" data="10"/>
			<value name="BackColorIdx" type="hex" data="10"/>
			<value name="PopTextColorIdx" type="hex" data="10"/>
			<value name="PopBackColorIdx" type="hex" data="10"/>
			<value name="SingleInstance" type="hex" data="01"/>
			<value name="QuakeStyle" type="hex" data="01"/>
			<value name="KeyboardHooks" type="hex" data="01"/>
			<value name="UseInjects" type="hex" data="01"/>
			<value name="Update.CheckOnStartup" type="hex" data="00"/>
			<value name="Update.CheckHourly" type="hex" data="00"/>
			<value name="Update.ConfirmDownload" type="hex" data="01"/>
			<value name="Update.UseBuilds" type="hex" data="02"/>
			<value name="FontUseDpi" type="hex" data="01"/>
			<value name="FontUseUnits" type="hex" data="01"/>
			<value name="FontSize" type="ulong" data="14"/>
			<value name="StatusFontHeight" type="long" data="12"/>
			<value name="TabFontHeight" type="long" data="13"/>
			<key name="HotKeys" modified="2016-10-07 10:00:27" build="161002">
				<value name="MinimizeRestore" type="dword" data="000011c0"/>
				<value name="KeyMacroVersion" type="hex" data="02"/>
				<value name="Multi.Modifier" type="dword" data="0000005b"/>
				<value name="Multi.ArrowsModifier" type="dword" data="0000005b"/>
				<value name="MinimizeRestore2" type="dword" data="00000000"/>
				<value name="GlobalRestore" type="dword" data="00000000"/>
				<value name="CdExplorerPath" type="dword" data="00000000"/>
				<value name="ForcedFullScreen" type="dword" data="12115b0d"/>
				<value name="SwitchGuiFocus" type="dword" data="00005b5a"/>
				<value name="SetFocusGui" type="dword" data="00000000"/>
				<value name="SetFocusChild" type="dword" data="00000000"/>
				<value name="ChildSystemMenu" type="dword" data="00000000"/>
				<value name="Multi.NewConsole" type="dword" data="00005b57"/>
				<value name="Multi.NewConsoleShift" type="dword" data="00105b57"/>
				<value name="Multi.CmdKey" type="dword" data="00005b58"/>
				<value name="Multi.NewWindow" type="dword" data="00000000"/>
				<value name="Multi.NewConsolePopup" type="dword" data="00005b4e"/>
				<value name="Multi.NewConsolePopup2" type="dword" data="00000000"/>
				<value name="Multi.NewAttach" type="dword" data="00005b47"/>
				<value name="Multi.NewSplitV" type="dword" data="0010114f"/>
				<value name="Multi.NewSplitH" type="dword" data="00101145"/>
				<value name="Multi.SplitMaximize" type="dword" data="00005d0d"/>
				<value name="Multi.SplitSizeVU" type="dword" data="00105d26"/>
				<value name="Multi.SplitSizeVD" type="dword" data="00105d28"/>
				<value name="Multi.SplitSizeHL" type="dword" data="00105d25"/>
				<value name="Multi.SplitSizeHR" type="dword" data="00105d27"/>
				<value name="Key.TabPane1" type="dword" data="00005d09"/>
				<value name="Key.TabPane2" type="dword" data="00105d09"/>
				<value name="Multi.SplitFocusU" type="dword" data="00005d26"/>
				<value name="Multi.SplitFocusD" type="dword" data="00005d28"/>
				<value name="Multi.SplitFocusL" type="dword" data="00005d25"/>
				<value name="Multi.SplitFocusR" type="dword" data="00005d27"/>
				<value name="Multi.Next" type="dword" data="00005b51"/>
				<value name="Multi.NextShift" type="dword" data="00105b51"/>
				<value name="Multi.Recreate" type="dword" data="00005bc0"/>
				<value name="Multi.AltCon" type="dword" data="00005b41"/>
				<value name="Multi.Pause" type="dword" data="80808013"/>
				<value name="Multi.Scroll" type="dword" data="00000000"/>
				<value name="Multi.GroupInput" type="dword" data="00005d47"/>
				<value name="Multi.Detach" type="dword" data="00000000"/>
				<value name="Multi.Unfasten" type="dword" data="00000000"/>
				<value name="Multi.Close" type="dword" data="00005b2e"/>
				<value name="CloseTabKey" type="dword" data="00125b2e"/>
				<value name="CloseGroupKey" type="dword" data="00115b2e"/>
				<value name="CloseGroupPrcKey" type="dword" data="00000000"/>
				<value name="CloseAllConKey" type="dword" data="00000000"/>
				<value name="CloseZombiesKey" type="dword" data="00000000"/>
				<value name="CloseExceptConKey" type="dword" data="00000000"/>
				<value name="KillProcessKey" type="dword" data="00121103"/>
				<value name="KillAllButShellKey" type="dword" data="00125b13"/>
				<value name="DuplicateRootKey" type="dword" data="00005b53"/>
				<value name="CloseConEmuKey" type="dword" data="00005b73"/>
				<value name="Multi.Rename" type="dword" data="00005d52"/>
				<value name="AffinityPriorityKey" type="dword" data="00005d41"/>
				<value name="Multi.MoveLeft" type="dword" data="00125b25"/>
				<value name="Multi.MoveRight" type="dword" data="00125b27"/>
				<value name="CTS.VkBlockStart" type="dword" data="00000000"/>
				<value name="CTS.VkTextStart" type="dword" data="00000000"/>
				<value name="CTS.VkCopyFmt0" type="dword" data="00001143"/>
				<value name="CTS.VkCopyFmt1" type="dword" data="00101143"/>
				<value name="CTS.VkCopyFmt2" type="dword" data="00000000"/>
				<value name="CTS.VkCopyAll" type="dword" data="00000000"/>
				<value name="HighlightMouseSwitch" type="dword" data="00005d4c"/>
				<value name="HighlightMouseSwitchX" type="dword" data="00005d58"/>
				<value name="Multi.ShowTabsList" type="dword" data="00000000"/>
				<value name="Multi.ShowTabsList2" type="dword" data="00005d7b"/>
				<value name="ClipboardVkAllLines" type="dword" data="0000102d"/>
				<value name="ClipboardVkFirstLine" type="dword" data="00001156"/>
				<value name="Key.AltNumpad" type="dword" data="00000000"/>
				<value name="DeleteWordToLeft" type="dword" data="00001108"/>
				<value name="FindTextKey" type="dword" data="00005d46"/>
				<value name="ScreenshotKey" type="dword" data="00005b48"/>
				<value name="ScreenshotFullKey" type="dword" data="00105b48"/>
				<value name="ShowStatusBarKey" type="dword" data="00005d53"/>
				<value name="ShowTabBarKey" type="dword" data="00005d54"/>
				<value name="ShowCaptionKey" type="dword" data="00005d43"/>
				<value name="AlwaysOnTopKey" type="dword" data="00000000"/>
				<value name="TransparencyInc" type="dword" data="00000000"/>
				<value name="TransparencyDec" type="dword" data="00000000"/>
				<value name="Key.TabMenu" type="dword" data="00005d20"/>
				<value name="Key.TabMenu2" type="dword" data="00001002"/>
				<value name="Key.Maximize" type="dword" data="00001278"/>
				<value name="Key.MaximizeWidth" type="dword" data="00105b28"/>
				<value name="Key.MaximizeHeight" type="dword" data="00105b26"/>
				<value name="Key.TileToLeft" type="dword" data="00005b25"/>
				<value name="Key.TileToRight" type="dword" data="00005b27"/>
				<value name="Key.JumpActiveMonitor" type="dword" data="00000000"/>
				<value name="Key.JumpPrevMonitor" type="dword" data="00105b25"/>
				<value name="Key.JumpNextMonitor" type="dword" data="00105b27"/>
				<value name="Key.FullScreen" type="dword" data="0000120d"/>
				<value name="Key.SysMenu" type="dword" data="00001220"/>
				<value name="Key.SysMenu2" type="dword" data="00001102"/>
				<value name="Key.DebugProcess" type="dword" data="00105b44"/>
				<value name="Key.DumpProcess" type="dword" data="00000000"/>
				<value name="Key.DumpTree" type="dword" data="00000000"/>
				<value name="Key.BufUp" type="dword" data="00001126"/>
				<value name="Key.BufDn" type="dword" data="00001128"/>
				<value name="Key.BufPgUp" type="dword" data="00001121"/>
				<value name="Key.BufPgDn" type="dword" data="00001122"/>
				<value name="Key.BufHfPgUp" type="dword" data="00005d21"/>
				<value name="Key.BufHfPgDn" type="dword" data="00005d22"/>
				<value name="Key.BufTop" type="dword" data="00005d24"/>
				<value name="Key.BufBottom" type="dword" data="00005d23"/>
				<value name="Key.BufCursor" type="dword" data="00005d08"/>
				<value name="Key.ResetTerm" type="dword" data="00000000"/>
				<value name="FontLargerKey" type="dword" data="000011d0"/>
				<value name="FontSmallerKey" type="dword" data="000011d1"/>
				<value name="FontOriginalKey" type="dword" data="00001104"/>
				<value name="PasteFileKey" type="dword" data="00101146"/>
				<value name="PastePathKey" type="dword" data="00101144"/>
				<value name="PasteCygwinKey" type="dword" data="00005d2d"/>
				<value name="KeyMacro01" type="dword" data="00000000"/>
				<value name="KeyMacro01.Text" type="string" data=""/>
				<value name="KeyMacro02" type="dword" data="00000000"/>
				<value name="KeyMacro02.Text" type="string" data=""/>
				<value name="KeyMacro03" type="dword" data="00000000"/>
				<value name="KeyMacro03.Text" type="string" data=""/>
				<value name="KeyMacro04" type="dword" data="00000000"/>
				<value name="KeyMacro04.Text" type="string" data=""/>
				<value name="KeyMacro05" type="dword" data="00000000"/>
				<value name="KeyMacro05.Text" type="string" data=""/>
				<value name="KeyMacro06" type="dword" data="00000000"/>
				<value name="KeyMacro06.Text" type="string" data=""/>
				<value name="KeyMacro07" type="dword" data="00000000"/>
				<value name="KeyMacro07.Text" type="string" data=""/>
				<value name="KeyMacro08" type="dword" data="00000000"/>
				<value name="KeyMacro08.Text" type="string" data=""/>
				<value name="KeyMacro09" type="dword" data="00000000"/>
				<value name="KeyMacro09.Text" type="string" data=""/>
				<value name="KeyMacro10" type="dword" data="00000000"/>
				<value name="KeyMacro10.Text" type="string" data=""/>
				<value name="KeyMacro11" type="dword" data="00000000"/>
				<value name="KeyMacro11.Text" type="string" data=""/>
				<value name="KeyMacro12" type="dword" data="00000000"/>
				<value name="KeyMacro12.Text" type="string" data=""/>
				<value name="KeyMacro13" type="dword" data="00000000"/>
				<value name="KeyMacro13.Text" type="string" data=""/>
				<value name="KeyMacro14" type="dword" data="00000000"/>
				<value name="KeyMacro14.Text" type="string" data=""/>
				<value name="KeyMacro15" type="dword" data="00000000"/>
				<value name="KeyMacro15.Text" type="string" data=""/>
				<value name="KeyMacro16" type="dword" data="00000000"/>
				<value name="KeyMacro16.Text" type="string" data=""/>
				<value name="KeyMacro17" type="dword" data="00000000"/>
				<value name="KeyMacro17.Text" type="string" data=""/>
				<value name="KeyMacro18" type="dword" data="00000000"/>
				<value name="KeyMacro18.Text" type="string" data=""/>
				<value name="KeyMacro19" type="dword" data="00000000"/>
				<value name="KeyMacro19.Text" type="string" data=""/>
				<value name="KeyMacro20" type="dword" data="00000000"/>
				<value name="KeyMacro20.Text" type="string" data=""/>
				<value name="KeyMacro21" type="dword" data="00000000"/>
				<value name="KeyMacro21.Text" type="string" data=""/>
				<value name="KeyMacro22" type="dword" data="00000000"/>
				<value name="KeyMacro22.Text" type="string" data=""/>
				<value name="KeyMacro23" type="dword" data="00000000"/>
				<value name="KeyMacro23.Text" type="string" data=""/>
				<value name="KeyMacro24" type="dword" data="00000000"/>
				<value name="KeyMacro24.Text" type="string" data=""/>
				<value name="KeyMacro25" type="dword" data="00000000"/>
				<value name="KeyMacro25.Text" type="string" data=""/>
				<value name="KeyMacro26" type="dword" data="00000000"/>
				<value name="KeyMacro26.Text" type="string" data=""/>
				<value name="KeyMacro27" type="dword" data="00000000"/>
				<value name="KeyMacro27.Text" type="string" data=""/>
				<value name="KeyMacro28" type="dword" data="00000000"/>
				<value name="KeyMacro28.Text" type="string" data=""/>
				<value name="KeyMacro29" type="dword" data="00000000"/>
				<value name="KeyMacro29.Text" type="string" data=""/>
				<value name="KeyMacro30" type="dword" data="00000000"/>
				<value name="KeyMacro30.Text" type="string" data=""/>
				<value name="KeyMacro31" type="dword" data="00000000"/>
				<value name="KeyMacro31.Text" type="string" data=""/>
				<value name="KeyMacro32" type="dword" data="00000000"/>
				<value name="KeyMacro32.Text" type="string" data=""/>
				<value name="CTS.VkBlock" type="hex" data="a4"/>
				<value name="CTS.VkText" type="hex" data="a0"/>
				<value name="CTS.VkAct" type="hex" data="00"/>
				<value name="CTS.VkPrompt" type="hex" data="00"/>
				<value name="FarGotoEditorVk" type="hex" data="a2"/>
				<value name="DndLKey" type="hex" data="00"/>
				<value name="DndRKey" type="hex" data="a2"/>
				<value name="WndDragKey" type="dword" data="00121101"/>
			</key>
			<value name="StartCreateDelay" type="ulong" data="100"/>
			<value name="ExtendFonts" type="hex" data="00"/>
			<value name="ExtendFontNormalIdx" type="hex" data="01"/>
			<value name="ExtendFontBoldIdx" type="hex" data="0c"/>
			<value name="ExtendFontItalicIdx" type="hex" data="0d"/>
			<value name="CursorTypeActive" type="dword" data="000232c1"/>
			<value name="CursorTypeInactive" type="dword" data="00823283"/>
			<value name="ClipboardDetectLineEnd" type="hex" data="01"/>
			<value name="ClipboardBashMargin" type="hex" data="00"/>
			<value name="ClipboardTrimTrailing" type="hex" data="02"/>
			<value name="ClipboardEOL" type="hex" data="00"/>
			<value name="ClipboardArrowStart" type="hex" data="01"/>
			<value name="ClipboardAllLines" type="hex" data="01"/>
			<value name="ClipboardFirstLine" type="hex" data="01"/>
			<value name="ClipboardClickPromptPosition" type="hex" data="02"/>
			<value name="ClipboardDeleteLeftWord" type="hex" data="02"/>
			<value name="TrueColorerSupport" type="hex" data="01"/>
			<value name="VividColors" type="hex" data="01"/>
			<value name="FadeInactive" type="hex" data="01"/>
			<value name="FadeInactiveLow" type="hex" data="00"/>
			<value name="FadeInactiveHigh" type="hex" data="d0"/>
			<value name="ConVisible" type="hex" data="00"/>
			<value name="SetDefaultTerminal" type="hex" data="00"/>
			<value name="SetDefaultTerminalStartup" type="hex" data="00"/>
			<value name="SetDefaultTerminalStartupTSA" type="hex" data="00"/>
			<value name="DefaultTerminalAgressive" type="hex" data="01"/>
			<value name="DefaultTerminalNoInjects" type="hex" data="00"/>
			<value name="DefaultTerminalNewWindow" type="hex" data="00"/>
			<value name="DefaultTerminalDebugLog" type="hex" data="00"/>
			<value name="DefaultTerminalConfirm" type="hex" data="01"/>
			<value name="DefaultTerminalApps" type="string" data="explorer.exe"/>
			<value name="ProcessAnsi" type="hex" data="01"/>
			<value name="AnsiExecution" type="hex" data="01"/>
			<value name="AnsiAllowedCommands" type="multi">
				<line data="cmd -cur_console:R /cGitShowBranch.cmd"/>
			</value>
			<value name="AnsiLog" type="hex" data="00"/>
			<value name="AnsiLogPath" type="string" data="%UserProfile%\ConEmu\Logs\"/>
			<value name="KillSshAgent" type="hex" data="01"/>
			<value name="ProcessNewConArg" type="hex" data="01"/>
			<value name="ProcessCmdStart" type="hex" data="00"/>
			<value name="ProcessCtrlZ" type="hex" data="00"/>
			<value name="SuppressBells" type="hex" data="01"/>
			<value name="ConsoleExceptionHandler" type="hex" data="00"/>
			<value name="UseClink" type="hex" data="01"/>
			<value name="StoreTaskbarkTasks" type="hex" data="01"/>
			<value name="StoreTaskbarCommands" type="hex" data="00"/>
			<value name="JumpListAutoUpdate" type="hex" data="01"/>
			<value name="SaveCmdHistory" type="hex" data="01"/>
			<value name="CmdLineHistory" type="multi"/>
			<value name="ShowHelpTooltips" type="hex" data="01"/>
			<value name="Multi" type="hex" data="01"/>
			<value name="Multi.ShowButtons" type="hex" data="01"/>
			<value name="Multi.ShowSearch" type="hex" data="01"/>
			<value name="Multi.NumberInCaption" type="hex" data="00"/>
			<value name="Multi.CloseConfirmFlags" type="hex" data="04"/>
			<value name="Multi.NewConfirm" type="hex" data="00"/>
			<value name="Multi.DupConfirm" type="hex" data="01"/>
			<value name="Multi.DetachConfirm" type="hex" data="01"/>
			<value name="Multi.UseArrows" type="hex" data="00"/>
			<value name="Multi.UseNumbers" type="hex" data="01"/>
			<value name="Multi.UseWinTab" type="hex" data="00"/>
			<value name="Multi.AutoCreate" type="hex" data="00"/>
			<value name="Multi.LeaveOnClose" type="hex" data="00"/>
			<value name="Multi.HideOnClose" type="hex" data="00"/>
			<value name="Multi.MinByEsc" type="hex" data="02"/>
			<value name="MapShiftEscToEsc" type="hex" data="01"/>
			<value name="Multi.Iterate" type="hex" data="01"/>
			<value name="Multi.SplitWidth" type="hex" data="04"/>
			<value name="Multi.SplitHeight" type="hex" data="04"/>
			<value name="FontName" type="string" data="Consolas"/>
			<value name="FontName2" type="string" data=""/>
			<value name="FontAutoSize" type="hex" data="00"/>
			<value name="FontSizeX" type="ulong" data="0"/>
			<value name="FontSizeX2" type="ulong" data="0"/>
			<value name="FontSizeX3" type="ulong" data="0"/>
			<value name="FontCharSet" type="hex" data="01"/>
			<value name="Anti-aliasing" type="ulong" data="6"/>
			<value name="FontBold" type="hex" data="00"/>
			<value name="FontItalic" type="hex" data="00"/>
			<value name="Monospace" type="hex" data="01"/>
			<value name="CompressLongStrings" type="hex" data="01"/>
			<value name="BackGround Image show" type="hex" data="00"/>
			<value name="BackGround Image" type="string" data="c:\back.bmp"/>
			<value name="bgImageDarker" type="hex" data="ff"/>
			<value name="bgImageColors" type="dword" data="ffffffff"/>
			<value name="bgOperation" type="hex" data="00"/>
			<value name="bgPluginAllowed" type="hex" data="01"/>
			<value name="AlphaValue" type="hex" data="ff"/>
			<value name="AlphaValueSeparate" type="hex" data="00"/>
			<value name="AlphaValueInactive" type="hex" data="ff"/>
			<value name="UserScreenTransparent" type="hex" data="00"/>
			<value name="ColorKeyTransparent" type="hex" data="00"/>
			<value name="ColorKeyValue" type="dword" data="00010101"/>
			<value name="UseCurrentSizePos" type="hex" data="01"/>
			<value name="AutoSaveSizePos" type="hex" data="01"/>
			<value name="Cascaded" type="hex" data="01"/>
			<value name="IntegralSize" type="hex" data="00"/>
			<value name="WindowMode" type="dword" data="0000051f"/>
			<value name="ConWnd X" type="long" data="477"/>
			<value name="ConWnd Y" type="long" data="-3"/>
			<value name="LastMonitor" type="string" data="0,0,1920,1020"/>
			<value name="ConWnd Width" type="dword" data="00000050"/>
			<value name="ConWnd Height" type="dword" data="00000019"/>
			<value name="16bit Height" type="ulong" data="0"/>
			<value name="Restore2ActiveMon" type="hex" data="00"/>
			<value name="QuakeAnimation" type="ulong" data="300"/>
			<value name="HideCaption" type="hex" data="00"/>
			<value name="HideChildCaption" type="hex" data="01"/>
			<value name="FocusInChildWindows" type="hex" data="01"/>
			<value name="HideCaptionAlways" type="hex" data="00"/>
			<value name="HideCaptionAlwaysFrame" type="hex" data="ff"/>
			<value name="HideCaptionAlwaysDelay" type="ulong" data="2000"/>
			<value name="HideCaptionAlwaysDisappear" type="ulong" data="2000"/>
			<value name="DownShowHiddenMessage" type="hex" data="00"/>
			<value name="DownShowExOnTopMessage" type="hex" data="00"/>
			<value name="ConsoleFontName" type="string" data="Lucida Console"/>
			<value name="ConsoleFontWidth" type="long" data="3"/>
			<value name="ConsoleFontHeight" type="long" data="5"/>
			<value name="DefaultBufferHeight" type="long" data="1000"/>
			<value name="AutoBufferHeight" type="hex" data="01"/>
			<value name="UseScrollLock" type="hex" data="01"/>
			<value name="CmdOutputCP" type="long" data="0"/>
			<value name="ComSpec.Type" type="hex" data="00"/>
			<value name="ComSpec.Bits" type="hex" data="00"/>
			<value name="ComSpec.UpdateEnv" type="hex" data="00"/>
			<value name="ComSpec.EnvAddPath" type="hex" data="01"/>
			<value name="ComSpec.EnvAddExePath" type="hex" data="01"/>
			<value name="ComSpec.UncPaths" type="hex" data="00"/>
			<value name="ComSpec.Path" type="string" data=""/>
			<value name="EnvironmentSet" type="multi">
				<line data="set PATH=%ConEmuBaseDir%\Scripts;%PATH%"/>
			</value>
			<value name="CTS.Intelligent" type="hex" data="01"/>
			<value name="CTS.IntelligentExceptions" type="string" data="far|vim"/>
			<value name="CTS.AutoCopy" type="hex" data="01"/>
			<value name="CTS.ResetOnRelease" type="hex" data="00"/>
			<value name="CTS.IBeam" type="hex" data="01"/>
			<value name="CTS.EndOnTyping" type="hex" data="00"/>
			<value name="CTS.EndOnKeyPress" type="hex" data="00"/>
			<value name="CTS.EraseBeforeReset" type="hex" data="01"/>
			<value name="CTS.Freeze" type="hex" data="00"/>
			<value name="CTS.SelectBlock" type="hex" data="01"/>
			<value name="CTS.SelectText" type="hex" data="01"/>
			<value name="CTS.HtmlFormat" type="hex" data="00"/>
			<value name="CTS.ForceLocale" type="dword" data="00000000"/>
			<value name="CTS.RBtnAction" type="hex" data="03"/>
			<value name="CTS.MBtnAction" type="hex" data="00"/>
			<value name="CTS.ColorIndex" type="hex" data="e0"/>
			<value name="ClipboardConfirmEnter" type="hex" data="01"/>
			<value name="ClipboardConfirmLonger" type="ulong" data="200"/>
			<value name="FarGotoEditorOpt" type="hex" data="01"/>
			<value name="FarGotoEditorPath" type="string" data="far.exe /e%1:%2 &quot;%3&quot;"/>
			<value name="HighlightMouseRow" type="hex" data="00"/>
			<value name="HighlightMouseCol" type="hex" data="00"/>
			<value name="FixFarBorders" type="hex" data="01"/>
			<value name="Anti-aliasing2" type="hex" data="00"/>
			<value name="FixFarBordersRanges" type="string" data="2013-25C4;"/>
			<value name="ExtendUCharMap" type="hex" data="01"/>
			<value name="EnhanceGraphics" type="hex" data="01"/>
			<value name="EnhanceButtons" type="hex" data="00"/>
			<value name="PartBrush75" type="hex" data="c8"/>
			<value name="PartBrush50" type="hex" data="96"/>
			<value name="PartBrush25" type="hex" data="5a"/>
			<value name="PartBrushBlack" type="hex" data="20"/>
			<value name="RightClick opens context menu" type="hex" data="02"/>
			<value name="RightClickMacro2" type="string" data=""/>
			<value name="SendAltTab" type="hex" data="00"/>
			<value name="SendAltEsc" type="hex" data="00"/>
			<value name="SendAltPrintScrn" type="hex" data="00"/>
			<value name="SendPrintScrn" type="hex" data="00"/>
			<value name="SendCtrlEsc" type="hex" data="00"/>
			<value name="Min2Tray" type="hex" data="01"/>
			<value name="AlwaysShowTrayIcon" type="hex" data="00"/>
			<value name="SafeFarClose" type="hex" data="01"/>
			<value name="SafeFarCloseMacro" type="string" data=""/>
			<value name="FARuseASCIIsort" type="hex" data="00"/>
			<value name="ShellNoZoneCheck" type="hex" data="00"/>
			<value name="FixAltOnAltTab" type="hex" data="00"/>
			<value name="UseAltGrayPlus" type="hex" data="01"/>
			<value name="DisableMouse" type="hex" data="00"/>
			<value name="RSelectionFix" type="hex" data="01"/>
			<value name="MouseSkipActivation" type="hex" data="01"/>
			<value name="MouseSkipMoving" type="hex" data="01"/>
			<value name="MouseDragWindow" type="hex" data="01"/>
			<value name="FarHourglass" type="hex" data="01"/>
			<value name="FarHourglassDelay" type="ulong" data="500"/>
			<value name="Dnd" type="hex" data="01"/>
			<value name="DndDrop" type="hex" data="01"/>
			<value name="DefCopy" type="hex" data="01"/>
			<value name="DropUseMenu" type="hex" data="02"/>
			<value name="DragOverlay" type="hex" data="01"/>
			<value name="DragShowIcons" type="hex" data="01"/>
			<value name="DebugSteps" type="hex" data="00"/>
			<value name="DebugLog" type="hex" data="00"/>
			<value name="DragPanel" type="hex" data="02"/>
			<value name="DragPanelBothEdges" type="hex" data="00"/>
			<value name="KeyBarRClick" type="hex" data="01"/>
			<value name="StatusBar.Show" type="hex" data="01"/>
			<value name="StatusBar.Flags" type="dword" data="00000002"/>
			<value name="StatusFontFace" type="string" data="Segoe UI"/>
			<value name="StatusFontCharSet" type="ulong" data="0"/>
			<value name="StatusBar.Color.Back" type="dword" data="00423607"/>
			<value name="StatusBar.Color.Light" type="dword" data="00e3f6fd"/>
			<value name="StatusBar.Color.Dark" type="dword" data="00a1a193"/>
			<value name="StatusBar.Hide.VCon" type="hex" data="00"/>
			<value name="StatusBar.Hide.CapsL" type="hex" data="01"/>
			<value name="StatusBar.Hide.NumL" type="hex" data="00"/>
			<value name="StatusBar.Hide.ScrL" type="hex" data="01"/>
			<value name="StatusBar.Hide.VisL" type="hex" data="01"/>
			<value name="StatusBar.Hide.Lang" type="hex" data="01"/>
			<value name="StatusBar.Hide.KeyHooks" type="hex" data="01"/>
			<value name="StatusBar.Hide.TMode" type="hex" data="01"/>
			<value name="StatusBar.Hide.RMode" type="hex" data="01"/>
			<value name="StatusBar.Hide.WPos" type="hex" data="01"/>
			<value name="StatusBar.Hide.WSize" type="hex" data="01"/>
			<value name="StatusBar.Hide.WClient" type="hex" data="01"/>
			<value name="StatusBar.Hide.WWork" type="hex" data="01"/>
			<value name="StatusBar.Hide.WVBack" type="hex" data="01"/>
			<value name="StatusBar.Hide.WVDC" type="hex" data="01"/>
			<value name="StatusBar.Hide.Style" type="hex" data="01"/>
			<value name="StatusBar.Hide.StyleEx" type="hex" data="01"/>
			<value name="StatusBar.Hide.hFore" type="hex" data="01"/>
			<value name="StatusBar.Hide.hFocus" type="hex" data="01"/>
			<value name="StatusBar.Hide.Zoom" type="hex" data="01"/>
			<value name="StatusBar.Hide.Dpi" type="hex" data="01"/>
			<value name="StatusBar.Hide.ABuf" type="hex" data="00"/>
			<value name="StatusBar.Hide.CPos" type="hex" data="01"/>
			<value name="StatusBar.Hide.CSize" type="hex" data="00"/>
			<value name="StatusBar.Hide.BSize" type="hex" data="01"/>
			<value name="StatusBar.Hide.CurX" type="hex" data="01"/>
			<value name="StatusBar.Hide.CurY" type="hex" data="01"/>
			<value name="StatusBar.Hide.CurS" type="hex" data="01"/>
			<value name="StatusBar.Hide.CurI" type="hex" data="00"/>
			<value name="StatusBar.Hide.ConEmuPID" type="hex" data="01"/>
			<value name="StatusBar.Hide.ConEmuHWND" type="hex" data="01"/>
			<value name="StatusBar.Hide.ConEmuView" type="hex" data="01"/>
			<value name="StatusBar.Hide.Srv" type="hex" data="00"/>
			<value name="StatusBar.Hide.SrvHWND" type="hex" data="01"/>
			<value name="StatusBar.Hide.Transparency" type="hex" data="00"/>
			<value name="StatusBar.Hide.New" type="hex" data="00"/>
			<value name="StatusBar.Hide.Sync" type="hex" data="00"/>
			<value name="StatusBar.Hide.Proc" type="hex" data="00"/>
			<value name="StatusBar.Hide.Title" type="hex" data="01"/>
			<value name="StatusBar.Hide.Time" type="hex" data="01"/>
			<value name="StatusBar.Hide.Resize" type="hex" data="00"/>
			<value name="Tabs" type="hex" data="01"/>
			<value name="TabsLocation" type="hex" data="00"/>
			<value name="TabIcons" type="hex" data="01"/>
			<value name="OneTabPerGroup" type="hex" data="00"/>
			<value name="ActivateSplitMouseOver" type="hex" data="01"/>
			<value name="TabSelf" type="hex" data="01"/>
			<value name="TabLazy" type="hex" data="01"/>
			<value name="TabFlashChanged" type="long" data="8"/>
			<value name="TabRecent" type="hex" data="01"/>
			<value name="TabDblClick" type="ulong" data="1"/>
			<value name="TabBtnDblClick" type="ulong" data="0"/>
			<value name="TabsOnTaskBar" type="hex" data="02"/>
			<value name="TaskBarOverlay" type="hex" data="01"/>
			<value name="TaskbarProgress" type="hex" data="01"/>
			<value name="TabCloseMacro" type="string" data=""/>
			<value name="TabFontFace" type="string" data="Segoe UI"/>
			<value name="TabFontCharSet" type="ulong" data="0"/>
			<value name="SaveAllEditors" type="string" data=""/>
			<value name="ToolbarAddSpace" type="long" data="0"/>
			<value name="TabConsole" type="string" data="&lt;%c&gt; %s"/>
			<value name="TabModifiedSuffix" type="string" data="[*]"/>
			<value name="TabSkipWords" type="string" data="Administrator:|Администратор:"/>
			<value name="TabPanels" type="string" data="&lt;%c&gt; %s"/>
			<value name="TabEditor" type="string" data="&lt;%c.%i&gt;{%s}"/>
			<value name="TabEditorModified" type="string" data="&lt;%c.%i&gt;[%s] *"/>
			<value name="TabViewer" type="string" data="&lt;%c.%i&gt;[%s]"/>
			<value name="TabLenMax" type="ulong" data="20"/>
			<value name="AdminTitleSuffix" type="string" data=" (Admin)"/>
			<value name="AdminShowShield" type="hex" data="01"/>
			<value name="HideInactiveConsoleTabs" type="hex" data="00"/>
			<value name="ShowFarWindows" type="hex" data="01"/>
			<value name="TryToCenter" type="hex" data="01"/>
			<value name="CenterConsolePad" type="ulong" data="0"/>
			<value name="ShowScrollbar" type="hex" data="02"/>
			<value name="ScrollBarAppearDelay" type="ulong" data="100"/>
			<value name="ScrollBarDisappearDelay" type="ulong" data="1000"/>
			<value name="IconID" type="ulong" data="1"/>
			<value name="MainTimerElapse" type="ulong" data="10"/>
			<value name="MainTimerInactiveElapse" type="ulong" data="1000"/>
			<value name="AffinityMask" type="dword" data="00000000"/>
			<value name="SkipFocusEvents" type="hex" data="00"/>
			<value name="MonitorConsoleLang" type="hex" data="03"/>
			<value name="SnapToDesktopEdges" type="hex" data="00"/>
			<value name="AlwaysOnTop" type="hex" data="00"/>
			<value name="SleepInBackground" type="hex" data="00"/>
			<value name="RetardInactivePanes" type="hex" data="00"/>
			<value name="MinimizeOnLoseFocus" type="hex" data="00"/>
			<value name="DisableFarFlashing" type="hex" data="00"/>
			<value name="DisableAllFlashing" type="hex" data="00"/>
			<value name="FindText" type="string" data=""/>
			<value name="FindMatchCase" type="hex" data="00"/>
			<value name="FindMatchWholeWords" type="hex" data="00"/>
			<value name="FindTransparent" type="hex" data="01"/>
			<value name="PanView.BackColor" type="dword" data="30ffffff"/>
			<value name="PanView.PFrame" type="long" data="1"/>
			<value name="PanView.PFrameColor" type="dword" data="28808080"/>
			<value name="PanView.SFrame" type="long" data="1"/>
			<value name="PanView.SFrameColor" type="dword" data="07c0c0c0"/>
			<value name="PanView.Thumbs.ImgSize" type="long" data="96"/>
			<value name="PanView.Thumbs.SpaceX1" type="long" data="1"/>
			<value name="PanView.Thumbs.SpaceY1" type="long" data="1"/>
			<value name="PanView.Thumbs.SpaceX2" type="long" data="5"/>
			<value name="PanView.Thumbs.SpaceY2" type="long" data="20"/>
			<value name="PanView.Thumbs.LabelSpacing" type="long" data="2"/>
			<value name="PanView.Thumbs.LabelPadding" type="long" data="0"/>
			<value name="PanView.Thumbs.FontName" type="string" data="Segoe UI"/>
			<value name="PanView.Thumbs.FontHeight" type="long" data="14"/>
			<value name="PanView.Tiles.ImgSize" type="long" data="48"/>
			<value name="PanView.Tiles.SpaceX1" type="long" data="4"/>
			<value name="PanView.Tiles.SpaceY1" type="long" data="4"/>
			<value name="PanView.Tiles.SpaceX2" type="long" data="172"/>
			<value name="PanView.Tiles.SpaceY2" type="long" data="4"/>
			<value name="PanView.Tiles.LabelSpacing" type="long" data="4"/>
			<value name="PanView.Tiles.LabelPadding" type="long" data="1"/>
			<value name="PanView.Tiles.FontName" type="string" data="Segoe UI"/>
			<value name="PanView.Tiles.FontHeight" type="long" data="14"/>
			<value name="PanView.LoadPreviews" type="hex" data="03"/>
			<value name="PanView.LoadFolders" type="hex" data="01"/>
			<value name="PanView.LoadTimeout" type="ulong" data="15"/>
			<value name="PanView.MaxZoom" type="ulong" data="600"/>
			<value name="PanView.UsePicView2" type="hex" data="01"/>
			<value name="PanView.RestoreOnStartup" type="hex" data="00"/>
			<value name="Update.VerLocation" type="string" data=""/>
			<value name="Update.InetTool" type="hex" data="00"/>
			<value name="Update.InetToolCmd" type="string" data=""/>
			<value name="Update.UseProxy" type="hex" data="00"/>
			<value name="Update.Proxy" type="string" data=""/>
			<value name="Update.ProxyUser" type="string" data=""/>
			<value name="Update.ProxyPassword" type="string" data=""/>
			<value name="Update.ExeCmdLine" type="string" data=""/>
			<value name="Update.ArcCmdLine" type="string" data=""/>
			<value name="Update.DownloadPath" type="string" data="%TEMP%\ConEmu"/>
			<value name="Update.LeavePackages" type="hex" data="00"/>
			<value name="Update.PostUpdateCmd" type="string" data="echo Last successful update&gt;ConEmuUpdate.info &amp;&amp; date /t&gt;&gt;ConEmuUpdate.info &amp;&amp; time /t&gt;&gt;ConEmuUpdate.info"/>
			<key name="Tasks" modified="2016-10-07 10:00:27" build="161002">
				<value name="Count" type="long" data="9"/>
				<key name="Task1" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Shells::cmd}"/>
					<value name="Flags" type="dword" data="00000002"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="cmd.exe /k &quot;%ConEmuBaseDir%\CmdInit.cmd&quot;"/>
					<value name="Active" type="long" data="0"/>
					<value name="Count" type="long" data="1"/>
				</key>
				<key name="Task2" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Shells::cmd (Admin)}"/>
					<value name="Flags" type="dword" data="00000004"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="cmd.exe /k &quot;%ConEmuBaseDir%\CmdInit.cmd&quot; -new_console:a"/>
					<value name="Active" type="long" data="0"/>
					<value name="Count" type="long" data="1"/>
				</key>
				<key name="Task3" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Shells::cmd-32}"/>
					<value name="Flags" type="dword" data="00000004"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="&quot;%windir%\syswow64\cmd.exe&quot; /k &quot;%ConEmuBaseDir%\CmdInit.cmd&quot;"/>
					<value name="Active" type="long" data="0"/>
					<value name="Count" type="long" data="1"/>
				</key>
				<key name="Task4" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Shells::cmd 64/32}"/>
					<value name="Flags" type="dword" data="00000004"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="&gt; &quot;%windir%\system32\cmd.exe&quot; /k &quot;&quot;%ConEmuBaseDir%\CmdInit.cmd&quot; &amp; echo This is Native cmd.exe&quot;"/>
					<value name="Cmd2" type="string" data="&quot;%windir%\syswow64\cmd.exe&quot; /k &quot;&quot;%ConEmuBaseDir%\CmdInit.cmd&quot; &amp; echo This is 32 bit cmd.exe -new_console:s50V&quot;"/>
					<value name="Active" type="long" data="1"/>
					<value name="Count" type="long" data="2"/>
				</key>
				<key name="Task5" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Shells::PowerShell}"/>
					<value name="Flags" type="dword" data="00000004"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="powershell.exe"/>
					<value name="Active" type="long" data="0"/>
					<value name="Count" type="long" data="1"/>
				</key>
				<key name="Task6" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Shells::PowerShell (Admin)}"/>
					<value name="Flags" type="dword" data="00000004"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="powershell.exe -new_console:a"/>
					<value name="Active" type="long" data="0"/>
					<value name="Count" type="long" data="1"/>
				</key>
				<key name="Task7" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Bash::Git bash}"/>
					<value name="Flags" type="dword" data="00000004"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="&quot;%ConEmuDir%\..\Git\git-cmd.exe&quot; --no-cd --command=usr/bin/bash.exe -l -i"/>
					<value name="Active" type="long" data="0"/>
					<value name="Count" type="long" data="1"/>
				</key>
				<key name="Task8" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Helper::Show ANSI colors}"/>
					<value name="Flags" type="dword" data="00000004"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="cmd.exe /k type &quot;%ConEmuBaseDir%\Addons\AnsiColors16t.ans&quot; -cur_console:n"/>
					<value name="Active" type="long" data="0"/>
					<value name="Count" type="long" data="1"/>
				</key>
				<key name="Task9" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="{Tools::Chocolatey (Admin)}"/>
					<value name="Flags" type="dword" data="00000004"/>
					<value name="Hotkey" type="dword" data="00000000"/>
					<value name="GuiArgs" type="string" data=""/>
					<value name="Cmd1" type="string" data="*cmd.exe /k Title Chocolatey &amp; &quot;%ConEmuBaseDir%\Addons\ChocolateyAbout.cmd&quot;"/>
					<value name="Active" type="long" data="0"/>
					<value name="Count" type="long" data="1"/>
				</key>
			</key>
			<key name="Apps" modified="2016-10-07 10:00:27" build="161002">
				<value name="Count" type="long" data="0"/>
			</key>
			<key name="Colors" modified="2016-10-07 10:00:27" build="161002">
				<value name="Count" type="long" data="1"/>
				<key name="Palette1" modified="2016-10-07 10:00:27" build="161002">
					<value name="Name" type="string" data="Dracula"/>
					<value name="ExtendColors" type="hex" data="00"/>
					<value name="ExtendColorIdx" type="hex" data="0e"/>
					<value name="TextColorIdx" type="hex" data="10"/>
					<value name="BackColorIdx" type="hex" data="10"/>
					<value name="PopTextColorIdx" type="hex" data="10"/>
					<value name="PopBackColorIdx" type="hex" data="10"/>
					<value name="ColorTable00" type="dword" data="00482a28"/>
					<value name="ColorTable01" type="dword" data="00cc6374"/>
					<value name="ColorTable02" type="dword" data="003dde66"/>
					<value name="ColorTable03" type="dword" data="00fbd677"/>
					<value name="ColorTable04" type="dword" data="003c3cee"/>
					<value name="ColorTable05" type="dword" data="00f993dd"/>
					<value name="ColorTable06" type="dword" data="006cb8ff"/>
					<value name="ColorTable07" type="dword" data="00dee4e4"/>
					<value name="ColorTable08" type="dword" data="00969a9a"/>
					<value name="ColorTable09" type="dword" data="00c47262"/>
					<value name="ColorTable10" type="dword" data="007bfa50"/>
					<value name="ColorTable11" type="dword" data="00fde98b"/>
					<value name="ColorTable12" type="dword" data="005555ff"/>
					<value name="ColorTable13" type="dword" data="00c679ff"/>
					<value name="ColorTable14" type="dword" data="008cfcfc"/>
					<value name="ColorTable15" type="dword" data="00f2f8f8"/>
					<value name="ColorTable16" type="dword" data="00000000"/>
					<value name="ColorTable17" type="dword" data="00800000"/>
					<value name="ColorTable18" type="dword" data="00008000"/>
					<value name="ColorTable19" type="dword" data="00808000"/>
					<value name="ColorTable20" type="dword" data="00000080"/>
					<value name="ColorTable21" type="dword" data="00800080"/>
					<value name="ColorTable22" type="dword" data="00008080"/>
					<value name="ColorTable23" type="dword" data="00c0c0c0"/>
					<value name="ColorTable24" type="dword" data="00808080"/>
					<value name="ColorTable25" type="dword" data="00ff0000"/>
					<value name="ColorTable26" type="dword" data="0000ff00"/>
					<value name="ColorTable27" type="dword" data="00ffff00"/>
					<value name="ColorTable28" type="dword" data="000000ff"/>
					<value name="ColorTable29" type="dword" data="00ff00ff"/>
					<value name="ColorTable30" type="dword" data="0000ffff"/>
					<value name="ColorTable31" type="dword" data="00ffffff"/>
				</key>

			</key>
		</key>
	</key>
</key>
"@


$ConEMU | Out-File $env:APPDATA\ConEmu.xml -Force
    
# Permanently add C:\Program Files\Git\usr\bin to machine Path variable
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Git\usr\bin", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Git\bin", "Machine")
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Git\cmd", "Machine")

# Generate the key and put into the your user profile .ssh directory
ssh-keygen -t rsa -b 4096 -C "rickardja@live.com" -f $env:USERPROFILE\.ssh\id_rsa

# Copy the public key. Be sure to copy the .pub for the public key
Get-Content $env:USERPROFILE\.ssh\id_rsa.pub | clip

######
######
#      https://hodgkins.io/ultimate-powershell-prompt-and-git-setup #
######
######


#Download PowerShell Profile

$clnt = new-object System.Net.WebClient
$url = 'https://gist.githubusercontent.com/MSAdministrator/bbb549cee70d80d3b008bb173d84a39f/raw/e39171771a14d8c7e7026fbe09ed618b2bbf3dcc/Microsoft.PowerShell_profile.ps1'

$Folder = Split-Path $PROFILE
$File = Split-Path -Leaf $url

$OutFile = Join-Path $Folder $File
Invoke-WebRequest -Uri $url -OutFile $OutFile


#DOwnload PowerShell ISE Profile

$clnt = new-object System.Net.WebClient
$url = 'https://gist.githubusercontent.com/MSAdministrator/38711ca0ba02f2a0c0cc715c84c28802/raw/229b795327b59c3d3a3271c4e6868274078331ad/Microsoft.PowerShellISE_profile.ps1'

$Folder = Split-Path $PROFILE
$File = Split-Path -Leaf $url

$OutFile = Join-Path $Folder $File
Invoke-WebRequest -Uri $url -OutFile $OutFile



#SEtup SSH Key and attempt to connect
ssh -T git@github.com

#Configure Global GIT Settings
git config --global user.email "rickardja@live.com"
git config --global user.name "MSAdministrator"
git config --global push.default simple
git config --global core.ignorecase false

# Configure line endings for windows
git config --global core.autocrlf true