@ECHO OFF

REM ######################################################
REM ## FILENAME: WINSTREAM.BAT
REM ## TITLE: WINSTREAM
REM ## AUTHOR: Endwall
REM ## Creation Date: January 27, 2018
REM ## Version: 0.03
REM ## Revision Date: February 11, 2018
REM ##
REM ## Description:  Stream internet video channels with mpv and youtube-dl
REM ##
REM ##
REM ## Dependencies: mpv, youtube-dl, 
REM ##
REM ######################################################

REM ##################################################################### 
REM # Instructions:  
REM # make a directory C:\Users\%USERNAME%\bin and copy this file there, add this to the %PATH% by typing the following:
REM # SET PATH=C:\Users\%USERNAME%\bin;%PATH% 
REM # Alternatively put the file setpath.bat into C:\Users\%USERNAME% and call it in the command line.
REM #  
REM # Download mpv.exe from www.mpv.io and also download youtube-dl.exe, then unpack the 7zip archive with mpv.exe and the
REM # dll files into C:\Users\%USERNAME%\bin  also make sure that youtube-dl.exe and mpv.exe are located in the bin directory
REM # now type winstream in cmd to call the file: 
REM # C:\Users\%USERNNAME%> winstream
REM # or double click on the batch file which should work as well.
REM # 
REM ##############################################################################################################################################################################
REM #                                         ACKNOWLEDGMENTS
REM #############################################################################################################################################################################
REM #  The Endware Development Team would like to acknowledge the work and efforts of OdiliTime, Balrog and SnakeDude who graciously hosted and promoted this software project. 
REM #  We would also like to acknowledge the work and efforts of Stephen Lynx, the creator and maintainer of LynxChan.  
REM #  Without their efforts and their wonderful web site www.endchan.xyz, The Endware Suite would not exist in the public domain at all in any form. 
REM #
REM #  So thanks to OdiliTime, Balrog, SnakeDude, and Stephen Lynx for inspiring this work and for hosting and promoting it. 
REM #  
REM #  The Endware Suite including Endwall,Endsets,Endlists,Endtools,Endloads and Endtube are named in honor of Endchan.
REM #
REM #  The Endware Suite is available for download at the following locations:
REM #  https://gitgud.io/Endwall/ , https://github.com/endwall2/, https://www.endchan.xyz/os/, http://42xlyaqlurifvvtq.onion,
REM #
REM #  Special thanks to the designer of the current EndWare logo which replaces the previous logo. It looks great!
REM #  Thank you also to early beta testers including a@a, and to other contributors including Joshua Moon (for user_agents.txt split and other good suggestions) 
REM #  as well as to the detractors who helped to critique this work and to ultimately improve it.  
REM #  
REM #  We also acknowledge paste.debian.net, ix.io, gitgud and github for their hosting services, 
REM #  without which distribution would be limited, so thank you.
REM #
REM #  https://www.endchan.xyz, http://paste.debian.net, https://gitgud.io, https://github.com, http://ix.io  
REM #
REM #  We salute you! 
REM #  
REM #  In the end, may it all end well.
REM #
REM #  The Endware Development Team
REM ##############################################################################################################################################################################
REM ##############################################################################################################################################################################
REM #                                                              LICENSE AGREEMENT  
REM ##############################################################################################################################################################################
REM #  BEGINNING OF LICENSE AGREEMENT
REM #  TITLE:  THE ENDWARE END USER LICENSE AGREEMENT (EULA) 
REM #  CREATION DATE: MARCH 19, 2016
REM #  VERSION: 1.15
REM #  VERSION DATE: JULY 05, 2017
REM #  COPYRIGHT: THE ENDWARE DEVELOPMENT TEAM, 2016-2017
REM #      
REM #  WHAT CONSTITUTES "USE"? WHAT IS A "USER"?
REM #  0) a) Use of this program means the ability to study, possess, run, copy, modify, publish, distribute and sell the code as included in all lines of this file,
REM #        in text format or as a binary file constituting this particular program or its compiled binary machine code form, as well as the the performance 
REM #        of these aforementioned actions and activities. 
REM #  0) b) A user of this program is any individual who has been granted use as defined in section 0) a) of the LICENSE AGREEMENT, and is granted to those individuals listed in section 1.
REM #  WHO MAY USE THIS PROGRAM ?
REM #  1) a) This program may be used by any living human being, any person, any corporation, any company, and by any sentient individual with the willingness and ability to do so.
REM #  1) b) This program may be used by any citizen or resident of any country, and by any human being without citizenship or residency.
REM #  1) c) This program may be used by any civilian, military officer, government agent, private citizen, government official, sovereign, monarch, head of state,
REM #        dignitary, ambassador, legislator,congressional representative, member of parliament, senator, judicial official, judge, prosecutor, lawyer 
REM #        noble, commoner, clergy, laity, and generally all classes and ranks of people, persons, and human beings mentioned and those not mentioned.
REM #  1) d) This program may be used by any human being of any gender, including men, women, and any other gender not mentioned.       
REM #  1) e) This program may be used by anyone of any affiliation, political viewpoint, political affiliation, religious belief, religious affiliation, and by those of non-belief or non affiliation.
REM #  1) f) This program may be used by any person of any race, ethnicity, identity, origin, genetic makeup, physical appearance, mental ability, and by those of any other physical 
REM #        or non physical characteristics of differentiation.
REM #  1) g) This program may be used by any human being of any sexual orientation, including heterosexual, homosexual, bisexual, asexual, or any other sexual orientation not mentioned.
REM #  1) h) This program may be used by anyone. 
REM #  WHERE MAY A USER USE THIS PROGRAM ?
REM #  2) a) This program may be used in any country, in any geographic location of the planet Earth, in any marine or maritime environment, at sea, sub-sea, in a submarine, underground,
REM #        in the air, in an airplane, dirigible, blimp, or balloon, and at any distance from the surface of the planet Earth, including in orbit about the Earth or the Moon,
REM #        on a satellite orbiting about the Earth, the Moon, about any Solar System planet and its moons, on any space transport vehicle, and anywhere in the Solar System including the Moon, Mars, and all other Solar System planets not listed.  
REM #  2) b) This program may be used in any residential, commercial, business, and governmental property or location and in all public and private spaces. 
REM #  2) c) This program may be used anywhere.
REM #  IN WHAT CONTEXT OR CIRCUMSTANCES MAY A USER USE THIS PROGRAM?
REM #  3)  This program may be used by any person, human being or sentient individual for any purpose and in any context and in any setting including for personal use, academic use,
REM #      business use, commercial use, government use, non-governmental organization use, non-profit organization use, military use, civilian use, and generally any other use 
REM #      not specifically mentioned.
REM #  WHAT MAY A "USER" DO WITH THIS PROGRAM ?
REM #  4) Any user of this program is granted the freedom to study the code.
REM #  5) a) Any user of this program is granted the freedom to distribute, publish, and share the code with any neighbor of their choice electronically or by any other method of transmission. 
REM #  5) b) The LICENCSE AGREEMENT, ACKNOWLEDGMENTS, Header and Instructions must remain attached to the code in their entirety when re-distributed.
REM #  5) c) Any user of this program is granted the freedom to sell this software as distributed or to bundle it with other software or salable goods.
REM #  6) a) Any user of this program is granted the freedom to modify and improve the code.
REM #  6) b) When modified or improved, any user of this program is granted the freedom of re-distribution of their modified code if and only if the user attatchs the LICENSE AGREEMENT
REM #        in its entirety to their modified code before re-distribution.
REM #  6) c) Any user of this software is granted the freedom to sell their modified copy of this software or to bundle their modified copy with other software or salable goods.
REM #  7) a) Any user of this program is granted the freedom to run this code on any computer of their choice.
REM #  7) b) Any user of this program is granted the freedom to run as many simultaneous instances of this code, on as many computers as they are able to and desire, and for as long as they desire and are
REM #        able to do so with any degree of simultaneity in use. 
REM #  WHAT MUST A "USER" NOT DO WITH THIS PROGRAM ?
REM #  8) Any user of this program is not granted the freedom to procure a patent for the methods presented in this software, and agrees not to do so.
REM #  9) Any user of this program is not granted the freedom to arbitrarily procure a copyright on this software as presented, and agrees not to do so.
REM #  10) Any user of this program is not granted the freedom to obtain or retain intellectual property rights on this software as presented and agrees not to do so.
REM #  11) a) Any user of this program may use this software as part of a patented process, as a substitutable input into the process; however the user agrees not to attempt to patent this software as part of their patented process. 
REM #      b) This software is a tool, like a hammer, and may be used in a process which applies for and gains a patent, as a substitutable input into the process;
REM #         however the software tool itself may not be included in the patent or covered by the patent as a novel invention, and the user agrees not to do this and not to attempt to do this.
REM #  WHO GRANTS THESE FREEDOMS ?
REM #  12) The creators of this software are the original developer,"Endwall", and anyone listed as being a member of "The Endware Development Team", as well as ancillary contributors, and user modifiers and developers of the software. 
REM #  13) The aforementioned freedoms of use listed in sections 4),5),6),and 7) are granted by the creators of this software and the Endware Development Team to any qualifying user listed in section 1) and 
REM #      comporting with any restrictions and qualifications mentioned in sections 2), 3), 8), 9), 10) and 11) of this LICENSE AGREEMENT.
REM #  WHAT RELATIONSHIP DO THE USERS HAVE WITH THE CREATORS OF THE SOFTWARE ?
REM #  14)  This software is distributed "as is" without any warranty and without any guaranty and the creators do not imply anything about its usefulness or efficacy.
REM #  15)  If the user suffers or sustains financial loss, informational loss, material loss, physical loss or data loss as a result of using, running, or modifying this software 
REM #       the user agrees that they will hold the creators of this software, "The Endware Development Team", "Endwall", and the programmers involved in its creation, free from prosecution, 
REM #       free from indemnity, and free from liability, and will not attempt to seek restitution, compensation, or payment for any such loss real or imagined.
REM #  16)  If a user makes a significant improvement to this software, and if this improvement is included in a release, the user agrees not to seek remuneration or payment 
REM #       from the creators of this software or from Endwall or from the Endware Development Team, for any such work contribution performed, and the user understands 
REM #       that there will be no such remuneration or payment rendered to them for any such contribution. 
REM #  END OF LICENSE AGREEMENT
REM ##################################################################################################################################################################################
REM #  ADDITIONAL NOTES:
REM #  17)  If a user finds a significant flaw or makes a significant improvement to this software, please feel free to notify the original developers so that we may also
REM #       include your user improvement in the next release; users are not obligated to do this, but we would enjoy this courtesy tremendously.
REM #
REM #  18)  Sections 0) a) 0) b) and 1) a) are sufficient for use; however sections 1) b) through 1) h) are presented to clarify 1 a) and to enforce non-discrimination and non-exclusion of use.  
REM #       For example some people may choose to redefine the meaning of the words "person" "human being" or "sentient individual" to exclude certain types of people.
REM #       This would be deemed unacceptable and is specifically rejected by the enumeration presented.  If the wording presented is problematic please contact us and suggest a change,
REM #       and it will be taken into consideration.  
REM #############################################################################################################################

REM ################################### BEGINNING OF PROGRAM ###################################################

SETLOCAL
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

SET PRODUCT=WINSTREAM
SET BRANCH="WINDOWS NT 6.x"
SET VERSION=0.03
SET REV_DATE="09/02/2018"

REM ## SET THE TITLE
TITLE ENDSTREAM %DATE%
REM ## CHANGE THE COLOUR
COLOR 1e
REM cOLOR 07
REM cOLOR 07

REM ## Display the current date and time
REM DATE /T
REM TIME /T

set prior_num="1"

:MENU_LIST
CLS
ECHO "========================== %PRODUCT% %VERSION% ====================="
ECHO "||=====ENGLISH======||=======FRENCH=======||=======SPANISH=======||  "
ECHO "|| 1) BBC WORLD     ||41) FRANCE 24 FR    ||81)RT ESPANOL        ||  "
ECHO "|| 2) SKY NEWS      ||42) RT FRANCE       ||82)DW ESPANOL        ||  " 
ECHO "|| 3) BBC LONDON    ||43) BMF TV FRANCE   ||83)CGTN ESPANOL      ||  " 
ECHO "|| 4) RT UK         ||44) TV 5 FRANCE     ||84)HISPAN TV         ||  " 
ECHO "|| 5) FRANCE24      ||45) CGTN FRANCAIS   ||85)LE ZAP ES         ||  " 
ECHO "|| 6) DW DE         ||46) BFM PARIS       ||86)CNN CHILE         ||  " 
ECHO "|| 7) RT RU         ||47) ASSEMBLE QUEBEC ||87)----------        ||  " 
ECHO "|| 8) EURONEWS      ||48) CANAL SAVOIR    ||88)----------        ||  " 
ECHO "|| 9) CBSN USA      ||49) GONG CINEMA     ||89)----------        ||  " 
ECHO "|| 10) MSNBC USA    ||50) GONG MAX        ||90)----------        ||  " 
ECHO "|| 11) Bloomberg USA||51) ANTENNA CENTER  ||91)----------        ||  " 
ECHO "|| 12) RT USA       ||52) IL TV FRANCE    ||92)----------        ||  " 
ECHO "|| 13) CGTN USA     ||53)  ---------      ||93)----------        ||  " 
ECHO "|| 14) NEWSY USA    ||54)  ---------      ||94)----------        ||  " 
ECHO "|| 15) ABC USA      ||55)  ---------      ||95)----------        ||  " 
ECHO "|| 16) TRT WORLD TK ||56)  ---------      ||96)----------        ||  " 
ECHO "|| 17) i24 News IL  ||57)  ---------      ||97)----------        ||  " 
ECHO "|| 18) Al Jazzera   ||58)  ---------      ||98)----------        ||  "  
ECHO "|| 19) PRESSTV IR   ||59)  ---------      ||99)----------        ||  "
ECHO "|| 20) INDIA TODAY  ||60)  ---------      ||100)----------       ||  " 
ECHO "|| 21) NEWSX INDIA  ||61)  ---------      ||101)----------       ||  " 
ECHO "|| 22) NDTV IN      ||62)  ---------      ||102)----------       ||  " 
ECHO "|| 23) CGTN CN      ||63)  ---------      ||103)----------       ||  " 
ECHO "|| 24) NHK JP       ||64)  ---------      ||104)----------       ||  " 
ECHO "|| 25) CNN PH       ||65)  ---------      ||105)----------       ||  " 
ECHO "|| 26) ABC AU       ||66)  ---------      ||106)----------       ||  " 
ECHO "|| 27) ANN7 ZA      ||67)  ---------      ||107)----------       ||  " 
ECHO "|| 28) ARISE NG     ||68)  ---------      ||108)----------       ||  " 
ECHO "|| 29) VOA USA      ||69)  ---------      ||109)----------       ||  " 
ECHO "|| 30) RT DOCUMENT  ||70)  ---------      ||110)----------       ||  " 
ECHO "|| 31) CGTN DOCUMENT||71)  ---------      ||111)----------       ||  " 
ECHO "|| 32) BYUTV USA    ||72)  ---------      ||112)----------       ||  " 
ECHO "|| 33) BIZ TV       ||73)  ---------      ||113)----------       ||  " 
ECHO "|| 34) NEWSMAX USA| ||74)  ---------      ||114)----------       ||  " 
ECHO "|| 35) FREESPEECH   ||75)  ---------      ||115)----------       ||  " 
ECHO "|| 36) INFOWARS     ||76)  ---------      ||116)----------       ||  " 
ECHO "|| 37) TWIT         ||77)  ---------      ||117)----------       ||  " 
ECHO "|| 38) JUPITER      ||78)  ---------      ||118)----------       ||  "
ECHO "|| 39) CSPAN 1 USA  ||79)  ---------      ||119)----------       ||  "
ECHO "|| 40) CPAC 1 CA    ||80)  ---------      ||120)----------       ||  "
ECHO "===================================================================== "
PROMPT $LWINSTREAM$G$D$T$$
set /p chan_num="Select a Channel Number:"

echo %chan_num%

IF "%chan_num%"=="1" ( 
GOTO CHAN_1 
) ELSE IF "%chan_num%"=="2" ( 
GOTO CHAN_2 
) ELSE IF "%chan_num%"=="3" ( 
GOTO CHAN_3 
) ELSE IF "%chan_num%"=="4" ( 
GOTO CHAN_4 
) ELSE IF "%chan_num%"=="5" ( 
GOTO CHAN_5
) ELSE IF "%chan_num%"=="6" ( 
GOTO CHAN_6
) ELSE IF "%chan_num%"=="7" ( 
GOTO CHAN_7
) ELSE IF "%chan_num%"=="8" ( 
GOTO CHAN_8
) ELSE IF "%chan_num%"=="9" ( 
GOTO CHAN_9
) ELSE IF "%chan_num%"=="10" ( 
GOTO CHAN_10
) ELSE IF "%chan_num%"=="11" ( 
GOTO CHAN_11
) ELSE IF "%chan_num%"=="12" ( 
GOTO CHAN_12
) ELSE IF "%chan_num%"=="13" ( 
GOTO CHAN_13
) ELSE IF "%chan_num%"=="14" ( 
GOTO CHAN_14
) ELSE IF "%chan_num%"=="15" ( 
GOTO CHAN_15
) ELSE IF "%chan_num%"=="16" ( 
GOTO CHAN_16
) ELSE IF "%chan_num%"=="17" ( 
GOTO CHAN_17
) ELSE IF "%chan_num%"=="18" ( 
GOTO CHAN_18
) ELSE IF "%chan_num%"=="19" ( 
GOTO CHAN_19
) ELSE IF "%chan_num%"=="20" ( 
GOTO CHAN_20
) ELSE IF "%chan_num%"=="21" ( 
GOTO CHAN_21
) ELSE IF "%chan_num%"=="22" ( 
GOTO CHAN_22
) ELSE IF "%chan_num%"=="23" ( 
GOTO CHAN_23
) ELSE IF "%chan_num%"=="24" ( 
GOTO CHAN_24
) ELSE IF "%chan_num%"=="25" ( 
GOTO CHAN_25 
) ELSE IF "%chan_num%"=="26" ( 
GOTO CHAN_26
) ELSE IF "%chan_num%"=="27" ( 
GOTO CHAN_27
) ELSE IF "%chan_num%"=="28" ( 
GOTO CHAN_28
) ELSE IF "%chan_num%"=="29" ( 
GOTO CHAN_29
) ELSE IF "%chan_num%"=="30" ( 
GOTO CHAN_30
) ELSE IF "%chan_num%"=="31" ( 
GOTO CHAN_31
) ELSE IF "%chan_num%"=="32" ( 
GOTO CHAN_32
) ELSE IF "%chan_num%"=="33" ( 
GOTO CHAN_33
) ELSE IF "%chan_num%"=="34" ( 
GOTO CHAN_34
) ELSE IF "%chan_num%"=="35" ( 
GOTO CHAN_35
) ELSE IF "%chan_num%"=="36" ( 
GOTO CHAN_36
) ELSE IF "%chan_num%"=="37" ( 
GOTO CHAN_37
) ELSE IF "%chan_num%"=="38" ( 
GOTO CHAN_38
) ELSE IF "%chan_num%"=="39" ( 
GOTO CHAN_39
) ELSE IF "%chan_num%"=="40" ( 
GOTO CHAN_40
) ELSE IF "%chan_num%"=="41" ( 
GOTO CHAN_41
) ELSE IF "%chan_num%"=="42" ( 
GOTO CHAN_42
) ELSE IF "%chan_num%"=="43" ( 
GOTO CHAN_43
) ELSE IF "%chan_num%"=="44" ( 
GOTO CHAN_44
) ELSE IF "%chan_num%"=="45" ( 
GOTO CHAN_45
) ELSE IF "%chan_num%"=="46" ( 
GOTO CHAN_46
) ELSE IF "%chan_num%"=="47" ( 
GOTO CHAN_47
) ELSE IF "%chan_num%"=="48" ( 
GOTO CHAN_48
) ELSE IF "%chan_num%"=="49" ( 
GOTO CHAN_49
) ELSE IF "%chan_num%"=="50" ( 
GOTO CHAN_50
) ELSE IF "%chan_num%"=="51" ( 
GOTO CHAN_51
) ELSE IF "%chan_num%"=="52" ( 
GOTO CHAN_52
) ELSE IF "%chan_num%"=="53" ( 
GOTO CHAN_53
) ELSE IF "%chan_num%"=="54" ( 
GOTO CHAN_54
) ELSE IF "%chan_num%"=="55" ( 
GOTO CHAN_55
) ELSE IF "%chan_num%"=="56" ( 
GOTO CHAN_56
) ELSE IF "%chan_num%"=="57" ( 
GOTO CHAN_57
) ELSE IF "%chan_num%"=="58" ( 
GOTO CHAN_58
) ELSE IF "%chan_num%"=="59" ( 
GOTO CHAN_59
) ELSE IF "%chan_num%"=="60" ( 
GOTO CHAN_60
) ELSE IF "%chan_num%"=="61" ( 
GOTO CHAN_61
) ELSE IF "%chan_num%"=="62" ( 
GOTO CHAN_62
) ELSE IF "%chan_num%"=="63" ( 
GOTO CHAN_63
) ELSE IF "%chan_num%"=="64" ( 
GOTO CHAN_64
) ELSE IF "%chan_num%"=="65" ( 
GOTO CHAN_65
) ELSE IF "%chan_num%"=="66" ( 
GOTO CHAN_66
) ELSE IF "%chan_num%"=="67" ( 
GOTO CHAN_67
) ELSE IF "%chan_num%"=="68" ( 
GOTO CHAN_68
) ELSE IF "%chan_num%"=="69" ( 
GOTO CHAN_69
) ELSE IF "%chan_num%"=="70" ( 
GOTO CHAN_70
) ELSE IF "%chan_num%"=="71" ( 
GOTO CHAN_71
) ELSE IF "%chan_num%"=="72" ( 
GOTO CHAN_72
) ELSE IF "%chan_num%"=="73" ( 
GOTO CHAN_73
) ELSE IF "%chan_num%"=="74" ( 
GOTO CHAN_74
) ELSE IF "%chan_num%"=="75" ( 
GOTO CHAN_75
) ELSE IF "%chan_num%"=="76" ( 
GOTO CHAN_76
) ELSE IF "%chan_num%"=="77" ( 
GOTO CHAN_77
) ELSE IF "%chan_num%"=="78" ( 
GOTO CHAN_78
) ELSE IF "%chan_num%"=="79" ( 
GOTO CHAN_79
) ELSE IF "%chan_num%"=="80" ( 
GOTO CHAN_80
) ELSE IF "%chan_num%"=="81" ( 
GOTO CHAN_81
) ELSE IF "%chan_num%"=="82" ( 
GOTO CHAN_82
) ELSE IF "%chan_num%"=="83" ( 
GOTO CHAN_83
) ELSE IF "%chan_num%"=="84" ( 
GOTO CHAN_84
) ELSE IF "%chan_num%"=="85" ( 
GOTO CHAN_85
) ELSE IF "%chan_num%"=="86" ( 
GOTO CHAN_86
) ELSE IF "%chan_num%"=="87" ( 
GOTO CHAN_87
) ELSE IF "%chan_num%"=="88" ( 
GOTO CHAN_88
) ELSE IF "%chan_num%"=="89" ( 
GOTO CHAN_89
) ELSE IF "%chan_num%"=="90" ( 
GOTO CHAN_90
) ELSE IF "%chan_num%"=="91" ( 
GOTO CHAN_91
) ELSE IF "%chan_num%"=="92" ( 
GOTO CHAN_92
) ELSE IF "%chan_num%"=="93" ( 
GOTO CHAN_93
) ELSE IF "%chan_num%"=="94" ( 
GOTO CHAN_94
) ELSE IF "%chan_num%"=="95" ( 
GOTO CHAN_95
) ELSE IF "%chan_num%"=="96" ( 
GOTO CHAN_96
) ELSE IF "%chan_num%"=="97" ( 
GOTO CHAN_97
) ELSE IF "%chan_num%"=="98" ( 
GOTO CHAN_98
) ELSE IF "%chan_num%"=="99" ( 
GOTO CHAN_99
) ELSE IF "%chan_num%"=="100" ( 
GOTO CHAN_100
) ELSE IF "%chan_num%"=="q" ( 
GOTO END_OF_PROGRAM 
) ELSE IF "%chan_num%"=="+" ( 
set /A chan_num=!prior_num!+1 
GOTO CHAN_!chan_num!
) ELSE IF "%chan_num%"=="-" ( 
set /A chan_num=!prior_num%!-1
GOTO CHAN_!chan_num!
) ELSE IF "%chan_num%" LSS "1" ( 
set /A chan_num="1"
GOTO CHAN_!chan_num!
) ELSE (
GOTO MENU_LIST
)

:CHAN_0
set link="http://hlslive.lcdn.une.net.co/v1/AUTH_HLSLIVE/BBCW/tu1_1.m3u8"
set chan_name="BBC WORLD NEWS"
set /A chan_num="1"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_1
set link="http://hlslive.lcdn.une.net.co/v1/AUTH_HLSLIVE/BBCW/tu1_1.m3u8"
set chan_name="BBC WORLD NEWS"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_2
set link="http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/04.m3u8"
set chan_name="SKY NEWS LONDON" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_3
set link="http://www.dailymotion.com/video/x2j4h4m"
set chan_name="EURONEWS"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_4
set link="https://secure-streams.akamaized.net/rt-uk/index1600.m3u8"
set chan_name="RT UK" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_5
set link="http://f24hls-i.akamaihd.net/hls/live/221193-b/F24_EN_LO_HLS/master.m3u8"
set chan_name='FRANCE 24'
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_6
set link="https://secure-streams.akamaized.net/rt/index1600.m3u8"
set chan_name="RT RUSSIA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_7
set link="http://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/master.m3u8" 
set chan_name="Deutsche Welle English DE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_8
set link="https://www.filmon.com/tv/bbc-news"
set chan_name="BBC LONDON"
set /A prior_num="%chan_num%" 
goto PLAY_CASE

:CHAN_9
REM set link="https://dai.google.com/linear/hls/p/event/Sid4xiTQTkCT1SLu6rjUSQ/stream/e674cda6-3052-4a2a-bb05-78db73f04343:CBF/variant/4d0b0dfc2918a3cc7f47a0a730929d96/bandwidth/840400.m3u8"
REM set link="https://dai.google.com/linear/hls/event/Sid4xiTQTkCT1SLu6rjUSQ/master.m3u8?iu=/8264/vaw-can/mobile_web/cbsnews_mobile"
set link="https://dai.google.com/linear/hls/event/Sid4xiTQTkCT1SLu6rjUSQ/master.m3u8?#EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1390400,CODECS="avc1.4d001f,mp4a.40.2",RESOLUTION=960x540" 
REM set link="https://dai.google.com/linear/hls/event/Sid4xiTQTkCT1SLu6rjUSQ/master.m3u8"
set chan_name="CBSN" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_10
set link="http://tvemsnbc-lh.akamaihd.net/i/nbcmsnbc_1@122532/master.m3u8"
set chan_name="MSNBC USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_11
set link="https://liveproduseast.akamaized.net/us/Channel-USTV-AWS-virginia-1/Source-USTV-1000-1_live.m3u8"
set chan_name="Bloomberg USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_12
set link="https://secure-streams.akamaized.net/rt-usa/index1600.m3u8"
set chan_name="RT USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_13
set link="https://api.new.livestream.com/accounts/7082210/events/7115682/live.m3u8"
set chan_name="CGTN USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_14
set link="https://content.jwplatform.com/players/hBmO7M6k"
set chan_name="NEWSY USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_15
set link="http://abclive.abcnews.com/i/abc_live4@136330/index_2500_av-b.m3u8?sd=10&rebase=on"
set chan_name="ABC USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_16
set link="http://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_720p_av-p.m3u8?sd=10&rebase=on"
set chan_name="TRT WORLD" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_17
set link=""http://www.dailymotion.com/video/x29atae"
set chan_name="i24 News Israel" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_18
set link="https://players.brightcove.net/665003303001/SkrZHHcl_default/index.html?videoId=4865263685001"
set chan_name="Al Jazzera" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_19
set link="http://107.189.40.49:1935/live/ptven/playlist.m3u8"
set chan_name="PRESS TV IRAN" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_20
set link="http://livestream.com/accounts/11965022/events/4086327/player"
set chan_name="INDIA TODAY" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_21
set link="http://newsx.live-s.cdn.bitgravity.com/cdn-live/_definst_/newsx/live/newsxnew.smil/playlist.m3u8"
set chan_name="NEWSX INDIA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_22
set link="http://ndtv.live-s.cdn.bitgravity.com/cdn-live-b7/_definst_/ndtv/live/ndtv247live.smil/playlist.m3u8" 
set chan_name="NDTV IN" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_23
set link="https://live.cgtn.com/manifest.m3u8"
set chan_name="CGTN Beijing" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_24
set link="https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index_1180.m3u8"
set chan_name="NHK WORLD" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_25
set link="rtmp://54.251.134.121/live/15273.sdp"
set chan_name="CNN PHILLIPEANS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_26
set link="https://abcnews24mha-lh.akamaihd.net/i/abcnews24nospe_1@70019/index_750_av-p.m3u8?sd=10&rebase=on" 
set chan_name="ABC NEWS Australia" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_27
set link="http://46.4.25.213:1935/live-ann7/ann7.smil/chunklist_w799375146_b550000.m3u8"
set chan_name="ANN7 ZA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_28
set link="http://contributionstreams.ashttp9.visionip.tv/live/visiontv-contributionstreams-arise-tv-hsslive-25f-16x9-SD/chunklist.m3u8"
set chan_name="ARISE NEWS NIGERIA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_29
set link=http://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/master.m3u8
REM set link=https://www.filmon.com/tv/voa-english
set chan_name="VOA"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_30
set link="https://secure-streams.akamaized.net/rt-doc/index800.m3u8"
set chan_name="RT DOCUMENTARY" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_31
set link="https://live.cgtn.com/cctv-d.m3u8" 
set chan_name="CGTN DOCUMENTARY" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_32
set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master.m3u8
set chan_name="BYUTV" ;;
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_33
set link="https://imavex2.mmdlive.lldns.net/imavex2/0b2f65006e0743bd9701cce1339a3b9f/manifest.m3u8"
set chan_name="BIZ TV" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_34
set link="http://cdnapi.kaltura.com/p/2216081/sp/221608100/playManifest/entryId/1_f19eeulz/format/applehttp/protocol/http/uiConfId/28428751/a.m3u8"
set chan_name="NEWS MAX" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_35
set link="https://edge.free-speech-tv-live.top.comcast.net/out/u/fstv.m3u8"
set chan_name="FREE SPEECH TV" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_36
set link="http://infowarslive-lh.akamaihd.net/i/infowarslivestream_1@353459/master.m3u8" 
set chan_name="INFOWARS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_37
set link="https://www.twitch.tv/twit" 
set chan_name="TWIT" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_38
set link="http://jblive.videocdn.scaleengine.net/jb-live/play/jblive.stream/playlist.m3u8"  
set chan_name="JUPITER BROADCASTING" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_39
set link="http://cspan1-lh.akamaihd.net/i/cspan1_1@304727/index_1000_av-p.m3u8?sd=10&rebase=on" 
set chan_name="CSPAN 1" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_40
set link="http://players.brightcove.net/1242843915001/SJ3Tc5kb_default/index.html?videoId=5027924874001"
set chan_name="CPAC 1 CANADA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

REM ################################ FRENCH #########################################

:CHAN_41
set link="http://f24hls-i.akamaihd.net/hls/live/221192-b/F24_FR_LO_HLS/master.m3u8"   
set chan_name="FRANCE 24 FRANCAIS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_42
set link="https://secure-streams.akamaized.net/rt-fr/index800.m3u8"   
set chan_name="RT FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_43
set link="http://csm-e.dai.bfmtv.com/csm/live/109797390.m3u8"   
set chan_name="BFM TV FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_44
set link="http://v3plusinfo247hls-i.akamaihd.net/hls/live/218877/v3plusinfo247hls/v3plusinfo247hls_1_1.m3u8"   
set chan_name="TV5 INFO BELGIUM" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_45
set link="https://live.cgtn.com/cctv-f.m3u8"   
set chan_name="CGTN FRANCAIS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_46
set link="http://csm-e.dai.bfmtv.com/csm/live/109797390.m3u8"   
set chan_name="BFM TV PARIS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_47
set link="http://stream.canalsavoir.tv/livestream/stream.m3u8"   
set chan_name="CANAL SAVOIR QUEBEC" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_48
set link="http://diffusionm4.assnat.qc.ca/canal9/250.sdp/playlist.m3u8"   
set chan_name="ASSEMBLEE NATIONAL QUEBEC" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_49
set link="http://ec.playmedia.fr/gong-base/live/playlist.m3u8"   
set chan_name="GONG CINEMA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_50
set link="http://51.254.215.79/appflux/gongmax/GONGMAX/gongmax_1280/chunks.m3u8"   
set chan_name="GONG MAX" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_51
set link="http://vm109.imust.org:1935/live/livestream/HasBahCa.m3u8"   
set chan_name="ANTENNA CENTER FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_52
set link="rtmp://str81.creacast.com:80/iltv/high"   
set chan_name="ILTV FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_53
goto MENU_LIST


REM ################################# SPANISH ######################################

:CHAN_81
set link="https://secure-streams.akamaized.net/rt-esp/index800.m3u8"   
set chan_name="RT ESPANOL" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_82
set link="http://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/master.m3u8"   
set chan_name="DW ESPANOL" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_83
set link="https://live.cgtn.com/cctv-e.m3u8"   
set chan_name="CGTN ESPANOL" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_84
set link="http://107.189.40.49:1935/live/hispantv/playlist.m3u8"   
set chan_name="HISPAN TV" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_85
set link="http://a3live-lh.akamaihd.net/i/antena3_1@35248/index_2_av-b.m3u8?"   
set chan_name="LE ZAP ES" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_86
set link="http://unlimited1-us.dps.live/cnn/cnn.smil/cnn/livestream1/playlist.m3u8"   
set chan_name="CNN CHILE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_87
goto MENU_LIST

REM ##################################################################################


:PLAY_CASE
TITLE %PRODUCT% %chan_name%

ECHO "Playing %chan_name% on Channel %chan_num%"
mpv --fs --resume-playback=no --loop-playlist=inf %link%

ECHO You were watching %chan_name% on Channel %chan_num%

goto MENU_LIST


:END_OF_PROGRAM
ECHO TYPE WINSTREAM TO START AGAIN: BYE FOR NOW!
REM ## SET THE TITLE
REM ## CHANGE PROMPT
PROMPT $P$G
TITLE CMD %DATE%
REM ## CHANGE THE COLOUR BACK
COLOR 07

ENDLOCAL

REM ####################################   END OF PROGRAM #####################################################