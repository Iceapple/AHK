;-------------------------------常用按键--------------------------------------
;[#]:win
;[`]:ctrl
;[+]:shift
;[!]:alt
;VK_MULTIPLY:*
;F1 send`t
;这是屏蔽开关→[;]，兼注释

;-------------------------------正片-------------------------------------------

;【QuickStart】运行Run文件夹里的软件；若已运行，则激活；若已激活，则最小化
;Win+Q：everything| Win+V:EverNote| Win+C: Chrome| Win+A| Win+Z：MindManager| Win+E：Clover|

;Run文件夹路径（快捷方式）
PROGRAMDIR:= "Z:\系统维护\Run"

;===[Win + C]:Chrome===
#C::
IfWinNotExist, ahk_class Chrome_WidgetWin_1
Run %PROGRAMDIR%\Chrome
Else
{
IfWinActive, ahk_class Chrome_WidgetWin_1
WinMinimize,
Else
WinActivate,
}
return

;===[Win + E]:Clover===
#E::
IfWinNotExist, ahk_class Clover_WidgetWin_0
Run %PROGRAMDIR%\Clover
Else
{
IfWinActive, ahk_class Clover_WidgetWin_0
;ahk_class CabinetWClass
WinMinimize,
Else
WinActivate,
}
return

;===[Win + Z]:MindManager===
#Z::
IfWinNotExist, ahk_class MindManager16WndClass
Run %PROGRAMDIR%\MindManager
Else
{
IfWinActive, ahk_class MindManager16WndClass
WinMinimize,
Else
WinActivate,
}
return

;===[Win + Q]:EVERYTHING===
#Q::
IfWinNotExist, ahk_class EVERYTHING
Run %PROGRAMDIR%\Everything
Else
{
IfWinActive, ahk_class EVERYTHING
WinMinimize,
Else
WinActivate,
}
return
           
;===[Win + V]:EVERYTHING===
#V::
IfWinNotExist, ahk_class ENMainFrame
Run %PROGRAMDIR%\Evernote
Else
{
IfWinActive, ahk_class ENMainFrame
WinMinimize,
Else
WinActivate,
}
return

;--------屏蔽-----
#+Z::run %PROGRAMDIR%\AutoHotkey    ;（重）加载AHK
;#`::run %PROGRAMDIR%\Totalcmd  

;--------屏蔽-----
;Win+F：everything| Win+Q:EverNote| Win+W| Win+A| Win+Z|
;#n::run notepad

;音乐播放(云音乐）
;MButton::Send ^!p   ;播放/暂停
;*::Send ^!{Right}   ;下一首

;调整系统音量|Alt+Num0：静音| Alt+Num+：增大音量| Alt+Num-：减小音量|
!Numpad0::SoundSet +1, , mute
;MButton::SoundSet, +1, , mute

;+::
!NumpadAdd::SoundSet, +5, MASTER
SoundSet, +5,WAVE
Return

!NumpadSub::
;-::
SoundSet -5, MASTER
SoundSet, -5,WAVE
Return

;---------------------------------通用键的映射---------------------------------

;例子
;!f::Send ^f ;查找 
;!q:: !F4 ;退出 
;!w::Send ^w ;关闭网页窗口 
;!r::Send #r 
;!s::Send ^s ;保存 
;!n::Send ^n ;新建 
;!z::Send ^z 

;---------------------------------只是提醒而已--------------------------------- 
; more,「help」
;OTHER:
;Win + I: Win10设置栏
;Win + Tab: 任务视图
;Win+ ↓：最小化窗口;Win+ ↑：最大化窗口
