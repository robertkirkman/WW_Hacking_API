; v0.1
;	Assembly		      AR Code	   Comment/Relative Address
.open "sys/main.dol"
.org 0x80375278        ;  04375278 (l_funcTable$5327 + 0x30)
  .long 0x504C5952     ;v 504c5952 ("PLYR")
.org 0x80390F3C        ;  04390f3c (g_profile_CAMERA + 0x10)
  .long 0x9E0          ;v 000009e0 (originalSize += 0x10)
.org 0x8038FD9C        ;  0438fd9c (g_profile_PLAYER + 0x10)
  .long 0x4C38         ;v 00004c38 (originalSize += 0x10)
.org 0x80375280	       ;  04375280 (l_funcTable$5327 + 0x38)
  .long spawn_medli ;.long 0x80041AF4     ;v 80041af4 (v = dStage_playerInit__FP11dStage_dt_cPviPv o = dStage_arrowInit__FP11dStage_dt_cPviPv)
.org 0x80390F28        ;  04390f28 (method + 0x10)
  .long 0x80330FCC     ;v 80330fcc (v = TRKNubMainLoop + 0xE8)

.org 0x803A2800        ;  043A2800 (gTRKDispatchTable + 0x0)
  .float 320.0     ;v 43A00000 (v = 320f)
  .long 0xC3700000     ;v c3700000 (v = -240f)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
  .long 0x44258000     ;v 44258000 (v = 662f)
  .long 0x44118000     ;v 44118000 (v = 582f)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
  .float 320.0     ;v 43A00000 (v = 320f)
  .long 0xC2f00000     ;v C2f00000 (v = -120f)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
  .long 0x44258000     ;v 44258000 (v = 662f)
  .long 0x43e80000     ;v 43e80000 (v = 464f)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
  .float 320.0     ;v 43A00000 (v = 320f)
  .long 0xC2E60000     ;v C2E60000 (v = -115f)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)
  .long 0x44258000     ;v 44258000 (v = 662f)
  .long 0x442f0000     ;v 442f0000 (v = 700f)
  .long 0x4B800000     ;v 4b800000 (v = 16777216f Max float?)

.org 0x8003ED60        ;  0403ed60 (fpcM_Management__FPFv_vPFv_v + 0xDC)
  nop 			       ;v 60000000
.org 0x80073280        ;  04073280 (specialProcPackage__12dEvDtStaff_cFv + 0x21C)
  nop                  ;v 60000000

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
;.org 0x8011FB54        ;  0411fb54 (setStickData__9daPy_lk_cFv + 0x194)
;  lwz r3, 19496(r29)   ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
;.org 0x8011FB88        ;  0411fb88 (setStickData__9daPy_lk_cFv + 0x1C8)
;  lwz r3, 19496(r29)   ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x8011FBB4        ;  0411fbb4 (setStickData__9daPy_lk_cFv + 0x1F4)
  bl TRKDestructEvent_20        ;v 48211449 (v = bl->TRKDestructEvent + 0x20)
;.org 0x8011FBD8        ;  0411fbd8 (setStickData__9daPy_lk_cFv + 0x218)
;  lwz r5, 19496(r29)   ;v 80BD4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
;.org 0x8011FC08        ;  0411fc08 (setStickData__9daPy_lk_cFv + 0x248)
;  lwz r4, 19496(r29)   ;v 809D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
;.org 0x8011FCEC        ;  0411fcec (setStickData__9daPy_lk_cFv + 0x32C)
;  lwz r3, 19496(r29)   ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
;.org 0x8011FD0C        ;  0411fd0c (setStickData__9daPy_lk_cFv + 0x34C)
;  lwz r3, 19496(r29)   ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
;.org 0x8011FD34        ;  0411fd34 (setStickData__9daPy_lk_cFv + 0x374)
;  lwz r5, 19496(r29)   ;v 80BD4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
;.org 0x8011FDE0        ;  0411fde0 (setStickData__9daPy_lk_cFv + 0x420)
;  lwz r3, 19496(r29)   ;v 807D4C28 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))

.org 0x801623F4        ;  041623f4 (updatePad__9dCamera_cFv + 0x54)
  lwz r3, 2516(r31)    ;v 807F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x80162410        ;  04162410 (updatePad__9dCamera_cFv + 0x70)
  lwz r4, 2516(r31)    ;v 809F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x80162478        ;  04162478 (updatePad__9dCamera_cFv + 0xD8)
  lwz r3, 2516(r31)    ;v 807F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x801624C8        ;  041624c8 (updatePad__9dCamera_cFv + 0x128)
  lwz r4, 2516(r31)    ;v 809F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x80162570        ;  04162570 (updatePad__9dCamera_cFv + 0x1D0)
  lwz r4, 2516(r31)    ;v 809F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))
.org 0x80162620        ;  04162620 (updatePad__9dCamera_cFv + 0x280)
  lwz r0, 2516(r31)    ;v 801F09D4 (lwz g_mDoCPd_cpadInfo, originalSize(camera))

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
  li r4, 1             ;v 38800001
.org 0x80007AE4        ;  04007ae4 (mDoCPd_Create__Fv + 0x74)
  stw r0, 4(r3)        ;v 90030004
.org 0x80126EFC        ;  04126efc (__ct__9daPy_lk_cFv + 0x1148)
  b 0x80330EE4         ;v 48209fe8 (v = b->TRKNubMainLoop)
.org 0x801617D8        ;  041617d8 (__ct__9dCamera_cFP12camera_class + 0x48)
  bl TRKNubMainLoop_D0        ;v 481cf7dd (v = bl->TRKNubMainLoop + 0xD0)
.org 0x801618B4        ;  041618b4 (__ct__9dCamera_cFP12camera_class + 0x124)
  b 0x80330F4C         ;v 481cf698 (v = b->TRKNubMainLoop + 0x68)

.org 0x80041E94        ;  04041e94 (dStage_cameraInit__FP11dStage_dt_cPviPv + 0x10)
  li r31, 0            ;v 3BE00000
  addi r4, r4, 4       ;v 38840004
  stw r4, 4(r3)        ;v 90830004
  li r4, 0             ;v 38800000
  li r5, 0             ;v 38A00000
  bl dStage_cameraCreate__FP24stage_camera2_data_classii        ;v 4bfff7f5 (v = bl->dStage_cameraCreate__FP24stage_camera2_data_classii)
  cmpwi r31, 0         ;v 2C1F0000
  li r31, 1            ;v 3BE00001
  beq 0x80041EA0       ;v 4182FFEC
  lwz r31, 12(r1)      ;v 83E1000C
  addi r1, r1, 16      ;v 38210010
  lwz r0, 4(r1)        ;v 80010004
  mtlr r0              ;v 7C0803A6
  blr                  ;v 4E800020

.org 0x80084EBC        ;  04084ebc (imageDraw__21dDlst_shadowControl_cFPA4_f + 0xD0)
  nop 			       ;v 60000000

.org 0x8000AFA0        ;  0400afa0 (mDoGph_Painter__Fv + 0x74)
  bl beginRender__10JFWDisplayFv        ;v 4824a92d (v = bl->beginRender__10JFWDisplayFv)
  lis r3, 0x8003       ;v 3C608003
  ori r4, r3, 0xE318   ;v 6064e318 (r4 = fpcM_Draw__FPv(0x8003E318))
  ori r3, r3, 0xE338   ;v 6063e338 (r3 = fpcM_DrawIterater__FPFPvPv_i(0x8003E338))
  bl fpcDw_Handler__FPFPFPvPv_i_iPFPvPv_i        ;v 4803551d (v = bl->fpcDw_Handler__FPFPFPvPv_i_iPFPvPv_i)
.org 0x8000B0C4        ;  0400b0c4 (mDoGph_Painter__Fv + 0x198)
  bl TRKNubMainLoop_B0        ;v 48325ed1 (v = bl->TRKNubMainLoop + 0xB0)
.org 0x8000BBF8        ;  0400bbf8 (mDoGph_Painter__Fv + 0xCCC)
  lwz r3, -27984(r13)  ;v 806d92b0 (TODO: Figure out what r13 is and what is at 0x6D50)
  nop 			       ;v 60000000
  bl endRender__10JFWDisplayFv        ;v 48249eb9 (v = bl->endRender__10JFWDisplayFv)
.org 0x8000BC1C        ;  0400bc1c (mDoGph_Painter__Fv + 0xCF4)
  bl TRKNubMainLoop_40        ;v 48325309 (v = bl->TRKNubMainLoop + 0x40)

.org 0x80107890        ;  04107890 (draw__9daPy_lk_cFv + 0x588)
  nop 			       ;v 60000000
.org 0x80107910        ;  04107910 (draw__9daPy_lk_cFv + 0x608)
  nop 			       ;v 60000000
.org 0x80107A14        ;  04107a14 (draw__9daPy_lk_cFv + 0x70C)
  nop 			       ;v 60000000
.org 0x80107A94        ;  04107a94 (draw__9daPy_lk_cFv + 0x78C)
  nop 			       ;v 60000000

.org 0x803271EC        ;  043271ec (GXGetViewportv)
  b 0x8032713C         ;v 4bffff50 (v = b->GXSetViewportJitter + 0x78)

.org 0x803270C4        ;  043270c4 (GXSetViewportJitter + 0x0)
  lis r3,-13311        ;v 3C60CC01 (r3 = -0xCC01  ...I guess)
  li r0, 16            ;v 38000010
  stb r0, -32768(r3)   ;v 98038000 (TODO: Figure out how this works)
  lis r4, 0x0005       ;v 3C800005
  addi r4,r4, 0x101A   ;v 3884101A (r4 = 0x5101A)
  stw r4, -32768(r3)   ;v 90838000 (TODO: Figure out how this works)
  lis r4, 0x803A       ;v 3C80803A
  ori r4, r4, 0x2800   ;v 60842800 (r4 = gTRKDispatchTable(0x803A2800))
  lis r5, 0x803F       ;v 3CA0803F
  lbz r0, 7936(r5)     ;v 88051F00 (lbz gTRKEventQueue(0x803F1F00))
  cmpwi r0, 1          ;v 2C000001
  beq 0x803270FC       ;v 4182000C
  bgt 0x80327104       ;v 41810010
  b 0x80327108         ;v 48000010
  addi r4, r4, 24      ;v 38840018 (r4 = gTRKDispatchTable += offset 0x18)
  b 0x80327108         ;v 48000008
  addi r4, r4, 48      ;v 38840030 (r4 = gTRKDispatchTable += offset 0x30)
  lfs f0, 0(r4)        ;v C0040000 (lfs gTRKDispatchTable + offset + 0x0)
  stfs f0, -32768(r3)  ;v D0038000 (TODO: Figure out how this works)
  lfs f0, 4(r4)        ;v C0040004 (lfs gTRKDispatchTable + offset + 0x4)
  stfs f0, -32768(r3)  ;v D0038000 (TODO: Figure out how this works)
  lfs f0, 8(r4)        ;v C0040008 (lfs gTRKDispatchTable + offset + 0x8)
  stfs f0, -32768(r3)  ;v D0038000 (TODO: Figure out how this works)
  lfs f0, 12(r4)       ;v C004000C (lfs gTRKDispatchTable + offset + 0xC)
  stfs f0, -32768(r3)  ;v D0038000 (TODO: Figure out how this works)
  lfs f0, 16(r4)       ;v C0040010 (lfs gTRKDispatchTable + offset + 0x10)
  stfs f0, -32768(r3)  ;v D0038000 (TODO: Figure out how this works)
  lfs f0, 20(r4)       ;v C0040014 (lfs gTRKDispatchTable + offset + 0x14)
  stfs f0, -32768(r3)  ;v D0038000 (TODO: Figure out how this works)
  blr                  ;v 4E800020

.org 0x8032713C        ;  0432713c (GXSetViewportJitter + 0x78)
  lis r4, 0x803F       ;v 3C80803F
  lbz r4, 7936(r4)     ;v 88841F00 (lbz gTRKEventQueue(0x803F1F00))
  mulli r4, r4, 24     ;v 1C840018 (r4 = offset)
  lis r5, 0x803A       ;v 3CA0803A
  ori r5, r5, 0x2800   ;v 60A52800 (r5 = gTRKDispatchTable(0x803A2800))
  add r4, r5, r4       ;v 7C852214 (r4 = gTRKDispatchTable + offset)
  lfs f0, 0(r4)        ;v C0040000 (lfs gTRKDispatchTable + offset + 0x0)
  stfs f0, 0(r3)       ;v D0030000
  lfs f0, 4(r4)        ;v C0040004 (lfs gTRKDispatchTable + offset + 0x4)
  stfs f0, 4(r3)       ;v D0030004
  lfs f0, 8(r4)        ;v C0040008 (lfs gTRKDispatchTable + offset + 0x8)
  stfs f0, 8(r3)       ;v D0030008
  lfs f0, 12(r4)       ;v C004000C (lfs gTRKDispatchTable + offset + 0xC)
  stfs f0, 12(r3)      ;v D003000C
  lfs f0, 16(r4)       ;v C0040010 (lfs gTRKDispatchTable + offset + 0x10)
  stfs f0, 16(r3)      ;v D0030010
  lfs f0, 20(r4)       ;v C0040014 (lfs gTRKDispatchTable + offset + 0x14)
  stfs f0, 20(r3)      ;v D0030014
  blr                  ;v 4E800020

.org 0x80330EE4        ;  04330EE4 (TRKNubMainLoop + 0x0)
  lis r4, 0x803F       ;v 3C80803F
  lbz r6, 7936(r4)     ;v 88C41F00 (lbz gTRKEventQueue(0x803F1F00))
  lis r5, 0x803A       ;v 3CA0803A
  ori r5, r5, 0x4df0   ;v 60A54df0 (r5 = g_mDoCPd_cpadInfo(0x803A4df0))
  cmpwi r6, 0          ;v 2C060000
  bne 0x80330F0C       ;v 40820014
  stw r5, 19496(r3)    ;v 90A34C28 (stw r5 g_mDoCPd_cpadInfo -> originalSize(playerActor))
  li r0, 1             ;v 38000001
  stb r0, 7936(r4)     ;v 98041F00 (stb 0x1 -> gTRKEventQueue)
  blr                  ;v 4E800020
  stw r3, 16032(r4)    ;v 90643EA0 (stw r3 playerActor -> gReadCount(0x803F3EA0))
  addi r5, r5, 60      ;v 38A5003C (r5 = g_mDoCPd_cpadInfo + 0x3C)
  stw r5, 19496(r3)    ;v 90A34C28 (stw r5 g_mDoCPd_cpadInfo+ -> originalSize(playerActor))
  li r0, 0             ;v 38000000
  stb r0, 7936(r4)     ;v 98041F00 (stb 0x0 -> gTRKEventQueue)
  blr                  ;v 4E800020

.org 0x80330F24        ;  04330F24 (TRKNubMainLoop + 0x40)
  lis r4, 0x803F       ;v 3C80803F
  lbz r0, 7936(r4)     ;v 88041F00 (lbz gTRKEventQueue(0x803F1F00))
  cmpwi r0, 1          ;v 2C000001
  bne 0x80330F40       ;v 40820010
  li r0, 2             ;v 38000002
  stb r0, 7936(r4)     ;v 98041F00 (stb 0x2 -> gTRKEventQueue)
  b 0x8000AFA4         ;v 4bcda068 (v = b->mDoGph_Painter__Fv + 0x78)
  li r3, 1             ;v 38600001
  stb r3, 7936(r4)     ;v 98641F00 (stb 0x1 -> gTRKEventQueue)
  blr                  ;v 4E800020

.org 0x80330F4C        ;  04330F4C (TRKNubMainLoop + 0x68)
  lis r4, 0x803F       ;v 3C80803F
  lbz r6, 7936(r4)     ;v 88C41F00 (lbz gTRKEventQueue(0x803F1F00))
  lis r5, 0x803A       ;v 3CA0803A
  ori r5, r5, 0x4df0   ;v 60A54df0 (r5 = g_mDoCPd_cpadInfo(0x803A4df0))
  cmpwi r6, 0          ;v 2C060000
  bne 0x80330F74       ;v 40820014
  stw r5, 2516(r3)     ;v 90A309D4 (stw g_mDoCPd_cpadInfo -> originalSize(camera))
  li r0, 1             ;v 38000001
  stb r0, 7936(r4)     ;v 98041F00 (stb 0x1 -> gTRKEventQueue)
  blr                  ;v 4E800020
  addi r5, r5, 60      ;v 38A5003C (r5 = g_mDoCPd_cpadInfo + 0x3C)
  stw r5, 2516(r3)     ;v 90A309D4 (stw g_mDoCPd_cpadInfo+ -> originalSize(camera))
  li r0, 0             ;v 38000000
  stb r0, 7936(r4)     ;v 98041F00 (stb 0x0 -> gTRKEventQueue)
  lwz r4, 16032(r4)    ;v 80843EA0 (lwz playerActor, gReadCount(0x803F3EA0))
  stw r4, 296(r3)      ;v 90830128 (stw playerActor -> playerRefLocation(camera))
  stw r3, 16028(r4)    ;v 93e33E9C (stw camera -> gReadPos(0x803F3E9C))
  blr                  ;v 4E800020

.org 0x80330F94        ;  04330F94 (TRKNubMainLoop + 0xB0)
  lis r4, 0x803F       ;v 3C80803F
  lbz r0, 7936(r4)     ;v 88041F00 (lbz gTRKEventQueue(0x803F1F00))
  cmpwi r0, 1          ;v 2C000001
  bne 0x80330FAC       ;v 4082000C
  lwz r28, 23312(r3)   ;v 83835B10 (lwz cameraActor, 0x5B10(g_dComIfG_gameInfo))
  blr                  ;v 4E800020
  lwz r28, 16028(r4)   ;v 83843E9C (lwz cameraActor, gReadPos(0x803F3E9C))
  blr                  ;v 4E800020

.org 0x80330FB4        ;  04330FB4 (TRKNubMainLoop + 0xD0)
  lis r3, 0x803F       ;v 3C60803F
  lbz r0, 7936(r3)     ;v 88031F00 (lbz gTRKEventQueue(0x803F1F00))
  cmpwi r0, 0          ;v 2C000000
  beqlr                ;v 4D820020
  b assignSecondCameraActor
  blr                  ;v 4E800020

.org 0x80330FCC        ;  04330FCC (TRKNubMainLoop + 0xE8)
  lis r4, 0x803F       ;v 3C80803F
  lbz r0, 7936(r4)     ;v 88041F00 (lbz gTRKEventQueue(0x803F1F00))
  cmpwi r0, 2          ;v 2C000002
  bne 0x80330FEC       ;v 40820014
  lwz r4, 16028(r4)    ;v 80843E9C (lwz cameraActor, gReadPos(0x803F3E9C))
  cmpw r4, r3          ;v 7C041800
  bnelr                ;v 4C820020
  b 0x8017C350         ;v 4bE4B368 (v = b->camera_draw__FP20camera_process_class)
  lwz r4, 16028(r4)    ;v 80843E9C (lwz cameraActor, gReadPos(0x803F3E9C))
  cmpw r4, r3          ;v 7C041800
  beqlr                ;v 4D820020
  b 0x8017C350         ;v 4be4b358 (v = b->camera_draw__FP20camera_process_class)

.org 0x80330FFC        ;  04330ffc (TRKDestructEvent + 0x20)
  lwz r4, 876(r3)      ;v 8083036C (lwz playerActor, playerRefLocation(cameraActor))
  cmpw r29, r4         ;v 7C1D2000
  beq 0x80331010       ;v 4182000C
  lis r3, 0x803F       ;v 3C60803F
  lwz r3, 16028(r3)    ;v 80633E9C (lwz cameraActor, gReadPos(0x803F3E9C))
  lha r3, 688(r3)      ;v A86302B0
  blr                  ;v 4E800020

.org @NextFreeSpace

.global part_a
part_a:
  cmpwi r7, 3
  lfs f0, -0x60(r30)
  beq part_a_fcomp
part_a_loop:
  lfs f0, 0x8C(r31)
  b 0x800A2F80
part_a_fcomp:
  fcmpo cr0,f22,f21
  lfs f22, -0x5C(r30)
  beq part_a_loop
  b 0x800A2F84

.global part_b
part_b:
  cmplwi r30, 22407
  ble part_b_return
  fcmpo cr0,f1,f0
  bge part_b_load_n_store
  stfs f21, -0x60(r30)
  b part_b_return
part_b_load_n_store:
  lis r18, magic_float@ha
  addi r18,r18, magic_float@l
  lfs f22, 0(r18)
  stfs f1, -0x60(r30)
part_b_return:
  fsubs f1,f1,f0
  b 0x8013D024

.global magic_float
magic_float:
.long 0x04071987

.global player_ref
player_ref:
.long 0x0

.global camera_ref
camera_ref:
.long 0x0

.global state_machine
state_machine:
.long 0x0

.global spawn_data
spawn_data:
.long 0xc83c2f33 ; pos
.long 0x44098000
.long 0x489bb700
.long 0x3f800000 ; scale
.long 0x3f800000
.long 0x3f800000
.long 0x0000782d ; rot/aux
.long 0x00002c00

.global assignSecondCameraActor
assignSecondCameraActor:
  lwz r0, 16028(r3)
  stw r0, 876(r31)
  stw r31, 16028(r3)   ;v 93e33E9C (stw cameraActor -> gReadPos(0x803F3E9C))
  b 0x80330FC8

.global spawn_medli
spawn_medli:
stwu sp, -0x10 (sp)
mflr r0
stw r0, 0x14 (sp)

mr r14, r3
mr r15, r4
mr r16, r5
mr r17, r6
mr r18, r7
mr r19, r8
mr r20, r9
mr r21, r10

; fopAcM_Create params
;li r3, 0x00A7
;lis r4, spawn_data@ha
;addi r4, r4, spawn_data@l
;addi r5, r4, 0 ; pos 4, 4, 4
;lbz r6, 30(r4)
;extsb r6, r6
;addi r7, r4, 24 ; rot/aux 2, 2, 2
;addi r8, r4, 12 ; scale 4, 4, 4
;lis r4, 0x0000FF00@ha
;addi r4, r4, 0x0000FF00@l
;li r9,-1

; Set auxillary param
;lhz r10, 0(r7)
;addi r10, r10, 0x01
;sth r10, 0(r7)

;li r10,0

; Create, assigns instance id to r3
;bl fopAcM_create__FsUlP4cXyziP5csXyzP4cXyzScPFPv_i

; fopAcM_Create params
li r3, 0x171
;li r3, 191
lis r4, spawn_data@ha
addi r4, r4, spawn_data@l
addi r5, r4, 0 ; pos 4, 4, 4
lbz r6, 30(r4)
extsb r6, r6
addi r7, r4, 24 ; rot/aux 2, 2, 2
addi r8, r4, 12 ; scale 4, 4, 4
lis r4, 0x00FFFF01@ha ; Medli
addi r4, r4, 0x00FFFF01@l ; dungeon state
;lis r4, 0x00FF0300@ha ; Medli
;addi r4, r4, 0x00FF0300@l ; sea/ship state?
li r9,-1

; Set auxillary param
;lhz r10, 0(r7)
;addi r10, r10, 0x01
;sth r10, 0(r7)

li r10,0

; Create, assigns instance id to r3
bl fopAcM_create__FsUlP4cXyziP5csXyzP4cXyzScPFPv_i

mr r3, r14
li r14, 0
mr r4, r15
li r15, 0
mr r5, r16
li r16, 0
mr r6, r17
li r17, 0
mr r7, r18
li r18, 0
mr r8, r19
li r19, 0
mr r9, r20
li r20, 0
mr r10, r21
li r21, 0

lwz r0, 0x14 (sp)
mtlr r0
addi sp, sp, 0x10
blr

;.org 0x80ef26cc         ;  04ef26cc (Title Menu cancel hack)
;  blr                  ;v 4e800020

.close

.open "files/rels/d_a_title.rel"
.org 0x1e4c ; (Title Menu cancel hack)
  blr
.close

.open "files/rels/d_a_npc_md.rel"
.org 0x15750
  .long 0x32D0

; Experimental carry state for waitPlayerAction
;.org 0x10570 ; Assume player control path always
;  nop
;.org 0x9704 ; Change animation while being held
;  b carryAnim
;.org 0x98c8 ; Change player action while being held
; b setCarryPlayerAction
;.org 0x97b4 ; Attempting to disable movement control
;  b checkCarryState
;  cmplwi r16, 0
;  beq 0x98f4
;  cmplwi r16, 1
;  beq 0x98f4

; Bypass check so that Medli can be given control when not being carried
.org 0x10568 ; If carried, assume NPC control, otherwise assume player control
  b getCarryState
  cmplw r0,r28
  beq 0x10618
.org 0x6270 ; Make camera follow Medli while being carried in npc mode
  bl setAttention

.org 0x10604 ; Jump from player control to doing an npc action, cheap hack to make pickup work
  b 0x10618

; NPC carry flight experimentation
;.org 0x5d04
;  b 0x5d48
;.org 0x5d5c
;  b 0x5d68
;.org 0x5d7c
;  lwz r3,23364(r3)
;.org 0x5d9c
;  nop
;.org 0x5da4
;  nop
;.org 0x5e3c
;  nop

; flying experimentation
; Nop fly timer
.org 0xa128
  nop
.org 0x9eb0
  b 0x9f1c
.org 0x9ef0
  li r4,46
.org 0x9f20
  b flyLand
.org 0x9f2c
  stw     r4,20(r1)
  stw     r0,24(r1)
.org 0x9f38
  stw     r0,28(r1)
  addi    r4,r1,20

; Bypass ship check
;.org 0xf430
;  b 0xf444
;.org 0x38cc
;  nop

; Button controls
.org 0x3724
  lwz r3, 12996(r30)   ;v 807e32C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x3a14
  lwz r4, 12996(r3)    ;v 808332C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x9a24
  lwz r3, 12996(r29)   ;v 807D32C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0xa04c
  lwz r27, 12996(r29)  ;v 837D32C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0xa188
  lwz r3, 12996(r29)   ;v 807D32C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0xa2a8
  lwz r31, 12996(r29)  ;v 83fd32C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0xa8d8
  lwz r29, 12996(r30)  ;v 83be32C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x368c
  lwz r4, 12996(r3)    ;v 808332C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x9774
  lwz r31, 12996(r28)  ;v 83fc32C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
; Analog stick control
.org 0x34d0
  lwz r3, 12996(r3)    ;v 806332C4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0x34e8
  lis r3, 0x803F       ;v 3C80803F
.org 0x34ec
  lwz r3, 16028(r3)    ;v 80633E9C (lwz cameraActor, gReadPos(0x803F3E9C))
.org 0x34f0
  lwz r4, 876(r3)      ;v 8083036C (lwz playerActor, playerRefLocation(cameraActor))
.org 0x34f8
  nop
.org 0x34fc
  lwz r4, 12996(r4)     ;v 808309D4 (lwz g_mDoCPd_cpadInfo, originalSize(playerActor))
.org 0xf5d0
  ;bl TRKNubMainLoop
  b medliStoreAddress

.org @NextFreeSpace

.global medliStoreAddress
medliStoreAddress:
  lis r4, 0x803F       ;v 3C80803F
  lbz r6, 7936(r4)     ;v 88C41F00 (lbz gTRKEventQueue(0x803F1F00))
  lis r5, 0x803A       ;v 3CA0803A
  ori r5, r5, 0x4df0   ;v 60A54df0 (r5 = g_mDoCPd_cpadInfo(0x803A4df0))
  cmpwi r6, 0          ;v 2C060000
  bne store       ;v 40820014
  stw r5, 12996(r28)   ;v 90A34C28 (stw r5 g_mDoCPd_cpadInfo -> originalSize(playerActor))
  li r0, 1             ;v 38000001
  stb r0, 7936(r4)     ;v 98041F00 (stb 0x1 -> gTRKEventQueue)
  blr                  ;v 4E800020
  store:
  lwz r4, 16028(r4)    ;v 80633E9C (lwz cameraActor, gReadPos(0x803F3E9C))
  lwz r6, 876(r4)
  stw r28, 296(r6)      ;v 90830128 (stw playerActor -> playerRefLocation(camera))
  stw r28, 876(r4)      ;v 8083036C (stw playerActor, playerRefLocation(cameraActor))
  addi r5, r5, 60      ;v 38A5003C (r5 = g_mDoCPd_cpadInfo + 0x3C)
  stw r5, 12996(r28)    ;v 90A34C28 (stw r5 g_mDoCPd_cpadInfo+ -> originalSize(playerActor))
  li r0, 0             ;v 38000000
  stb r0, 7936(r4)     ;v 98041F00 (stb 0x0 -> gTRKEventQueue)
  blr                  ;v 4E800020

.global setAttention
setAttention:
  mr r3, r27
  lha r0, 526(r3)
  li r4, 1
  b 0xea50

.global flyLand
flyLand:
  addi r5, r4, 0x6DDC
  mr r3,r30
  b 0x9f24

.global getCarryState
getCarryState:
  lwz r3,23364(r3)

  cmplwi r3,0
  beq noCarry
  cmplw r3,r28
  beq noCarry

  lwz r3,0x3190(r3)
  mr r0,r3

  noCarry:
  b 0x1056C

.global checkCarryState
checkCarryState:
  li r16, 0
  li r29, 0
  clrlwi. r0,r29,24
  beq isCarry

  li r4, 0
  mr r16, r3
  lis     r3,0x803C4C08@ha
  addi    r3,r3,0x803C4C08@l
  lwz     r3,23364(r3)
  cmplwi r3,0
  beq notCarry
  cmplw r3,r28
  beq notCarry
  lwz r3,0x3190(r3)
  cmplw r3,r28
  bne notCarry

  mr r3, r16
  li r16, 1
  b isCarry

  notCarry:
  mr r3,r28
  li r16, 2

  isCarry:
  b 0x97b8

.global setCarryPlayerAction
setCarryPlayerAction:
  lis     r3,0x803C4C08@ha
  addi    r3,r3,0x803C4C08@l
  lwz     r3,23364(r3)
  lwz r3, 0x3190(r3)
  cmplw r3, r28
  bne not_carrying

  addi r4,r4,0x1EA8

  not_carrying:
  lwz r3,0(r4)
  b 0x98cc

.global carryAnim
carryAnim:
  lis     r4,0x803C4C08@ha
  addi    r4,r4,0x803C4C08@l
  lwz     r4,23364(r4)

  lwz r4, 0x3190(r4)
  cmplw r4, r28
  beq carry

  li r4,0
  b carryEnd

  carry:
  li r4,5

  carryEnd:
  b 0x9708

.global setCarryState
setCarryState:
  lbz r4, 13000(r3)
  ori r4, r4, 2
  stb r4, 13000(r3)
  li r4, 5
  b 0x5c78

.close
