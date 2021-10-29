; v1.0.1 by KirbyMIMI NTSC translation by Colt Zero updated by magi 10/29/21
;	Assembly		                                                AR Code
.open "sys/main.dol"

;    m_Do_controller_pad__mDoCPd_Create + 0x4C
.org 0x80007ABC                                            ;  04007ABC
  nop                                                      ;v 60000000
;    m_Do_controller_pad__mDoCPd_Create + 0x60
.org 0x80007AD0                                            ;  04007AD0
  li      r4,0x1                                           ;v 38800001
;    m_Do_controller_pad__mDoCPd_Create + 0x74
.org 0x80007AE4                                            ;  04007AE4
  stw     r0,0x4(r3)                                       ;v 90030004

;    m_Do_graphic__drawDepth
.org 0x80008F34                                            ;  04008F34
  blr                                                      ;v 4E800020

;    m_Do_graphic__mDoGph_Painter + 0x74
.org 0x8000AFA0                                            ;  0400AFA0
  bl      JFWDisplay__beginRender                          ;v 4824A92D
  lis     r3,-0x7FFD                                       ;v 3C608003
  ori     r4,r3,0xE318                                     ;v 6064E318
  ori     r3,r3,0xE338                                     ;v 6063E338
  bl      f_pc_draw__fpcDw_Handler                         ;v 4803551D
;    m_Do_graphic__mDoGph_Painter + 0x198
.org 0x8000B0C4                                            ;  0400B0C4
  bl      TRK_MINNOW_DOLPHIN__TRKNubMainLoop_B0            ;v 48325ED1
;    m_Do_graphic__mDoGph_Painter + 0xCCC
.org 0x8000BBF8                                            ;  0400BBF8
  lwz     r3,-0x6D50(r13)                                  ;v 806D92B0
  nop                                                      ;v 60000000
  bl      JFWDisplay__endRender                            ;v 48249EB9
;    m_Do_graphic__mDoGph_Painter + 0xCF0
.org 0x8000BC1C                                            ;  0400BC1C
  bl      TRK_MINNOW_DOLPHIN__TRKInitializeNub_44          ;v 48325679

;    m_Do_machine__mDoMch_Create + 0xB4
;    uncomment the below two lines for expanded memory
;.org 0x8000C7C0                                            ;  0400C7C0
;  nop                                                      ;v 60000000
;    m_Do_machine__mDoMch_Create + 0x13C
;    uncomment the below two lines for expanded memory
;.org 0x8000C848                                            ;  0400C848
;  lis r0, 0x6C                                             ;v 3C00006C
;    m_Do_machine__mDoMch_Create + 0x2D0
;    comment the below two lines for expanded memory
.org 0x8000C9DC                                            ;  0400C9DC
  lis     r3,0x9A                                          ;v 3C60009A
;    m_Do_machine__mDoMch_Create + 0x2E0
.org 0x8000C9EC                                            ;  0400C9EC
  lis     r3,0x37                                          ;v 3C600037

;    fopAcM_searchActorAngleY + 0x10
.org 0x80025260                                            ;  04025260
  bl      TRK_MINNOW_DOLPHIN__TRKMessageSend_40            ;v 4830C165

;    fopAcM_searchActorDistance
.org 0x800252BC                                            ;  040252BC
  b       TRK_MINNOW_DOLPHIN__TRKInitializeNub_A4          ;v 4830C038

;    fopAcM_searchActorDistanceXZ
.org 0x800253C0                                            ;  040253C0
  b       TRK_MINNOW_DOLPHIN__TRKInitializeNub_10C         ;v 4830BF9C

;    f_pc_manager__fpcM_Management + 0xDC
.org 0x8003ED60                                            ;  0403ED60
  nop                                                      ;v 60000000

;    d_stage__dStage_playerInit + 0x31C
.org 0x80041E10                                            ;  04041E10
  bl      TRK_MINNOW_DOLPHIN__TRKGetNextEvent_78           ;v 482EF361

;    d_stage__dStage_cameraInit + 0x10
.org 0x80041E94                                            ;  04041E94
  li      r31,0x0                                          ;v 3BE00000
  addi    r4,r4,0x4                                        ;v 38840004
  stw     r4,0x4(r3)                                       ;v 90830004
;    d_stage__dStage_cameraInit_1C
  li      r4,0x0                                           ;v 38800000
  li      r5,0x0                                           ;v 38A00000
  bl      d_stage__dStage_cameraCreate                     ;v 4BFFF7F5
  cmpwi   r31,0x0                                          ;v 2C1F0000
  li      r31,0x1                                          ;v 3BE00001
  beq     d_stage__dStage_cameraInit_1C                    ;v 4182FFEC
  lwz     r31,0xC(r1)                                      ;v 83E1000C
  addi    r1,r1,0x10                                       ;v 38210010
  lwz     r0,0x4(r1)                                       ;v 80010004
  mtlr    r0                                               ;v 7C0803A6
  blr                                                      ;v 4E800020

;    dEvent_exception_c__setStartDemo + 0xE8
.org 0x800738DC                                            ;  040738DC
  bl      TRK_MINNOW_DOLPHIN__TRKGetNextEvent_64           ;v 482BD881

;    dEvent_manager_c__startProc + 0xA4
.org 0x80074094                                            ;  04074094
  bl      TRK_MINNOW_DOLPHIN__TRKGetNextEvent_1C           ;v 482BD081
;    dEvent_manager_c__startProc + 0x114
.org 0x80074104                                            ;  04074104
  b       TRK_MINNOW_DOLPHIN__TRKInitializeNub_78          ;v 482BD1C4

;    dEvent_manager_c__closeProc + 0x8
.org 0x80074110                                            ;  04074110
  b       TRK_MINNOW_DOLPHIN__TRKInitializeNub_88          ;v 482BD1C8

;    dDlst_shadowControl_c__imageDraw + 0xD0
.org 0x80084EBC                                            ;  04084EBC
  nop                                                      ;v 60000000

;    dAttention_c__dAttention_c + 0x14
.org 0x8009D2F4                                            ;  0409D2F4
  bl      TRK_MINNOW_DOLPHIN__TRKInitializeEventQueue_8    ;v 48293EC1

;    d_attention__select_attention
.org 0x8009E2CC                                            ;  0409E2CC
  mr      r6,r3                                            ;v 7C661B78
  li      r3,0x0                                           ;v 38600000
  lwz     r5,0x10(r6)                                      ;v 80A60010
  lis     r0,-0x7FC8                                       ;v 3C008038
  ori     r0,r0,0xFD8C    ; d_a_player_main__g_profile_PLAYER ;v 6000FD8C
  cmpw    r0,r5                                            ;v 7C002800
  beqlr                                                    ;v 4D820020
  mr      r3,r4                                            ;v 7C832378
  mr      r4,r6                                            ;v 7CC43378
  b       dAttention_c__SelectAttention                    ;v 4800004C

;    dAttention_c__judgementButton + 0x74
.org 0x8009EE34                                            ;  0409EE34
  lwz     r4,0x190(r3)                                     ;v 80830190
;    dAttention_c__judgementButton + 0xA8
.org 0x8009EE68                                            ;  0409EE68
  lwz     r4,0x190(r3)                                     ;v 80830190

;    dAttention_c__judgementStatusSw + 0x88
.org 0x8009EFC8                                            ;  0409EFC8
  lwz     r3,0x190(r31)                                    ;v 807F0190

;    dAttention_c__Run + 0xF8
.org 0x8009F2CC                                            ;  0409F2CC
  lwz     r3,0x190(r31)                                    ;v 807F0190
;    dAttention_c__Run + 0x168
.org 0x8009F33C                                            ;  0409F33C
  lwz     r3,0x190(r31)                                    ;v 807F0190

;    d_a_item__itemGetCallBack + 0x24
.org 0x800F5000                                            ;  040F5000
  lhz     r31,0x12(r29)                                    ;v A3FD0012
;    d_a_item__itemGetCallBack + 0x40
.org 0x800F501C                                            ;  040F501C
  cmplwi  r31,0xFD8C      ; d_a_player_main__g_profile_PLAYER ;v 281FFD8C

;    daPy_py_c__changePlayer + 0x30
.org 0x8010292C                                            ;  0410292C
  nop                                                      ;v 60000000

;    daPy_lk_c__draw + 0x588
.org 0x80107890                                            ;  04107890
  bl      TRK_MINNOW_DOLPHIN__TRKMessageSend_124           ;v 48229C19
;    daPy_lk_c__draw + 0x608
.org 0x80107910                                            ;  04107910
  bl      TRK_MINNOW_DOLPHIN__TRKMessageSend_124           ;v 48229B99
;    daPy_lk_c__draw + 0x70C
.org 0x80107A14                                            ;  04107A14
  bl      TRK_MINNOW_DOLPHIN__TRKMessageSend_124           ;v 48229A95
;    daPy_lk_c__draw + 0x78C
.org 0x80107A94                                            ;  04107A94
  bl      TRK_MINNOW_DOLPHIN__TRKMessageSend_124           ;v 48229A15

;    daPy_lk_c__setAtnList + 0x24
.org 0x80108248                                            ;  04108248
  nop                                                      ;v 60000000

;    daPy_lk_c__checkNextActionFromButton + 0x87C
.org 0x8010E3D4                                            ;  0410E3D4
  nop                                                      ;v 60000000

;    daPy_lk_c__changeWaitProc + 0x58
.org 0x80110008                                            ;  04110008
  b       daPy_lk_c__changeWaitProc_64                     ;v 4800000C

;    daPy_lk_c__changeDamageProc + 0xE4
.org 0x80110738                                            ;  04110738
  nop                                                      ;v 60000000

;    daPy_lk_c__setStickData + 0x3C
.org 0x8011F9FC                                            ;  0411F9FC
  b       daPy_lk_c__setStickData_50                       ;v 48000014
;    daPy_lk_c__setStickData + 0x194
.org 0x8011FB54                                            ;  0411FB54
  lwz     r3,0x4C28(r29)                                   ;v 807D4C28
;    daPy_lk_c__setStickData + 0x1C8
.org 0x8011FB88                                            ;  0411FB88
  lwz     r3,0x4C28(r29)                                   ;v 807D4C28
;    daPy_lk_c__setStickData + 0x1F4
.org 0x8011FBB4                                            ;  0411FBB4
  bl      TRK_MINNOW_DOLPHIN__TRKDestructEvent_20          ;v 48211449
;    daPy_lk_c__setStickData + 0x218
.org 0x8011FBD8                                            ;  0411FBD8
  lwz     r5,0x4C28(r29)                                   ;v 80BD4C28
;    daPy_lk_c__setStickData + 0x248
.org 0x8011FC08                                            ;  0411FC08
  lwz     r4,0x4C28(r29)                                   ;v 809D4C28
;    daPy_lk_c__setStickData + 0x32C
.org 0x8011FCEC                                            ;  0411FCEC
  lwz     r3,0x4C28(r29)                                   ;v 807D4C28
;    daPy_lk_c__setStickData + 0x34C
.org 0x8011FD0C                                            ;  0411FD0C
  lwz     r3,0x4C28(r29)                                   ;v 807D4C28
;    daPy_lk_c__setStickData + 0x374
.org 0x8011FD34                                            ;  0411FD34
  lwz     r5,0x4C28(r29)                                   ;v 80BD4C28
;    daPy_lk_c__setStickData + 0x420
.org 0x8011FDE0                                            ;  0411FDE0
  lwz     r3,0x4C28(r29)                                   ;v 807D4C28

;    daPy_lk_c__execute + 0x154
.org 0x801219C4                                            ;  041219C4
  b       daPy_lk_c__execute_1A4                           ;v 48000050
;    daPy_lk_c__execute + 0x2F0
.org 0x80121B60                                            ;  04121B60
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x2F8
.org 0x80121B68                                            ;  04121B68
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x300
.org 0x80121B70                                            ;  04121B70
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x308
.org 0x80121B78                                            ;  04121B78
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x314
.org 0x80121B84                                            ;  04121B84
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x31C
.org 0x80121B8C                                            ;  04121B8C
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x324
.org 0x80121B94                                            ;  04121B94
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x330
.org 0x80121BA0                                            ;  04121BA0
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x338
.org 0x80121BA8                                            ;  04121BA8
  nop                                                      ;v 60000000
;    daPy_lk_c__execute + 0x133C
.org 0x80122BAC                                            ;  04122BAC
  b       daPy_lk_c__execute_1350                          ;v 48000014

;    d_a_player_main__daPy_Execute + 0x1C
.org 0x80122D4C                                            ;  04122D4C
  b       TRK_MINNOW_DOLPHIN__TRKMessageSend_154           ;v 4820E78C

;    daPy_lk_c__playerInit + 0x5C4
.org 0x8012525C                                            ;  0412525C
  bl      TRK_MINNOW_DOLPHIN__TRKInitializeEventQueue_38   ;v 4820BF89

;    d_a_player_main__phase_1 + 0x1C
.org 0x80125CE4                                            ;  04125CE4
  bl      TRK_MINNOW_DOLPHIN__TRKGetNextEvent_4C           ;v 4820B461
  nop                                                      ;v 60000000

;    daPy_lk_c__daPy_lk_c + 0x1148
.org 0x80126EFC                                            ;  04126EFC
  b       TRK_MINNOW_DOLPHIN__TRKNubMainLoop               ;v 48209FE8

;    daPy_lk_c__dProcGetItem + 0x14
.org 0x8012E8C4                                            ;  0412E8C4
  bl      TRK_MINNOW_DOLPHIN__TRKInitializeNub_90          ;v 48202A1D

;    daPy_lk_c__changeSwimProc + 0x48
.org 0x8013D008                                            ;  0413D008
  nop                                                      ;v 60000000

;    daPy_lk_c__swimOutAfter + 0x44
.org 0x8013D2F0                                            ;  0413D2F0
  nop                                                      ;v 60000000

;    dCamera_c__dCamera_c + 0x48
.org 0x801617D8                                            ;  041617D8
  bl      TRK_MINNOW_DOLPHIN__TRKNubMainLoop_D0            ;v 481CF7DD
;    dCamera_c__dCamera_c + 0x124
.org 0x801618B4                                            ;  041618B4
  b       TRK_MINNOW_DOLPHIN__TRKNubMainLoop_68            ;v 481CF698

;    dCamera_c__updatePad + 0x54
.org 0x801623F4                                            ;  041623F4
  lwz     r3,0x9D4(r31)                                    ;v 807F09D4
;    dCamera_c__updatePad + 0x70
.org 0x80162410                                            ;  04162410
  lwz     r4,0x9D4(r31)                                    ;v 809F09D4
;    dCamera_c__updatePad + 0xD8
.org 0x80162478                                            ;  04162478
  lwz     r3,0x9D4(r31)                                    ;v 807F09D4
;    dCamera_c__updatePad + 0x128
.org 0x801624C8                                            ;  041624C8
  lwz     r4,0x9D4(r31)                                    ;v 809F09D4
;    dCamera_c__updatePad + 0x1D0
.org 0x80162570                                            ;  04162570
  lwz     r4,0x9D4(r31)                                    ;v 809F09D4
;    dCamera_c__updatePad + 0x280
.org 0x80162620                                            ;  04162620
  lwz     r0,0x9D4(r31)                                    ;v 801F09D4

;    dCamera_c__Att + 0x38
.org 0x80163328                                            ;  04163328
  bl      TRK_MINNOW_DOLPHIN__TRKTerminateNub_8            ;v 481CDF0D

;    dCamera_c__Run + 0x174
.org 0x80163688                                            ;  04163688
  bl      TRK_MINNOW_DOLPHIN__TRKInitializeNub_4           ;v 481CDBCD

;    dCamera_c__nextMode + 0x24
.org 0x801641B0                                            ;  041641B0
  bl      TRK_MINNOW_DOLPHIN__TRKInitializeNub_24          ;v 481CD0C5

;    dKy_setLight + 0x2C
.org 0x80194C08                                            ;  04194C08
  bl      TRK_MINNOW_DOLPHIN__TRKGetNextEvent_88           ;v 4819C579

;    d_mesg__dMesg_finalize + 0x48
.org 0x801E5B24                                            ;  041E5B24
  bl      dMesg_tSequenceProcessor__dMesg_tSequenceProcessor_destructor ;v 48000095
;    d_mesg__dMesg_finalize + 0x68
.org 0x801E5B44                                            ;  041E5B44
  bl      dMesg_tRenderingProcessor__dMesg_tRenderingProcessor_destructor ;v 48000015

;    d_mesg__dMsg_Delete + 0x1C0
.org 0x801E7100                                            ;  041E7100
  bl      JMessage__TParse__TParse_destructor              ;v 480B8D91

;    d_message_paper__dMsg3_textPosition + 0x30
.org 0x801EC8FC                                            ;  041EC8FC
  bl      d_message_paper__dMsg3_arrowMove_20              ;v 48000115

;    d_meter__dMeter_swimMove + 0xBC
.org 0x802009B0                                            ;  042009B0
  nop                                                      ;v 60000000
;    d_meter__dMeter_swimMove + 0xC8
.org 0x802009BC                                            ;  042009BC
  nop                                                      ;v 60000000

;    d_s_play__dScnPly_Draw + 0x40C
.org 0x80234FA8                                            ;  04234FA8
  bl      TRK_MINNOW_DOLPHIN__TRKPostEvent_D0              ;v 480FC141

;    d_s_play__dScnPly_Execute + 0xA4
.org 0x80235074                                            ;  04235074
  bl      TRK_MINNOW_DOLPHIN__TRKPostEvent_A0              ;v 480FC045
;    d_s_play__dScnPly_Execute + 0xC0
.org 0x80235090                                            ;  04235090
  bl      TRK_MINNOW_DOLPHIN__TRKPostEvent_58              ;v 480FBFE1

;    cXyz__normalize + 0x34
.org 0x80245B10                                            ;  04245B10
  b       cXyz__normalize_68                               ;v 48000034

;    gx__GXSetViewportJitter
.org 0x803270C4                                            ;  043270C4
  b       TRK_MINNOW_DOLPHIN__TRKMessageSend_1A0           ;v 4800A460

;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop
.org 0x80330EE4                                            ;  04330EE4
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lbz     r6,0x1F00(r4)                                    ;v 88C41F00
  lis     r5,-0x7FC6                                       ;v 3CA0803A
  ori     r5,r5,0x4DF0                                     ;v 60A54DF0
  cmpwi   r6,0x1                                           ;v 2C060001
  bne     TRK_MINNOW_DOLPHIN__TRKNubMainLoop_28            ;v 40820014
  stw     r5,0x4C28(r3)                                    ;v 90A34C28
  li      r0,0x0                                           ;v 38000000
  stb     r0,0x1F00(r4)                                    ;v 98041F00
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop_28
  stw     r3,0x3EA0(r4)                                    ;v 90643EA0
  addi    r5,r5,0x3C                                       ;v 38A5003C
  stw     r5,0x4C28(r3)                                    ;v 90A34C28
  li      r0,0x1                                           ;v 38000001
  stb     r0,0x1F00(r4)                                    ;v 98041F00
  blr                                                      ;v 4E800020
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lbz     r0,0x1F00(r4)                                    ;v 88041F00
  cmpwi   r0,0x1                                           ;v 2C000001
  bne     TRK_MINNOW_DOLPHIN__TRKNubMainLoop_5C            ;v 40820010
  li      r0,0x2                                           ;v 38000002
  stb     r0,0x1F00(r4)                                    ;v 98041F00
  b       m_Do_graphic__mDoGph_Painter_78                  ;v 4BCDA068
;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop_5C
  li      r3,0x1                                           ;v 38600001
  stb     r3,0x1F00(r4)                                    ;v 98641F00
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop_68
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lbz     r6,0x1F00(r4)                                    ;v 88C41F00
  lis     r5,-0x7FC6                                       ;v 3CA0803A
  ori     r5,r5,0x4DF0                                     ;v 60A54DF0
  cmpwi   r6,0x1                                           ;v 2C060001
  bne     TRK_MINNOW_DOLPHIN__TRKNubMainLoop_90            ;v 40820014
  stw     r5,0x9D4(r3)                                     ;v 90A309D4
  li      r0,0x0                                           ;v 38000000
  stb     r0,0x1F00(r4)                                    ;v 98041F00
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop_90
  nop                                                      ;v 60000000
  addi    r5,r5,0x3C                                       ;v 38A5003C
  stw     r5,0x9D4(r3)                                     ;v 90A309D4
  li      r0,0x1                                           ;v 38000001
  stb     r0,0x1F00(r4)                                    ;v 98041F00
  lwz     r4,0x3EA0(r4)                                    ;v 80843EA0
  stw     r4,0x128(r3)                                     ;v 90830128
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop_B0
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lbz     r0,0x1F00(r4)                                    ;v 88041F00
  cmpwi   r0,0x1                                           ;v 2C000001
  bne     TRK_MINNOW_DOLPHIN__TRKNubMainLoop_C8            ;v 4082000C
  lwz     r28,0x5B10(r3)                                   ;v 83835B10
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop_C8
  lwz     r28,0x3E9C(r4)                                   ;v 83843E9C
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop_D0
  lis     r3,-0x7FC1                                       ;v 3C60803F
  lbz     r0,0x1F00(r3)                                    ;v 88031F00
  cmpwi   r0,0x0                                           ;v 2C000000
  beqlr                                                    ;v 4D820020
  stw     r31,0x3E9C(r3)                                   ;v 93E33E9C
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKNubMainLoop + 0xE8
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lbz     r0,0x1F00(r4)                                    ;v 88041F00
  cmpwi   r0,0x2                                           ;v 2C000002
  bne     TRK_MINNOW_DOLPHIN__TRKDestructEvent_10          ;v 40820014
  lwz     r4,0x3E9C(r4)                                    ;v 80843E9C
  cmpw    r4,r3                                            ;v 7C041800
  bnelr                                                    ;v 4C820020
  b       d_camera__camera_draw                            ;v 4BE4B368
;    TRK_MINNOW_DOLPHIN__TRKDestructEvent_10
  lwz     r4,0x3E9C(r4)                                    ;v 80843E9C
  cmpw    r4,r3                                            ;v 7C041800
  beqlr                                                    ;v 4D820020
  b       d_camera__camera_draw                            ;v 4BE4B358
;    TRK_MINNOW_DOLPHIN__TRKDestructEvent_20
  lwz     r4,0x36C(r3)                                     ;v 8083036C
  cmpw    r29,r4                                           ;v 7C1D2000
  beq     TRK_MINNOW_DOLPHIN__TRKConstructEvent_10         ;v 4182000C
  lis     r3,-0x7FC1                                       ;v 3C60803F
  lwz     r3,0x3E9C(r3)                                    ;v 80633E9C
;    TRK_MINNOW_DOLPHIN__TRKConstructEvent_10
  lha     r3,0x2B0(r3)                                     ;v A86302B0
  blr                                                      ;v 4E800020
  mflr    r0                                               ;v 7C0802A6
  stw     r0,0x4(r1)                                       ;v 90010004
  stwu    r1,-0x30(r1)                                     ;v 9421FFD0
  stmw    r27,0x8(r1)                                      ;v BF610008
  li      r27,0x0                                          ;v 3B600000
  mr      r31,r3                                           ;v 7C7F1B78
  mr      r30,r5                                           ;v 7CBE2B78
  mr      r29,r6                                           ;v 7CDD3378
  mr      r28,r4                                           ;v 7C9C2378
;    TRK_MINNOW_DOLPHIN__TRKPostEvent_24
  bl      d_stage__dStage_playerInit                       ;v 4BD10AB9
  addi    r27,r27,0x1                                      ;v 3B7B0001
  cmpwi   r27,0x2                                          ;v 2C1B0002
  mr      r3,r31                                           ;v 7FE3FB78
  mr      r5,r30                                           ;v 7FC5F378
  mr      r6,r29                                           ;v 7FA6EB78
  mr      r4,r28                                           ;v 7F84E378
  bne     TRK_MINNOW_DOLPHIN__TRKPostEvent_24              ;v 4082FFE4
  lmw     r27,0x8(r1)                                      ;v BB610008
  addi    r1,r1,0x30                                       ;v 38210030
  lwz     r0,0x4(r1)                                       ;v 80010004
  mtlr    r0                                               ;v 7C0803A6
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKPostEvent_58
  li      r5,0x0                                           ;v 38A00000
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lwz     r3,0x3EA4(r4)                                    ;v 80643EA4
  lwz     r4,0x3EA0(r4)                                    ;v 80843EA0
  b       dAttention_c__dAttention_c                       ;v 4BD6C260

;    TRK_MINNOW_DOLPHIN__TRKPostEvent_A0
.org 0x803310B8                                            ;  043310B8
  mflr    r0                                               ;v 7C0802A6
  stw     r0,0x4(r1)                                       ;v 90010004
  stwu    r1,-0xC(r1)                                      ;v 9421FFF4
  bl      dAttention_c__Run                                ;v 4BD6E111
  lis     r3,-0x7FC1                                       ;v 3C60803F
  lwz     r3,0x3EA4(r3)                                    ;v 80633EA4
  li      r4,-0x1                                          ;v 3880FFFF
  bl      dAttention_c__Run                                ;v 4BD6E101
  addi    r1,r1,0xC                                        ;v 3821000C
  lwz     r0,0x4(r1)                                       ;v 80010004
  mtlr    r0                                               ;v 7C0803A6
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKPostEvent_D0
  mflr    r0                                               ;v 7C0802A6
  stw     r0,0x4(r1)                                       ;v 90010004
  stwu    r1,-0xC(r1)                                      ;v 9421FFF4
  bl      dAttention_c__Draw                               ;v 4BD6E36D
  lis     r3,-0x7FC1                                       ;v 3C60803F
  lwz     r3,0x3EA4(r3)                                    ;v 80633EA4
  bl      dAttention_c__Draw                               ;v 4BD6E361
  addi    r1,r1,0xC                                        ;v 3821000C
  lwz     r0,0x4(r1)                                       ;v 80010004
  mtlr    r0                                               ;v 7C0803A6
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKGetNextEvent_1C
  stw     r0,0x1C4(r3)                                     ;v 900301C4
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lwz     r4,0x3EA0(r4)                                    ;v 80843EA0
  cmpw    r3,r4                                            ;v 7C032000
  beq     TRK_MINNOW_DOLPHIN__TRKGetNextEvent_40           ;v 41820014
;    TRK_MINNOW_DOLPHIN__TRKGetNextEvent_30
  lwz     r0,0x1C4(r4)                                     ;v 800401C4
  ori     r0,r0,0x8000                                     ;v 60008000
  stw     r0,0x1C4(r4)                                     ;v 900401C4
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKGetNextEvent_40
  lwz     r4,0x18(r4)                                      ;v 80840018
  addi    r4,r4,-0x18                                      ;v 3884FFE8
  b       TRK_MINNOW_DOLPHIN__TRKGetNextEvent_30           ;v 4BFFFFE8
;    TRK_MINNOW_DOLPHIN__TRKGetNextEvent_4C
  lwz     r0,0x5B44(r4)                                    ;v 80045B44
  cmpwi   r0,0x0                                           ;v 2C000000
  bnelr                                                    ;v 4C820020
  stw     r31,0x5B44(r4)                                   ;v 93E45B44
  stw     r31,0x5B4C(r4)                                   ;v 93E45B4C
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKGetNextEvent_64
  lis     r6,-0x7FC1                                       ;v 3CC0803F
  lbz     r6,0x1F00(r6)                                    ;v 88C61F00
  cmpwi   r6,0x0                                           ;v 2C060000
  beqlr                                                    ;v 4D820020
  b       STControl__checkTrigger_28C                      ;v 4BD27460
;    TRK_MINNOW_DOLPHIN__TRKGetNextEvent_78
  lwz     r0,0x1C(r1)                                      ;v 8001001C
  cmpwi   r0,0x1                                           ;v 2C000001
  beqlr                                                    ;v 4D820020
  b       f_op_msg_mng__fopMsgM_Create                     ;v 4BCFD088
;    TRK_MINNOW_DOLPHIN__TRKGetNextEvent_88
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lbz     r0,0x1F00(r4)                                    ;v 88041F00
  cmpwi   r0,0x1                                           ;v 2C000001
  bne     TRK_MINNOW_DOLPHIN__TRKGetNextEvent_A0           ;v 4082000C
  lwz     r30,0x5B10(r3)                                   ;v 83C35B10
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKGetNextEvent_A0
  lwz     r30,0x3E9C(r4)                                   ;v 83C43E9C
  blr                                                      ;v 4E800020

;    TRK_MINNOW_DOLPHIN__TRKInitializeEventQueue_8
.org 0x803311B4                                            ;  043311B4
  mr      r31,r3                                           ;v 7C7F1B78
  lwz     r0,0x54(r1)                                      ;v 80010054
  lis     r6,-0x7FDD                                       ;v 3CC08023
  ori     r6,r6,0x5094                                     ;v 60C65094
  cmpw    r0,r6                                            ;v 7C003000
  lis     r6,-0x7FC6                                       ;v 3CC0803A
  ori     r6,r6,0x4DF0                                     ;v 60C64DF0
  bne     TRK_MINNOW_DOLPHIN__TRKInitializeEventQueue_2C   ;v 40820008
  addi    r6,r6,0x3C                                       ;v 38C6003C
;    TRK_MINNOW_DOLPHIN__TRKInitializeEventQueue_2C
  stw     r6,0x190(r31)                                    ;v 90DF0190
  blr                                                      ;v 4E800020

;    TRK_MINNOW_DOLPHIN__TRKInitializeEventQueue_38
.org 0x803311E4                                            ;  043311E4
  lis     r4,-0x7FCD                                       ;v 3C808033
  lbz     r3,0x11E2(r4)                                    ;v 886411E2
  xori    r0,r3,0x1                                        ;v 68600001
  stb     r0,0x11E2(r4)                                    ;v 980411E2
  cmpwi   r3,0x1                                           ;v 2C030001
  addi    r3,r30,0x5808                                    ;v 387E5808
  bne     TRK_MINNOW_DOLPHIN__TRKTerminateNub              ;v 40820030
  mflr    r0                                               ;v 7C0802A6
  stw     r0,0x4(r1)                                       ;v 90010004
  stwu    r1,-0xC(r1)                                      ;v 9421FFF4
  li      r3,-0x4                                          ;v 3860FFFC
  li      r4,0x1A0                                         ;v 388001A0
  bl      cMl__memalignB                                   ;v 4BF100E5
  lis     r4,-0x7FC1                                       ;v 3C80803F
  stw     r3,0x3EA4(r4)                                    ;v 90643EA4
  addi    r1,r1,0xC                                        ;v 3821000C
  lwz     r0,0x4(r1)                                       ;v 80010004
  mtlr    r0                                               ;v 7C0803A6
  stw     r3,0x3480(r31)                                   ;v 907F3480
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKTerminateNub_8
  addi    r31,r3,0x5808                                    ;v 3BE35808
  lwz     r0,0x128(r30)                                    ;v 801E0128
  lwz     r4,0x0(r31)                                      ;v 809F0000
  cmpw    r4,r0                                            ;v 7C040000
  beqlr                                                    ;v 4D820020
  lis     r31,-0x7FC1                                      ;v 3FE0803F
  lwz     r31,0x3EA4(r31)                                  ;v 83FF3EA4
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_4
  addi    r31,r31,0x5808                                   ;v 3BFF5808
  lwz     r0,0x128(r28)                                    ;v 801C0128
  lwz     r4,0x0(r31)                                      ;v 809F0000
  cmpw    r4,r0                                            ;v 7C040000
  beqlr                                                    ;v 4D820020
  lis     r31,-0x7FC1                                      ;v 3FE0803F
  lwz     r31,0x3EA4(r31)                                  ;v 83FF3EA4
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_24
  addi    r31,r29,0x5808                                   ;v 3BFD5808
  lwz     r0,0x128(r26)                                    ;v 801A0128
  lwz     r4,0x0(r31)                                      ;v 809F0000
  cmpw    r4,r0                                            ;v 7C040000
  beqlr                                                    ;v 4D820020
  lis     r31,-0x7FC1                                      ;v 3FE0803F
  lwz     r31,0x3EA4(r31)                                  ;v 83FF3EA4
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_44
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lwz     r0,0x3EA8(r4)                                    ;v 80043EA8
  cmpwi   r0,0x0                                           ;v 2C000000
  bnelr                                                    ;v 4C820020
  lbz     r0,0x1F00(r4)                                    ;v 88041F00
  cmpwi   r0,0x1                                           ;v 2C000001
  bne     TRK_MINNOW_DOLPHIN__TRKInitializeNub_6C          ;v 40820010
  li      r0,0x2                                           ;v 38000002
  stb     r0,0x1F00(r4)                                    ;v 98041F00
  b       m_Do_graphic__mDoGph_Painter_78                  ;v 4BCD9CEC
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_6C
  li      r3,0x1                                           ;v 38600001
  stb     r3,0x1F00(r4)                                    ;v 98641F00
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_78
  li      r0,0x1                                           ;v 38000001
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_7C
  lis     r9,-0x7FC1                                       ;v 3D20803F
  stw     r0,0x3EA8(r9)                                    ;v 90093EA8
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_88
  li      r0,0x0                                           ;v 38000000
  b       TRK_MINNOW_DOLPHIN__TRKInitializeNub_7C          ;v 4BFFFFF0
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_90
  mr      r30,r3                                           ;v 7C7E1B78
  lwz     r0,0x20(r30)                                     ;v 801E0020
  cmpwi   r0,0x0                                           ;v 2C000000
  bnelr                                                    ;v 4C820020
  b       daPy_lk_c__dProcGetItem_3E4                      ;v 4BDFD9A4
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_A4
  lis     r6,-0x7FC3                                       ;v 3CC0803D
  lwz     r6,-0x58B4(r6)                                   ;v 80C6A74C
  cmpw    r4,r6                                            ;v 7C043000
  beq     TRK_MINNOW_DOLPHIN__TRKInitializeNub_BC          ;v 4182000C
  stwu    r1,-0x30(r1)                                     ;v 9421FFD0
  b       fopAcM_searchActorDistance_4                     ;v 4BCF3FB8
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_BC
  mflr    r0                                               ;v 7C0802A6
  stw     r0,0x4(r1)                                       ;v 90010004
  stwu    r1,-0x14(r1)                                     ;v 9421FFEC
  stw     r3,0x8(r1)                                       ;v 90610008
  stwu    r1,-0x30(r1)                                     ;v 9421FFD0
  bl      fopAcM_searchActorDistance_4                     ;v 4BCF3FA1
  stfs    f1,0xC(r1)                                       ;v D021000C
  lwz     r3,0x8(r1)                                       ;v 80610008
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lwz     r4,0x3EA0(r4)                                    ;v 80843EA0
  stwu    r1,-0x30(r1)                                     ;v 9421FFD0
  bl      fopAcM_searchActorDistance_4                     ;v 4BCF3F89
  lfs     f2,0xC(r1)                                       ;v C041000C
  fcmpo   cr0,f1,f2                                        ;v FC011040
  ble     TRK_MINNOW_DOLPHIN__TRKInitializeNub_FC          ;v 40810008
  fmr     f1,f2                                            ;v FC201090
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_FC
  addi    r1,r1,0x14                                       ;v 38210014
  lwz     r0,0x4(r1)                                       ;v 80010004
  mtlr    r0                                               ;v 7C0803A6
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_10C
  lis     r6,-0x7FC3                                       ;v 3CC0803D
  lwz     r6,-0x58B4(r6)                                   ;v 80C6A74C
  cmpw    r4,r6                                            ;v 7C043000
  beq     TRK_MINNOW_DOLPHIN__TRKInitializeNub_124         ;v 4182000C
  stwu    r1,-0x30(r1)                                     ;v 9421FFD0
  b       fopAcM_searchActorDistanceXZ_4                   ;v 4BCF4054
;    TRK_MINNOW_DOLPHIN__TRKInitializeNub_124
  mflr    r0                                               ;v 7C0802A6
  stw     r0,0x4(r1)                                       ;v 90010004
  stwu    r1,-0x14(r1)                                     ;v 9421FFEC
  stw     r3,0x8(r1)                                       ;v 90610008
  stwu    r1,-0x30(r1)                                     ;v 9421FFD0
  bl      fopAcM_searchActorDistanceXZ_4                   ;v 4BCF403D
  stfs    f1,0xC(r1)                                       ;v D021000C
  lwz     r3,0x8(r1)                                       ;v 80610008
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lwz     r4,0x3EA0(r4)                                    ;v 80843EA0
  stwu    r1,-0x30(r1)                                     ;v 9421FFD0
  bl      fopAcM_searchActorDistanceXZ_4                   ;v 4BCF4025
  lfs     f2,0xC(r1)                                       ;v C041000C
  fcmpo   cr0,f1,f2                                        ;v FC011040
  ble     TRK_MINNOW_DOLPHIN__TRKMessageSend_30            ;v 40810008
  fmr     f1,f2                                            ;v FC201090
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_30
  addi    r1,r1,0x14                                       ;v 38210014
  lwz     r0,0x4(r1)                                       ;v 80010004
  mtlr    r0                                               ;v 7C0803A6
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_40
  lis     r6,-0x7FC3                                       ;v 3CC0803D
  lwz     r6,-0x58B4(r6)                                   ;v 80C6A74C
  cmpw    r4,r6                                            ;v 7C043000
  beq     TRK_MINNOW_DOLPHIN__TRKMessageSend_58            ;v 4182000C
  addi    r4,r4,0x1F8                                      ;v 388401F8
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_58
  lfs     f1,0x0(r3)                                       ;v C0230000
  lfs     f2,0x0(r3)                                       ;v C0430000
  lis     r6,-0x7FCB                                       ;v 3CC08035
  lfs     f0,-0x448(r6)                                    ;v C006FBB8
  lfs     f3,0x1F8(r4)                                     ;v C06401F8
  lfs     f4,0x200(r4)                                     ;v C0840200
  fsubs   f3,f3,f1                                         ;v EC630828
  fsubs   f4,f4,f2                                         ;v EC841028
  fcmpo   cr0,f3,f0                                        ;v FC030040
  bge     TRK_MINNOW_DOLPHIN__TRKMessageSend_84            ;v 40800008
  fneg    f3,f3                                            ;v FC601850
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_84
  fcmpo   cr0,f4,f0                                        ;v FC040040
  bge     TRK_MINNOW_DOLPHIN__TRKMessageSend_90            ;v 40800008
  fneg    f4,f4                                            ;v FC802050
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_90
  fadds   f5,f3,f4                                         ;v ECA3202A
  lis     r5,-0x7FC1                                       ;v 3CA0803F
  lwz     r5,0x3EA0(r5)                                    ;v 80A53EA0
  lfs     f3,0x1F8(r5)                                     ;v C06501F8
  lfs     f4,0x200(r5)                                     ;v C0850200
  fsubs   f3,f3,f1                                         ;v EC630828
  fsubs   f4,f4,f2                                         ;v EC841028
  fcmpo   cr0,f3,f0                                        ;v FC030040
  bge     TRK_MINNOW_DOLPHIN__TRKMessageSend_B8            ;v 40800008
  fneg    f3,f3                                            ;v FC601850
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_B8
  fcmpo   cr0,f4,f0                                        ;v FC040040
  bge     TRK_MINNOW_DOLPHIN__TRKMessageSend_C4            ;v 40800008
  fneg    f4,f4                                            ;v FC802050
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_C4
  fadds   f6,f3,f4                                         ;v ECC3202A
  fcmpo   cr0,f6,f5                                        ;v FC062840
  ble     TRK_MINNOW_DOLPHIN__TRKMessageSend_D8            ;v 4081000C
  addi    r4,r4,0x1F8                                      ;v 388401F8
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_D8
  addi    r4,r5,0x1F8                                      ;v 388501F8
  blr                                                      ;v 4E800020

;    TRK_MINNOW_DOLPHIN__TRKMessageSend_124
.org 0x803314A8                                            ;  043314A8
  lis     r6,-0x7FC1                                       ;v 3CC0803F
  lwz     r6,0x3EA0(r6)                                    ;v 80C63EA0
  cmpw    r6,r31                                           ;v 7C06F800
  bne     TRK_MINNOW_DOLPHIN__TRKMessageSend_140           ;v 40820010
  lwz     r0,0x0(r4)                                       ;v 80040000
  stw     r0,0x8(r4)                                       ;v 90040008
  addi    r4,r4,0x8                                        ;v 38840008
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_140
  b       J3DDrawBuffer__entryImm                          ;v 4BFBB800

;    TRK_MINNOW_DOLPHIN__TRKMessageSend_154
.org 0x803314D8                                            ;  043314D8
  lwz     r4,0x4C28(r30)                                   ;v 809E4C28
  lbz     r0,0x30(r4)                                      ;v 88040030
  cmpwi   r0,0x26                                          ;v 2C000026
  bnelr                                                    ;v 4C820020
  lis     r4,-0x7FC1                                       ;v 3C80803F
  lwz     r4,0x3EA0(r4)                                    ;v 80843EA0
  cmpw    r4,r30                                           ;v 7C04F000
  bne     TRK_MINNOW_DOLPHIN__TRKMessageSend_17C           ;v 4082000C
  lis     r4,-0x7FC3                                       ;v 3C80803D
  lwz     r4,-0x58AC(r4)                                   ;v 8084A754
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_17C
  lwz     r0,0x1F8(r4)                                     ;v 800401F8
  stw     r0,0x1F8(r30)                                    ;v 901E01F8
  lwz     r0,0x200(r4)                                     ;v 80040200
  stw     r0,0x200(r30)                                    ;v 901E0200
  lfs     f0,0x1FC(r3)                                     ;v C00301FC
  lfs     f1,-0x7FFC(r2)                                   ;v C0228004
  fadds   f0,f0,f1                                         ;v EC00082A
  stfs    f0,0x1FC(r30)                                    ;v D01E01FC
  blr                                                      ;v 4E800020
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_1A0
  lis     r5,-0x7FC1                                       ;v 3CA0803F
  lwz     r0,0x3EA8(r5)                                    ;v 80053EA8
  cmpwi   r0,0x0                                           ;v 2C000000
  bne     TRK_MINNOW_DOLPHIN__TRKMessageSend_1CC           ;v 40820020
  lbz     r0,0x1F00(r5)                                    ;v 88051F00
  cmpwi   r0,0x1                                           ;v 2C000001
  blt     TRK_MINNOW_DOLPHIN__TRKMessageSend_1CC           ;v 41800014
  lfs     f0,-0x7F78(r2)                                   ;v C0028088
  fdivs   f4,f4,f0                                         ;v EC840024
  bgt     TRK_MINNOW_DOLPHIN__TRKMessageSend_1CC           ;v 41810008
  fadds   f2,f2,f4                                         ;v EC42202A
;    TRK_MINNOW_DOLPHIN__TRKMessageSend_1CC
  mflr    r0                                               ;v 7C0802A6
  b       gx__GXSetViewportJitter_4                        ;v 4BFF5B74

;    d_stage__l_funcTable$5322 + 0x2C
.org 0x803750DC                                            ;  043750DC
  .long   0x80331018      ; TRKPostEvent orig: d_stage__dStage_playerInit ;v 80331018

;    d_stage__l_funcTable$5327 + 0x8
.org 0x80375250                                            ;  04375250
  .long   0x80331018      ; TRKPostEvent orig: d_stage__dStage_playerInit ;v 80331018

;    d_a_player_main__g_profile_PLAYER + 0x10
.org 0x8038FD9C                                            ;  0438FD9C
  .long   0x4C38          ; orig + 0x10                    ;v 00004C38

;    d_camera__method + 0x10
.org 0x80390F28                                            ;  04390F28
  .long   0x80330FCC      ; TRK_MINNOW_DOLPHIN__TRKNubMainLoop + 0xE8 ;v 80330FCC

;    d_camera__g_profile_CAMERA + 0x10
.org 0x80390F3C                                            ;  04390F3C
  .long   0x9E0           ; orig + 0x10                    ;v 000009E0

.close
