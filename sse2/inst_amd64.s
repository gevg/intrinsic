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



TEXT ·ADDPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	ADDPD X2, X1
	RETX1X2
	

TEXT ·ADDPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	ADDPD X2, X1
	RETX1X2
	


TEXT ·ADDSDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	ADDSD X2, X1
	RETX1X2
	

TEXT ·ADDSDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	ADDSD X2, X1
	RETX1X2
	


TEXT ·ANDNPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	ANDNPD X2, X1
	RETX1X2
	

TEXT ·ANDNPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	ANDNPD X2, X1
	RETX1X2
	


TEXT ·ANDPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	ANDPD X2, X1
	RETX1X2
	

TEXT ·ANDPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	ANDPD X2, X1
	RETX1X2
	


TEXT ·COMISDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	COMISD X2, X1
	RETX1X2
	

TEXT ·COMISDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	COMISD X2, X1
	RETX1X2
	


TEXT ·DIVPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	DIVPD X2, X1
	RETX1X2
	

TEXT ·DIVPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	DIVPD X2, X1
	RETX1X2
	


TEXT ·DIVSDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	DIVSD X2, X1
	RETX1X2
	

TEXT ·DIVSDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	DIVSD X2, X1
	RETX1X2
	


TEXT ·MASKMOVDQUbyte(SB),NOSPLIT,$0-48
	FPTOX1X2
	MASKMOVDQU X2, X1
	RETX1X2
	


TEXT ·MAXPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	MAXPD X2, X1
	RETX1X2
	

TEXT ·MAXPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	MAXPD X2, X1
	RETX1X2
	


TEXT ·MAXSDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	MAXSD X2, X1
	RETX1X2
	

TEXT ·MAXSDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	MAXSD X2, X1
	RETX1X2
	


TEXT ·MINPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	MINPD X2, X1
	RETX1X2
	

TEXT ·MINPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	MINPD X2, X1
	RETX1X2
	


TEXT ·MINSDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	MINSD X2, X1
	RETX1X2
	

TEXT ·MINSDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	MINSD X2, X1
	RETX1X2
	


TEXT ·MULPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	MULPD X2, X1
	RETX1X2
	

TEXT ·MULPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	MULPD X2, X1
	RETX1X2
	


TEXT ·MULSDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	MULSD X2, X1
	RETX1X2
	

TEXT ·MULSDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	MULSD X2, X1
	RETX1X2
	


TEXT ·ORPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	ORPD X2, X1
	RETX1X2
	

TEXT ·ORPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	ORPD X2, X1
	RETX1X2
	


TEXT ·PACKSSDWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0x6B;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PACKSSWBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PACKSSWB X2, X1
	RETX1X2
	


TEXT ·PACKUSWBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PACKUSWB X2, X1
	RETX1X2
	


TEXT ·PADDBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDB X2, X1
	RETX1X2
	

TEXT ·PADDBm128int8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDB X2, X1
	RETX1X2
	


TEXT ·PADDDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDD X2, X1
	RETX1X2
	

TEXT ·PADDDm128int32(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDD X2, X1
	RETX1X2
	


TEXT ·PADDQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDQ X2, X1
	RETX1X2
	

TEXT ·PADDQm128int64(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDQ X2, X1
	RETX1X2
	


TEXT ·PADDSBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDSB X2, X1
	RETX1X2
	

TEXT ·PADDSBm128int8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDSB X2, X1
	RETX1X2
	


TEXT ·PADDSWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDSW X2, X1
	RETX1X2
	

TEXT ·PADDSWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDSW X2, X1
	RETX1X2
	


TEXT ·PADDUSBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDUSB X2, X1
	RETX1X2
	

TEXT ·PADDUSBm128uint8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDUSB X2, X1
	RETX1X2
	


TEXT ·PADDUSWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDUSW X2, X1
	RETX1X2
	

TEXT ·PADDUSWm128uint16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDUSW X2, X1
	RETX1X2
	


TEXT ·PADDWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDW X2, X1
	RETX1X2
	

TEXT ·PADDWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PADDW X2, X1
	RETX1X2
	


TEXT ·PANDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PAND X2, X1
	RETX1X2
	


TEXT ·PANDNm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PANDN X2, X1
	RETX1X2
	


TEXT ·PAVGBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PAVGB X2, X1
	RETX1X2
	

TEXT ·PAVGBm128int8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PAVGB X2, X1
	RETX1X2
	


TEXT ·PAVGWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PAVGW X2, X1
	RETX1X2
	

TEXT ·PAVGWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PAVGW X2, X1
	RETX1X2
	


TEXT ·PCMPEQBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PCMPEQB X2, X1
	RETX1X2
	


TEXT ·PCMPEQDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0x76;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PCMPEQWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PCMPEQW X2, X1
	RETX1X2
	


TEXT ·PCMPGTBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PCMPGTB X2, X1
	RETX1X2
	

TEXT ·PCMPGTBm128int8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PCMPGTB X2, X1
	RETX1X2
	


TEXT ·PCMPGTDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0x66;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	

TEXT ·PCMPGTDm128int32(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0x66;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PCMPGTWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PCMPGTW X2, X1
	RETX1X2
	

TEXT ·PCMPGTWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PCMPGTW X2, X1
	RETX1X2
	


TEXT ·PMADDWDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xF5;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	

TEXT ·PMADDWDm128int32(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xF5;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PMAXSWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXSW X2, X1
	RETX1X2
	

TEXT ·PMAXSWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXSW X2, X1
	RETX1X2
	


TEXT ·PMAXUBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXUB X2, X1
	RETX1X2
	

TEXT ·PMAXUBm128uint8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMAXUB X2, X1
	RETX1X2
	


TEXT ·PMINSWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINSW X2, X1
	RETX1X2
	

TEXT ·PMINSWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINSW X2, X1
	RETX1X2
	


TEXT ·PMINUBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINUB X2, X1
	RETX1X2
	

TEXT ·PMINUBm128uint8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMINUB X2, X1
	RETX1X2
	


TEXT ·PMULHUWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULHUW X2, X1
	RETX1X2
	

TEXT ·PMULHUWm128uint16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULHUW X2, X1
	RETX1X2
	


TEXT ·PMULHWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULHW X2, X1
	RETX1X2
	

TEXT ·PMULHWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULHW X2, X1
	RETX1X2
	


TEXT ·PMULLWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULLW X2, X1
	RETX1X2
	

TEXT ·PMULLWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PMULLW X2, X1
	RETX1X2
	


TEXT ·PMULUDQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xF4;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	

TEXT ·PMULUDQm128int64(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xF4;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PORm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	POR X2, X1
	RETX1X2
	


TEXT ·PSADBWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSADBW X2, X1
	RETX1X2
	


TEXT ·PSLLDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xF2;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PSLLQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSLLQ X2, X1
	RETX1X2
	


TEXT ·PSLLWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSLLW X2, X1
	RETX1X2
	


TEXT ·PSRADm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xE2;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PSRAWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSRAW X2, X1
	RETX1X2
	


TEXT ·PSRLDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xD2;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PSRLQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSRLQ X2, X1
	RETX1X2
	


TEXT ·PSRLWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSRLW X2, X1
	RETX1X2
	


TEXT ·PSUBBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBB X2, X1
	RETX1X2
	

TEXT ·PSUBBm128int8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBB X2, X1
	RETX1X2
	


TEXT ·PSUBDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xFA;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	

TEXT ·PSUBDm128int32(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0xFA;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PSUBQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBQ X2, X1
	RETX1X2
	

TEXT ·PSUBQm128int64(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBQ X2, X1
	RETX1X2
	


TEXT ·PSUBSBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBSB X2, X1
	RETX1X2
	

TEXT ·PSUBSBm128int8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBSB X2, X1
	RETX1X2
	


TEXT ·PSUBSWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBSW X2, X1
	RETX1X2
	

TEXT ·PSUBSWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBSW X2, X1
	RETX1X2
	


TEXT ·PSUBUSBm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBUSB X2, X1
	RETX1X2
	

TEXT ·PSUBUSBm128uint8(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBUSB X2, X1
	RETX1X2
	


TEXT ·PSUBUSWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBUSW X2, X1
	RETX1X2
	

TEXT ·PSUBUSWm128uint16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBUSW X2, X1
	RETX1X2
	


TEXT ·PSUBWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBW X2, X1
	RETX1X2
	

TEXT ·PSUBWm128int16(SB),NOSPLIT,$0-48
	FPTOX1X2
	PSUBW X2, X1
	RETX1X2
	


TEXT ·PUNPCKHBWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PUNPCKHBW X2, X1
	RETX1X2
	


TEXT ·PUNPCKHDQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0x6A;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PUNPCKHQDQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PUNPCKHQDQ X2, X1
	RETX1X2
	


TEXT ·PUNPCKHWDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0x69;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PUNPCKLBWm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PUNPCKLBW X2, X1
	RETX1X2
	


TEXT ·PUNPCKLDQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0x62;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PUNPCKLQDQm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PUNPCKLQDQ X2, X1
	RETX1X2
	


TEXT ·PUNPCKLWDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	BYTE $0x66; BYTE $0x0F; BYTE $0x61;  BYTE $0xca // $0xca = X2, X1
	RETX1X2
	


TEXT ·PXORm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	PXOR X2, X1
	RETX1X2
	


TEXT ·SQRTPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	SQRTPD X2, X1
	RETX1X2
	

TEXT ·SQRTPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	SQRTPD X2, X1
	RETX1X2
	


TEXT ·SQRTSDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	SQRTSD X2, X1
	RETX1X2
	

TEXT ·SQRTSDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	SQRTSD X2, X1
	RETX1X2
	


TEXT ·SUBPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	SUBPD X2, X1
	RETX1X2
	

TEXT ·SUBPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	SUBPD X2, X1
	RETX1X2
	


TEXT ·SUBSDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	SUBSD X2, X1
	RETX1X2
	

TEXT ·SUBSDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	SUBSD X2, X1
	RETX1X2
	


TEXT ·UCOMISDm64byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	UCOMISD X2, X1
	RETX1X2
	

TEXT ·UCOMISDm64float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	UCOMISD X2, X1
	RETX1X2
	


TEXT ·UNPCKHPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	UNPCKHPD X2, X1
	RETX1X2
	

TEXT ·UNPCKHPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	UNPCKHPD X2, X1
	RETX1X2
	


TEXT ·UNPCKLPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	UNPCKLPD X2, X1
	RETX1X2
	

TEXT ·UNPCKLPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	UNPCKLPD X2, X1
	RETX1X2
	


TEXT ·XORPDm128byte(SB),NOSPLIT,$0-48
	FPTOX1X2
	XORPD X2, X1
	RETX1X2
	

TEXT ·XORPDm128float64(SB),NOSPLIT,$0-48
	FPTOX1X2
	XORPD X2, X1
	RETX1X2
	


