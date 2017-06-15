#include "textflag.h"

#define FPTOX1X2 \
	MOVQ a+0(FP), SI;\
	MOVQ b+24(FP), DI;\
	MOVOU (SI), X1;\
	MOVOU (DI), X2;\

#define RETX1X2 \
	MOVOU X1, (SI);\
	MOVOU X2, (DI);\
	RET;\



TEXT ·PACKUSDWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PACKUSDW X2, X1
	RETX1X2
	


TEXT ·PCMPEQQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PCMPEQQ X2, X1
	RETX1X2
	


TEXT ·PHMINPOSUWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PHMINPOSUW X2, X1
	RETX1X2
	


TEXT ·PMAXSBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXSB X2, X1
	RETX1X2
	

TEXT ·PMAXSBm128int8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXSB X2, X1
	RETX1X2
	


TEXT ·PMAXSDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXSD X2, X1
	RETX1X2
	

TEXT ·PMAXSDm128int32(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXSD X2, X1
	RETX1X2
	


TEXT ·PMAXUDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXUD X2, X1
	RETX1X2
	

TEXT ·PMAXUDm128uint32(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXUD X2, X1
	RETX1X2
	


TEXT ·PMAXUWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXUW X2, X1
	RETX1X2
	

TEXT ·PMAXUWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXUW X2, X1
	RETX1X2
	


TEXT ·PMINSBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINSB X2, X1
	RETX1X2
	

TEXT ·PMINSBm128int8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINSB X2, X1
	RETX1X2
	


TEXT ·PMINSDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINSD X2, X1
	RETX1X2
	

TEXT ·PMINSDm128int32(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINSD X2, X1
	RETX1X2
	


TEXT ·PMINUDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINUD X2, X1
	RETX1X2
	

TEXT ·PMINUDm128int32(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINUD X2, X1
	RETX1X2
	


TEXT ·PMINUWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINUW X2, X1
	RETX1X2
	

TEXT ·PMINUWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINUW X2, X1
	RETX1X2
	


TEXT ·PMOVSXBDm32byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVSXBD X2, X1
	RETX1X2
	


TEXT ·PMOVSXBQm16byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVSXBQ X2, X1
	RETX1X2
	


TEXT ·PMOVSXBWm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVSXBW X2, X1
	RETX1X2
	


TEXT ·PMOVSXDQm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVSXDQ X2, X1
	RETX1X2
	


TEXT ·PMOVSXWDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVSXWD X2, X1
	RETX1X2
	


TEXT ·PMOVSXWQm32byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVSXWQ X2, X1
	RETX1X2
	


TEXT ·PMOVZXBDm32byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVZXBD X2, X1
	RETX1X2
	


TEXT ·PMOVZXBQm16byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVZXBQ X2, X1
	RETX1X2
	


TEXT ·PMOVZXBWm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVZXBW X2, X1
	RETX1X2
	


TEXT ·PMOVZXDQm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVZXDQ X2, X1
	RETX1X2
	


TEXT ·PMOVZXWDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVZXWD X2, X1
	RETX1X2
	


TEXT ·PMOVZXWQm32byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMOVZXWQ X2, X1
	RETX1X2
	


TEXT ·PMULDQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULDQ X2, X1
	RETX1X2
	

TEXT ·PMULDQm128int64(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULDQ X2, X1
	RETX1X2
	


TEXT ·PMULLDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULLD X2, X1
	RETX1X2
	

TEXT ·PMULLDm128int32(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULLD X2, X1
	RETX1X2
	


TEXT ·PTESTm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PTEST X2, X1
	RETX1X2
	


