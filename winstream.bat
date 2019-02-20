@ECHO OFF

REM ######################################################
REM ## FILENAME: WINSTREAM.BAT
REM ## TITLE: WINSTREAM
REM ## AUTHOR: Endwall
REM ## Creation Date: January 27, 2018
REM ## Version: 0.05
REM ## Revision Date: February 19, 2019
REM ##
REM ## Description:  Stream internet video channels with mpv and youtube-dl
REM ##
REM ##
REM ## Dependencies: mpv, youtube-dl, 
REM ##
REM ######################################################

REM #################################################################################################################################################################
REM # Instructions:  
REM # make a directory C:\Users\%USERNAME%\bin and copy this file there, add this to the %PATH% by typing the following:
REM # SET PATH=C:\Users\%USERNAME%\bin;%PATH%
REM #  
REM # Download mpv.exe from www.mpv.io and also download youtube-dl.exe from the build links, then unpack the 7zip archive with mpv.exe and the
REM # dll files into C:\Users\%USERNAME%\bin  also make sure that youtube-dl.exe and mpv.exe are located in the bin directory
REM # now type winstream in cmd to call the file: 
REM # C:\Users\%USERNNAME%>  winstream
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


SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
SETLOCAL

SET PRODUCT=WINSTREAM
SET BRANCH="WINDOWS NT 6.x"
SET VERSION=0.05
SET REV_DATE="19/02/2019"
SET MODE="VIDEO"

REM ## SET THE TITLE
TITLE ENDSTREAM %DATE%
REM ## CHANGE THE COLOUR
COLOR 1e
REM cOLOR 07
REM cOLOR 07

REM ## Display the current date and time
REM DATE /T
REM TIME /T

set prior_num=1
set chan_num=1
set menu_num=0

:MENU_0
CLS
ECHO "============================================ %PRODUCT% %VERSION% ==========================================================================="
ECHO "||=========ENGLISH=========||======ENGLISH II=======||=======FRENCH=======||=======SPANISH======||========OTHER======||======EXTRA=========="
ECHO "|| 1) SKY NEWS             ||41)BBC PARLIAMENT      ||81) FRANCE 24 FR    ||121)RT ESPANOL      ||161)VAR AZUR       ||201)Amouranth      ||"
ECHO "|| 2) RT UK                ||42)ORIECTHAS IE        ||82) BFM TV FR       ||122)DW ESPANOL      ||162)MontBlanc 2    ||202)Geek and Sundry||"
ECHO "|| 3) RTE NEWS IE          ||43)Made in Leeds       ||83) BMF BIZ FR      ||123)FRANCE 24 ES    ||163)Grenoble       ||203)Robot Chicken  ||" 
ECHO "|| 4) France 24 Eng        ||44)Made in Tyne        ||84) RT FRANCE       ||124)CGTN ES         ||164)RTL 2          ||204)Retro TV       ||" 
ECHO "|| 5) DW DE                ||45)Made in Cardiff     ||85) FranceINFO FR   ||125)HISPAN TV       ||165)OUI FM         ||205)Con TV         ||"
ECHO "|| 6) RT RU                ||46)QVC USA             ||86) TV5 Monde Info  ||126)CNN CHILE       ||166)D24TV          ||206)Shout Factory  ||" 
ECHO "|| 7) CBSN USA             ||47)TSC USA             ||87) CGTN FRANCAIS   ||127)TeleSUR VE      ||167)8 Monte Blanc  ||207)11 Sports Next ||" 
ECHO "|| 8) Bloomberg USA        ||48)QVC 2 USA           ||88)AFRICA NEWS      ||128)----------      ||168)-------------  ||208)EWTN English   ||" 
ECHO "|| 9) RT USA               ||49)QVC Beauty          ||89)TVA CA           ||129)----------      ||169)-------------  ||209)EWTN Ireland   ||" 
ECHO "|| 10) ABC USA             ||50)QVC Raw             ||90)RDI ICI CA       ||130)----------      ||170)-------------  ||210)EWTN Africa    ||" 
ECHO "|| 11) TRT WORLD TK        ||51)FiOS1 Long Island   ||91)RTS UN           ||131)----------      ||171)WDR Germany    ||211)EWTN Asia      ||" 
ECHO "|| 12) Al Jazzera          ||52)TVW Washington TV   ||92)FRANCE 2         ||132)----------      ||172)DW DE          ||212)Salt and Light ||" 
ECHO "|| 13) PRESSTV IR          ||53)DCN Columbia        ||93)FRANCE 3         ||133)--------------  ||173)ZDF InfoKanal  ||213)Catholic TV    ||" 
ECHO "|| 14) NEWSX INDIA         ||54)DCC Columbia        ||94)ARTE Francais    ||134)--------------  ||174)QVC DE         ||214)EWTN Espanol   ||" 
ECHO "|| 15) NDTV IN             ||55)DCKN Columbia       ||95)France O         ||135)--------------  ||175)ADR Alpha DE   ||215)EWTN Deutsche  ||" 
ECHO "|| 16) CGTN CN             ||56)Southeastern        ||96)Azur TV FR       ||136)--------------  ||176)DW + DE        ||216)KTO Catholique ||" 
ECHO "|| 17) NHK JP              ||57)Texas State         ||97)BFM TV PARIS     ||137)--------------  ||177)W24 AT         ||217)CBN            ||"  
ECHO "|| 18) News Asia SG        ||58)BronxNET NY         ||98)Alsace 20 Fr     ||138)--------------  ||178)Tirol AT       ||218)CBN News       ||"
ECHO "|| 19) ABC AU              ||59)CNN Live USA        ||99)RTS DEUX         ||139)-------------   ||179)SRF CH         ||219)IHOP           ||" 
ECHO "|| 20) ARISE NG            ||60)CNN HLN USA         ||100)LCP FR          ||140)-------------   ||180)-------------- ||220)TopNews Albania||" 
ECHO "|| 21) AFRICA NEWS         ||61)FOX NEWS TALK       ||101)Public Senate   ||141)-------------   ||181)AT5 NL         ||221)RT Arabic      ||" 
ECHO "|| 22) TeleSUR ENG VE      ||62)CNBC USA            ||102)CPAC 1 FR CA    ||142)-------------   ||182)Euronews RU    ||222)France24 Arab  ||" 
ECHO "|| 23) NEWSMAX USA         ||63)CBC News Network    ||103)ASSEMBLE QUEBEC ||143)-------------   ||183)POCCNR 24 RU   ||223)BBC Arabic     ||" 
ECHO "|| 24) FREESPEECH          ||64)ET Live             ||104)CANAL SAVOIR    ||144)-------------   ||184)RBC RU         ||224)DW Arabic      ||"
ECHO "|| 25) INFOWARS            ||65)ET India            ||105)GONG CINEMA     ||145)-------------   ||185)CCTV RU        ||225)CCTV Arabic    ||"
ECHO "|| 26) UN WEB TV           ||66)NEWSY USA           ||106)GONG MAX        ||146)-------------   ||186)Vesti FM RU    ||226)AlJazeera Arab ||" 
ECHO "|| 27) WGN 9 Chicago       ||67)CNN PH              ||107)BX1 BE          ||147)-------------   ||187)CurrentTimeVOA ||227)AlJazeera Docs ||" 
ECHO "|| 28) News 12 Brooklyn    ||68)TWIT                ||108)ANTENNA CENTER  ||148)-------------   ||188)RTR Planeta RU ||228)AlJazeera Mubas||" 
ECHO "|| 29) News 12 Long Island ||69)JUPITER BROAD       ||109)IL TV FRANCE    ||149)-------------   ||189) 1 TV RU       ||229)KSA1           ||" 
ECHO "|| 30) FiOS1 Hudson Valley ||70)Music Choice Play   ||110)FranceInfo Radio||150)-------------   ||190)Music BOX RU   ||230)KSA Sports     ||" 
ECHO "|| 31) FiOS1 New Jersey    ||71)M20 Music           ||111)Europe 1        ||151)-------------   ||191)MOSCKVA 24 RU  ||231)India TV IN    ||" 
ECHO "|| 32) Weather Nation      ||72)Radio Monte Carlo   ||112)RTL Radio       ||152)-------------   ||192)POCCNR 1 HD    ||232)-------------  ||" 
ECHO "|| 33) Weather Channel     ||73)Hit Music TV        ||113)RMC Talk        ||153)-------------   ||193)TV Publica MD  ||233)-------------  ||" 
ECHO "|| 34) VOA USA             ||74)CMC California      ||114)MB TV           ||154)-------------   ||194)UA TV          ||234)-------------  ||" 
ECHO "|| 35) RT DOCUMENT         ||75)NRJ Music           ||115)Generations TV  ||155)-------------   ||195)SKY 24 IT      ||235)-------------  ||"
ECHO "|| 36) CGTN DOCUMENT       ||76)Adult Swim          ||116)Tv Vendée       ||156)-------------   ||196)RSI LA CH      ||236)-------------  ||" 
ECHO "|| 37) BYUTV USA           ||77)Fashion Europe      ||117)OUATCH TV       ||157)-------------   ||197)Telecolor IT   ||237)-------------  ||"
ECHO "|| 38) CBC CA              ||78)Fashion 1 Spain     ||118)Telesud         ||158)-------------   ||198)Star Lamia GR  ||238)-------------  ||"
ECHO "|| 39) CPAC 1 CA           ||79)Red Bull TV         ||119)TV7 Bordeaux    ||159)-------------   ||199)Action 24 GR   ||239)-------------  ||"
ECHO "|| 40)BBC NEWS UK          ||80)MLB Network         ||120)VL              ||160)-------------   ||200)TRT Haber      ||240)-------------  ||" 
ECHO "=============================================================================================================================================="
PROMPT $LWINSTREAM$G$D$T$$
set /p chan_num="Select a Channel Number, press + or ] to increment, - or [ to decrement,m for main menu, n for next menu, or q to quit:"

echo %chan_num%
GOTO INPUT_SELECT

:MENU_1
CLS
ECHO "============================================ %PRODUCT% %VERSION% ==========================================================================="
ECHO "||=========================||=====================||===================||====================||===================||====================="
ECHO "|| 241) --------------      ||281)--------------  ||321)-------------- ||361)--------------  ||401)-------------- ||441)-------------- ||"
ECHO "|| 242) --------------      ||282)--------------  ||322)-------------- ||362)--------------  ||402)-------------- ||442)-------------- ||"
ECHO "|| 243) --------------      ||283)--------------  ||323)-------------- ||363)--------------  ||403)-------------- ||443)-------------- ||" 
ECHO "|| 244) --------------      ||284)--------------  ||324)-------------- ||364)--------------  ||404)-------------- ||444)-------------- ||" 
ECHO "|| 245) --------------      ||285)--------------  ||325)-------------- ||365)--------------  ||405)-------------- ||445)-------------- ||"
ECHO "|| 246) --------------      ||286)--------------  ||326)-------------- ||366)--------------  ||406)-------------- ||446)-------------- ||" 
ECHO "|| 247) --------------      ||287)--------------  ||327)-------------- ||367)--------------  ||407)-------------- ||447)-------------- ||" 
ECHO "|| 248) --------------      ||288)--------------  ||328)-------------- ||368)--------------  ||408)-------------- ||448)-------------- ||" 
ECHO "|| 249) --------------      ||289)--------------  ||329)-------------- ||369)--------------  ||409)-------------  ||449)-------------- ||" 
ECHO "|| 250) --------------      ||290)--------------  ||330)-------------- ||370)--------------  ||410)-------------  ||450)-------------- ||" 
ECHO "|| 251) --------------      ||291)--------------  ||331)-------------- ||371)--------------  ||411)-------------- ||451)-------------- ||" 
ECHO "|| 252) --------------      ||292)--------------  ||332)-------------- ||372)--------------  ||412)-------------- ||452)-------------- ||" 
ECHO "|| 253) --------------      ||293)--------------  ||333)-------------- ||373)--------------  ||413)-------------- ||453)-------------- ||" 
ECHO "|| 254) --------------      ||294)--------------  ||334)-------------- ||374)--------------  ||414)-------------- ||454)-------------- ||" 
ECHO "|| 255) --------------      ||295)--------------  ||335)-------------- ||375)--------------  ||415)-------------- ||455)-------------- ||" 
ECHO "|| 256) --------------      ||296)--------------  ||336)-------------- ||376)--------------  ||416)-------------- ||456)-------------- ||" 
ECHO "|| 257) --------------      ||297)--------------  ||337)-------------- ||377)--------------  ||417)-------------- ||457)-------------- ||"  
ECHO "|| 258) --------------      ||298)--------------  ||338)-------------- ||378)--------------  ||418)-------------- ||458)-------------- ||"
ECHO "|| 259) --------------      ||299)--------------  ||339)-------------- ||379)-------------   ||419)-------------- ||459)-------------- ||" 
ECHO "|| 260) --------------      ||300)--------------  ||340)-------------- ||380)-------------   ||420)-------------- ||460)-------------- ||" 
ECHO "|| 261) --------------      ||301)--------------  ||341)-------------- ||381)-------------   ||421)-------------- ||461)-------------- ||" 
ECHO "|| 262) --------------      ||302)--------------  ||342)-------------- ||382)-------------   ||422)-------------- ||462)-------------- ||" 
ECHO "|| 263) --------------      ||303)--------------  ||343)-------------- ||383)-------------   ||423)-------------- ||463)-------------- ||" 
ECHO "|| 264) --------------      ||304)--------------  ||344)-------------- ||384)-------------   ||424)-------------- ||464)-------------- ||"
ECHO "|| 265) --------------      ||305)--------------  ||345)-------------- ||385)-------------   ||425)-------------- ||465)-------------- ||"
ECHO "|| 266) --------------      ||306)--------------  ||346)-------------- ||386)-------------   ||426)-------------- ||466)-------------- ||" 
ECHO "|| 267) --------------      ||307)--------------  ||347)-------------- ||387)-------------   ||427)-------------- ||467)-------------- ||" 
ECHO "|| 268) --------------      ||308)--------------  ||348)-------------- ||388)-------------   ||428)-------------- ||468)-------------- ||" 
ECHO "|| 269) --------------      ||309)--------------  ||349)-------------- ||389)-------------   ||429)-------------- ||469)-------------- ||" 
ECHO "|| 270) --------------      ||310)--------------  ||350)-------------- ||390)-------------   ||430)-------------- ||470)-------------- ||" 
ECHO "|| 271) --------------      ||311)--------------  ||351)-------------- ||391)-------------   ||431)-------------- ||471)-------------- ||" 
ECHO "|| 272) --------------      ||312)--------------  ||352)-------------- ||392)-------------   ||432)-------------- ||472)-------------  ||" 
ECHO "|| 273) --------------      ||313)--------------  ||353)-------------- ||393)-------------   ||433)-------------- ||473)-------------  ||" 
ECHO "|| 274) --------------      ||314)--------------  ||354)-------------- ||394)-------------   ||434)-------------- ||474)-------------  ||" 
ECHO "|| 275) --------------      ||315)--------------  ||355)-------------- ||395)-------------   ||435)-------------- ||475)-------------  ||"
ECHO "|| 276) --------------      ||316)--------------  ||356)-------------- ||396)-------------   ||436)-------------- ||476)-------------  ||" 
ECHO "|| 277) --------------      ||317)--------------  ||357)-------------- ||397)-------------   ||437)-------------- ||477)-------------  ||"
ECHO "|| 278) --------------      ||318)--------------  ||358)-------------- ||398)-------------   ||438)-------------- ||478)-------------  ||"
ECHO "|| 279) --------------      ||319)--------------  ||359)-------------- ||399)-------------   ||439)-------------- ||479)-------------  ||"
ECHO "|| 280)--------------       ||320)--------------  ||360)-------------- ||400)-------------   ||440)-------------- ||480)-------------  ||" 
ECHO "=============================================================================================================================================="
PROMPT $LWINSTREAM$G$D$T$$
set /p chan_num="Select a Channel Number, press + or ] to increment, - or [ to decrement,m for main menu, n for next menu,or q to quit:"

echo %chan_num%
GOTO INPUT_SELECT

:MENU_2
CLS
ECHO "============================================ %PRODUCT% %VERSION% ==========================================================================="
ECHO "||=========================||=====================||===================||====================||===================||====================="
ECHO "|| 481) --------------      ||521)--------------  ||561)-------------- ||601)--------------  ||641)-------------- ||681)-------------- ||"
ECHO "|| 482) --------------      ||522)--------------  ||562)-------------- ||602)--------------  ||642)-------------- ||682)-------------- ||"
ECHO "|| 483) --------------      ||523)--------------  ||563)-------------- ||603)--------------  ||643)-------------- ||683)-------------- ||" 
ECHO "|| 484) --------------      ||524)--------------  ||564)-------------- ||604)--------------  ||644)-------------- ||684)-------------- ||" 
ECHO "|| 485) --------------      ||525)--------------  ||565)-------------- ||605)--------------  ||645)-------------- ||685)-------------- ||"
ECHO "|| 486) --------------      ||526)--------------  ||566)-------------- ||606)--------------  ||646)-------------- ||686)-------------- ||" 
ECHO "|| 487) --------------      ||527)--------------  ||567)-------------- ||607)--------------  ||647)-------------- ||687)-------------- ||" 
ECHO "|| 488) --------------      ||528)--------------  ||568)-------------- ||608)--------------  ||648)-------------- ||688)-------------- ||" 
ECHO "|| 489) --------------      ||529)--------------  ||569)-------------- ||609)--------------  ||649)-------------  ||689)-------------- ||" 
ECHO "|| 490) --------------      ||530)--------------  ||570)-------------- ||610)--------------  ||650)-------------  ||690)-------------- ||" 
ECHO "|| 491) --------------      ||531)--------------  ||571)-------------- ||611)--------------  ||651)-------------- ||691)-------------- ||" 
ECHO "|| 492) --------------      ||532)--------------  ||572)-------------- ||612)--------------  ||652)-------------- ||692)-------------- ||" 
ECHO "|| 493) --------------      ||533)--------------  ||573)-------------- ||613)--------------  ||653)-------------- ||693)-------------- ||" 
ECHO "|| 494) --------------      ||534)--------------  ||574)-------------- ||614)--------------  ||654)-------------- ||694)-------------- ||" 
ECHO "|| 495) --------------      ||535)--------------  ||575)-------------- ||615)--------------  ||655)-------------- ||695)-------------- ||" 
ECHO "|| 496) --------------      ||536)--------------  ||576)-------------- ||616)--------------  ||656)-------------- ||696)-------------- ||" 
ECHO "|| 497) --------------      ||537)--------------  ||577)-------------- ||617)--------------  ||657)-------------- ||697)-------------- ||"  
ECHO "|| 498) --------------      ||538)--------------  ||578)-------------- ||618)--------------  ||658)-------------- ||698)-------------- ||"
ECHO "|| 499) --------------      ||539)--------------  ||579)-------------- ||619)-------------   ||659)-------------- ||699)-------------- ||" 
ECHO "|| 500) --------------      ||540)--------------  ||580)-------------- ||620)-------------   ||660)-------------- ||700)-------------- ||" 
ECHO "|| 501) --------------      ||541)--------------  ||581)-------------- ||621)-------------   ||661)-------------- ||701)-------------- ||" 
ECHO "|| 502) --------------      ||542)--------------  ||582)-------------- ||622)-------------   ||662)-------------- ||702)-------------- ||" 
ECHO "|| 503) --------------      ||543)--------------  ||583)-------------- ||623)-------------   ||663)-------------- ||703)-------------- ||" 
ECHO "|| 504) --------------      ||544)--------------  ||584)-------------- ||624)-------------   ||664)-------------- ||704)-------------- ||"
ECHO "|| 505) --------------      ||545)--------------  ||585)-------------- ||625)-------------   ||665)-------------- ||705)-------------- ||"
ECHO "|| 506) --------------      ||546)--------------  ||586)-------------- ||626)-------------   ||666)-------------- ||706)-------------- ||" 
ECHO "|| 507) --------------      ||547)--------------  ||587)-------------- ||627)-------------   ||667)-------------- ||707)-------------- ||" 
ECHO "|| 508) --------------      ||548)--------------  ||588)-------------- ||628)-------------   ||668)-------------- ||708)-------------- ||" 
ECHO "|| 509) --------------      ||549)--------------  ||589)-------------- ||629)-------------   ||669)-------------- ||709)-------------- ||" 
ECHO "|| 510) --------------      ||550)--------------  ||590)-------------- ||630)-------------   ||660)-------------- ||710)-------------- ||" 
ECHO "|| 511) --------------      ||551)--------------  ||591)-------------- ||631)-------------   ||671)-------------- ||711)-------------- ||" 
ECHO "|| 512) --------------      ||552)--------------  ||592)-------------- ||632)-------------   ||672)-------------- ||712)-------------  ||" 
ECHO "|| 513) --------------      ||553)--------------  ||593)-------------- ||633)-------------   ||673)-------------- ||713)-------------  ||" 
ECHO "|| 514) --------------      ||554)--------------  ||594)-------------- ||634)-------------   ||674)-------------- ||714)-------------  ||" 
ECHO "|| 515) --------------      ||555)--------------  ||595)-------------- ||635)-------------   ||675)-------------- ||715)-------------  ||"
ECHO "|| 516) --------------      ||556)--------------  ||596)-------------- ||636)-------------   ||676)-------------- ||716)-------------  ||" 
ECHO "|| 517) --------------      ||557)--------------  ||597)-------------- ||637)-------------   ||677)-------------- ||717)-------------  ||"
ECHO "|| 518) --------------      ||558)--------------  ||598)-------------- ||638)-------------   ||678)-------------- ||718)-------------  ||"
ECHO "|| 519) --------------      ||559)--------------  ||599)-------------- ||639)-------------   ||679)-------------- ||719)-------------  ||"
ECHO "|| 520)--------------       ||560)--------------  ||600)-------------- ||640)-------------   ||680)-------------- ||720)-------------  ||" 
ECHO "=============================================================================================================================================="
PROMPT $LWINSTREAM$G$D$T$$
set /p chan_num="Select a Channel Number, press + or ] to increment, - or [ to decrement, m for main menu, n for next menu, or q to quit:"

echo %chan_num%
GOTO INPUT_SELECT

:INPUT_SELECT
IF "%chan_num%"=="1" ( 
set /A chan_num="%chan_num%"
GOTO CHAN_1 
) ELSE IF "%chan_num%"=="q" ( 
GOTO END_OF_PROGRAM 
) ELSE IF "%chan_num%"=="+" ( 
set /A chan_num=!prior_num!+1 
GOTO CHAN_!chan_num!
) ELSE IF "%chan_num%"=="n" ( 
chan_num=!prior_num%!
GOTO MENU_SELECT
) ELSE IF "%chan_num%"=="m" ( 
chan_num=!prior_num!
GOTO MENU_SELECT
) ELSE IF "%chan_num%"=="-" ( 
set /A chan_num=!prior_num!-1
GOTO CHAN_!chan_num!
) ELSE IF "%chan_num%"=="]" ( 
set /A chan_num=!prior_num!+1 
GOTO CHAN_!chan_num!
) ELSE IF "%chan_num%"=="[" ( 
set /A chan_num=!prior_num!-1
GOTO CHAN_!chan_num!  
) ELSE IF "%chan_num%" LSS "1" ( 
set /A chan_num="1"
GOTO CHAN_!chan_num!
) ELSE IF "%chan_num%" GTR "1" ( 
set /A chan_num="%chan_num%"
GOTO CHAN_!chan_num! 
) ELSE IF "%chan_num%"=="--audio" ( 
set MODE="AUDIO"
GOTO MENU_SELECT
) ELSE IF "%chan_num%"=="--no-video" ( 
set MODE="AUDIO"
GOTO MENU_!menu_num!
) ELSE IF "%chan_num%"=="--no-audio" ( 
set MODE="NOAUDIO"
GOTO MENU_!menu_num!
) ELSE IF "%chan_num%"=="--video" ( 
set MODE="VIDEO"
GOTO MENU_!menu_num!
) ELSE (
GOTO MENU_!menu_num!
)

:MENU_SELECT
IF "%chan_num%"=="m" ( 
set /A menu_num=0
GOTO MENU_!menu_num!
) ELSE IF "%chan_num%"=="n" (
  IF "%menu_num%"=="2" ( 
  set /A menu_num=0
  )ELSE (
  set /A menu_num=!menu_num!+1
  )
GOTO MENU_!menu_num!
ELSE (
GOTO MENU_!menu_num!
)


REM #############################  CHANNELS ########################################

:CHAN_0
REM set link="http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/04.m3u8"
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/07.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/06.m3u8
set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/05.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/04.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/03.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/02.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/01.m3u8

set chan_name="SKY NEWS LONDON" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_1
REM set link="http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/04.m3u8"
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/07.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/06.m3u8
set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/05.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/04.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/03.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/02.m3u8
REM set link=http://skydvn-nowtv-atv-prod.skydvn.com/atv/skynews/1404/live/01.m3u8
set chan_name="SKY NEWS LONDON" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_2
set link="https://rt-uk.secure.footprint.net/1106-inadv-qidx-1k_v5.m3u8"
REM set link="https://rt-uk.secure.footprint.net/1106-inadv-qidx-2k_v5.m3u8"
REM set link="https://rt-uk.secure.footprint.net/1106-inadv-qidx-3k_v5.m3u8"
REM set link="https://rt-uk.secure.footprint.net/1106-inadv-qidx-4k_v5.m3u8"
REM set link="https://rt-uk.secure.footprint.net/1106-inadv-qidx-5k_v5.m3u8"
REM ###AUDIO
REM set link="https://rt-uk.secure.footprint.net/1106-inadv-qidx-0k_v5.m3u8"
set chan_name="RT UK" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_3
set link="http://wmsrtsp1.rte.ie/live/android.sdp/playlist.m3u8"
set chan_name='RTE News Now Ireland'
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_4
REM set link=http://f24hls-i.akamaihd.net/hls/live/221193-b/F24_EN_LO_HLS/master.m3u8
set link=http://f24hls-i.akamaihd.net/hls/live/221193-b/F24_EN_LO_HLS/master_900.m3u8
set chan_name="France 24"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_5
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_5_av-p.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_5_av-b.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_4_av-p.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_4_av-b.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_3_av-p.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_3_av-b.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_2_av-p.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_2_av-b.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2
set link="https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_1_av-b.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_5_a-p.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link=https://dwstream4-lh.akamaihd.net/i/dwstream4_live@131329/index_5_a-b.m3u8?sd=10&rebase=on
REM set link= https://dwstream1-lh.akamaihd.net/i/dwstream1_live@120422/master.m3u8

set chan_name="Deutsche Welle English DE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_6
set link="https://rt-news.secure.footprint.net/1103-inadv-qidx-1k_v5.m3u8"
REM set link="https://rt-news.secure.footprint.net/1103-inadv-qidx-2k_v5.m3u8"
REM set link="https://rt-news.secure.footprint.net/1103-inadv-qidx-3k_v5.m3u8"
REM set link="https://rt-news.secure.footprint.net/1103-inadv-qidx-4k_v5.m3u8"
REM set link="https://rt-news.secure.footprint.net/1103-inadv-qidx-5k_v5.m3u8"
REM #### AUDIO
REM set link="https://rt-news.secure.footprint.net/1103-inadv-qidx-0k_v5.m3u8"

set chan_name="RT RUSSIA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_7
REM set link="https://dai.google.com/linear/hls/p/event/Sid4xiTQTkCT1SLu6rjUSQ/stream/e674cda6-3052-4a2a-bb05-8db73f04343:CBF/variant/4d0b0dfc2918a3cc7f47a0a730929d96/bandwidth/840400.m3u8"
REM set link="https://dai.google.com/linear/hls/event/Sid4xiTQTkCT1SLu6rjUSQ/master.m3u8?iu=/8264/vaw-can/mobile_web/cbsnews_mobile"
REM set link="https://dai.google.com/linear/hls/event/Sid4xiTQTkCT1SLu6rjUSQ/master.m3u8?iu=/8264/vaw-can/mobile_web/cbsnews_mobile"
REM set link="https://dai.google.com/linear/hls/event/Sid4xiTQTkCT1SLu6rjUSQ/master.m3u8?#EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1390400,CODECS="avc1.4d001f,mp4a.40.2",RESOLUTION=960x540" 
set link="https://dai.google.com/linear/hls/event/Sid4xiTQTkCT1SLu6rjUSQ/master.m3u8"
set chan_name="CBSN" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_8
set link="https://liveproduseast.akamaized.net/us/Channel-USTV-AWS-virginia-1/Source-USTV-1000-1_live.m3u8"
set chan_name="Bloomberg USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_9
set link="https://rt-usa.secure.footprint.net/1105-inadv-qidx-1k_v5.m3u8"
REM set link="https://rt-usa.secure.footprint.net/1105-inadv-qidx-2k_v5.m3u8"
REM set link="https://rt-usa.secure.footprint.net/1105-inadv-qidx-3k_v5.m3u8"
REM set link="https://rt-usa.secure.footprint.net/1105-inadv-qidx-4k_v5.m3u8"
REM set link="https://rt-usa.secure.footprint.net/1105-inadv-qidx-5k_v5.m3u8"
REM ###AUDIO
REM set link="https://rt-usa.secure.footprint.net/1105-inadv-qidx-0k_v5.m3u8"
set chan_name="RT USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_10
REM set link="http://abclive.abcnews.com/i/abc_live4@136330/index_2500_av-b.m3u8?sd=10&rebase=on"
REM set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/master.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=400000,RESOLUTION=320x180,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_400_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=400000,RESOLUTION=320x180,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_400_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=800000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_800_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=800000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_800_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1200000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_1200_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1200000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_1200_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2499000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_2500_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2499000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_2500_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=4000000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_4000_av-p.m3u8?sd=10&rebase=on"
#EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=4000000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://abclive2-lh.akamaihd.net/i/abc_live11@423404/index_4000_av-b.m3u8?sd=10&rebase=on"

set chan_name="ABC USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_11
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_720p_av-p.m3u8?sd=10&rebase=on"
REM set link=https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=664000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_360p_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=594000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_360p_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=818000,RESOLUTION=852x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_480p_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=725000,RESOLUTION=852x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_480p_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=846000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_720p_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=664000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_360p_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=818000,RESOLUTION=852x480,CODECS="avc1.77.30, mp4a.40.2"
REM link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_480p_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1928000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_720p_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=3128000,RESOLUTION=1920x1080,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTWORLD_1@321783/index_1080p_av-p.m3u8?sd=10&rebase=on"

set chan_name="TRT WORLD" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_12
REM set link="https://players.brightcove.net/665003303001/SkrZHHcl_default/index.html?videoId=4865263685001"
REM set link="https://players.brightcove.net/665003303001/SkrZHHcl_default/index.html?videoId=4865263685001"
set link="https://english.streaming.aljazeera.net/aljazeera/english2/index4147.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english2/index2073.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english2/index1296.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english2/index783.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english2/index576.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english2/index255.m3u8"
REM #########################
REM set link="https://english.streaming.aljazeera.net/aljazeera/english1/index4147.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english1/index2073.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english1/index1296.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english1/index783.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english1/index576.m3u8"
REM set link="https://english.streaming.aljazeera.net/aljazeera/english1/index255.m3u8"
REM ##############################
REM set link="http://aljazeera-eng-apple-live.adaptive.level3.net/apple/aljazeera/english/160audio.m3u8"
REM set link="http://aljazeera-eng-apple-live.adaptive.level3.net/apple/aljazeera/english/800.m3u8"

set chan_name="Al Jazzera" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_13
REM set link=https://www.filmon.com/tv/press-tv
set link="https://5a61de8ed719d.streamlock.net/liveprs/smil:liveprs.smil/chunklist_w92271025_b594100_slen.m3u8"
#EXT-X-STREAM-INF:BANDWIDTH=1380059,CODECS="avc1.66.40,mp4a.40.2",RESOLUTION=1280x720
set chan_name="PRESS TV IRAN" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_14
REM set link="https://d3cjrhqx3ygiqt.cloudfront.net/abr/ngrp:newsx_all/playlist.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=1778000,CODECS="avc1.77.40,mp4a.40.2",RESOLUTION=558x406
set link="https://d3cjrhqx3ygiqt.cloudfront.net/abr/ngrp:newsx_all/chunklist_w906609032_b1628000.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=788000,CODECS="avc1.77.30,mp4a.40.2",RESOLUTION=396x288
REM set link="https://d3cjrhqx3ygiqt.cloudfront.net/abr/ngrp:newsx_all/chunklist_w906609032_b728000.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=348000,CODECS="avc1.77.21,mp4a.40.2",RESOLUTION=296x216
REM set link="https://d3cjrhqx3ygiqt.cloudfront.net/abr/ngrp:newsx_all/chunklist_w906609032_b328000.m3u8"
set chan_name="NEWSX INDIA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_15
REM set link="https://ndtvstream-lh.akamaihd.net/i/ndtv_24x7_1@300633/master.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=128000,RESOLUTION=640x480,CODECS="avc1.64001f, mp4a.40.2"
REM set link="https://ndtvstream-lh.akamaihd.net/i/ndtv_24x7_1@300633/index_96_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=256000,RESOLUTION=640x480,CODECS="avc1.64001f, mp4a.40.2"
REM set link="https://ndtvstream-lh.akamaihd.net/i/ndtv_24x7_1@300633/index_224_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=384000,RESOLUTION=640x480,CODECS="avc1.64001f, mp4a.40.2"
REM set link="https://ndtvstream-lh.akamaihd.net/i/ndtv_24x7_1@300633/index_352_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=512000,RESOLUTION=640x480,CODECS="avc1.64001f, mp4a.40.2"
REM set link="https://ndtvstream-lh.akamaihd.net/i/ndtv_24x7_1@300633/index_480_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=768000,RESOLUTION=640x480,CODECS="avc1.64001f, mp4a.40.2"
set link="https://ndtvstream-lh.akamaihd.net/i/ndtv_24x7_1@300633/index_736_av-p.m3u8?sd=10&rebase=on"
set chan_name="NDTV IN" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_16
REM set link="https://live.cgtn.com/manifest.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1096000,NAME="720p HD"
set link="https://live.cgtn.com/1000/prog_index.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=2,BANDWIDTH=564000,NAME="360p SD"
REM set link="https://live.cgtn.com/500/prog_index.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=3,BANDWIDTH=192000,NAME="180p 3G"
REM set link="https://live.cgtn.com/200/prog_index.m3u8"
REM set link="https://www.filmon.com/tv/cctv-news"
REM set link="https://api.new.livestream.com/accounts/7082210/events/7115682/live.m3u8?BANDWIDTH=1756000"

set chan_name="CGTN Beijing" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_17
set link="https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index_1180.m3u8"
REM set link=https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index.m3u8 
REM #EXT-X-STREAM-INF:BANDWIDTH=2310000,AVERAGE-BANDWIDTH=2310000,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=1280x720,FRAME-RATE=29.970,AUDIO="program_audio"
set link="https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index_2100.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=1298000,AVERAGE-BANDWIDTH=1298000,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=1280x720,FRAME-RATE=29.970,AUDIO="program_audio"
REM set link="https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index_1180.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=990000,AVERAGE-BANDWIDTH=990000,CODECS="avc1.42c01e,mp4a.40.5",RESOLUTION=640x360,FRAME-RATE=29.970,AUDIO="program_audio"
REM set link="https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index_900.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=660000,AVERAGE-BANDWIDTH=660000,CODECS="avc1.42c01e,mp4a.40.5",RESOLUTION=640x360,FRAME-RATE=29.970,AUDIO="program_audio"
REM set link="https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index_600.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=440000,AVERAGE-BANDWIDTH=440000,CODECS="avc1.42c01e,mp4a.40.5",RESOLUTION=640x360,FRAME-RATE=29.970,AUDIO="program_audio"
REM set link="https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index_400.m3u8"
REM #EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="program_audio",LANGUAGE="eng",NAME="Alternate Audio",AUTOSELECT=YES,DEFAULT=NO,URI="index_64.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=220000,AVERAGE-BANDWIDTH=220000,CODECS="avc1.42c01e,mp4a.40.5",RESOLUTION=320x180,FRAME-RATE=29.970,AUDIO="program_audio"
REM set link="https://nhkwtvglobal-i.akamaihd.net/hls/live/263941/nhkwtvglobal/index_200.m3u8"

set chan_name="NHK WORLD" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_18
set link="https://drsh196ivjwe8.cloudfront.net/hls/cnai/03.m3u8"
REM set link="https://drsh196ivjwe8.cloudfront.net/hls/cnai/02.m3u8"
REM set link="https://drsh196ivjwe8.cloudfront.net/hls/cnai/01.m3u8"
set chan_name="Channel News Asisa Singapore" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_19
set link="https://abc-iview-mediapackagestreams-1.akamaized.net/out/v1/50345bf35f664739912f0b255c172ae9/index_1.m3u8"
REM set link="https://abc-iview-mediapackagestreams-1.akamaized.net/out/v1/50345bf35f664739912f0b255c172ae9/index_2.m3u8"
REM set link="https://abc-iview-mediapackagestreams-1.akamaized.net/out/v1/50345bf35f664739912f0b255c172ae9/index_3.m3u8"
set chan_name="ABC Australia" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_20
set link="http://contributionstreams.ashttp9.visionip.tv/live/visiontv-contributionstreams-arise-tv-hsslive-25f-16x9-SD/chunklist.m3u8"
set chan_name="ARISE NEWS NIGERIA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_21
set link="https://www.dailymotion.com/video/x6i7vf8"
set chan_name="Africa News" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_22
set link=https://d7g1ebft2592.cloudfront.net/mblivev3/hd/playlist.m3u8
REM set link=https://d7g1ebft2592.cloudfront.net/mblivev3/480p/playlist.m3u8
REM set link=https://d7g1ebft2592.cloudfront.net/mblivev3/360p/playlist.m3u8
set chan_name="TeleSUR English Veneuzula" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_23
REM set link="http://cdnapi.kaltura.com/p/2216081/sp/221608100/playManifest/entryId/1_f19eeulz/format/applehttp/protocol/http/uiConfId/28428751/a.m3u8"
set link="http://cdnapi.kaltura.com/p/2216081/sp/221608100/playManifest/entryId/1_f19eeulz/format/applehttp/protocol/http/uiConfId/28428751/index_720.m3u8"
REM set link="http://cdnapi.kaltura.com/p/2216081/sp/221608100/playManifest/entryId/1_f19eeulz/format/applehttp/protocol/http/uiConfId/28428751/index_480.m3u8"
REM set link="http://cdnapi.kaltura.com/p/2216081/sp/221608100/playManifest/entryId/1_f19eeulz/format/applehttp/protocol/http/uiConfId/28428751/index_360.m3u8"
set chan_name="NEWS MAX" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_24
set link="https://edge.free-speech-tv-live.top.comcast.net/out/u/fstv.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=1692100,RESOLUTION=848x480,CODECS="avc1.4D401F,mp4a.40.5"
set link="https://edge.free-speech-tv-live.top.comcast.net/out/u/39569_3.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=1191846,RESOLUTION=640x360,CODECS="avc1.4D401F,mp4a.40.5"
REM set link="https://edge.free-speech-tv-live.top.comcast.net/out/u/39569_4.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=791856,RESOLUTION=512x288,CODECS="avc1.42C01E,mp4a.40.5"
REM set link="https://edge.free-speech-tv-live.top.comcast.net/out/u/39569_5.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=191727,CODECS="mp4a.40.5"
REM set link="https://edge.free-speech-tv-live.top.comcast.net/out/u/39569_6.m3u8"

set chan_name="FREE SPEECH TV" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_25
REM set link=https://infowarslive-lh.akamaihd.net/i/infowarsevent_1@366809/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=720x406,CODECS="avc1.77.30, mp4a.40.2"
set link="https://infowarslive-lh.akamaihd.net/i/infowarsevent_1@366809/index_800_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://infowarslive-lh.akamaihd.net/i/infowarsevent_1@366809/index_800_a-p.m3u8?sd=10&rebase=on"
set chan_name="INFOWARS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_26
set link=https://players.brightcove.net/1362235914001/B1J3DDQJf_default/index.html?videoId=5689257377001
REM set link=https://bcliveunivsecure-lh.akamaihd.net/i/un150_1@575439/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=828000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.5"
REM set link="https://bcliveunivsecure-lh.akamaihd.net/i/un150_1@575439/index_828_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1328000,RESOLUTION=640x480,CODECS="avc1.77.30, mp4a.40.5"
REM set link="https://bcliveunivsecure-lh.akamaihd.net/i/un150_1@575439/index_1328_av-p.m3u8?sd=10&rebase=on"
set chan_name="United Nations TV" 
set /A prior_num="%chan_num%"
goto PLAY_CASE 

:CHAN_27
REM set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/master.m3u8"

REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=878000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_750_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=878000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_750_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=878000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_750_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=878000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_750_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1128000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_1000_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1128000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_1000_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2628000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_2500_av-p.m3u8?sd=10&rebase=on"
REM EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2628000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://wgntribune-lh.akamaihd.net/i/WGNPrimary_1@304622/index_2500_av-b.m3u8?sd=10&rebase=on"
set chan_name="WGN 9 Chicago USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE 

:CHAN_28
set link="http://hls.iptv.optimum.net/news12/nipadlive/index_new.m3u8?callsign=N12KN"
set chan_name="News 12 Brooklyn" 
set /A prior_num="%chan_num%"
goto PLAY_CASE 

:CHAN_29
set link="http://hls.iptv.optimum.net/news12/nipadlive/index_new.m3u8?callsign=N12LI_WEST"
set chan_name="News 12 Long Island" 
set /A prior_num="%chan_num%"
goto PLAY_CASE 

:CHAN_30
REM set link=https://cdnapisec.kaltura.com/p/424341/sp/42434100/playManifest/entryId/1_is35xshu/format/applehttp/protocol/https/uiConfId/39790741/a.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=396000,RESOLUTION=320x180,CODECS="avc1.66.30, mp4a.40.34"
REM set link="https://urtmpkal-f.akamaihd.net/i/1is35xshu_1@64997/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=396000,RESOLUTION=320x180,CODECS="avc1.66.30, mp4a.40.34"
REM set link="https://urtmpkal-f.akamaihd.net/i/1is35xshu_1@64997/index_1_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1096000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.34"
REM set link="https://urtmpkal-f.akamaihd.net/i/1is35xshu_1@64997/index_2_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1096000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.34"
REM set link="https://urtmpkal-f.akamaihd.net/i/1is35xshu_1@64997/index_2_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2096000,RESOLUTION=1280x720,CODECS="avc1.66.30, mp4a.40.34"
set link="https://urtmpkal-f.akamaihd.net/i/1is35xshu_1@64997/index_3_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2096000,RESOLUTION=1280x720,CODECS="avc1.66.30, mp4a.40.34"
REM set link="https://urtmpkal-f.akamaihd.net/i/1is35xshu_1@64997/index_3_av-b.m3u8?sd=10&rebase=on"

set chan_name="FiOS1 Lower Hudson Valey" 
set /A prior_num="%chan_num%"
goto PLAY_CASE 

:CHAN_31
REM set link=https://cdnapisec.kaltura.com/p/424341/sp/42434100/playManifest/entryId/1_if6bcg01/format/applehttp/protocol/https/uiConfId/39790741/a.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2096000,RESOLUTION=1920x1080,CODECS="avc1.66.30, mp4a.40.34"
set link="https://urtmpkal-f.akamaihd.net/i/1if6bcg01_1@394073/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2096000,RESOLUTION=1920x1080,CODECS="avc1.66.30, mp4a.40.34"
REM set link="https://urtmpkal-f.akamaihd.net/i/1if6bcg01_1@394073/index_1_av-b.m3u8?sd=10&rebase=on"
set chan_name="FiOS1 New Jersey" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_32
REM set link=http://cdnapi.kaltura.com/p/931702/sp/93170200/playManifest/entryId/1_oorxcge2/format/applehttp/protocol/http/uiConfId/28428751/a.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=2128000,RESOLUTION=1280x720
set link=http://cdnapi.kaltura.com/p/931702/sp/93170200/playManifest/entryId/1_oorxcge2/format/applehttp/protocol/http/uiConfId/28428751/chunklist_b2128000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=504000,RESOLUTION=480x270
REM set link=http://cdnapi.kaltura.com/p/931702/sp/93170200/playManifest/entryId/1_oorxcge2/format/applehttp/protocol/http/uiConfId/28428751/chunklist_b464000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=724000,RESOLUTION=640x360
REM set link=http://cdnapi.kaltura.com/p/931702/sp/93170200/playManifest/entryId/1_oorxcge2/format/applehttp/protocol/http/uiConfId/28428751/chunklist_b664000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1054000,RESOLUTION=640x360
REM set link=http://cdnapi.kaltura.com/p/931702/sp/93170200/playManifest/entryId/1_oorxcge2/format/applehttp/protocol/http/uiConfId/28428751/chunklist_b964000.m3u8

set chan_name="Weather Nation" 
set /A prior_num="%chan_num%"
goto PLAY_CASE 

:CHAN_33
REM set link=https://weather-lh.akamaihd.net/i/twc_1@92006/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://weather-lh.akamaihd.net/i/twc_1@92006/index_400_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://weather-lh.akamaihd.net/i/twc_1@92006/index_400_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://weather-lh.akamaihd.net/i/twc_1@92006/index_800_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://weather-lh.akamaihd.net/i/twc_1@92006/index_800_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1328000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://weather-lh.akamaihd.net/i/twc_1@92006/index_1200_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1328000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://weather-lh.akamaihd.net/i/twc_1@92006/index_1200_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2528000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
set link="http://weather-lh.akamaihd.net/i/twc_1@92006/index_2400_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2528000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://weather-lh.akamaihd.net/i/twc_1@92006/index_2400_av-b.m3u8?sd=10&rebase=on"

set chan_name="Weather Channel" 
set /A prior_num="%chan_num%"
goto PLAY_CASE 

:CHAN_34
REM set link=https://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/master.m3u8
REM set link=https://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=857000,RESOLUTION=512x288,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/index_0288_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=613000,RESOLUTION=524x288,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/index_0288_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1589000,RESOLUTION=720x404,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/index_0404_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1101000,RESOLUTION=734x404,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/index_0404_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2078000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
set link="https://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/index_0540_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1101000,RESOLUTION=734x404,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://voa-lh.akamaihd.net/i/voa_mpls_tvmc6@320298/index_0540_av-b.m3u8?sd=10&rebase=on"
REM set link=https://www.filmon.com/tv/voa-english

set chan_name="VOA"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_35
REM set link="https://rtd.rt.com/on-air/"
set link="https://rt-doc.secure.footprint.net/1101-inadv-qidx-1k_v5.m3u8"
REM set link="https://rt-doc.secure.footprint.net/1101-inadv-qidx-2k_v5.m3u8"
REM set link="https://rt-doc.secure.footprint.net/1101-inadv-qidx-3k_v5.m3u8"
REM set link="https://rt-doc.secure.footprint.net/1101-inadv-qidx-4k_v5.m3u8"
REM set link="https://rt-doc.secure.footprint.net/1101-inadv-qidx-5k_v5.m3u8"
REM ## AUDIO 
REM set link="https://rt-doc.secure.footprint.net/1101-inadv-qidx-0k_v5.m3u8"
set chan_name="RT DOCUMENTARY" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_36
REM set link="https://live.cgtn.com/cctv-d.m3u8" 
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1096000,RESOLUTION=1280x720,NAME="720p HD"
set link=https://livedoc.cgtn.com/1000d/prog_index.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=564000,RESOLUTION=640x360,NAME="360p SD"
REM set link=https://livedoc.cgtn.com/500d/prog_index.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=192000,RESOLUTION=320x180,NAME="180p 3G"
REM set link=https://livedoc.cgtn.com/200d/prog_index.m3u8

set chan_name="CGTN DOCUMENTARY" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_37
set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master.m3u8
REM #EXT-X-MEDIA:TYPE=CLOSED-CAPTIONS,GROUP-ID="CC",LANGUAGE="eng",NAME="EN",INSTREAM-ID="CC1"
REM #EXT-X-STREAM-INF:BANDWIDTH=290400,AVERAGE-BANDWIDTH=290400,CODECS="avc1.66.30,mp4a.40.5",RESOLUTION=400x224,FRAME-RATE$
REM set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master_264.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=510400,AVERAGE-BANDWIDTH=510400,CODECS="avc1.66.30,mp4a.40.5",RESOLUTION=400x224,FRAME-RATE$
REM set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master_464.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=950400,AVERAGE-BANDWIDTH=950400,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=640x360,FRAME-RAT$
REM set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master_864.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1830400,AVERAGE-BANDWIDTH=1830400,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=960x540,FRAME-R$
REM set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master_1664.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=2820400,AVERAGE-BANDWIDTH=2820400,CODECS="avc1.640028,mp4a.40.5",RESOLUTION=1280x720,FRAME-$
REM set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master_2564.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=4470400,AVERAGE-BANDWIDTH=4470400,CODECS="avc1.640028,mp4a.40.5",RESOLUTION=1280x720,FRAME-$
set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master_4064.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=70400,AVERAGE-BANDWIDTH=70400,CODECS="mp4a.40.5",CLOSED-CAPTIONS="CC"
REM set link=https://byubhls-i.akamaihd.net/hls/live/267187/byutvhls/master_64.m3u8
set chan_name=BYUTV
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_38
set link="https://cbclivedai5-i.akamaihd.net/hls/live/567235/event2/CBOT/master5.m3u8"
REM set link="https://cbclivedai5-i.akamaihd.net/hls/live/567235/event2/CBOT/master4.m3u8"
REM set link="https://cbclivedai5-i.akamaihd.net/hls/live/567235/event2/CBOT/master3.m3u8"
REM set link="https://cbclivedai5-i.akamaihd.net/hls/live/567235/event2/CBOT/master2.m3u8"
REM set link="https://cbclivedai5-i.akamaihd.net/hls/live/567235/event2/CBOT/master1.m3u8"
REM set link="http://cbcnewshd-f.akamaihd.net/i/cbcnews_1@8981/index_2500_av-p.m3u8"

set chan_name="CBC CANADA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_39
REM set link="http://players.brightcove.net/1242843915001/SJ3Tc5kb_default/index.html?videoId=5027924874001"

REM set link=http://bcoveliveios-i.akamaihd.net/hls/live/248519/1242843915001_1/master.m3u8
REM set link=http://bcoveliveios-i.akamaihd.net/hls/live/248519/1242843915001_1/master.m3u8
REM set link=http://bcoveliveios-i.akamaihd.net/hls/live/248522/1242843915001_4/master.m3u8

REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=612830,RESOLUTION=640x360,CODECS="avc1.77.31,mp4a.40.5"
REM set link=http://bcoveliveios-i.akamaihd.net/hls/live/248519/1242843915001_1//Assets_1539347909947/Layer1_master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=920204,RESOLUTION=720x404,CODECS="avc1.77.31,mp4a.40.5"
set link=http://bcoveliveios-i.akamaihd.net/hls/live/248519/1242843915001_1//Assets_1539347909947/Layer2_master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=3172598,RESOLUTION=1280x720,CODECS="avc1.77.31,mp4a.40.5"
REM set link=http://bcoveliveios-i.akamaihd.net/hls/live/248519/1242843915001_1//Assets_1539347909947/Layer3_master.m3u8

set chan_name="CPAC 1 CANADA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_40
set link="https://www.filmon.com/tv/bbc-news"
set chan_name="BBC LONDON"
set /A prior_num="%chan_num%" 
goto PLAY_CASE


REM ############################  ENGLISH II  #########################################

:CHAN_41
set link="https://www.filmon.com/tv/bbc-parliament"
set chan_name="BBC Parliament"
set /A prior_num="%chan_num%" 
goto PLAY_CASE

:CHAN_42
set link="https://media.heanet.ie/oirlive/oireachtas/ngrp:oireachtas.stream_all/playlist.m3u8"
set chan_name="OIreachtas TV IE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_43
set link="https://www.dailymotion.com/video/x5eva58"
set chan_name="Made in Leeds UK" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_44
set link="https://www.dailymotion.com/video/x5eva8m"
set chan_name="Made in Tyne and Wear UK" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_45
set link="https://www.dailymotion.com/video/x5ev9xg"
set chan_name="Made in Cardiff" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_46
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/9aa645c89c5447a8937537011e8f8d0d/manifest.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=174000,RESOLUTION=320x180,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/9aa645c89c5447a8937537011e8f8d0d/chunklist_b174000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=64000,CODECS="mp4a.40.2",SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/9aa645c89c5447a8937537011e8f8d0d/chunklist_b64000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=332000,RESOLUTION=320x180,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/9aa645c89c5447a8937537011e8f8d0d/chunklist_b332000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=732000,RESOLUTION=640x360,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/9aa645c89c5447a8937537011e8f8d0d/chunklist_b732000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1128000,RESOLUTION=848x480,SUBTITLES="subs"
REM setlink=https://qvclvp2.mmdlive.lldns.net/qvclvp2/9aa645c89c5447a8937537011e8f8d0d/chunklist_b1128000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1928000,RESOLUTION=1024x576,SUBTITLES="subs"
set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/9aa645c89c5447a8937537011e8f8d0d/chunklist_b1928000.m3u8
set chan_name="QVC USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_47
REM set link=https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=992000,RESOLUTION=848x480,CODECS="avc1.640029, mp4a.40.2"
REM set link="https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/index_2_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2200000,RESOLUTION=1280x720,CODECS="avc1.640029, mp4a.40.2"
REM set link="https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/index_2_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2200000,RESOLUTION=1280x720,CODECS="avc1.640029, mp4a.40.2"
set link="https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1428000,RESOLUTION=848x480,CODECS="avc1.640029, mp4a.40.2"
REM set link="https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/index_1_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=564000,RESOLUTION=1920x1080,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/index_1_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=764000,RESOLUTION=1920x1080,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/index_2_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2564000,RESOLUTION=1920x1080,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tscstreaming-lh.akamaihd.net/i/TSCLiveStreaming_1@91031/index_3_av-b.m3u8?sd=10&rebase=on"

set chan_name="TSC The Shopping Channel CA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_48
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/1af4a53fda904f6c90a4389c8fe92dc0/manifest.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=732000,RESOLUTION=640x360,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/1af4a53fda904f6c90a4389c8fe92dc0/chunklist_b732000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=64000,CODECS="mp4a.40.2",SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/1af4a53fda904f6c90a4389c8fe92dc0/chunklist_b64000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1128000,RESOLUTION=848x480,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/1af4a53fda904f6c90a4389c8fe92dc0/chunklist_b1128000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1928000,RESOLUTION=1024x576,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/1af4a53fda904f6c90a4389c8fe92dc0/chunklist_b1928000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=2592000,RESOLUTION=1280x720,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/1af4a53fda904f6c90a4389c8fe92dc0/chunklist_b2592000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=4192000,RESOLUTION=1920x1080,SUBTITLES="subs"
set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/1af4a53fda904f6c90a4389c8fe92dc0/chunklist_b4192000.m3u8
set chan_name="QVC 2 USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_49
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/4bc0e8c660c94c00afcdae21479e2b95/manifest.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=332000,RESOLUTION=320x180,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/4bc0e8c660c94c00afcdae21479e2b95/chunklist_b332000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=64000,CODECS="mp4a.40.2",SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/4bc0e8c660c94c00afcdae21479e2b95/chunklist_b64000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=732000,RESOLUTION=640x360,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/4bc0e8c660c94c00afcdae21479e2b95/chunklist_b732000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1128000,RESOLUTION=848x480,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/4bc0e8c660c94c00afcdae21479e2b95/chunklist_b1128000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1928000,RESOLUTION=1024x576,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/4bc0e8c660c94c00afcdae21479e2b95/chunklist_b1928000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=2592000,RESOLUTION=1280x720,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/4bc0e8c660c94c00afcdae21479e2b95/chunklist_b2592000.m3u8
#EXT-X-STREAM-INF:BANDWIDTH=4192000,RESOLUTION=1920x1080,SUBTITLES="subs"
set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/4bc0e8c660c94c00afcdae21479e2b95/chunklist_b4192000.m3u8

set chan_name="QVC Beauty" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_50
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/cd5bfeab75a34ba18301490388fd4daa/manifest.m3u8
REM #EXT-X-MEDIA:TYPE=SUBTITLES,GROUP-ID="subs",NAME="English",FORCED=NO,AUTOSELECT=YES,URI="subtitlelist_leng_b332000.m3u8",LANGUAGE="eng"
REM #EXT-X-STREAM-INF:BANDWIDTH=332000,RESOLUTION=320x180,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/cd5bfeab75a34ba18301490388fd4daa/chunklist_b332000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=64000,CODECS="mp4a.40.2",SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/cd5bfeab75a34ba18301490388fd4daa/chunklist_b64000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=732000,RESOLUTION=640x360,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/cd5bfeab75a34ba18301490388fd4daa/chunklist_b732000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1128000,RESOLUTION=848x480,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/cd5bfeab75a34ba18301490388fd4daa/chunklist_b1128000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1928000,RESOLUTION=1024x576,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/cd5bfeab75a34ba18301490388fd4daa/chunklist_b1928000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=2592000,RESOLUTION=1280x720,SUBTITLES="subs"
REM set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/cd5bfeab75a34ba18301490388fd4daa/chunklist_b2592000.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=4192000,RESOLUTION=1920x1080,SUBTITLES="subs"
set link=https://qvclvp2.mmdlive.lldns.net/qvclvp2/cd5bfeab75a34ba18301490388fd4daa/chunklist_b4192000.m3u8
set chan_name="QVC Raw No Graphics" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_51
REM set link=https://cdnapisec.kaltura.com/p/424341/sp/42434100/playManifest/entryId/1_b159ee77/format/applehttp/protocol/https/uiConfId/39790741/a.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2096000,RESOLUTION=1920x1080,CODECS="avc1.66.30, mp4a.40.34"
set link="https://urtmpkal-f.akamaihd.net/i/1b159ee77_1@192104/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2096000,RESOLUTION=1920x1080,CODECS="avc1.66.30, mp4a.40.34"
REM set link="https://urtmpkal-f.akamaihd.net/i/1b159ee77_1@192104/index_1_av-b.m3u8?sd=10&rebase=on"
set chan_name="FiOS1 Long Island" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_52
set link=https://d3ktuc8v2sjk6m.cloudfront.net/livetv/ngrp:TVWAIR_all/master.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1257472,CODECS="avc1.77.32,mp4a.40.2",RESOLUTION=1280x720
REM set link=https://d3ktuc8v2sjk6m.cloudfront.net/livetv/ngrp:TVWAIR_all/chunklist_b1155072.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1066072,CODECS="avc1.77.31,mp4a.40.2",RESOLUTION=640x360
REM set link=https://d3ktuc8v2sjk6m.cloudfront.net/livetv/ngrp:TVWAIR_all/chunklist_b981072.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=516072,CODECS="avc1.66.30,mp4a.40.2",RESOLUTION=426x240
REM set link=https://d3ktuc8v2sjk6m.cloudfront.net/livetv/ngrp:TVWAIR_all/chunklist_b481072.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=351072,CODECS="avc1.66.21,mp4a.40.2",RESOLUTION=284x160
REM set link=https://d3ktuc8v2sjk6m.cloudfront.net/livetv/ngrp:TVWAIR_all/chunklist_b331072.m3u8
set chan_name="TVW Washington State TV" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_53
REM set link=https://video.oct.dc.gov/out/u/DCN.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=364035,RESOLUTION=416x234,CODECS="avc1.4D400D,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/21_1.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=664059,RESOLUTION=640x360,CODECS="avc1.4D401E,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/21_2.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=864061,RESOLUTION=640x360,CODECS="avc1.4D401E,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/21_3.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1064061,RESOLUTION=1920x1080,CODECS="avc1.4D4028,mp4a.40.2"
set link=https://video.oct.dc.gov/out/u/21_4.m3u8
set chan_name="DCN District of Columbia Network" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_54
REM set link=https://video.oct.dc.gov/out/u/DCC.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=364063,RESOLUTION=416x234,CODECS="avc1.4D400D,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/15_1.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=664058,RESOLUTION=640x360,CODECS="avc1.4D401E,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/15_2.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=864062,RESOLUTION=640x360,CODECS="avc1.4D401E,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/15_3.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1064088,RESOLUTION=1920x1080,CODECS="avc1.4D4028,mp4a.40.2"
set link=https://video.oct.dc.gov/out/u/15_12.m3u8
set chan_name="DCC District of Columbia Channel" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_55
REM set link=https://video.oct.dc.gov/out/u/DKN.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=428009,RESOLUTION=416x234,CODECS="avc1.4D400D,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/96_7.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=728053,RESOLUTION=640x360,CODECS="avc1.4D401E,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/96_8.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=927908,RESOLUTION=640x360,CODECS="avc1.4D401E,mp4a.40.2"
REM set link=https://video.oct.dc.gov/out/u/96_9.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1127917,RESOLUTION=1920x1080,CODECS="avc1.4D4028,mp4a.40.2"
set link=https://video.oct.dc.gov/out/u/96_10.m3u8
set chan_name="DCKN District of Columbia Knowledge Network Channel" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_56
set link=http://147.174.13.196/live/WIFI-1296k-540p/WIFI-1296k-540p.m3u8
set chan_name="Southeastern University Television Channel" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_57
set link=http://tstv-stream.tsm.utexas.edu/hls/livestream_hi/index.m3u8
REM set link=http://tstv-stream.tsm.utexas.edu/hls/livestream_low/index.m3u8
set chan_name="Texas State University Channel" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_58
REM set link="https://reflect-live-bronxnet.cablecast.tv/live/live.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=2180400,RESOLUTION=1280x720,NAME="WIFI-1896k-720p"
set link="https://reflect-live-bronxnet.cablecast.tv/live/WIFI-1896k-720p/WIFI-1896k-720p.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=570400,RESOLUTION=480x270,NAME="CELL-496k-270p"
REM set link="https://reflect-live-bronxnet.cablecast.tv/live/CELL-496k-270p/CELL-496k-270p.m3u8"
set chan_name="BronxNET NY USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_59
REM set link=https://cnn-lh.akamaihd.net/i/cnndebates_1@352100/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=424000,RESOLUTION=480x270,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://cnn-lh.akamaihd.net/i/cnndebates_1@352100/index_360_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=424000,RESOLUTION=480x270,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://cnn-lh.akamaihd.net/i/cnndebates_1@352100/index_360_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=924000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.2"
set link="https://cnn-lh.akamaihd.net/i/cnndebates_1@352100/index_860_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=924000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://cnn-lh.akamaihd.net/i/cnndebates_1@352100/index_860_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://cnn-lh.akamaihd.net/i/cnndebates_1@352100/index_360_a-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set #link="https://cnn-lh.akamaihd.net/i/cnndebates_1@352100/index_360_a-b.m3u8?sd=10&rebase=on"
REM set link="https://1861340594.rsc.cdn77.org/ls-54548-1/tracks-v1a1/mono.m3u8"
set chan_name="CNN Live USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_60
set link="https://1161275585.rsc.cdn77.org/LS-ATL-54548-7/tracks-v4a1/mono.m3u8"
set chan_name="CNN HLN USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_61
REM set link="https://fnurtmp-f.akamaihd.net/i/FNRADIO_1@92141/master.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=364000,RESOLUTION=476x268,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://fnurtmp-f.akamaihd.net/i/FNRADIO_1@92141/index_300_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=728000,RESOLUTION=768x432,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://fnurtmp-f.akamaihd.net/i/FNRADIO_1@92141/index_600_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1328000,RESOLUTION=768x432,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://fnurtmp-f.akamaihd.net/i/FNRADIO_1@92141/index_1200_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2628000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
set link="https://fnurtmp-f.akamaihd.net/i/FNRADIO_1@92141/index_2500_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://fnurtmp-f.akamaihd.net/i/FNRADIO_1@92141/index_300_a-b.m3u8?sd=10&rebase=on"
set chan_name="FOX NEWS TALK USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_62
set link="https://1674331492.rsc.cdn77.org/LS-ATL-54548-14/tracks-v1a1/mono.m3u8"
set chan_name="CNBC USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_63
set link="https://1359547862.rsc.cdn77.org/LS-ATL-54548-8/tracks-v4a1/mono.m3u8"
set chan_name="CBC News Network CA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_64
REM set link="https://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=511336,RESOLUTION=640x360,CODECS="avc1.4D401E,mp4a.40.2"
REM set link="http://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest_1.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=951336,RESOLUTION=640x360,CODECS="avc1.4D401E,mp4a.40.2"
REM set link="http://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest_2.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=1391336,RESOLUTION=854x480,CODECS="avc1.4D401F,mp4a.40.2"
REM set link="http://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest_3.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=2051336,RESOLUTION=960x540,CODECS="avc1.4D401F,mp4a.40.2"
REM set link="http://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest_4.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=2821300,RESOLUTION=1280x720,CODECS="avc1.4D401F,mp4a.40.2"
REM set link="http://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest_5.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=3371336,RESOLUTION=1280x720,CODECS="avc1.4D401F,mp4a.40.2"
REM set link="http://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest_6.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=5571336,RESOLUTION=1920x1080,CODECS="avc1.4D4028,mp4a.40.2"
set link="http://etlive-mediapackage-fastly.cbsaavideo.com/dvr/manifest_7.m3u8"
set chan_name="Entertaintment Tonight Live ET USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_65
REM set link="https://etnowweblive-lh.akamaihd.net/i/ETN_1@348070/master.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=446000,RESOLUTION=360x288,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://etnowweblive-lh.akamaihd.net/i/ETN_1@348070/index_288_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=446000,RESOLUTION=360x288,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://etnowweblive-lh.akamaihd.net/i/ETN_1@348070/index_288_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=793000,RESOLUTION=544x432,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://etnowweblive-lh.akamaihd.net/i/ETN_1@348070/index_432_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=793000,RESOLUTION=544x432,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://etnowweblive-lh.akamaihd.net/i/ETN_1@348070/index_432_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1325000,RESOLUTION=720x576,CODECS="avc1.77.30, mp4a.40.2"
set link="https://etnowweblive-lh.akamaihd.net/i/ETN_1@348070/index_576_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1325000,RESOLUTION=720x576,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://etnowweblive-lh.akamaihd.net/i/ETN_1@348070/index_576_av-b.m3u8?sd=10&rebase=on"
set chan_name="ET Economic Times India" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_66
set link="https://content.jwplatform.com/players/hBmO7M6k"
REM set link=http://www.newsy.com/live/
REM set link=https://www.filmon.com/tv/newsy
set chan_name="NEWSY USA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_67
set link="rtmp://54.251.134.121/live/15273.sdp"
set chan_name="CNN PHILLIPEANS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_68
set link="https://www.twitch.tv/twit" 
set chan_name="TWIT" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_69
set link="http://jblive.videocdn.scaleengine.net/jb-live/play/jblive.stream/playlist.m3u8"  
set chan_name="JUPITER BROADCASTING" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_70
REM set link=http://edge.music-choice-play-chaina1.top.comcast.net/PlayMetadataInserter/play/playlist.m3u8
set link=http://edge.music-choice-play-chaina1.top.comcast.net/PlayMetadataInserter/play/chunklist.m3u8
set chan_name="Music Choice Play"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_71
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/master.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=48000,CODECS="mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_48_a-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=48000,CODECS="mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_48_a-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=150000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_110_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=150000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_110_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=240000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_200_av-p.m3u8?sd=10&rebase=on"
REM EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=240000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_200_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=440000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_400_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=440000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_400_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=640000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_600_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=640000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_600_av-b.m3u8?sd=10&rebase=on"
set chan_name="M2O"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_72
REM set link=http://wow01.105.net/live/rmc1/playlist.m3u8  
REM #EXT-X-STREAM-INF:BANDWIDTH=1009334,CODECS="avc1.66.31,mp4a.40.2",RESOLUTION=720x432
set link=http://wow01.105.net/live/rmc1/chunklist_w1187407711.m3u8
REM set link=rtmp://fms.105.net:1935/live/rmc1
set chan_name="Radio Monte Carlo TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_73
set link=http://1mstream.digicable.hu/hitmusic/hitmusic.m3u8
set chan_name="Hit Music Channel"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_74
set link=http://cmctv.ios.internapcdn.net/cmctv_vitalstream_com/live_1/CMCUSA/CCURstream0.m3u8
set chan_name="California Music Channel"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_75
set link=http://5.196.138.6:1935/live/nrjbelgique/chunklist_w1339281553.m3u8  
set chan_name="NRJ Hits"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_76
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=334400,CODECS="avc1.66.30,mp4a.40.5",RESOLUTION=416x234
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer0.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=554400,CODECS="avc1.66.30,mp4a.40.5",RESOLUTION=416x234
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer1.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=884400,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=640x360
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer2.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1445400,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=640x360
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer3.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=2050400,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=852x480
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer4.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=2820400,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=960x540
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer5.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=3920400,CODECS="avc1.4d401f,mp4a.40.5",RESOLUTION=1280x720
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer6.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=5570400,CODECS="avc1.4d4028,mp4a.40.5",RESOLUTION=1920x1080
set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer7.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=140800,CODECS="mp4a.40.2"
REM set link=http://adultswimhls-i.akamaihd.net/hls/live/238460/adultswim/main/1/master_Layer8.m3u8
set chan_name="Adult Swim"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_77
set link=http://www.dailymotion.com/video/x3m6nld
set chan_name="Fashion TV Europe"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_78
set link=http://www.dailymotion.com/video/x2t9nsf
set chan_name="Fashion 1 Spain"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_79
REM set link=https://dms.redbull.tv/v3/linear-borb/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjYXRlZ29yeSI6InBlcnNvbmFsX2NvbXB1dGVyIiwiY291bnRyeV9jb2RlIjoidXMiLCJleHBpcmVzIjoiMjAxNy0wOS0xNlQxNzo0NjowMy45NjM0NjI4NDJaIiwib3NfZmFtaWx5IjoiaHR0cCIsInJlbW90ZV9pcCI6IjEwLjE1Ny4xMTIuMTQ4IiwidWEiOiJNb3ppbGxhLzUuMCAoTWFjaW50b3NoOyBJbnRlbCBNYWMgT1MgWCAxMF8xMl81KSBBcHBsZVdlYktpdC82MDMuMi40IChLSFRNTCwgbGlrZSBHZWNrbykgVmVyc2lvbi8xMC4xLjEgU2FmYXJpLzYwMy4yLjQiLCJ1aWQiOiJkOGZiZWYzMC0yZDhhLTQwYTUtOGNjNy0wNzgxNGJhMTliNzMifQ.Q_38FNpW3so5yrA5FQt9qBuix3dTulKpb6uQ0dRjrtY/playlist.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=290400,AVERAGE-BANDWIDTH=290400,CODECS="avc1.66.30,mp4a.40.2",RESOLUTION=320x180,FRAME-RATE=30.000,CLOSED-CAPTIONS=NONE
REM set link=https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master_264.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=635800,AVERAGE-BANDWIDTH=635800,CODECS="avc1.4d4015,mp4a.40.2",RESOLUTION=426x240,FRAME-RATE=30.000,CLOSED-CAPTIONS=NONE
REM set link=https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master_578.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1020800,AVERAGE-BANDWIDTH=1020800,CODECS="avc1.77.30,mp4a.40.2",RESOLUTION=640x360,FRAME-RATE=30.000,CLOSED-CAPTIONS=NONE
REM set link=https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master_928.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1826000,AVERAGE-BANDWIDTH=1826000,CODECS="avc1.4d401f,mp4a.40.2",RESOLUTION=960x540,FRAME-RATE=30.000,CLOSED-CAPTIONS=NONE
set link=https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master_1660.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=3696000,AVERAGE-BANDWIDTH=3696000,CODECS="avc1.4d401f,mp4a.40.2",RESOLUTION=1280x720,FRAME-RATE=30.000,CLOSED-CAPTIONS=NONE
REM set link=https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master_3360.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=7326000,AVERAGE-BANDWIDTH=7326000,CODECS="avc1.4d4028,mp4a.40.2",RESOLUTION=1920x1080,FRAME-RATE=30.000,CLOSED-CAPTIONS=NONE
REM set link=https://rbmn-live.akamaized.net/hls/live/590964/BoRB-AT/master_6660.m3u8
REM set link="https://www.twitch.tv/redbull"
chan_name="RED Bull TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_80
set link=http://mlblive-akc.mlb.com/ls01/mlbam/mlb_network/NETWORK_LINEAR_1/master_wired.m3u8
set chan_name="MLB Network"
set /A prior_num="%chan_num%"
goto PLAY_CASE

REM ################################ FRENCH #########################################

:CHAN_81
REM set link="http://f24hls-i.akamaihd.net/hls/live/221192-b/F24_FR_LO_HLS/master.m3u8"   
set link="http://f24hls-i.akamaihd.net/hls/live/221192-b/F24_FR_LO_HLS/master_900.m3u8"
set chan_name="FRANCE 24 FRANCAIS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_82
set link="https://players.brightcove.net/876450610001/HJeY2afE_default/index.html?videoId=5615950982001"
REM set link="https://www.dailymotion.com/video/xgz4t1"
set chan_name="BFM TV FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_83
set link="https://players.brightcove.net/876450612001/HycrnmXI_default/index.html?videoId=1920204345001"
set chan_name="BFM BUSINESS FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_84
REM set link=https://rt-france.secure.footprint.net/1107-inadv-qidx-1k_v5.m3u8
set link=https://rt-france.secure.footprint.net/1107-inadv-qidx-2k_v5.m3u8
REM set link=https://rt-france.secure.footprint.net/1107-inadv-qidx-3k_v5.m3u8
REM set link=https://rt-france.secure.footprint.net/1107-inadv-qidx-4k_v5.m3u8
REM set link=https://rt-france.secure.footprint.net/1107-inadv-qidx-5k_v5.m3u8
REM #####AUDIO
REM set link=https://rt-france.secure.footprint.net/1107-inadv-qidx-0k_v5.m3u8

set chan_name="RT FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_85
set link="https://videos.francetv.fr/video/SIM_Franceinfo"
set chan_name="France Info" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_86
REM set link=https://tv5infohls-i.akamaihd.net/hls/live/631613/tv5infohls/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=362435,RESOLUTION=640x360,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://tv5infohls-i.akamaihd.net/hls/live/631613/tv5infohls/v3plusinfo247hls_1_6.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=362435,RESOLUTION=640x360,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://v3plusinfo247hls-i.akamaihd.net/hls/live/218877/v3plusinfo247hls/v3plusinfo247hls_1_6.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=571616,RESOLUTION=640x360,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://tv5infohls-i.akamaihd.net/hls/live/631613/tv5infohls/v3plusinfo247hls_1_5.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=571616,RESOLUTION=640x360,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://v3plusinfo247hls-i.akamaihd.net/hls/live/218877/v3plusinfo247hls/v3plusinfo247hls_1_5.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=764771,RESOLUTION=1280x720,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://tv5infohls-i.akamaihd.net/hls/live/631613/tv5infohls/v3plusinfo247hls_1_4.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=764771,RESOLUTION=1280x720,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://v3plusinfo247hls-i.akamaihd.net/hls/live/218877/v3plusinfo247hls/v3plusinfo247hls_1_4.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1088642,RESOLUTION=1280x720,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://tv5infohls-i.akamaihd.net/hls/live/631613/tv5infohls/v3plusinfo247hls_1_3.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1088642,RESOLUTION=1280x720,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://v3plusinfo247hls-i.akamaihd.net/hls/live/218877/v3plusinfo247hls/v3plusinfo247hls_1_3.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1378624,RESOLUTION=1280x720,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://tv5infohls-i.akamaihd.net/hls/live/631613/tv5infohls/v3plusinfo247hls_1_2.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1378624,RESOLUTION=1280x720,CODECS="mp4a.40.2,avc1.4d401f"
REM set link="https://v3plusinfo247hls-i.akamaihd.net/hls/live/218877/v3plusinfo247hls/v3plusinfo247hls_1_2.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2196150,RESOLUTION=1920x1080,CODECS="mp4a.40.2,avc1.4d4029"
set link="https://tv5infohls-i.akamaihd.net/hls/live/631613/tv5infohls/v3plusinfo247hls_1_1.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2196150,RESOLUTION=1920x1080,CODECS="mp4a.40.2,avc1.4d4029"
REM set link="https://v3plusinfo247hls-i.akamaihd.net/hls/live/218877/v3plusinfo247hls/v3plusinfo247hls_1_1.m3u8"

set chan_name="TV5 Monde FR" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_87
REM set link=https://live.cgtn.com/cctv-f.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1096000,RESOLUTION=1280x720,NAME="720p HD"
set link=https://livefr.cgtn.com/1000f/prog_index.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=564000,RESOLUTION=640x360,NAME="360p SD"
REM set link=https://livefr.cgtn.com/500f/prog_index.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=192000,RESOLUTION=320x180,NAME="180p 3G"
REM set link=https://livefr.cgtn.com/200f/prog_index.m3u8
set chan_name="CGTN Francais" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_88
set link="https://www.dailymotion.com/video/x6i37o5"
set chan_name="Africa News" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_89
set link="https://players.brightcove.net/5481942443001/r1t0JFRjG_default/index.html?videoId=5827595278001"	
set chan_name="TVA CA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_90
REM #EXT-X-STREAM-INF:BANDWIDTH=281600,AVERAGE-BANDWIDTH=281600,CODECS="avc1.42c00c,mp4a.40.2",RESOLUTION=320x180,FRAME-RATE=14.985,AUDIO="program_audio",CLOSED-CAPTIONS="CC"
REM set link="https://rcavlive.akamaized.net/hls/live/704020/cancbxft/master_256.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=440000,AVERAGE-BANDWIDTH=440000,CODECS="avc1.42c00d,mp4a.40.2",RESOLUTION=320x180,FRAME-RATE=29.970,AUDIO="program_audio",CLOSED-CAPTIONS="CC"
REM set link="https://rcavlive.akamaized.net/hls/live/704020/cancbxft/master_400.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=770000,AVERAGE-BANDWIDTH=770000,CODECS="avc1.66.30,mp4a.40.2",RESOLUTION=640x360,FRAME-RATE=29.970,AUDIO="program_audio",CLOSED-CAPTIONS="CC"
REM set link="https://rcavlive.akamaized.net/hls/live/704020/cancbxft/master_700.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=1210000,AVERAGE-BANDWIDTH=1210000,CODECS="avc1.4d401f,mp4a.40.2",RESOLUTION=852x480,FRAME-RATE=29.970,AUDIO="program_audio",CLOSED-CAPTIONS="CC"
REM set link="https://rcavlive.akamaized.net/hls/live/704020/cancbxft/master_1100.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=1980000,AVERAGE-BANDWIDTH=1980000,CODECS="avc1.4d401f,mp4a.40.2",RESOLUTION=852x480,FRAME-RATE=29.970,AUDIO="program_audio",CLOSED-CAPTIONS="CC"
REM set link="https://rcavlive.akamaized.net/hls/live/704020/cancbxft/master_1800.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=2750000,AVERAGE-BANDWIDTH=2750000,CODECS="avc1.4d401f,mp4a.40.2",RESOLUTION=1280x720,FRAME-RATE=29.970,AUDIO="program_audio",CLOSED-CAPTIONS="CC"
set link="https://rcavlive.akamaized.net/hls/live/704020/cancbxft/master_2500.m3u8"
REM #EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="program_audio",LANGUAGE="fra",NAME="audio_fr",AUTOSELECT=YES,DEFAULT=YES,URI="master_128.m3u8"
REM #EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="program_audio",LANGUAGE="fra",NAME="audio_frdv",AUTOSELECT=YES,DEFAULT=NO,URI="master_dv.m3u8"
set chan_name="RADIO CANADA RDI ICI CA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_91
set link=https://www.filmon.com/tv/rts-un	
set chan_name="RTS UN" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_92
set link=https://www.filmon.com/tv/france-2	
set chan_name="FRANCE 2" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_93
set link=https://www.filmon.com/tv/france-3-rhone-alpes	
set chan_name="FRANCE 3" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_94
set link=https://www.filmon.com/tv/arte-francais	
set chan_name="ARTE Francais" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_95
set link=https://www.filmon.com/tv/france-0	
set chan_name="France O" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_96
set link=https://www.dailymotion.com/video/x13x1q2 
set chan_name="Azur TV FR" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_97
set link=https://players.brightcove.net/5132998232001/H1bPo8t6_default/index.html?videoId=5152968636001  
REM set link="https://www.dailymotion.com/video/x3wqv8b"
set chan_name="BFM TV PARIS" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_98
REM set link="https://live.alsace20.fr/live/alsace20/ngrp:alsace20_all/master.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=716736,CODECS="avc1.42801e,mp4a.40.2",RESOLUTION=640x360
REM set link=https://live.alsace20.fr/live/alsace20/ngrp:alsace20_all/chunklist_w357100756_b657536.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=355936,CODECS="avc1.428015,mp4a.40.2",RESOLUTION=480x270
REM set link=https://live.alsace20.fr/live/alsace20/ngrp:alsace20_all/chunklist_w357100756_b329536.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1550536,CODECS="avc1.428020,mp4a.40.2",RESOLUTION=1280x720
set link=https://live.alsace20.fr/live/alsace20/ngrp:alsace20_all/chunklist_w357100756_b1415536.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=175536,CODECS="avc1.42800d,mp4a.40.2",RESOLUTION=416x234
REM set link=https://live.alsace20.fr/live/alsace20/ngrp:alsace20_all/chunklist_w357100756_b165536.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=3211264,CODECS="avc1.4d4028,mp4a.40.2",RESOLUTION=1920x1080
REM set link=https://live.alsace20.fr/live/alsace20/ngrp:alsace20_all/chunklist_w357100756_b3211264.m3u8
set chan_name="Alsace 20 Fr" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_99
set link=https://www.filmon.com/tv/rts-deux
set chan_name="RTS DEUX" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_100
set link=https://www.dailymotion.com/video/xji3qy
set chan_name="LCP Assemblee National France" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_101
set link=https://www.dailymotion.com/video/xkxbzc
set chan_name="Public Senate France" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_102
set link=https://bcoveliveios-i.akamaihd.net/hls/live/248520/1242843915001_2/master.m3u8
set chan_name="CPAC 1 Francais Canada" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_103
set link="http://diffusionm4.assnat.qc.ca/canal9/250.sdp/playlist.m3u8"   
set chan_name="ASSEMBLEE NATIONAL QUEBEC" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_104
set link="http://stream.canalsavoir.tv/livestream/stream.m3u8"   
set chan_name="CANAL SAVOIR QUEBEC" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_105
set link="https://ec.playmedia.fr/gong-base/live/playlist.m3u8"   
set chan_name="GONG CINEMA" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_106
set link="http://51.254.215.79/appflux/gongmax/GONGMAX/gongmax_1280/chunks.m3u8"   
set chan_name="GONG MAX" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_107
REM set link=http://149.202.81.107:1935/stream/live/playlist.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1638908,CODECS="avc1.77.31,mp4a.40.2",RESOLUTION=960x540
set link=http://149.202.81.107:1935/stream/live/chunklist_w635316941.m3u8
set chan_name="BX1 BE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_108
set link="http://vm109.imust.org:1935/live/livestream/HasBahCa.m3u8"   
set chan_name="ANTENNA CENTER FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_109
set link="rtmp://str81.creacast.com:80/iltv/high"   
set chan_name="ILTV FRANCE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_110
set link="https://www.dailymotion.com/video/x26eox4_live-franceinfo-direct-radio_news"
set chan_name="France Info Radio" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_111
set link="https://www.dailymotion.com/video/xqjkfz_europe-1-live_news"
set chan_name="Europe 1 Radio" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_112
set link="https://www.dailymotion.com/video/xl1km0_regardez-rtl-en-direct-et-en-video_news"
set chan_name="RTL Radio" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_113
set link=https://players.brightcove.net/876630703001/SkKvZlxI_default/index.html?videoId=2623007265001
set chan_name="RMC Talk" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_114
set link="https://www.dailymotion.com/video/x6142rr"
set chan_name="MB TV Monte Blanc
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_115
set link="https://www.dailymotion.com/video/x2fxcwq"
set chan_name="Generations TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_116
set link="https://www.dailymotion.com/video/x38yjeb"
set chan_name="Tv Vendée"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_117
set link="https://www.dailymotion.com/video/xuw47s"
set chan_name="OUATCH TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_118
set link="https://www.dailymotion.com/video/x52et3w"
set chan_name="Suivez Telesud"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_119
set link="https://www.dailymotion.com/video/x46ancl"
set chan_name="TV7 Bordeaux"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_120
set link="https://www.dailymotion.com/video/x35m6bz"
set chan_name="VL"
set /A prior_num="%chan_num%"
goto PLAY_CASE



REM ################################# SPANISH ######################################

:CHAN_121
set link=https://rt-esp.secure.footprint.net/1102-inadv-qidx-1k_v5.m3u8
REM set link=https://rt-esp.secure.footprint.net/1102-inadv-qidx-2k_v5.m3u8
REM set link=https://rt-esp.secure.footprint.net/1102-inadv-qidx-3k_v5.m3u8
REM set link=https://rt-esp.secure.footprint.net/1102-inadv-qidx-4k_v5.m3u8
REM set link=https://rt-esp.secure.footprint.net/1102-inadv-qidx-5k_v5.m3u8
REM ### AUDIO
REM set link=https://rt-esp.secure.footprint.net/1102-inadv-qidx-0k_v5.m3u8

set chan_name="RT ESPANOL" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_122
REM set link=https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_5_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_5_av-b.m3u8?sd=10&rebase=on"
REM EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_4_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_4_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_3_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_3_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_2_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_2_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2"
set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2"
REM set link=https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_1_av-b.m3u8?sd=10&rebase=on
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_5_a-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://dwstream3-lh.akamaihd.net/i/dwstream3_live@124409/index_5_a-b.m3u8?sd=10&rebase=on"

set chan_name="DW ESPANOL" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_123
REM set link="https://live.cgtn.com/cctv-e.m3u8" 
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1096000,RESOLUTION=1280x720,NAME="720p HD"
set link="https://livees.cgtn.com/1000e/prog_index.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=564000,RESOLUTION=640x360,NAME="360p SD"
REM set link="https://livees.cgtn.com/500e/prog_index.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=192000,RESOLUTION=320x180,NAME="180p 3G"
REM set link="https://livees.cgtn.com/200e/prog_index.m3u8"

set chan_name="CGTN ESPANOL" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_124
REM set link=http://f24hls-i.akamaihd.net/hls/live/520844/F24_ES_LO_HLS/master.m3u8
REM set link=http://static.france24.com/live/F24_ES_LO_HLS/live_web.m3u8
set link=http://f24hls-i.akamaihd.net/hls/live/520844/F24_ES_LO_HLS/master_900.m3u8
set chan_name="FRANCE 24 ESPANOL" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_125
set link="https://5a61de8ed719d.streamlock.net/live/smil:live.smil/playlist.m3u8"
set link="https://5a61de8ed719d.streamlock.net/live/smil:live.smil/chunklist_w2093826190_b644100_slen.m3u8"
set chan_name="HISPAN TV" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_126
set link="http://unlimited1-us.dps.live/cnn/cnn.smil/cnn/livestream1/playlist.m3u8"   
REM set link=http://unlimited1-us.dps.live/cnn/cnn.smil/cnn/livestream2/playlist.m3u8
REM set link=http://unlimited1-us.dps.live/cnn/cnn.smil/cnn/livestream3/playlist.m3u8
set chan_name="CNN CHILE" 
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_127
REM set link=http://cdn2.telesur.ultrabase.net/livecf/telesurLive/master.m3u8
set link=https://d2ajt1gpdtnw25.cloudfront.net/mbliveMain/hd/playlist.m3u8
REM set link=https://d2ajt1gpdtnw25.cloudfront.net/mbliveMain/480p/playlist.m3u8
REM set link=https://d2ajt1gpdtnw25.cloudfront.net/mbliveMain/360p/playlist.m3u8
set chan_name="TeleSUR VE"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_128
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_129
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_130
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_131
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_132
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_133
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_134
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_135
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_136
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_137
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_138
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_139
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_140
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_141
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_142
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_143
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_144
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_145
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_146
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_147
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_148
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_149
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_150
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_151
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_152
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_153
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_154
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_155
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_156
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_157
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_158
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_159
set /A prior_num="%chan_num%"
chan_name="UNASSIGNED"
goto MENU_!menu_num!
:CHAN_160
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!

REM #################################  OTHER ###########################################

:CHAN_161
set link="https://www.dailymotion.com/video/x630wrb"
set chan_name="VAR AZUR"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_162
set link="https://www.dailymotion.com/video/x6nhqs0"
set chan_name="8 Mont Blanc Live 2"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_163
set link="https://www.dailymotion.com/video/x128fjo"
set chan_name="téléGrenoble Isère"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_164
set link="https://www.dailymotion.com/video/x2tzzpj"
set chan_name="RTL2"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_165
set link="https://www.dailymotion.com/video/x10990v"
set chan_name="OUI FM"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_166
set link="https://www.dailymotion.com/video/x6cq41k"
set chan_name="D24TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_167
set link="https://www.dailymotion.com/video/x3wqv8b"
set chan_name="8 Mont Blanc"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_168
set chan_name="Unassigned"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!

:CHAN_169
set chan_name="Unassigned"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!


:CHAN_170
chan_name="WDR Germany"
REM set link=http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=184000,RESOLUTION=320x180,CODECS="avc1.66.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_184_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=184000,RESOLUTION=320x180,CODECS="avc1.66.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_184_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=320000,RESOLUTION=480x270,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_320_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=320000,RESOLUTION=480x270,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_320_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=608000,RESOLUTION=512x288,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_608_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=608000,RESOLUTION=512x288,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_608_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1216000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_1216_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1216000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_1216_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1992000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_1992_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1992000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_1992_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2691000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_2692_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2691000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_2692_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=3776000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_3776_av-p.m3u8?sd=10&rebase=on"
REM set #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=3776000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_3776_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=56000,CODECS="mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_184_a-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=56000,CODECS="mp4a.40.2"
REM set link="http://wdr_fs-lh.akamaihd.net/i/wdrfs_weltweit@112033/index_184_a-b.m3u8?sd=10&rebase=on"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_171
REM set link="https://dwstream6-lh.akamaihd.net/i/dwstream6_live@123962/master.m3u8"   
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream6-lh.akamaihd.net/i/dwstream6_live@123962/index_5_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream6-lh.akamaihd.net/i/dwstream6_live@123962/index_4_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream6-lh.akamaihd.net/i/dwstream6_live@123962/index_3_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream6-lh.akamaihd.net/i/dwstream6_live@123962/index_2_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2"
set link="https://dwstream6-lh.akamaihd.net/i/dwstream6_live@123962/index_1_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
set chan_name="DW Deutsche"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_172
set link=https://www.filmon.com/tv/zdf-infokanal
set chan_name="ZDF InfoKanal"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_173
REM set link=https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=184000,RESOLUTION=320x180,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_184_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=184000,RESOLUTION=320x180,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_184_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=320000,RESOLUTION=480x270,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_320_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=320000,RESOLUTION=480x270,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_320_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=608000,RESOLUTION=512x288,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_608_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=608000,RESOLUTION=512x288,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_608_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1152000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_1152_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1152000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_1152_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1992000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_1992_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1992000,RESOLUTION=960x540,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_1992_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=3776000,RESOLUTION=1280x720,CODECS="avc1.64001f, mp4a.40.2"
set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_3776_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=3776000,RESOLUTION=1280x720,CODECS="avc1.64001f, mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_3776_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=56000,CODECS="mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_184_a-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=56000,CODECS="mp4a.40.2"
REM set link="https://tagesschau-lh.akamaihd.net/i/tagesschau_1@119231/index_184_a-b.m3u8?sd=10&rebase=on"
set chan_name="Tagesschau/MOMA"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_174
link="https://llnw.live.qvc.simplestream.com/hera/remote/qvcde_primary_sdi7/2/prog_index.m3u8"
set chan_name="QVC DE"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_175
link="https://br-i.akamaihd.net/i/tafeln/br-fernsehen/br-fernsehen-tafel_,0,A,B,E,C,X,.mp4.csmil/index_2_av.m3u8?null=0"
set chan_name="ADR Alpha Live DE"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_176
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/master.m3u8" 
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_5_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_5_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_4_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_4_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_3_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_3_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_2_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_2_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2"
set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_1_av-b.m3u8?sd=10&rebase=on"
REM EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_5_a-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://dwstream5-lh.akamaihd.net/i/dwstream5_live@124540/index_5_a-b.m3u8?sd=10&rebase=on"
set chan_name="DW + Deutsche"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_177
set link="https://ms03.w24.at/W24/smil:liveevent.smil/chunklist_w1902571248_b1088000_slger.m3u8"
REM set link="https://ms03.w24.at/W24/smil:liveevent.smil/chunklist_w1902571248_b448000_slger.m3u8"
set chan_name="W24 Wein Austria"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_178
REM set link=http://lb.hd-livestream.de:1935/live/TirolTV/playlist.m3u8
set link="http://lb.hd-livestream.de:1935/live/TirolTV/chunklist_w1916857628.m3u8"
set chan_name="Tirol TV Austria"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_179
set link=https://www.filmon.com/tv/srf-1
set chan_name="SRF CH"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_180
set chan_name="Unassigned"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!

:CHAN_181
REM set link="https://ngx.cr6.streamzilla.xlcdn.com/session/9a63fab68b13d1eca45acd9e1b890d70/sz/atvijf/wowza4/live/live.smil/playlist.m3u8"
REM set link="https://ngx.cr2.streamzilla.xlcdn.com/session/cfe18ffd42a318a654dd596ef2097868/sz/atvijf/wowza4/live/live.smil/chunklist_b1048576.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=1153433,RESOLUTION=640x512
REM set link="https://ngx.cr6.streamzilla.xlcdn.com/session/9a63fab68b13d1eca45acd9e1b890d70/sz/atvijf/wowza4/live/live.smil/chunklist_b1048576.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=2306867,RESOLUTION=768x608
set link="https://ngx.cr6.streamzilla.xlcdn.com/session/9a63fab68b13d1eca45acd9e1b890d70/sz/atvijf/wowza4/live/live.smil/chunklist_b2097152.m3u8"
REM #EXT-X-STREAM-INF:BANDWIDTH=3460300,RESOLUTION=1920x1536
REM set link="https://ngx.cr6.streamzilla.xlcdn.com/session/9a63fab68b13d1eca45acd9e1b890d70/sz/atvijf/wowza4/live/live.smil/chunklist_b3145728.m3u8"
set chan_name="AT5 Netherlands"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_182
REM set link=http://evronovosti.mediacdn.ru/sr1/evronovosti/playlist.m3u8
set link=http://evronovosti.mediacdn.ru/sr1/evronovosti/playlist_2m.m3u8
REM set link=http://evronovosti.mediacdn.ru/sr1/evronovosti/playlist_1m.m3u8
set chan_name="Euronews Russian"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_183
REM set link=https://live.russia.tv/index/index/channel_id/3
set link=https://www.filmon.com/tv/rossiya-24
set chan_name="POCCNR 24 RU"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_184
set link=http://online.video.rbc.ru/online/rbctv_480p/index.m3u8
REM set link=http://online.video.rbc.ru/online/rbctv_360p/index.m3u8
set chan_name="RBC RU"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_185
REM set link=https://live.cgtn.com/cctv-r.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1096000,RESOLUTION=1280x720,NAME="720p HD"
set link=https://liveru.cgtn.com/1000r/prog_index.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=564000,RESOLUTION=640x360,NAME="360p SD"
REM set link=https://liveru.cgtn.com/500r/prog_index.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=192000,RESOLUTION=320x180,NAME="180p 3G"
REM set link=https://liveru.cgtn.com/200r/prog_index.m3u8
set chan_name="CCTV RUSSIAN"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_186
set link=https://live.russia.tv/index/index/channel_id/199
set chan_name="Vesti FM RU"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_187
set link=https://www.filmon.com/tv/current-time-tv
set chan_name="Current TIme VOA"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_188
set link=https://live.russia.tv/index/index/channel_id/82
set chan_name="RTR Planeta RU"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_189
REM set link=https://www.filmon.com/tv/perviy-kanal-europa
set link=https://edge1.1internet.tv/dash-live11/streams/1tv/1tvdash.mpd
set chan_name="1 Europa RU"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_190
set link=https://www.filmon.com/tv/music-box-russia
set chan_name="Music Box Russia"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_191
set link=https://live.russia.tv/index/index/channel_id/76
set chan_name="MOSCKVA 24 RU"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_192
set link=http://live.russia.tv/index/index/channel_id/1
set chan_name="POCCNR 1 HD RU"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_193
set link=https://ua-tv-hls3.cosmonova.net.ua/hls/ua-tv_ua_mid/index.m3u8
REM set link=https://ua-tv-hls3.cosmonova.net.ua/hls/ua-tv_ua_hi/index.m3u8
REM set link=https://ua-tv-hls3.cosmonova.net.ua/hls/ua-tv_ua_low/index.m3u8
set chan_name="UA TV Ukraine"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_194
set link="http://livebeta.publika.md/LIVE/P/6810.m3u8"
set chan_name="TV Publica Moldova"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_195
set link="http://skyianywhere2-i.akamaihd.net/hls/live/200275/tg24/playlist.m3u8"
set chan_name="SKY 24 Italian"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_196
set link=http://www.filmon.com/tv/rsi-la-1
set chan_name="RSI LA 1 CH"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_197
REM set link="http://telecolor.econcept.it/live/telecolor.isml/manifest\(format=m3u8-aapl\).m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=313356,RESOLUTION=320x240
REM set link="http://telecolor.econcept.it/live/telecolor.isml/QualityLevels\(298000\)/manifest\(format=m3u8-aapl\).m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=466656,RESOLUTION=400x300
REM set link="http://telecolor.econcept.it/live/telecolor.isml/QualityLevels\(448000\)/manifest\(format=m3u8-aapl\).m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=671056,RESOLUTION=640x480
set link="http://telecolor.econcept.it/live/telecolor.isml/QualityLevels\(648000\)/manifest\(format=m3u8-aapl\).m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=53456
REM set link="http://telecolor.econcept.it/live/telecolor.isml/QualityLevels\(48000\)/manifest\(format=m3u8-aapl\).m3u8"
set chan_name="Telecolor Lombardia IT"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_198
set link="http://www.dailymotion.com/video/xqjey2_star-lamia-live-streaming_news"
set chan_name="Star Lamia"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_199
set link="http://www.dailymotion.com/video/x61fbhs"
set chan_name="Action 24 Greece"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_200
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTHABERHD_1@181942/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=624000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTHABERHD_1@181942/index_600_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=124000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTHABERHD_1@181942/index_600_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=822000,RESOLUTION=852x480,CODECS="avc1.66.30, mp4a.40.2"
set link="https://trtcanlitv-lh.akamaihd.net/i/TRTHABERHD_1@181942/index_900_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=124000,RESOLUTION=852x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTHABERHD_1@181942/index_900_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1017000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTHABERHD_1@181942/index_1500_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=124000,RESOLUTION=1280x720,CODECS="avc1.64001f, mp4a.40.2"
REM set link="https://trtcanlitv-lh.akamaihd.net/i/TRTHABERHD_1@181942/index_1500_av-b.m3u8?sd=10&rebase=on"
set chan_name="TRT HABER"
goto PLAY_CASE

REM ############################## OTHER II ##########################################
:CHAN_201
set link=https://www.twitch.tv/amouranth
set chan_name="Amouranth"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_202
set link=https://www.twitch.tv/geekandsundry
set chan_name="Geek and Sundry"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_203
set link=https://adultswim-vodlive.cdn.turner.com/live/robot-chicken/stream.m3u8
set chan_name="Robot Chicken"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_204
set link=http://247retrotv.com:1935/live/smil:247retro.smil/playlist.m3u8
set chan_name="Retro TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_205
set link=https://www.twitch.tv/contv
set chan_name="Con TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_206
set link=https://www.twitch.tv/shoutfactorytv
set chan_name="Shout Factory"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_207
set link=https://www.twitch.tv/elevensportsnext
set chan_name="11 Sports Next"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_208
set link=http://players.brightcove.net/1675170007001/Hyo4oydd_default/index.html?videoId=5409283781001
set chan_name="EWTN English"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_209
set link=http://players.brightcove.net/1675170007001/Hyo4oydd_default/index.html?videoId=5409261120001
set chan_name="EWTN Ireland"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_210
set link=http://players.brightcove.net/1675170007001/Hyo4oydd_default/index.html?videoId=5409267772001
set chan_name="EWTN Africa"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_211
set link=http://players.brightcove.net/1675170007001/Hyo4oydd_default/index.html?videoId=5405034951001
set chan_name="EWNT Asia"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_212
set link="https://livestream.5centscdn.com/slworld/d65ce2bdd03471fde0a1dc5e01d793bb.sdp/tracks-v1a1/index.m3u8"
REM setlink="https://livestream.5centscdn.com/slworld/d65ce2bdd03471fde0a1dc5e01d793bb.sdp/index.m3u8"
REM #EXT-X-STREAM-INF:CLOSED-CAPTIONS=NONE,RESOLUTION=1280x720,FRAME-RATE=29.970,CODECS="avc1.64001f,mp4a.40.2",AVERAGE-BANDWIDTH=1712766,BANDWIDTH=2140957
REM set link="https://livestream.5centscdn.com/slworld/d65ce2bdd03471fde0a1dc5e01d793bb.sdp/tracks-v1a1/tracks-v1a1/mono.m3u8"
set chan_name="Salt and Light TV Canada"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_213
REM set link=http://catholictvhd-lh.akamaihd.net:80/i/ctvhd_1@88148/master.m3u8
REM set link=http://catholictvhd-lh.akamaihd.net:80/i/ctvhd_1@88148/index_1_av-p.m3u8 
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=645000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_5_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=646000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_5_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=896000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_4_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=896000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_4_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1296000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_3_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1296000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_3_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1896000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_2_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1896000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_2_av-b.m3u8?sd=10&rebase=on"
REM EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2496000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2496000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://catholictvhd-lh.akamaihd.net/i/ctvhd_1@88148/index_1_av-b.m3u8?sd=10&rebase=on"
set chan_name="Catholic TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_214
set link=http://players.brightcove.net/1675170007001/Hyo4oydd_default/index.html?videoId=5409267805001
set chan_name="EWTN Espanol"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_215
set link=http://players.brightcove.net/1675170007001/Hyo4oydd_default/index.html?videoId=5409283775001
set chan_name="EWTN Deutsche"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_216
REM set link=http://livehdkto-lh.akamaihd.net/i/LiveStream_1@178944/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=364000,RESOLUTION=320x178,CODECS="avc1.66.30, mp4a.40.2"
REM set link="http://livehdkto-lh.akamaihd.net/i/LiveStream_1@178944/index_300_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=364000,RESOLUTION=320x178,CODECS="avc1.66.30, mp4a.40.2"
REM set link="http://livehdkto-lh.akamaihd.net/i/LiveStream_1@178944/index_300_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=896000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
set link="http://livehdkto-lh.akamaihd.net/i/LiveStream_1@178944/index_800_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=896000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://livehdkto-lh.akamaihd.net/i/LiveStream_1@178944/index_800_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1328000,RESOLUTION=720x404,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://livehdkto-lh.akamaihd.net/i/LiveStream_1@178944/index_1200_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1328000,RESOLUTION=720x404,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://livehdkto-lh.akamaihd.net/i/LiveStream_1@178944/index_1200_av-b.m3u8?sd=10&rebase=on"
set chan_name="KTO Cahtolique"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_217
REM #link=http://bcliveuniv-lh.akamaihd.net/i/iptv1_1@194050/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=564000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/iptv1_1@194050/index_500_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=564000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/iptv1_1@194050/index_500_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1264000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/iptv1_1@194050/index_1200_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1264000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/iptv1_1@194050/index_1200_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2064000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
set link="http://bcliveuniv-lh.akamaihd.net/i/iptv1_1@194050/index_2000_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=2064000,RESOLUTION=1280x720,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/iptv1_1@194050/index_2000_av-b.m3u8?sd=10&rebase=on"
set chan_name="CBN"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_218
REM set link=http://bcliveuniv-lh.akamaihd.net/i/news_1@194050/master.m3u8
REM EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=364000,RESOLUTION=480x270,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/news_1@194050/index_150_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=364000,RESOLUTION=480x270,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/news_1@194050/index_150_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=664000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/news_1@194050/index_500_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=664000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/news_1@194050/index_500_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1264000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
set link="http://bcliveuniv-lh.akamaihd.net/i/news_1@194050/index_900_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1264000,RESOLUTION=854x480,CODECS="avc1.77.30, mp4a.40.2"
REM set link="http://bcliveuniv-lh.akamaihd.net/i/news_1@194050/index_900_av-b.m3u8?sd=10&rebase=on"
set chan_name="CBN News"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_219
REM set link="https://ihoplive-f.akamaihd.net/i/ihopkc_tprhd@142185/master.m3u8
REM set link="https://ihoplive-f.akamaihd.net/i/ihopkc_tprhd@142185/index_1000_av-p.m3u8?sd=6&set-segment-duration=quality&rebase=on"
set link="https://ihoplive-f.akamaihd.net/i/ihopkc_tprhd@142185/index_2500_av-p.m3u8?sd=6&set-segment-duration=quality&rebase=on"
REM set link="https://ihoplive-f.akamaihd.net/i/ihopkc_tprhd@142185/index_4001_av-p.m3u8?sd=6&set-segment-duration=quality&rebase=on"
set chan_name="International House of Prayer IHOP"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_220
set link="https://www.dailymotion.com/video/x6inuzo"
set chan_name="Top News Albania"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_221
set link=https://rt-arab.secure.footprint.net/1104-inadv-qidx-1k_v5.m3u8
REM set link=https://rt-arab.secure.footprint.net/1104-inadv-qidx-2k_v5.m3u8
REM set link=https://rt-arab.secure.footprint.net/1104-inadv-qidx-3k_v5.m3u8
REM set link=https://rt-arab.secure.footprint.net/1104-inadv-qidx-4k_v5.m3u8
REM set link=https://rt-arab.secure.footprint.net/1104-inadv-qidx-5k_v5.m3u8
### AUDIO
REM set link=https://rt-arab.secure.footprint.net/1104-inadv-qidx-0k_v5.m3u8
set chan_name="RT Arabic"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_222
REM set link=http://static.france24.com/live/F24_AR_LO_HLS/live_web.m3u8
REM set link=http://f24hls-i.akamaihd.net/hls/live/221196/F24_AR_LO_HLS/master.m3u8
REM set link=http://f24hls-i.akamaihd.net/hls/live/221196-b/F24_AR_LO_HLS/master.m3u8
REM #EXT-X-STREAM-INF:BANDWIDTH=1095600,AVERAGE-BANDWIDTH=1095600,CODECS="avc1.4d401f,mp4a.40.2",RESOLUTION=1024x576,FRAME-RATE=25.000,AUDIO="program_audio"
set link=http://f24hls-i.akamaihd.net/hls/live/221196-b/F24_AR_LO_HLS/master_900.m3u8
REM set link=http://f24hls-i.akamaihd.net/hls/live/221196/F24_AR_LO_HLS/master_900.m3u8
#EXT-X-MEDIA:TYPE=AUDIO,GROUP-ID="program_audio",LANGUAGE="fra",NAME="audio_1",AUTOSELECT=YES,DEFAULT=YES,URI="master_96.m3u8"
set chan_name="France24 Arabic"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_223
REM set link=https://bbcwshdlive01-lh.akamaihd.net/i/atv_1@61433/master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=192000,RESOLUTION=256x144,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://bbcwshdlive01-lh.akamaihd.net/i/atv_1@61433/index_192_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=400000,RESOLUTION=512x288,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://bbcwshdlive01-lh.akamaihd.net/i/atv_1@61433/index_400_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=800000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.2"
set link="https://bbcwshdlive01-lh.akamaihd.net/i/atv_1@61433/index_800_av-p.m3u8?sd=10&rebase=on"
set chan_name="BBC Arabic"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_224
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/master.m3u8"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_5_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=163000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_5_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_4_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=264000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_4_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_3_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=464000,RESOLUTION=400x224,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_3_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_2_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=864000,RESOLUTION=640x360,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_2_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2"
set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1664000,RESOLUTION=720x400,CODECS="avc1.77.30, mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_1_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_5_a-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=64000,CODECS="mp4a.40.2"
REM set link="https://dwstream2-lh.akamaihd.net/i/dwstream2_live@124400/index_5_a-b.m3u8?sd=10&rebase=on"
set chan_name="DW Arabic"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_225
REM set link=https://live.cgtn.com/cctv-a.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=1096000,RESOLUTION=1280x720,NAME="720p HD"
set link=https://livear.cgtn.com/1000a/prog_index.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=564000,RESOLUTION=640x360,NAME="360p SD"
REM set link=https://livear.cgtn.com/500a/prog_index.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=192000,RESOLUTION=320x180,NAME="180p 3G"
REM link=https://livear.cgtn.com/200a/prog_index.m3u8
set chan_name="CCTV Arabic"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_226
REM set link=http://aljazeera-ara-apple-live.adaptive.level3.net/apple/aljazeera/arabic/appleman.m3u8
set link=http://aljazeera-ara-apple-live.adaptive.level3.net/apple/aljazeera/arabic/800.m3u8
REM set link=http://aljazeera-ara-apple-live.adaptive.level3.net/apple/aljazeera/arabic/300.m3u8
REM set link=http://aljazeera-ara-apple-live.adaptive.level3.net/apple/aljazeera/arabic/160.m3u8
REM set link=http://aljazeera-ara-apple-live.adaptive.level3.net/apple/aljazeera/arabic/160audio.m3u8
set chan_name="Al Jazeera Arabic"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_227
set link=http://aljazeera-doc-apple-live.adaptive.level3.net/apple/aljazeera/hq-doc/1600kStream.m3u8
REM set link=http://aljazeera-doc-apple-live.adaptive.level3.net/apple/aljazeera/hq-doc/1200kStream.m3u8
REM set link=http://aljazeera-doc-apple-live.adaptive.level3.net/apple/aljazeera/hq-doc/800kStream.m3u8
REM set link=http://aljazeera-doc-apple-live.adaptive.level3.net/apple/aljazeera/hq-doc/600kStream.m3u8
set chan_name="Al Jazeera Docs"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_228
REM set link=http://aljazeera-mubasher-apple-live.adaptive.level3.net/apple/aljazeera/mubasher/appleman.m3u8
set link=http://aljazeera-mubasher-apple-live.adaptive.level3.net/apple/aljazeera/mubasher/800.m3u8
REM set link=http://aljazeera-mubasher-apple-live.adaptive.level3.net/apple/aljazeera/mubasher/600.m3u8
REM set link=http://aljazeera-mubasher-apple-live.adaptive.level3.net/apple/aljazeera/mubasher/300.m3u8
REM set link=http://aljazeera-mubasher-apple-live.adaptive.level3.net/apple/aljazeera/mubasher/160.m3u8
REM set link=http://aljazeera-mubasher-apple-live.adaptive.level3.net/apple/aljazeera/mubasher/160audio.m3u8
set chan_name="Al Jazeera Mubasher"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_229
set link=https://www.filmon.com/tv/saudi-arabian-tv-1
set chan_name="Saudia Arabia KSA1"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_230
set link=https://www.filmon.com/tv/saudi-arabian-tv-sports
set chan_name="Saudi Arabia Sports"
set /A prior_num="%chan_num%"
goto PLAY_CASE

:CHAN_231
REM set link=https://indiatvnews-lh.akamaihd.net/i/ITV_1@199237//master.m3u8
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=244000,RESOLUTION=426x240,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://indiatvnews-lh.akamaihd.net/i/ITV_1@199237/index_3_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=244000,RESOLUTION=426x240,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://indiatvnews-lh.akamaihd.net/i/ITV_1@199237/index_3_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=364000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://indiatvnews-lh.akamaihd.net/i/ITV_1@199237/index_2_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=364000,RESOLUTION=640x360,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://indiatvnews-lh.akamaihd.net/i/ITV_1@199237/index_2_av-b.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=576000,RESOLUTION=854x480,CODECS="avc1.66.30, mp4a.40.2"
set link="https://indiatvnews-lh.akamaihd.net/i/ITV_1@199237/index_1_av-p.m3u8?sd=10&rebase=on"
REM #EXT-X-STREAM-INF:PROGRAM-ID=1,BANDWIDTH=576000,RESOLUTION=854x480,CODECS="avc1.66.30, mp4a.40.2"
REM set link="https://indiatvnews-lh.akamaihd.net/i/ITV_1@199237/index_1_av-b.m3u8?sd=10&rebase=on"
set chan_name="India TV"
set /A prior_num="%chan_num%"
goto PLAY_CASE


:CHAN_232
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_233
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_234
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_235
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_236
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_237
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_238
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_239
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!
:CHAN_240
chan_name="UNASSIGNED"
set /A prior_num="%chan_num%"
goto MENU_!menu_num!

REM ##################################################################################

:PLAY_CASE
TITLE %PRODUCT% %chan_name% on Channel %chan_num%

ECHO Playing %chan_name% on Channel %chan_num%

IF !MODE!=="VIDEO" ( 
mpv --fs --resume-playback=no --loop-playlist=inf %link%
) ELSE IF !MODE!=="AUDIO" ( 
mpv --fs --resume-playback=no --loop-playlist=inf --no-video %link%
) ELSE IF !MODE!=="NOAUDIO" ( 
mpv --fs --resume-playback=no --loop-playlist=inf --no-audio %link%
) ELSE (
mpv --fs --resume-playback=no --loop-playlist=inf %link%
)

ECHO You were watching %chan_name% on Channel %chan_num%

goto MENU_!menu_num!


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