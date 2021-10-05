; v0.1
;	Assembly		      AR Code	   Comment/Relative Address
.open "sys/main.dol"
.org 0x80390F3C        ;  04390f3c (g_profile_CAMERA + 0x10)
  .long 0x9E0          ;v 000009e0 (originalSize += 0x10)
.org 0x8038FD9C        ;  0438fd9c (g_profile_PLAYER + 0x10)
  .long 0x4C38         ;v 00004c38 (originalSize += 0x10)
.org 0x80390F28        ;  04390f28 (method + 0x10)
  .long 0x80330FCC     ;v 80330fcc (v = TRKNubMainLoop + 0xE8)

.org 0x803A2800        ;  043A2800 (gTRKDispatchTable + 0x0)
  .long 0x43A00000     ;v 43A00000 (v = 320f)
.org 0x803A2804        ;  043A2804 (gTRKDispatchTable + 0x4)
  .long 0xC3700000     ;v c3700000 (v = -240f)
.org 0x803A2808        ;  043A2808 (gTRKDispatchTable + 0x8)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
.org 0x803A280c        ;  043A280c (gTRKDispatchTable + 0xC)
  .long 0x44258000     ;v 44258000 (v = 662f)
.org 0x803A2810        ;  043A2810 (gTRKDispatchTable + 0x10)
  .long 0x44118000     ;v 44118000 (v = 582f)
.org 0x803A2814        ;  043A2814 (gTRKDispatchTable + 0x14)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
.org 0x803A2818        ;  043A2818 (gTRKDispatchTable + 0x18)
  .long 0x43A00000     ;v 43A00000 (v = 320f)
.org 0x803A281c        ;  043A281c (gTRKDispatchTable + 0x1C)
  .long 0xC2f00000     ;v C2f00000 (v = -120f)
.org 0x803A2820        ;  043A2820 (gTRKDispatchTable + 0x20)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
.org 0x803A2824        ;  043A2824 (gTRKDispatchTable + 0x24)
  .long 0x44258000     ;v 44258000 (v = 662f)
.org 0x803A2828        ;  043A2828 (gTRKDispatchTable + 0x28)
  .long 0x43e80000     ;v 43e80000 (v = 464f)
.org 0x803A282c        ;  043A282c (gTRKDispatchTable + 0x2C)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
.org 0x803A2830        ;  043A2830 (gTRKDispatchTable + 0x30)
  .long 0x43A00000     ;v 43A00000 (v = 320f)
.org 0x803A2834        ;  043A2834 (gTRKDispatchTable + 0x34)
  .long 0xC2E60000     ;v C2E60000 (v = -115f)
.org 0x803A2838        ;  043A2838 (gTRKDispatchTable + 0x38)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
.org 0x803A283c        ;  043A283c (gTRKDispatchTable + 0x3C)
  .long 0x44258000     ;v 44258000 (v = 662f)
.org 0x803A2840        ;  043A2840 (gTRKDispatchTable + 0x40)
  .long 0x442f0000     ;v 442f0000 (v = 700f)
.org 0x803A2844        ;  043A2844 (gTRKDispatchTable + 0x44)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)

.org 0x8003ED60        ;  0403ed60 (fpcM_Management__FPFv_vPFv_v + 0xDC)
  nop 			       ;v 60000000

.org 0x80110008        ;  04110008 (changeWaitProc__9daPy_lk_cFv + 0x58)
  b 0x80110014         ;v 4800000c
.org 0x80110738        ;  04110738 (changeDamageProc__9daPy_lk_cFv + 0xE4)
  nop 			       ;v 60000000
.org 0x8013D008        ;  0413d008 (changeSwimProc__9daPy_lk_cFv + 0x48)
  nop 			       ;v 60000000
.org 0x802009B0        ;  042009b0 (dMeter_swimMove__FP15sub_meter_class + 0xBC)
  nop 			       ;v 60000000
.org 0x802009BC        ;  042009bc (dMeter_swimMove__FP15sub_meter_class + 0xC8)
  nop 			       ;v 60000000

.org 0x8010E3D4        ;  0410e3d4 (checkNextActionFromButton__9daPy_lk_cFv + 0x87C)
  nop 			       ;v 60000000

.org 0x8011F9FC        ;  0411f9fc (setStickData__9daPy_lk_cFv + 0x3C)
  b 0x8011FA10         ;v 48000014
.org 0x8011FB54        ;  0411fb54 (setStickData__9daPy_lk_cFv + 0x194)
  lwz r3, 0x4C28(r29)  ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x8011FB88        ;  0411fb88 (setStickData__9daPy_lk_cFv + 0x1C8)
  lwz r3, 0x4C28(r29)  ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x8011FBB4        ;  0411fbb4 (setStickData__9daPy_lk_cFv + 0x1F4)
  bl TRKDestructEvent_20;v 48211449 (v = bl->TRKDestructEvent + 0x20)
.org 0x8011FBD8        ;  0411fbd8 (setStickData__9daPy_lk_cFv + 0x218)
  lwz r5, 0x4C28(r29)  ;v 80BD4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x8011FC08        ;  0411fc08 (setStickData__9daPy_lk_cFv + 0x248)
  lwz r4, 0x4C28(r29)  ;v 809D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x8011FCEC        ;  0411fcec (setStickData__9daPy_lk_cFv + 0x32C)
  lwz r3, 0x4C28(r29)  ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x8011FD0C        ;  0411fd0c (setStickData__9daPy_lk_cFv + 0x34C)
  lwz r3, 0x4C28(r29)  ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x8011FD34        ;  0411fd34 (setStickData__9daPy_lk_cFv + 0x374)
  lwz r5, 0x4C28(r29)  ;v 80BD4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x8011FDE0        ;  0411fde0 (setStickData__9daPy_lk_cFv + 0x420)
  lwz r3, 0x4C28(r29)  ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))

.org 0x801623F4        ;  041623f4 (updatePad__9dCamera_cFv + 0x54)
  lwz r3, 0x9D4(r31)   ;v 807F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x80162410        ;  04162410 (updatePad__9dCamera_cFv + 0x70)
  lwz r4, 0x9D4(r31)   ;v 809F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x80162478        ;  04162478 (updatePad__9dCamera_cFv + 0xD8)
  lwz r3, 0x9D4(r31)   ;v 807F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x801624C8        ;  041624c8 (updatePad__9dCamera_cFv + 0x128)
  lwz r4, 0x9D4(r31)   ;v 809F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x80162570        ;  04162570 (updatePad__9dCamera_cFv + 0x1D0)
  lwz r4, 0x9D4(r31)   ;v 809F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x80162620        ;  04162620 (updatePad__9dCamera_cFv + 0x280)
  lwz r0, 0x9D4(r31)   ;v 801F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))

.org 0x801219C4        ;  041219C4 (execute__9daPy_lk_cFv + 0x154)
  b 0x80121A14         ;v 48000050
.org 0x80121B60        ;  04121b60 (execute__9daPy_lk_cFv + 0x2F0)
  nop 			       ;v 60000000
.org 0x80121B68        ;  04121b68 (execute__9daPy_lk_cFv + 0x2F8)
  nop 			       ;v 60000000
.org 0x80121B70        ;  04121b70 (execute__9daPy_lk_cFv + 0x300)
  nop 			       ;v 60000000
.org 0x80121B78        ;  04121b78 (execute__9daPy_lk_cFv + 0x308)
  nop 			       ;v 60000000
.org 0x80121B84        ;  04121b84 (execute__9daPy_lk_cFv + 0x314)
  nop 			       ;v 60000000
.org 0x80121B8C        ;  04121b8c (execute__9daPy_lk_cFv + 0x31C)
  nop 			       ;v 60000000
.org 0x80121B94        ;  04121b94 (execute__9daPy_lk_cFv + 0x324)
  nop 			       ;v 60000000
.org 0x80121BA0        ;  04121ba0 (execute__9daPy_lk_cFv + 0x330)
  nop 			       ;v 60000000
.org 0x80121BA8        ;  04121ba8 (execute__9daPy_lk_cFv + 0x338)
  nop 			       ;v 60000000
.org 0x80122BAC        ;  04122bac (execute__9daPy_lk_cFv + 0x133C)
  b 0x80122BC0         ;v 48000014

.org 0x80007ABC        ;  04007abc (mDoCPd_Create__Fv + 0x4C)
  nop 			       ;v 60000000
.org 0x80007AD0        ;  04007ad0 (mDoCPd_Create__Fv + 0x60)
  li r4, 0x1           ;v 38800001
.org 0x80007AE4        ;  04007ae4 (mDoCPd_Create__Fv + 0x74)
  stw r0, 0x4(r3)      ;v 90030004
.org 0x80126EFC        ;  04126efc (__ct__9daPy_lk_cFv + 0x1148)
  b TRKNubMainLoop     ;v 48209fe8 (v = b->TRKNubMainLoop)
.org 0x801617D8        ;  041617d8 (__ct__9dCamera_cFP12camera_class + 0x48)
  bl TRKNubMainLoop_D0 ;v 481cf7dd (v = bl->TRKNubMainLoop + 0xD0)
.org 0x801618B4        ;  041618b4 (__ct__9dCamera_cFP12camera_class + 0x124)
  b 0x80330F4C         ;v 481cf698 (v = b->TRKNubMainLoop + 0x68)

.org 0x80041E94        ;  04041e94 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x10)
  li r31, 0x0          ;v 3BE00000
.org 0x80041E98        ;  04041e98 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x14)
  addi r4, r4, 0x4     ;v 38840004
.org 0x80041E9C        ;  04041e9c (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x18)
  stw r4, 0x4(r3)      ;v 90830004
.org 0x80041EA0        ;  04041ea0 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x1C)
  li r4, 0x0           ;v 38800000
.org 0x80041EA4        ;  04041ea4 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x20)
  li r5, 0x0           ;v 38A00000
.org 0x80041EA8        ;  04041ea8 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x24)
  bl dStage_cameraCreate__FP24stage_camera2_data_classii ;v 4bfff7f5 (v = bl->dStage_cameraCreate__FP24stage_camera2_data_classii)
.org 0x80041EAC        ;  04041eac (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x28)
  cmpwi r31, 0x0       ;v 2C1F0000
.org 0x80041EB0        ;  04041eb0 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x2C)
  li r31, 0x1          ;v 3BE00001
.org 0x80041EB4        ;  04041eb4 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x30)
  beq 0x80041EA0       ;v 4182FFEC
.org 0x80041EB8        ;  04041eb8 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x34)
  lwz r31, 0xC(r1)     ;v 83E1000C
.org 0x80041EBC        ;  04041ebc (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x38)
  addi r1, r1, 0x10    ;v 38210010
.org 0x80041EC0        ;  04041ec0 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x3C)
  lwz r0, 0x4(r1)      ;v 80010004
.org 0x80041EC4        ;  04041ec4 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x40)
  mtlr r0              ;v 7C0803A6
.org 0x80041EC8        ;  04041ec8 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x44)
  blr                  ;v 4E800020

.org 0x80084EBC        ;  04084ebc (imageDraw__21dDlst_shadowControl_cFPA4_f + 0xD0)
  nop 			       ;v 60000000

.org 0x8000AFA0        ;  0400afa0 (mDoGph_Painter__Fv + 0x74)
  bl beginRender__10JFWDisplayFv ;v 4824a92d (v = bl->beginRender__10JFWDisplayFv)
.org 0x8000AFA4        ;  0400afa4 (mDoGph_Painter__Fv + 0x78)
  lis r3, 0x8003       ;v 3C608003
.org 0x8000AFA8        ;  0400afa8 (mDoGph_Painter__Fv + 0x7C)
  ori r4, r3, 0xE318   ;v 6064e318 (r4 = fpcM_Draw__FPv(0x8003E318))
.org 0x8000AFAC        ;  0400afac (mDoGph_Painter__Fv + 0x80)
  ori r3, r3, 0xE338   ;v 6063e338 (r3 = fpcM_DrawIterater__FPFPvPv_i(0x8003E338))
.org 0x8000afb0        ;  0400afb0 (mDoGph_Painter__Fv + 0x84)
  bl fpcDw_Handler__FPFPFPvPv_i_iPFPvPv_i ;v 4803551d (v = bl->fpcDw_Handler__FPFPFPvPv_i_iPFPvPv_i)
.org 0x8000B0C4        ;  0400b0c4 (mDoGph_Painter__Fv + 0x198)
  bl TRKNubMainLoop_B0 ;v 48325ed1 (v = bl->TRKNubMainLoop + 0xB0)
.org 0x8000BBF8        ;  0400bbf8 (mDoGph_Painter__Fv + 0xCCC)
  lwz r3, -0x6D50(r13) ;v 806d92b0 (TODO: Figure out what r13 is and what is at 0x6D50)
.org 0x8000BBFC        ;  0400bbfc (mDoGph_Painter__Fv + 0xCD0)
  nop 			       ;v 60000000
.org 0x8000BC00        ;  0400bc00 (mDoGph_Painter__Fv + 0xCD4)
  bl endRender__10JFWDisplayFv ;v 48249eb9 (v = bl->endRender__10JFWDisplayFv)
.org 0x8000BC1C        ;  0400bc1c (mDoGph_Painter__Fv + 0xCF4)
  bl TRKInitializeNub44 ;v 48325679 (v = bl->TRKInitializeNub + 0x44)

.org 0x80107890        ;  04107890 (draw__9daPy_lk_cFv + 0x588)
  nop 			       ;v 60000000
.org 0x80107910        ;  04107910 (draw__9daPy_lk_cFv + 0x608)
  nop 			       ;v 60000000
.org 0x80107A14        ;  04107a14 (draw__9daPy_lk_cFv + 0x70C)
  nop 			       ;v 60000000
.org 0x80107A94        ;  04107a94 (draw__9daPy_lk_cFv + 0x78C)
  nop 			       ;v 60000000

.org 0x80074104        ;  04074104 (startProc__16dEvent_manager_cFP12dEvDtEvent_c + 0x114)
  b 0x803312C8         ;v 482BD1C4 (v = b->TRKInitializeNub + 0x78)
.org 0x80074110        ;  04074110 (closeProc__16dEvent_manager_cFP12dEvDtEvent_c + 0x8)
  b 0x803312D8         ;v 482BD1C8 (v = b->TRKInitializeNub + 0x88)

.org 0x803271EC        ;  043271ec (GXGetViewportv)
  b 0x80327148         ;v 4bffff5c (v = b->GXSetViewportJitter + 0x84)

.org 0x803270C4        ;  043270c4 (GXSetViewportJitter + 0x0)
  lis r3,-13311        ;v 3C60CC01 (r3 = -0xCC01  ...I guess)
.org 0x803270C8        ;  043270c8 (GXSetViewportJitter + 0x4)
  li r0, 0x10          ;v 38000010
.org 0x803270CC        ;  043270cc (GXSetViewportJitter + 0x8)
  stb r0, -0x8000(r3)  ;v 98038000 (TODO: Figure out how this works)
.org 0x803270D0        ;  043270d0 (GXSetViewportJitter + 0xC)
  lis r4, 0x0005       ;v 3C800005
.org 0x803270D4        ;  043270d4 (GXSetViewportJitter + 0x10)
  addi r4,r4, 0x101A   ;v 3884101A (r4 = 0x5101A)
.org 0x803270D8        ;  043270d8 (GXSetViewportJitter + 0x14)
  stw r4, -0x8000(r3)  ;v 90838000 (TODO: Figure out how this works)
.org 0x803270DC        ;  043270dc (GXSetViewportJitter + 0x18)
  lis r4, 0x803A       ;v 3C80803A
.org 0x803270E0        ;  043270e0 (GXSetViewportJitter + 0x1C)
  ori r4, r4, 0x2800   ;v 60842800 (r4 = gTRKDispatchTable(0x803A2800))
.org 0x803270E4        ;  043270e4 (GXSetViewportJitter + 0x20)
  lis r5, 0x803F       ;v 3CA0803F
.org 0x803270E8        ;  043270e8 (GXSetViewportJitter + 0x24)
  lwz r0, 0x3EA8(r5)   ;v 80053EA8
.org 0x803270EC        ;  043270ec (GXSetViewportJitter + 0x28)
  cmpwi r0, 0x0        ;v 2C000000
.org 0x803270F0        ;  043270f0 (GXSetViewportJitter + 0x2C)
  bne 0x80327114       ;v 40820024
.org 0x803270F4        ;  043270f4 (GXSetViewportJitter + 0x30)
  lbz r0, 0x1F00(r5)   ;v 88051F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x803270F8        ;  043270f8 (GXSetViewportJitter + 0x34)
  cmpwi r0, 0x1        ;v 2C000001
.org 0x803270FC        ;  043270fc (GXSetViewportJitter + 0x38)
  beq 0x80327108       ;v 4182000C
.org 0x80327100        ;  04327100 (GXSetViewportJitter + 0x3C)
  bgt 0x80327110       ;v 41810010
.org 0x80327104        ;  04327104 (GXSetViewportJitter + 0x40)
  b 0x80327114         ;v 48000010
.org 0x80327108        ;  04327108 (GXSetViewportJitter + 0x44)
  addi r4, r4, 0x30    ;v 38840030 (r4 = gTRKDispatchTable += offset 0x30)
.org 0x8032710C        ;  0432710c (GXSetViewportJitter + 0x48)
  b 0x80327114         ;v 48000008
.org 0x80327110        ;  04327110 (GXSetViewportJitter + 0x4C)
  addi r4, r4, 0x18    ;v 38840018 (r4 = gTRKDispatchTable += offset 0x18)
.org 0x80327114        ;  04327114 (GXSetViewportJitter + 0x50)
  lfs f0, 0x0(r4)      ;v C0040000 (lfs gTRKDispatchTable + offset + 0x0)
.org 0x80327118        ;  04327118 (GXSetViewportJitter + 0x54)
  stfs f0, -0x8000(r3) ;v D0038000
.org 0x8032711C        ;  0432711c (GXSetViewportJitter + 0x58)
  lfs f0, 0x4(r4)      ;v C0040004 (lfs gTRKDispatchTable + offset + 0x4)
.org 0x80327120        ;  04327120 (GXSetViewportJitter + 0x5C)
  stfs f0, -0x8000(r3) ;v D0038000
.org 0x80327124        ;  04327124 (GXSetViewportJitter + 0x60)
  lfs f0, 0x8(r4)      ;v C0040008 (lfs gTRKDispatchTable + offset + 0x8)
.org 0x80327128        ;  04327128 (GXSetViewportJitter + 0x64)
  stfs f0, -0x8000(r3) ;v D0038000
.org 0x8032712C        ;  0432712c (GXSetViewportJitter + 0x68)
  lfs f0, 0xC(r4)      ;v C004000C (lfs gTRKDispatchTable + offset + 0xC)
.org 0x80327130        ;  04327130 (GXSetViewportJitter + 0x6C)
  stfs f0, -0x8000(r3) ;v D0038000
.org 0x80327134        ;  04327134 (GXSetViewportJitter + 0x70)
  lfs f0, 0x10(r4)     ;v C0040010 (lfs gTRKDispatchTable + offset + 0x10)
.org 0x80327138        ;  04327138 (GXSetViewportJitter + 0x74)
  stfs f0, -0x8000(r3) ;v D0038000
.org 0x8032713C        ;  0432713c (GXSetViewportJitter + 0x78)
  lfs f0, 0x14(r4)     ;v C0040014 (lfs gTRKDispatchTable + offset + 0x14)
.org 0x80327140        ;  04327140 (GXSetViewportJitter + 0x7C)
  stfs f0, -0x8000(r3) ;v D0038000
.org 0x80327144        ;  04327144 (GXSetViewportJitter + 0x80)
  blr                  ;v 4E800020

.org 0x80327148        ;  04327148 (GXSetViewportJitter + 0x84)
  lis r4, 0x803F       ;v 3C80803F
.org 0x8032714C        ;  0432714c (GXSetViewportJitter + 0x88)
  lbz r4, 0x1F00(r4)   ;v 88841F00 (lbz gTRKEventQueue = 0x803F1F00)
.org 0x80327150        ;  04327150 (GXSetViewportJitter + 0x8C)
  mulli r4, r4, 0x18   ;v 1C840018
.org 0x80327154        ;  04327154 (GXSetViewportJitter + 0x90)
  lis r5, 0x803A       ;v 3CA0803A
.org 0x80327158        ;  04327158 (GXSetViewportJitter + 0x94)
  ori r5, r5, 0x2800   ;v 60A52800 (r5 = gTRKDispatchTable(0x803A2800))
.org 0x8032715C        ;  0432715c (GXSetViewportJitter + 0x98)
  add r4, r5, r4       ;v 7C852214 (r4 = gTRKDispatchTable + offset)
.org 0x80327160        ;  04327160 (GXSetViewportJitter + 0x9C)
  lfs f0, 0x0(r4)      ;v C0040000 (lfs gTRKDispatchTable + offset + 0x0)
.org 0x80327164        ;  04327164 (GXSetViewportJitter + 0xA0)
  stfs f0, 0x0(r3)     ;v D0030000
.org 0x80327168        ;  04327168 (GXSetViewportJitter + 0xA4)
  lfs f0, 0x4(r4)      ;v C0040004 (lfs gTRKDispatchTable + offset + 0x4)
.org 0x8032716C        ;  0432716c (GXSetViewportJitter + 0xA8)
  stfs f0, 0x4(r3)     ;v D0030004
.org 0x80327170        ;  04327170 (GXSetViewportJitter + 0xAC)
  lfs f0, 0x8(r4)      ;v C0040008 (lfs gTRKDispatchTable + offset + 0x8)
.org 0x80327174        ;  04327174 (GXSetViewportJitter + 0xB0)
  stfs f0, 0x8(r3)     ;v D0030008
.org 0x80327178        ;  04327178 (GXSetViewportJitter + 0xB4)
  lfs f0, 0xC(r4)      ;v C004000C (lfs gTRKDispatchTable + offset + 0xC)
.org 0x8032717C        ;  0432717c (GXSetViewportJitter + 0xB8)
  stfs f0, 0xC(r3)     ;v D003000C
.org 0x80327180        ;  04327180 (GXSetViewportJitter + 0xBC)
  lfs f0, 0x10(r4)     ;v C0040010 (lfs gTRKDispatchTable + offset + 0x10)
.org 0x80327184        ;  04327184 (GXSetViewportJitter + 0xC0)
  stfs f0, 0x10(r3)    ;v D0030010
.org 0x80327188        ;  04327188 (GXSetViewportJitter + 0xC4)
  lfs f0, 0x14(r4)     ;v C0040014 (lfs gTRKDispatchTable + offset + 0x14)
.org 0x8032718C        ;  0432718C (GXSetViewportJitter + 0xC8)
  stfs f0, 0x14(r3)    ;v D0030014
.org 0x80327190        ;  04327190 (GXSetViewportJitter + 0xCC)
  blr                  ;v 4E800020

.org 0x80330EE4        ;  04330EE4 (TRKNubMainLoop + 0x0)
  lis r4, 0x803F       ;v 3C80803F
.org 0x80330EE8        ;  04330EE8 (TRKNubMainLoop + 0x4)
  lbz r6, 0x1F00(r4)   ;v 88C41F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x80330EEC        ;  04330EEC (TRKNubMainLoop + 0x8)
  lis r5, 0x803A       ;v 3CA0803A
.org 0x80330EF0        ;  04330EF0 (TRKNubMainLoop + 0xC)
  ori r5, r5, 0x4df0   ;v 60A54df0 (r5 = g_mDoCPd_cpadInfo(0x803A4df0))
.org 0x80330EF4        ;  04330EF4 (TRKNubMainLoop + 0x10)
  cmpwi r6, 0x1;0      ;v 2C060001
.org 0x80330EF8        ;  04330EF8 (TRKNubMainLoop + 0x14)
  bne 0x80330F0C       ;v 40820014
.org 0x80330EFC        ;  04330EFC (TRKNubMainLoop + 0x18)
  stw r5, 0x4C28(r3)   ;v 90A34C28 (stw r5 g_mDoCPd_cpadInfo -> originalSize(playerActor))
.org 0x80330F00        ;  04330F00 (TRKNubMainLoop + 0x1C)
  li r0, 0x0;1         ;v 38000000
.org 0x80330F04        ;  04330F04 (TRKNubMainLoop + 0x20)
  stb r0, 0x1F00(r4)   ;v 98041F00 (stb 0x1 -> gTRKEventQueue)
.org 0x80330F08        ;  04330F08 (TRKNubMainLoop + 0x24)
  blr                  ;v 4E800020
.org 0x80330F0C        ;  04330F0C (TRKNubMainLoop + 0x28)
  stw r3, 0x3EA0(r4)   ;v 90643EA0 (stw r3 playerActor -> gReadCount(0x803F3EA0))
.org 0x80330F10        ;  04330F10 (TRKNubMainLoop + 0x2C)
  addi r5, r5, 0x3C    ;v 38A5003C (r5 = g_mDoCPd_cpadInfo + 0x3C)
.org 0x80330F14        ;  04330F14 (TRKNubMainLoop + 0x30)
  stw r5, 0x4C28(r3)   ;v 90A34C28 (stw r5 g_mDoCPd_cpadInfo+ -> originalSize(playerActor))
.org 0x80330F18        ;  04330F18 (TRKNubMainLoop + 0x34)
  li r0, 0x1;0         ;v 38000001
.org 0x80330F1C        ;  04330F1C (TRKNubMainLoop + 0x38)
  stb r0, 0x1F00(r4)   ;v 98041F00 (stb 0x0 -> gTRKEventQueue)
.org 0x80330F20        ;  04330F20 (TRKNubMainLoop + 0x3C)
  blr                  ;v 4E800020

.org 0x80330F24        ;  04330F24 (TRKNubMainLoop + 0x40)
  lis r4, 0x803F       ;v 3C80803F
.org 0x80330F28        ;  04330F28 (TRKNubMainLoop + 0x44)
  lbz r0, 0x1F00(r4)   ;v 88041F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x80330F2C        ;  04330F2C (TRKNubMainLoop + 0x48)
  cmpwi r0, 0x1        ;v 2C000001
.org 0x80330F30        ;  04330F30 (TRKNubMainLoop + 0x4C)
  bne 0x80330F40       ;v 40820010
.org 0x80330F34        ;  04330F34 (TRKNubMainLoop + 0x50)
  li r0, 0x2           ;v 38000002
.org 0x80330F38        ;  04330F38 (TRKNubMainLoop + 0x54)
  stb r0, 0x1F00(r4)   ;v 98041F00 (stb 0x2 -> gTRKEventQueue)
.org 0x80330F3C        ;  04330F3C (TRKNubMainLoop + 0x58)
  b 0x8000AFA4         ;v 4bcda068 (v = b->mDoGph_Painter__Fv + 0x78) (4bcd9ff0 - flickers, but no crash)‬
.org 0x80330F40        ;  04330F40 (TRKNubMainLoop + 0x5C)
  li r3, 0x1           ;v 38600001
.org 0x80330F44        ;  04330F44 (TRKNubMainLoop + 0x60)
  stb r3, 0x1F00(r4)   ;v 98641F00 (stb 0x1 -> gTRKEventQueue)
.org 0x80330F48        ;  04330F48 (TRKNubMainLoop + 0x64)
  blr                  ;v 4E800020

.org 0x80330F4C        ;  04330F4C (TRKNubMainLoop + 0x68)
  lis r4, 0x803F       ;v 3C80803F
.org 0x80330F50        ;  04330F50 (TRKNubMainLoop + 0x6C)
  lbz r6, 0x1F00(r4)   ;v 88C41F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x80330F54        ;  04330F54 (TRKNubMainLoop + 0x70)
  lis r5, 0x803A       ;v 3CA0803A
.org 0x80330F58        ;  04330F58 (TRKNubMainLoop + 0x74)
  ori r5, r5, 0x4df0   ;v 60A54df0 (r5 = g_mDoCPd_cpadInfo(0x803A4df0))
.org 0x80330F5C        ;  04330F5C (TRKNubMainLoop + 0x78)
  cmpwi r6, 0x1;0      ;v 2C060001
.org 0x80330F60        ;  04330F60 (TRKNubMainLoop + 0x7C)
  bne 0x80330F74       ;v 40820014
.org 0x80330F64        ;  04330F64 (TRKNubMainLoop + 0x80)
  stw r5, 0x9D4(r3)    ;v 90A309D4 (stw g_mDoCPd_cpadInfo -> originalSize(camera))
.org 0x80330F68        ;  04330F68 (TRKNubMainLoop + 0x84)
  li r0, 0x0;1         ;v 38000000
.org 0x80330F6C        ;  04330F6C (TRKNubMainLoop + 0x88)
  stb r0, 0x1F00(r4)   ;v 98041F00 (stb 0x1 -> gTRKEventQueue)
.org 0x80330F70        ;  04330F70 (TRKNubMainLoop + 0x8C)
  blr                  ;v 4E800020
.org 0x80330F74        ;  04330F74 (TRKNubMainLoop + 0x90)
  nop                  ;v 60000000
.org 0x80330F78        ;  04330F78 (TRKNubMainLoop + 0x94)
  addi r5, r5, 0x3C    ;v 38A5003C (r5 = g_mDoCPd_cpadInfo + 0x3C)
.org 0x80330F7C        ;  04330F7C (TRKNubMainLoop + 0x98)
  stw r5, 0x9D4(r3)    ;v 90A309D4 (stw g_mDoCPd_cpadInfo+ -> originalSize(camera))
.org 0x80330F80        ;  04330F80 (TRKNubMainLoop + 0x9C)
  li r0, 0xl;0         ;v 38000001
.org 0x80330F84        ;  04330F84 (TRKNubMainLoop + 0xA0)
  stb r0, 0x1F00(r4)   ;v 98041F00 (stb 0x0 -> gTRKEventQueue)
.org 0x80330F88        ;  04330F88 (TRKNubMainLoop + 0xA4)
  lwz r4, 0x3EA0(r4)   ;v 80843EA0 (lwz playerActor, gReadCount(0x803F3EA0))
.org 0x80330F8C        ;  04330F8C (TRKNubMainLoop + 0xA8)
  stw r4, 0x128(r3)    ;v 90830128 (stw playerActor -> playerRefLocation(camera))
.org 0x80330F90        ;  04330F90 (TRKNubMainLoop + 0xAC)
  blr                  ;v 4E800020

.org 0x80330F94        ;  04330F94 (TRKNubMainLoop + 0xB0)
  lis r4, 0x803F       ;v 3C80803F
.org 0x80330F98        ;  04330F98 (TRKNubMainLoop + 0xB4)
  lbz r0, 0x1F00(r4)   ;v 88041F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x80330F9C        ;  04330F9C (TRKNubMainLoop + 0xB8)
  cmpwi r0, 0x1        ;v 2C000001
.org 0x80330FA0        ;  04330FA0 (TRKNubMainLoop + 0xBC)
  bne 0x80330FAC       ;v 4082000C
.org 0x80330FA4        ;  04330FA4 (TRKNubMainLoop + 0xC0)
  lwz r28, 0x5B10(r3)  ;v 83835B10 (lwz cameraActor, 0x5B10(g_dComIfG_gameInfo))
.org 0x80330FA8        ;  04330FA8 (TRKNubMainLoop + 0xC4)
  blr                  ;v 4E800020
.org 0x80330FAC        ;  04330FAC (TRKNubMainLoop + 0xC8)
  lwz r28, 0x3E9C(r4)  ;v 83843E9C (lwz cameraActor, gReadPos(0x803F3E9C))
.org 0x80330FB0        ;  04330FB0 (TRKNubMainLoop + 0xCC)
  blr                  ;v 4E800020

.org 0x80330FB4        ;  04330FB4 (TRKNubMainLoop + 0xD0)
  lis r3, 0x803F       ;v 3C60803F
.org 0x80330FB8        ;  04330FB8 (TRKNubMainLoop + 0xD4)
  lbz r0, 0x1F00(r3)   ;v 88031F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x80330FBC        ;  04330FBC (TRKNubMainLoop + 0xD8)
  cmpwi r0, 0x0        ;v 2C000000
.org 0x80330FC0        ;  04330FC0 (TRKNubMainLoop + 0xDC)
  beqlr                ;v 4D820020
.org 0x80330FC4        ;  04330FC4 (TRKNubMainLoop + 0xE0)
  stw r31, 0x3E9C(r3)  ;v 93e33E9C (stw cameraActor -> gReadPos(0x803F3E9C))
.org 0x80330FC8        ;  04330FC8 (TRKNubMainLoop + 0xE4)
  blr                  ;v 4E800020

.org 0x80330FCC        ;  04330FCC (TRKNubMainLoop + 0xE8)
  lis r4, 0x803F       ;v 3C80803F
.org 0x80330FD0        ;  04330FD0 (TRKNubMainLoop + 0xEC)
  lbz r0, 0x1F00(r4)   ;v 88041F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x80330FD4        ;  04330FD4 (TRKNubMainLoop + 0xF0)
  cmpwi r0, 0x2        ;v 2C000002
.org 0x80330FD8        ;  04330FD8 (TRKNubMainLoop + 0xF4)
  bne 0x80330FEC       ;v 40820014
.org 0x80330FDC        ;  04330fdc (TRKDestructEvent + 0x0)
  lwz r4, 0x3E9C(r4)   ;v 80843E9C (lwz cameraActor, gReadPos(0x803F3E9C))
.org 0x80330FE0        ;  04330fe0 (TRKDestructEvent + 0x4)
  cmpw r4, r3          ;v 7C041800
.org 0x80330FE4        ;  04330fe4 (TRKDestructEvent + 0x8)
  bnelr                ;v 4C820020
.org 0x80330FE8        ;  04330fe8 (TRKDestructEvent + 0xC)
  b 0x8017C350         ;v 4bE4B368 (v = b->camera_draw__FP20camera_process_class)
.org 0x80330FEC        ;  04330fec (TRKDestructEvent + 0x10)
  lwz r4, 0x3E9C(r4)   ;v 80843E9C (lwz cameraActor, gReadPos(0x803F3E9C))
.org 0x80330FF0        ;  04330ff0 (TRKDestructEvent + 0x14)
  cmpw r4, r3          ;v 7C041800
.org 0x80330FF4        ;  04330ff4 (TRKDestructEvent + 0x18)
  beqlr                ;v 4D820020
.org 0x80330FF8        ;  04330ff8 (TRKDestructEvent + 0x1C)
  b 0x8017C350         ;v 4be4b358 (v = b->camera_draw__FP20camera_process_class)

.org 0x80330FFC        ;  04330ffc (TRKDestructEvent + 0x20)
  lwz r4, 0x36C(r3)    ;v 8083036C (lwz playerActor, playerRefLocation(cameraActor))
.org 0x80331000        ;  04331000 (TRKConstructEvent + 0x0)
  cmpw r29, r4         ;v 7C1D2000
.org 0x80331004        ;  04331004 (TRKConstructEvent + 0x4)
  beq 0x80331010       ;v 4182000C
.org 0x80331008        ;  04331008 (TRKConstructEvent + 0x8)
  lis r3, 0x803F       ;v 3C60803F
.org 0x8033100C        ;  0433100c (TRKConstructEvent + 0xC)
  lwz r3, 0x3E9C(r3)   ;v 80633E9C (lwz cameraActor, gReadPos(0x803F3E9C))
.org 0x80331010        ;  04331010 (TRKConstructEvent + 0x10)
  lha r3, 0x02B0(r3)   ;v A86302B0
.org 0x80331014        ;  04331014 (TRKConstructEvent + 0x14)
  blr                  ;v 4E800020

.org 0x8000C9EC        ;  0400C9EC (mDoMch_Create__Fv + 0x2E0)
  lis r3, 0x37         ;v 3C600037

.org 0x80074094        ;  04074094 (startProc__16dEvent_manager_cFP12dEvDtEvent_c + 0xA4)
  bl TRKGetNextEvent_1C ;v 482BD081 (v = bl->TRKGetNextEvent + 0x1C)
.org 0x800738DC        ;  040738DC (setStartDemo__18dEvent_exception_cFi + 0xE8)
  bl TRKGetNextEvent_64 ;v 482BD881 (v = bl->TRKGetNextEvent + 0x64)
.org 0x80041E10        ;  04041E10 (dStage_playerInit__FP11dStage_dt_cPviPv + 0x31C)
  bl TRKGetNextEvent_78 ;v 482EF361 (v = bl->TRKGetNextEvent + 0x78)
.org 0x8012E8C4        ;  0412E8C4 (dProcGetItem__9daPy_lk_cFv + 0x14)
  bl TRKInitializeNub90 ;v 48202A1D (v = bl->TRKInitializeNub + 0x90)

.org 0x80125CE4        ;  04125CE4 (phase_1__FP9daPy_lk_c + 0x1C)
  bl TRKGetNextEvent_4C ;v 4820B461 (v = bl->TRKGetNextEvent + 0x4C)
.org 0x80125CE8        ;  04125CE8 (phase_1__FP9daPy_lk_c + 0x20)
  nop                  ;v 60000000

.org 0x801E5B04        ;  041ec8fc (dMesg_finalize__Fv + 0x28)
  bl __dt__Q28JMessage18TResourceContainerFv ;v 48000115 (v = bl->__dt__Q28JMessage18TResourceContainerFv)
.org 0x801E5B24        ;  041E5B24 (dMesg_finalize__Fv + 0x48)
  bl __dt__24dMesg_tSequenceProcessorFv ;v 48000095 (v = bl->__dt__24dMesg_tSequenceProcessorFv)
.org 0x801E5B44        ;  041E5B44 (dMesg_finalize__Fv + 0x68)
  bl __dt__25dMesg_tRenderingProcessorFv ;v 48000015 (v = bl->__dt__25dMesg_tRenderingProcessorFv)
.org 0x801E7100        ;  041E7100 (dMsg_Delete__FP14sub_mesg_class + 0x1C0)
  bl __dt__Q28JMessage6TParseFv ;v 480B8D91 (v = bl->__dt__Q28JMessage6TParseFv)

.org 0x80235074        ;  04235074 (dScnPly_Execute__FP13dScnPly_ply_c + 0xA4)
  bl TRKPostEvent_A0   ;v 480FC045 (v = bl->TRKPostEvent + 0xA0)
.org 0x80235090        ;  04235090 (dScnPly_Execute__FP13dScnPly_ply_c + 0xC0)
  bl TRKPostEvent_58   ;v 480FBFE1 (v = bl->TRKPostEvent + 0x58)
.org 0x80234FA8        ;  04234FA8 (dScnPly_Draw__FP13dScnPly_ply_c + 0x40C)
  bl TRKPostEvent_D0   ;v 480FC141 (v = bl->TRKPostEvent + 0xD0)

.org 0x80194C08        ;  04194C08 (dKy_setLight__Fv + 0x2C)
  bl TRKGetNextEvent_88 ;v 4819C579 (v = bl->TRKGetNextEvent + 0x88)

.org 0x80375250        ;  04375250 (l_funcTable$5327 + 0x8)
  .long 0x80331018     ;v 80331018 (v = TRKPostEvent)

; Fix Targeting error
.org 0x80245B10        ;  04245B10 (normalize__4cXyzFv + 0x34)
  b 0x80245B44         ;v 48000034 (v = b->normalize__4cXyzFv + 0x68)
.org 0x80108248        ;  04108248 (setAtnList__9daPy_lk_cFv + 0x24)
  nop                  ;v 60000000

.org 0x8009EE34        ;  0409EE34 (judgementButton__12dAttention_cFv + 0x74)
  lwz r4, 0x190(r3)    ;v 80830190
.org 0x8009EE68        ;  0409EE68 (judgementButton__12dAttention_cFv + 0xA8)
  lwz r4, 0x190(r3)    ;v 80830190
.org 0x8009EFC8        ;  0409EFC8 (judgementStatusSw__12dAttention_cFUl + 0x88)
  lwz r3, 0x190(r31)   ;v 807F0190
.org 0x8009F2CC        ;  0409F2CC (Run__12dAttention_cFUl + 0xF8)
  lwz r3, 0x190(r31)   ;v 807F0190
.org 0x8009F33C        ;  0409F33C (Run__12dAttention_cFUl + 0x168)
  lwz r3, 0x190(r31)   ;v 807F0190

.org 0x8009D2F4        ;  0409D2F4 (__ct__12dAttention_cFP10fopAc_ac_cUl + 0x14)
  bl TRKInitializeEventQueue_8 ;v 48293EC1 (v = bl->TRKInitializeEventQueue + 0x8)
.org 0x8012525C        ;  0412525C (playerInit__9daPy_lk_cFv + 0x5C4)
  bl TRKInitializeEventQueue38 ;v 4820BF89 (v = bl->TRKInitializeEventQueue + 0x38)
.org 0x80163328        ;  04163328 (Att__9dCamera_cFv + 0x38)
  bl TRKTerminateNub_8 ;v 481CDF0D (v = bl->TRKTerminateNub + 0x8)
.org 0x80163688        ;  04163688 (Run__9dCamera_cFv + 0x174)
  bl TRKInitializeNub_4 ;v 481CDBCD (v = bl->TRKInitializeNub + 0x4)
.org 0x801641B0        ;  041641B0 (nextMode__9dCamera_cFl + 0x24)
  bl TRKInitializeNub24 ;v 481CD0C5 (v = bl->TRKInitializeNub + 0x24)

.org 0x8009E2CC        ;  0409E2CC (select_attention__FP10fopAc_ac_cPv + 0x0)
  mr r6, r3            ;v 7C661B78
.org 0x8009E2D0        ;  0409E2D0 (select_attention__FP10fopAc_ac_cPv + 0x4)
  li r3, 0x0           ;v 38600000
.org 0x8009E2D4        ;  0409E2D4 (select_attention__FP10fopAc_ac_cPv + 0x8)
  lwz r5, 0x10(r6)     ;v 80A60010
.org 0x8009E2D8        ;  0409E2D8 (select_attention__FP10fopAc_ac_cPv + 0xC)
  lis r0, 0x8039       ;v 3C008039 ()
.org 0x8009E2DC        ;  0409E2DC (select_attention__FP10fopAc_ac_cPv + 0x10)
  addi r0, r0, -0x274  ;v 3800FD8C (g_profile_PLAYER)
.org 0x8009E2E0        ;  0409E2E0 (select_attention__FP10fopAc_ac_cPv + 0x14)
  cmpw r0, r5          ;v 7C002800
.org 0x8009E2E4        ;  0409E2E4 (select_attention__FP10fopAc_ac_cPv + 0x18)
  beqlr                ;v 4D820020
.org 0x8009E2E8        ;  0409E2E8 (select_attention__FP10fopAc_ac_cPv + 0x1C)
  mr r3, r4            ;v 7C832378
.org 0x8009E2EC        ;  0409E2EC (select_attention__FP10fopAc_ac_cPv + 0x20)
  mr r4, r6            ;v 7CC43378
.org 0x8009E2F0        ;  0409E2F0 (select_attention__FP10fopAc_ac_cPv + 0x24)
  b 0x8009E33C         ;v 4800004c

.org 0x80331018        ;  04331018 (TRKPostEvent + 0x0)
  mflr r0              ;v 7C0802A6
.org 0x8033101C        ;  0433101C (TRKPostEvent + 0x4)
  stw r0, 0x4(r1)      ;v 90010004
.org 0x80331020        ;  04331020 (TRKPostEvent + 0x8)
  stwu r1, -0x30(r1)   ;v 9421FFD0
.org 0x80331024        ;  04331024 (TRKPostEvent + 0xC)
  stmw r27, 0x8(r1)    ;v BF610008
.org 0x80331028        ;  04331028 (TRKPostEvent + 0x10)
  li r27, 0x0          ;v 3B600000
.org 0x8033102C        ;  0433102C (TRKPostEvent + 0x14)
  mr r31, r3           ;v 7C7F1B78
.org 0x80331030        ;  04331030 (TRKPostEvent + 0x18)
  mr r30, r5           ;v 7CBE2B78
.org 0x80331034        ;  04331034 (TRKPostEvent + 0x1C)
  mr r29, r6           ;v 7CDD3378
.org 0x80331038        ;  04331038 (TRKPostEvent + 0x20)
  mr r28, r4           ;v 7C9C2378
.org 0x8033103C        ;  0433103C (TRKPostEvent + 0x24)
  bl dStage_playerInit__FP11dStage_dt_cPviPv ;v 4BD10AB9 (v = bl->dStage_playerInit__FP11dStage_dt_cPviPv)
.org 0x80331040        ;  04331040 (TRKPostEvent + 0x28)
  addi r27, r27, 0x1   ;v 3B7B0001
.org 0x80331044        ;  04331044 (TRKPostEvent + 0x2C)
  cmpwi r27, 0x2       ;v 2C1B0002
.org 0x80331048        ;  04331048 (TRKPostEvent + 0x30)
  mr r3, r31           ;v 7FE3FB78
.org 0x8033104C        ;  0433104C (TRKPostEvent + 0x34)
  mr r5, r30           ;v 7FC5F378
.org 0x80331050        ;  04331050 (TRKPostEvent + 0x38)
  mr r6, r29           ;v 7FA6EB78
.org 0x80331054        ;  04331054 (TRKPostEvent + 0x3C)
  mr r4, r28           ;v 7F84E378
.org 0x80331058        ;  04331058 (TRKPostEvent + 0x40)
  bne 0x8033103C       ;v 4082FFE4 (v = bne->TRKPostEvent + 0x24)
.org 0x8033105C        ;  0433105C (TRKPostEvent + 0x44)
  lmw r27, 0x8(r1)     ;v BB610008
.org 0x80331060        ;  04331060 (TRKPostEvent + 0x48)
  addi r1, r1, 0x30    ;v 38210030
.org 0x80331064        ;  04331064 (TRKPostEvent + 0x4C)
  lwz r0, 0x4(r1)      ;v 80010004
.org 0x80331068        ;  04331068 (TRKPostEvent + 0x50)
  mtlr r0              ;v 7C0803A6
.org 0x8033106C        ;  0433106C (TRKPostEvent + 0x54)
  blr                  ;v 4E800020

.org 0x80331070        ;  04331070 (TRKPostEvent + 0x58)
  li r5, 0x0           ;v 38A00000
.org 0x80331074        ;  04331074 (TRKPostEvent + 0x5C)
  lis r4, 0x803F       ;v 3C80803F
.org 0x80331078        ;  04331078 (TRKPostEvent + 0x60)
  lwz r3, 0x3EA4(r4)   ;v 80643EA4 (lwz _MetroTRK_Has_Framing = 0x803F3EA4)
.org 0x8033107C        ;  0433107C (TRKPostEvent + 0x64)
  lwz r4, 0x3EA0(r4)   ;v 80843EA0 (lwz playerActor, gReadCount(0x803F3EA0))
.org 0x80331080        ;  04331080 (TRKPostEvent + 0x68)
  b 0x8009D2E0         ;v 4bD6C260 (v = b->__ct__12dAttention_cFP10fopAc_ac_cUl)

.org 0x803310B8        ;  043310B8 (TRKPostEvent + 0xA0)
  mflr r0              ;v 7C0802A6
.org 0x803310BC        ;  043310BC (TRKPostEvent + 0xA4)
  stw r0, 0x4(r1)      ;v 90010004
.org 0x803310C0        ;  043310C0 (TRKPostEvent + 0xA8)
  stwu r1, -0xC(r1)    ;v 9421FFF4
.org 0x803310C4        ;  043310C4 (TRKPostEvent + 0xAC)
  bl Run__12dAttention_cFUl ;v 4bD6E111 (v = bl->Run__12dAttention_cFUl)
.org 0x803310C8        ;  043310C8 (TRKPostEvent + 0xB0)
  lis r3, 0x803F       ;v 3C60803F (v = )
.org 0x803310CC        ;  043310CC (TRKPostEvent + 0xB4)
  lwz r3, 0x3EA4(r3)   ;v 80633EA4 (lwz _MetroTRK_Has_Framing = 0x803F3EA4)
.org 0x803310D0        ;  043310D0 (TRKPostEvent + 0xB8)
  li r4, -1            ;v 3880FFFF (v = )
.org 0x803310D4        ;  043310D4 (TRKPostEvent + 0xBC)
  bl Run__12dAttention_cFUl ;v 4bD6E101 (v = bl->Run__12dAttention_cFUl)
.org 0x803310D8        ;  043310D8 (TRKPostEvent + 0xC0)
  addi r1, r1, 0xC     ;v 3821000C
.org 0x803310DC        ;  043310DC (TRKPostEvent + 0xC4)
  lwz r0, 0x4(r1)      ;v 80010004
.org 0x803310E0        ;  043310E0 (TRKPostEvent + 0xC8)
  mtlr r0              ;v 7C0803A6
.org 0x803310E4        ;  043310E4 (TRKPostEvent + 0xCC)
  blr                  ;v 4E800020

.org 0x803310E8        ;  043310E8 (TRKPostEvent + 0xD0)
  mflr r0              ;v 7C0802A6
.org 0x803310EC        ;  043310EC (TRKPostEvent + 0xD4)
  stw r0, 0x4(r1)      ;v 90010004
.org 0x803310F0        ;  043310F0 (TRKPostEvent + 0xD8)
  stwu r1, -0xC(r1)    ;v 9421FFF4
.org 0x803310F4        ;  043310F4 (TRKPostEvent + 0xDC)
  bl Draw__12dAttention_cFv ;v 4bD6E36D (v = bl->Draw__12dAttention_cFv)
.org 0x803310F8        ;  043310F8 (TRKGetNextEvent + 0x0)
  lis r3, 0x803F       ;v 3C60803F (v = )
.org 0x803310FC        ;  043310FC (TRKGetNextEvent + 0x4)
  lwz r3, 0x3EA4(r3)   ;v 80633EA4 (lwz _MetroTRK_Has_Framing = 0x803F3EA4)
.org 0x80331100        ;  04331100 (TRKGetNextEvent + 0x8)
  bl Draw__12dAttention_cFv ;v 4bD6E361 (v = bl->Draw__12dAttention_cFv)
.org 0x80331104        ;  04331104 (TRKGetNextEvent + 0xC)
  addi r1, r1, 0xC     ;v 3821000C
.org 0x80331108        ;  04331108 (TRKGetNextEvent + 0x10)
  lwz r0, 0x4(r1)      ;v 80010004
.org 0x8033110C        ;  0433110C (TRKGetNextEvent + 0x14)
  mtlr r0              ;v 7C0803A6
.org 0x80331110        ;  04331110 (TRKGetNextEvent + 0x18)
  blr                  ;v 4E800020

.org 0x80331114        ;  04331114 (TRKGetNextEvent + 0x1C)
  stw r0, 0x1C4(r3)    ;v 900301C4
.org 0x80331118        ;  04331118 (TRKGetNextEvent + 0x20)
  lis r4, 0x803F       ;v 3C80803F (v = )
.org 0x8033111C        ;  0433111C (TRKGetNextEvent + 0x24)
  lwz r4, 0x3EA0(r4)   ;v 80843EA0 (lwz playerActor, gReadCount(0x803F3EA0))
.org 0x80331120        ;  04331120 (TRKGetNextEvent + 0x28)
  cmpw r3, r4          ;v 7C032000
.org 0x80331124        ;  04331124 (TRKGetNextEvent + 0x2C)
  beq 0x80331138       ;v 41820014 (v = b->TRKGetNextEvent + 0x40)
.org 0x80331128        ;  04331128 (TRKGetNextEvent + 0x30)
  lwz r0, 0x1C4(r4)    ;v 800401C4
.org 0x8033112C        ;  0433112C (TRKGetNextEvent + 0x34)
  ori r0, r0, 0x8000   ;v 60008000
.org 0x80331130        ;  04331130 (TRKGetNextEvent + 0x38)
  stw r0, 0x1C4(r4)    ;v 900401C4
.org 0x80331134        ;  04331134 (TRKGetNextEvent + 0x3C)
  blr                  ;v 4E800020
.org 0x80331138        ;  04331138 (TRKGetNextEvent + 0x40)
  lwz r4, 0x18(r4)     ;v 80840018
.org 0x8033113C        ;  0433113C (TRKGetNextEvent + 0x44)
  addi r4, r4, -0x18   ;v 3884FFE8
.org 0x80331140        ;  04331140 (TRKGetNextEvent + 0x48)
  b 0x80331128         ;v 4BFFFFE8 (v = b->TRKGetNextEvent + 0x30)

.org 0x80331144        ;  04331144 (TRKGetNextEvent + 0x4C)
  lwz r0, 0x5B44(r4)   ;v 80045B44 (lwz playerActor(g_dComIfG_gameInfo))
.org 0x80331148        ;  04331148 (TRKGetNextEvent + 0x50)
  cmpwi r0, 0x0        ;v 2C000000
.org 0x8033114C        ;  0433114C (TRKGetNextEvent + 0x54)
  bnelr                ;v 4C820020
.org 0x80331150        ;  04331150 (TRKGetNextEvent + 0x58)
  stw r31, 0x5B44(r4)  ;v 93E45B44 (stw playerActor(g_dComIfG_gameInfo))
.org 0x80331154        ;  04331154 (TRKGetNextEvent + 0x5C)
  stw r31, 0x5B4C(r4)  ;v 93E45B4C (stw playerActor(g_dComIfG_gameInfo))
.org 0x80331158        ;  04331158 (TRKGetNextEvent + 0x60)
  blr                  ;v 4E800020

.org 0x8033115C        ;  0433115C (TRKGetNextEvent + 0x64)
  lis r6, 0x803F       ;v 3CC0803F (v = )
.org 0x80331160        ;  04331160 (TRKGetNextEvent + 0x68)
  lbz r6, 0x1F00(r6)   ;v 88C61F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x80331164        ;  04331164 (TRKGetNextEvent + 0x6C)
  cmpwi r6, 0x0        ;v 2C060000
.org 0x80331168        ;  04331168 (TRKGetNextEvent + 0x70)
  beqlr                ;v 4D820020
.org 0x8033116C        ;  0433116C (TRKGetNextEvent + 0x74)
  b 0x8005DB24         ;v 4bD27460 (v = b->onSwitch__10dSv_info_cFii)

.org 0x80331170        ;  04331170 (TRKGetNextEvent + 0x78)
  lwz r0, 0x1C(r1)     ;v 8001001C
.org 0x80331174        ;  04331174 (TRKGetNextEvent + 0x7C)
  cmpwi r0, 0x1        ;v 2C000001
.org 0x80331178        ;  04331178 (TRKGetNextEvent + 0x80)
  beqlr                ;v 4D820020
.org 0x8033117C        ;  0433117C (TRKGetNextEvent + 0x84)
  b 0x8002E204         ;v 4bCFD088 (v = b->fopMsgM_Create__FsPFPv_iPv)

.org 0x80331180        ;  04331180 (TRKGetNextEvent + 0x88)
  lis r4, 0x803F       ;v 3C80803F (v = )
.org 0x80331184        ;  04331184 (TRKGetNextEvent + 0x8C)
  lbz r0, 0x1F00(r4)   ;v 88041F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x80331188        ;  04331188 (TRKGetNextEvent + 0x90)
  cmpwi r0, 0x1        ;v 2C000001
.org 0x8033118C        ;  0433118C (TRKGetNextEvent + 0x94)
  bne 0x80331198       ;v 4082000C (v = b->TRKGetNextEvent + 0xA0)
.org 0x80331190        ;  04331190 (TRKGetNextEvent + 0x98)
  lwz r30, 0x5B10(r3)  ;v 83C35B10 (lwz cameraActor, 0x5B10(g_dComIfG_gameInfo))
.org 0x80331194        ;  04331194 (TRKGetNextEvent + 0x9C)
  blr                  ;v 4E800020
.org 0x80331198        ;  04331198 (TRKGetNextEvent + 0xA0)
  lwz r30, 0x3E9C(r4)  ;v 83C43E9C (lwz cameraActor, gReadPos(0x803F3E9C))
.org 0x8033119C        ;  0433119C (TRKGetNextEvent + 0xA4)
  blr                  ;v 4E800020

.org 0x803311B4        ;  043311B4 (TRKInitializeEventQueue + 0x8)
  mr r31, r3           ;v 7C7F1B78
.org 0x803311B8        ;  043311B8 (TRKInitializeEventQueue + 0xC)
  lwz r0, 0x54(r1)     ;v 80010054
.org 0x803311BC        ;  043311BC (TRKInitializeEventQueue + 0x10)
  lis r6, 0x8023       ;v 3CC08023 ()
.org 0x803311C0        ;  043311C0 (TRKInitializeEventQueue + 0x14)
  ori r6, r6, 0x5094   ;v 60C65094 (player dependent branch return location, I think)
.org 0x803311C4        ;  043311C4 (TRKInitializeEventQueue + 0x18)
  cmpw r0, r6          ;v 7C003000
.org 0x803311C8        ;  043311C8 (TRKInitializeEventQueue + 0x1C)
  lis r6, 0x803A       ;v 3CC0803A ()
.org 0x803311CC        ;  043311CC (TRKInitializeEventQueue + 0x20)
  ori r6, r6, 0x4DF0   ;v 60C64DF0 (r6 = g_mDoCPd_cpadInfo(0x803A4df0))
.org 0x803311D0        ;  043311D0 (TRKInitializeEventQueue + 0x24)
  bne 0x803311D8       ;v 40820008
.org 0x803311D4        ;  043311D4 (TRKInitializeEventQueue + 0x28)
  addi r6, r6, 0x3C    ;v 38C6003C (r6 = g_mDoCPd_cpadInfo + 0x3C)
.org 0x803311D8        ;  043311D8 (TRKInitializeEventQueue + 0x2C)
  stw r6, 0x190(r31)   ;v 90DF0190 (stw g_mDoCPd_cpadInfo(g_dComIfG_gameInfo + 0x5808))
.org 0x803311DC        ;  043311DC (TRKInitializeEventQueue + 0x30)
  blr                  ;v 4E800020

.org 0x803311E4        ;  043311E4 (TRKInitializeEventQueue + 0x38)
  lis r4, 0x8033       ;v 3C808033 ()
.org 0x803311E8        ;  043311E8 (TRKInitializeEventQueue + 0x3C)
  lbz r3, 0x11E2(r4)   ;v 886411E2 (lbz TRKInitializeEventQueue + 0x36)
.org 0x803311EC        ;  043311EC (TRKInitializeEventQueue + 0x40)
  xori r0,r3,1         ;v 68600001
.org 0x803311F0        ;  043311F0 (TRKInitializeEventQueue + 0x44)
  stb r0, 0x11E2(r4)   ;v 980411E2 (stb TRKInitializeEventQueue + 0x36)
.org 0x803311F4        ;  043311F4 (TRKInitializeEventQueue + 0x48)
  cmpwi r3, 0x1        ;v 2C030001
.org 0x803311F8        ;  043311F8 (TRKInitializeEventQueue + 0x4C)
  addi r3, r30, 0x5808 ;v 387E5808 (g_dComIfG_gameInfo + 0x5808)
.org 0x803311FC        ;  043311FC (TRKInitializeEventQueue + 0x50)
  bne 0x8033122C       ;v 40820030
.org 0x80331200        ;  04331200 (TRKInitializeEventQueue + 0x54)
  mflr r0              ;v 7C0802A6
.org 0x80331204        ;  04331204 (TRKNubWelcome + 0x0)
  stw r0, 0x4(r1)      ;v 90010004
.org 0x80331208        ;  04331208 (TRKNubWelcome + 0x4)
  stwu r1, -0xC(r1)    ;v 9421FFF4
.org 0x8033120C        ;  0433120C (TRKNubWelcome + 0x8)
  li r3, -4            ;v 3860FFFC
.org 0x80331210        ;  04331210 (TRKNubWelcome + 0xC)
  li r4, 0x1A0         ;v 388001A0
.org 0x80331214        ;  04331214 (TRKNubWelcome + 0x10)
  bl memalignB__3cMlFiUl;v 4BF100E5 (v = bl->memalignB__3cMlFiUl)
.org 0x80331218        ;  04331218 (TRKNubWelcome + 0x14)
  lis r4, 0x803F       ;v 3C80803F ()
.org 0x8033121C        ;  0433121C (TRKNubWelcome + 0x18)
  stw r3, 0x3EA4(r4)   ;v 90643EA4 (lwz _MetroTRK_Has_Framing = 0x803F3EA4)
.org 0x80331220        ;  04331220 (TRKNubWelcome + 0x1C)
  addi r1, r1, 0xC     ;v 3821000C
.org 0x80331224        ;  04331224 (TRKNubWelcome + 0x20)
  lwz r0, 0x4(r1)      ;v 80010004
.org 0x80331228        ;  04331228 (TRKNubWelcome + 0x24)
  mtlr r0              ;v 7C0803A6
.org 0x8033122C        ;  0433122C (TRKTerminateNub + 0x0)
  stw r3, 0x3480(r31)  ;v 907F3480 (stw ???(playerActor))
.org 0x80331230        ;  04331230 (TRKTerminateNub + 0x4)
  blr                  ;v 4E800020

.org 0x80331234        ;  04331234 (TRKTerminateNub + 0x8)
  addi r31, r3, 0x5808 ;v 3BE35808 (g_dComIfG_gameInfo + 0x5808)
.org 0x80331238        ;  04331238 (TRKTerminateNub + 0xC)
  lwz r0, 0x128(r30)   ;v 801E0128
.org 0x8033123C        ;  0433123C (TRKTerminateNub + 0x10)
  lwz r4, 0x0(r31)     ;v 809F0000
.org 0x80331240        ;  04331240 (TRKTerminateNub + 0x14)
  cmpw r4, r0          ;v 7C040000
.org 0x80331244        ;  04331244 (TRKTerminateNub + 0x18)
  beqlr                ;v 4D820020
.org 0x80331248        ;  04331248 (TRKTerminateNub + 0x1C)
  lis r31, 0x803F      ;v 3FE0803F ()
.org 0x8033124C        ;  0433124C (TRKTerminateNub + 0x20)
  lwz r31, 0x3EA4(r31) ;v 83FF3EA4 (lwz _MetroTRK_Has_Framing = 0x803F3EA4)
.org 0x80331250        ;  04331250 (TRKInitializeNub + 0x0)
  blr                  ;v 4E800020

.org 0x80331254        ;  04331254 (TRKInitializeNub + 0x4)
  addi r31, r31, 0x5808;v 3BFF5808 (g_dComIfG_gameInfo + 0x5808)
.org 0x80331258        ;  04331258 (TRKInitializeNub + 0x8)
  lwz r0, 0x128(r28)   ;v 801C0128
.org 0x8033125C        ;  0433125C (TRKInitializeNub + 0xC)
  lwz r4, 0x0(r31)     ;v 809F0000
.org 0x80331260        ;  04331260 (TRKInitializeNub + 0x10)
  cmpw r4, r0          ;v 7C040000
.org 0x80331264        ;  04331264 (TRKInitializeNub + 0x14)
  beqlr                ;v 4D820020
.org 0x80331268        ;  04331268 (TRKInitializeNub + 0x18)
  lis r31, 0x803F      ;v 3FE0803F ()
.org 0x8033126C        ;  0433126C (TRKInitializeNub + 0x1C)
  lwz r31, 0x3EA4(r31) ;v 83FF3EA4 (lwz _MetroTRK_Has_Framing = 0x803F3EA4)
.org 0x80331270        ;  04331270 (TRKInitializeNub + 0x20)
  blr                  ;v 4E800020

.org 0x80331274        ;  04331274 (TRKInitializeNub + 0x24)
  addi r31, r29, 0x5808;v 3BFD5808 (g_dComIfG_gameInfo + 0x5808)
.org 0x80331278        ;  04331278 (TRKInitializeNub + 0x28)
  lwz r0, 0x128(r26)   ;v 801A0128
.org 0x8033127C        ;  0433127C (TRKInitializeNub + 0x2C)
  lwz r4, 0x0(r31)     ;v 809F0000
.org 0x80331280        ;  04331280 (TRKInitializeNub + 0x30)
  cmpw r4, r0          ;v 7C040000
.org 0x80331284        ;  04331284 (TRKInitializeNub + 0x34)
  beqlr                ;v 4D820020
.org 0x80331288        ;  04331288 (TRKInitializeNub + 0x38)
  lis r31, 0x803F      ;v 3FE0803F ()
.org 0x8033128C        ;  0433128C (TRKInitializeNub + 0x3C)
  lwz r31, 0x3EA4(r31) ;v 83FF3EA4 (lwz _MetroTRK_Has_Framing = 0x803F3EA4)
.org 0x80331290        ;  04331290 (TRKInitializeNub + 0x40)
  blr                  ;v 4E800020

.org 0x80331294        ;  04331294 (TRKInitializeNub + 0x44)
  lis r4, 0x803F       ;v 3C80803F ()
.org 0x80331298        ;  04331298 (TRKInitializeNub + 0x48)
  lwz r0, 0x3EA8(r4)   ;v 80043EA8 (lwz gReadBuf = 0x803F3EA8)
.org 0x8033129C        ;  0433129C (TRKInitializeNub + 0x4C)
  cmpwi r0, 0x0        ;v 2C000000
.org 0x803312A0        ;  043312A0 (TRKInitializeNub + 0x50)
  bnelr                ;v 4C820020
.org 0x803312A4        ;  043312A4 (TRKInitializeNub + 0x54)
  lbz r0, 0x1F00(r4)   ;v 88041F00 (lbz gTRKEventQueue(0x803F1F00))
.org 0x803312A8        ;  043312A8 (TRKInitializeNub + 0x58)
  cmpwi r0, 0x1        ;v 2C000001
.org 0x803312AC        ;  043312AC (TRKInitializeNub + 0x5C)
  bne 0x803312BC       ;v 40820010
.org 0x803312B0        ;  043312B0 (TRKInitializeNub + 0x60)
  li r0, 0x2           ;v 38000002
.org 0x803312B4        ;  043312B4 (TRKInitializeNub + 0x64)
  stb r0, 0x1F00(r4)   ;v 98041F00 (stb gTRKEventQueue(0x803F1F00))
.org 0x803312B8        ;  043312B8 (TRKInitializeNub + 0x68)
  b 0x8000AFA4         ;v 4BCD9CEC (v = b->mDoGph_Painter__Fv + 0x78)
.org 0x803312BC        ;  043312BC (TRKInitializeNub + 0x6C)
  li r3, 0x1           ;v 38600001
.org 0x803312C0        ;  043312C0 (TRKInitializeNub + 0x70)
  stb r3, 0x1F00(r4)   ;v 98641F00 (stb gTRKEventQueue(0x803F1F00))
.org 0x803312C4        ;  043312C4 (TRKInitializeNub + 0x74)
  blr                  ;v 4E800020

.org 0x803312C8        ;  043312C8 (TRKInitializeNub + 0x78)
  li r0, 0x1           ;v 38000001
.org 0x803312CC        ;  043312CC (TRKInitializeNub + 0x7C)
  lis r9, 0x803F       ;v 3D20803F ()
.org 0x803312D0        ;  043312D0 (TRKInitializeNub + 0x80)
  stw r0, 0x3EA8(r9)   ;v 90093EA8 (stw gReadBuf = 0x803F3EA8)
.org 0x803312D4        ;  043312D4 (TRKInitializeNub + 0x84)
  blr                  ;v 4E800020
.org 0x803312D8        ;  043312D8 (TRKInitializeNub + 0x88)
  li r0, 0x0           ;v 38000000
.org 0x803312DC        ;  043312DC (TRKInitializeNub + 0x8C)
  b 0x803312CC         ;v 4BFFFFF0

.org 0x803312E0        ;  043312E0 (TRKInitializeNub + 0x90)
  mr r30, r3           ;v 7C7E1B78
.org 0x803312E4        ;  043312E4 (TRKInitializeNub + 0x94)
  lwz r0, 0x20(r30)    ;v 801E0020
.org 0x803312E8        ;  043312E8 (TRKInitializeNub + 0x98)
  cmpwi r0, 0x0        ;v 2C000000
.org 0x803312EC        ;  043312EC (TRKInitializeNub + 0x9C)
  bnelr                ;v 4C820020
.org 0x803312F0        ;  043312F0 (TRKInitializeNub + 0xA0)
  b 0x8012EC94         ;v 4bDFD9A4 (v = b->dProcGetItem__9daPy_lk_cFv + 0x3E4)

; comment out for
; 48 MB version
;.org 0x8000C9DC        ;  0400C9DC (mDoMch_Create__Fv + 0x2D0)
;  lis r3, 0x9A         ;v 3C60009a

; Uncomment out for
; 48 MB version
.org 0x8000C7C0        ;  0400C7C0 (mDoMch_Create__Fv + 0xB4)
  nop                  ;v 60000000
.org 0x8000C848        ;  0400C848 (mDoMch_Create__Fv + 0x13C)
  lis r0, 0x6C         ;v 3C00006C


;.org 0x80EF266C        ;  04ef266c (Title Menu cancel hack)
;  blr                  ;v 4e800020
;.org 0x80375278        ;  04375278 (l_funcTable$5327 + 0x30)
;  .long 0x504C5952     ;v 504c5952 ("PLYR")
;.org 0x80375280	    ;  04375280 (l_funcTable$5327 + 0x38)
;  .long 0x80041AF4     ;v 80041af4 (v = dStage_playerInit__FP11dStage_dt_cPviPv)
;.org 0x80073280        ;  04073280 (specialProcPackage__12dEvDtStaff_cFv + 0x21C)
;  nop                  ;v 60000000

; Experimental Game heap size hack
;.org 0x8000C9EC        ;  0400C9EC (mDoMch_Create__Fv + 0x2E0)
;  lis r3, 0x002D       ;v 3C60002d
;.org 0x8000C9F0        ;  0400C9F0 (mDoMch_Create__Fv + 0x2E4)
;  addi r3,r3, 0xE1C    ;v 38630E1C

;.org 0x80331070        ;  04331070 (TRKPostEvent + 0x58)
;  stw r0, 0xC(r3)      ;v 9003000C
;.org 0x80331074        ;  04331074 (TRKPostEvent + 0x5C)
;  mflr r0              ;v 7C0802A6
;.org 0x80331078        ;  04331078 (TRKPostEvent + 0x60)
;  stw r0, 0x4(r1)      ;v 90010004
;.org 0x8033107C        ;  0433107C (TRKPostEvent + 0x64)
;  stwu r1, -0xC(r1)    ;v 9421FFF4
;.org 0x80331080        ;  04331080 (TRKPostEvent + 0x68)
;  li r4, 0x190         ;v 38800190
;.org 0x80331084        ;  04331084 (TRKPostEvent + 0x6C)
;  li r3, 0x4           ;v 38600004
;.org 0x80331088        ;  04331088 (TRKPostEvent + 0x70)
;  bl memalignB__3cMlFiUl ;v 4bF10271 (v = bl->memalignB__3cMlFiUl)
;.org 0x8033108C        ;  0433108C (TRKPostEvent + 0x74)
;  li r5, 0x0           ;v 38A00000
;.org 0x80331090        ;  04331090 (TRKPostEvent + 0x78)
;  lis r4, 0x803F       ;v 3C80803F (v = )
;.org 0x80331094        ;  04331094 (TRKPostEvent + 0x7C)
;  stw r3, 0x3EA4(r4)   ;v 90643EA4 (stw _MetroTRK_Has_Framing = 0x803F3EA4)
;.org 0x80331098        ;  04331098 (TRKPostEvent + 0x80)
;  lwz r4, 0x3EA0(r4)   ;v 80843EA0 (lwz playerActor, gReadCount(0x803F3EA0))
;.org 0x8033109C        ;  0433109C (TRKPostEvent + 0x84)
;  bl 0x8009D2E0        ;v 4bD6C245 (v = bl->__ct__12dAttention_cFP10fopAc_ac_cUl)
;.org 0x803310A0        ;  043310A0 (TRKPostEvent + 0x88)
;  addi r1, r1, 0xC     ;v 3821000C
;.org 0x803310A4        ;  043310A4 (TRKPostEvent + 0x8C)
;  lwz r0, 0x4(r1)      ;v 80010004
;.org 0x803310A8        ;  043310A8 (TRKPostEvent + 0x90)
;  mtlr r0              ;v 7C0803A6
;.org 0x803310AC        ;  043310AC (TRKPostEvent + 0x94)
;  blr                  ;v 4E800020

;.org 0x8000BC1C        ;  0400bc1c (mDoGph_Painter__Fv + 0xCF4)
;  bl 0x80330F24        ;v 48325309 (v = bl->TRKNubMainLoop + 0x40)
;.org 0x803271EC        ;  043271ec (GXGetViewportv)
;  b 0x8032713C         ;v 4bffff50 (v = b->GXSetViewportJitter + 0x78)

;.org 0x803270C4        ;  043270c4 (GXSetViewportJitter + 0x0)
;  lis r3,-13311        ;v 3C60CC01 (r3 = -0xCC01  ...I guess)
;.org 0x803270C8        ;  043270c8 (GXSetViewportJitter + 0x4)
;  li r0, 0x10          ;v 38000010
;.org 0x803270CC        ;  043270cc (GXSetViewportJitter + 0x8)
;  stb r0, -0x8000(r3)  ;v 98038000 (TODO: Figure out how this works)
;.org 0x803270D0        ;  043270d0 (GXSetViewportJitter + 0xC)
;  lis r4, 0x0005       ;v 3C800005
;.org 0x803270D4        ;  043270d4 (GXSetViewportJitter + 0x10)
;  addi r4,r4, 0x101A   ;v 3884101A (r4 = 0x5101A)
;.org 0x803270D8        ;  043270d8 (GXSetViewportJitter + 0x14)
;  stw r4, -0x8000(r3)  ;v 90838000 (TODO: Figure out how this works)
;.org 0x803270DC        ;  043270dc (GXSetViewportJitter + 0x18)
;  lis r4, 0x803A       ;v 3C80803A
;.org 0x803270E0        ;  043270e0 (GXSetViewportJitter + 0x1C)
;  ori r4, r4, 0x2800   ;v 60842800 (r4 = gTRKDispatchTable(0x803A2800))
;.org 0x803270E4        ;  043270e4 (GXSetViewportJitter + 0x20)
;  lis r5, 0x803F       ;v 3CA0803F
;.org 0x803270E8        ;  043270e8 (GXSetViewportJitter + 0x24)
;  lbz r0, 0x1F00(r5)   ;v 88051F00 (lbz gTRKEventQueue(0x803F1F00))
;.org 0x803270EC        ;  043270ec (GXSetViewportJitter + 0x28)
;  cmpwi r0, 1          ;v 2C000001
;.org 0x803270F0        ;  043270f0 (GXSetViewportJitter + 0x2C)
;  beq 0x803270FC       ;v 4182000C
;.org 0x803270F4        ;  043270f4 (GXSetViewportJitter + 0x30)
;  bgt 0x80327104       ;v 41810010
;.org 0x803270F8        ;  043270f8 (GXSetViewportJitter + 0x34)
;  b 0x80327108         ;v 48000010
;.org 0x803270FC        ;  043270fc (GXSetViewportJitter + 0x38)
;  addi r4, r4, 0x30;18 ;v 38840030 (r4 = gTRKDispatchTable += offset 0x18)
;.org 0x80327100        ;  04327100 (GXSetViewportJitter + 0x3C)
;  b 0x80327108         ;v 48000008
;.org 0x80327104        ;  04327104 (GXSetViewportJitter + 0x40)
;  addi r4, r4, 0x18;30 ;v 38840018 (r4 = gTRKDispatchTable += offset 0x30)
;.org 0x80327108        ;  04327108 (GXSetViewportJitter + 0x44)
;  lfs f0, 0x0(r4)      ;v C0040000 (lfs gTRKDispatchTable + offset + 0x0)
;.org 0x8032710C        ;  0432710c (GXSetViewportJitter + 0x48)
;  stfs f0, -0x8000(r3) ;v D0038000 (TODO: Figure out how this works)
;.org 0x80327110        ;  04327110 (GXSetViewportJitter + 0x4C)
;  lfs f0, 0x4(r4)      ;v C0040004 (lfs gTRKDispatchTable + offset + 0x4)
;.org 0x80327114        ;  04327114 (GXSetViewportJitter + 0x50)
;  stfs f0, -0x8000(r3) ;v D0038000 (TODO: Figure out how this works)
;.org 0x80327118        ;  04327118 (GXSetViewportJitter + 0x54)
;  lfs f0, 0x8(r4)      ;v C0040008 (lfs gTRKDispatchTable + offset + 0x8)
;.org 0x8032711C        ;  0432711c (GXSetViewportJitter + 0x58)
;  stfs f0, -0x8000(r3) ;v D0038000 (TODO: Figure out how this works)
;.org 0x80327120        ;  04327120 (GXSetViewportJitter + 0x5C)
;  lfs f0, 0xC(r4)      ;v C004000C (lfs gTRKDispatchTable + offset + 0xC)
;.org 0x80327124        ;  04327124 (GXSetViewportJitter + 0x60)
;  stfs f0, -0x8000(r3) ;v D0038000 (TODO: Figure out how this works)
;.org 0x80327128        ;  04327128 (GXSetViewportJitter + 0x64)
;  lfs f0, 0x10(r4)     ;v C0040010 (lfs gTRKDispatchTable + offset + 0x10)
;.org 0x8032712C        ;  0432712c (GXSetViewportJitter + 0x68)
;  stfs f0, -0x8000(r3) ;v D0038000 (TODO: Figure out how this works)
;.org 0x80327130        ;  04327130 (GXSetViewportJitter + 0x6C)
;  lfs f0, 0x14(r4)     ;v C0040014 (lfs gTRKDispatchTable + offset + 0x14)
;.org 0x80327134        ;  04327134 (GXSetViewportJitter + 0x70)
;  stfs f0, -0x8000(r3) ;v D0038000 (TODO: Figure out how this works)
;.org 0x80327138        ;  04327138 (GXSetViewportJitter + 0x74)
;  blr                  ;v 4E800020

;.org 0x8032713C        ;  0432713c (GXSetViewportJitter + 0x78)
;  lis r4, 0x803F       ;v 3C80803F
;.org 0x80327140        ;  04327140 (GXSetViewportJitter + 0x7C)
;  lbz r4, 0x1F00(r4)   ;v 88841F00 (lbz gTRKEventQueue(0x803F1F00))
;.org 0x80327144        ;  04327144 (GXSetViewportJitter + 0x80)
;  mulli r4, r4, 0x18   ;v 1C840018 (r4 = offset)
;.org 0x80327148        ;  04327148 (GXSetViewportJitter + 0x84)
;  lis r5, 0x803A       ;v 3CA0803A
;.org 0x8032714C        ;  0432714c (GXSetViewportJitter + 0x88)
;  ori r5, r5, 0x2800   ;v 60A52800 (r5 = gTRKDispatchTable(0x803A2800))
;.org 0x80327150        ;  04327150 (GXSetViewportJitter + 0x8C)
;  add r4, r5, r4       ;v 7C852214 (r4 = gTRKDispatchTable + offset)
;.org 0x80327154        ;  04327154 (GXSetViewportJitter + 0x90)
;  lfs f0, 0x0(r4)      ;v C0040000 (lfs gTRKDispatchTable + offset + 0x0)
;.org 0x80327158        ;  04327158 (GXSetViewportJitter + 0x94)
;  stfs f0, 0x0(r3)     ;v D0030000
;.org 0x8032715C        ;  0432715c (GXSetViewportJitter + 0x98)
;  lfs f0, 0x4(r4)      ;v C0040004 (lfs gTRKDispatchTable + offset + 0x4)
;.org 0x80327160        ;  04327160 (GXSetViewportJitter + 0x9C)
;  stfs f0, 0x4(r3)     ;v D0030004
;.org 0x80327164        ;  04327164 (GXSetViewportJitter + 0xA0)
;  lfs f0, 0x8(r4)      ;v C0040008 (lfs gTRKDispatchTable + offset + 0x8)
;.org 0x80327168        ;  04327168 (GXSetViewportJitter + 0xA4)
;  stfs f0, 0x8(r3)     ;v D0030008
;.org 0x8032716C        ;  0432716c (GXSetViewportJitter + 0xA8)
;  lfs f0, 0xC(r4)      ;v C004000C (lfs gTRKDispatchTable + offset + 0xC)
;.org 0x80327170        ;  04327170 (GXSetViewportJitter + 0xAC)
;  stfs f0, 0xC(r3)     ;v D003000C
;.org 0x80327174        ;  04327174 (GXSetViewportJitter + 0xB0)
;  lfs f0, 0x10(r4)     ;v C0040010 (lfs gTRKDispatchTable + offset + 0x10)
;.org 0x80327178        ;  04327178 (GXSetViewportJitter + 0xB4)
;  stfs f0, 0x10(r3)    ;v D0030010
;.org 0x8032717C        ;  0432717c (GXSetViewportJitter + 0xB8)
;  lfs f0, 0x14(r4)     ;v C0040014 (lfs gTRKDispatchTable + offset + 0x14)
;.org 0x80327180        ;  04327180 (GXSetViewportJitter + 0xBC)
;  stfs f0, 0x14(r3)    ;v D0030014
;.org 0x80327184        ;  04327184 (GXSetViewportJitter + 0xC0)
;  blr                  ;v 4E800020
.close
