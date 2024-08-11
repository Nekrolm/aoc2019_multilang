Require Import List.
Import ListNotations.
Require Import NArith.
Require Import Nnat.


Inductive vertex:  Type := 
| V_Z4X
| V_3VF
| V_HXK
| V_QWX
| V_X2G
| V_R3L
| V_QPS
| V_YML
| V_G5J
| V_LMV
| V_J7Y
| V_JRF
| V_MPW
| V_6BZ
| V_N1M
| V_24G
| V_5DZ
| V_PMN
| V_XVG
| V_7Q5
| V_8WN
| V_NJ7
| V_LPK
| V_BCF
| V_B98
| V_4XV
| V_R9C
| V_Y1M
| V_92F
| V_918
| V_JC2
| V_HVF
| V_5PT
| V_W81
| V_ZL7
| V_XC4
| V_FSP
| V_1SK
| V_DY3
| V_NF6
| V_F8Z
| V_Y4C
| V_CZ7
| V_JWK
| V_J9S
| V_PR3
| V_3WY
| V_8S2
| V_TTH
| V_2RR
| V_VRB
| V_F5Y
| V_L1K
| V_1M9
| V_TGN
| V_X84
| V_XRZ
| V_PX7
| V_RGD
| V_GZW
| V_61P
| V_SL3
| V_NY5
| V_LSG
| V_T8B
| V_QK4
| V_DB7
| V_16B
| V_KHL
| V_2DD
| V_5TR
| V_YW2
| V_6XW
| V_H2R
| V_CVP
| V_428
| V_3CP
| V_4MS
| V_V69
| V_QZ4
| V_LQZ
| V_QMC
| V_Q4N
| V_SRY
| V_4FR
| V_YQX
| V_8C3
| V_TX8
| V_MMF
| V_WXW
| V_9CW
| V_4LV
| V_XJN
| V_R85
| V_YOU
| V_GW7
| V_2WR
| V_954
| V_9LZ
| V_F2T
| V_1KX
| V_P2S
| V_B8G
| V_FSY
| V_D18
| V_9DV
| V_YMQ
| V_K2G
| V_SW4
| V_VYK
| V_78M
| V_RHH
| V_78Z
| V_RLD
| V_6WH
| V_JJT
| V_FHQ
| V_6D4
| V_F83
| V_BQ8
| V_S4L
| V_NXN
| V_NP3
| V_9CY
| V_TJF
| V_QFX
| V_DTT
| V_LHX
| V_R73
| V_JFD
| V_PJH
| V_XHG
| V_FMG
| V_34T
| V_JLG
| V_CWS
| V_1RC
| V_KQ3
| V_4LW
| V_6XM
| V_ZWN
| V_FL4
| V_LQP
| V_X25
| V_X5L
| V_X7X
| V_HDF
| V_2PW
| V_K23
| V_4GZ
| V_6JM
| V_T6T
| V_7TN
| V_FVD
| V_GG8
| V_RQ6
| V_DCR
| V_WQM
| V_CZY
| V_JF6
| V_TVG
| V_LWH
| V_94D
| V_GH2
| V_PM7
| V_6W2
| V_Z71
| V_CBZ
| V_1V2
| V_3L5
| V_YG9
| V_KQ4
| V_6DD
| V_NJ4
| V_DFD
| V_C58
| V_TM9
| V_K6L
| V_8XW
| V_TSP
| V_5CH
| V_YJJ
| V_48R
| V_654
| V_BZQ
| V_YNY
| V_HGB
| V_LLK
| V_32C
| V_B1T
| V_6NB
| V_PFL
| V_VPH
| V_LRH
| V_7BQ
| V_FW2
| V_WW1
| V_MG1
| V_THH
| V_56B
| V_98Z
| V_TZX
| V_C2Q
| V_FN7
| V_G97
| V_PZN
| V_R6Y
| V_MXP
| V_M8P
| V_DW7
| V_TRX
| V_YNR
| V_WZG
| V_GNK
| V_3H7
| V_W3X
| V_L8Z
| V_YFR
| V_2GN
| V_JF5
| V_MNS
| V_QM5
| V_RR4
| V_XCY
| V_4G5
| V_NLG
| V_BJS
| V_JBD
| V_DQM
| V_S4H
| V_JP8
| V_5BX
| V_K4F
| V_HV1
| V_XM1
| V_DVY
| V_1WT
| V_XDL
| V_DDF
| V_GVW
| V_SAN
| V_W4H
| V_Z6R
| V_RYF
| V_Q98
| V_86K
| V_X58
| V_M39
| V_3VG
| V_24M
| V_CH4
| V_4CX
| V_5GL
| V_BY1
| V_23Q
| V_VQD
| V_WNX
| V_6X4
| V_WB8
| V_N4X
| V_TFV
| V_KW8
| V_DTH
| V_P83
| V_PPL
| V_TK6
| V_F95
| V_1HP
| V_8DD
| V_129
| V_RN9
| V_76W
| V_4SR
| V_HQQ
| V_TT1
| V_FZY
| V_6GP
| V_VZJ
| V_XWJ
| V_YT5
| V_VK5
| V_YH6
| V_KBL
| V_924
| V_X1C
| V_1S5
| V_QGQ
| V_NJF
| V_XD3
| V_L2W
| V_6NZ
| V_RSW
| V_HXF
| V_JL7
| V_NXK
| V_VBT
| V_4FM
| V_8FR
| V_K2F
| V_PYV
| V_K6X
| V_QD6
| V_JG3
| V_8N7
| V_L2K
| V_2Y9
| V_VJS
| V_17H
| V_FK9
| V_X9R
| V_2NJ
| V_6FS
| V_11R
| V_3LB
| V_SZZ
| V_4FJ
| V_B43
| V_LCJ
| V_P2N
| V_Z81
| V_NKC
| V_VFL
| V_69L
| V_RLR
| V_8FV
| V_6ZJ
| V_YR4
| V_42K
| V_5KF
| V_VJ5
| V_JPL
| V_9LY
| V_8JB
| V_WB7
| V_5R6
| V_FZB
| V_X5P
| V_8S6
| V_C9L
| V_DNH
| V_9JD
| V_GKS
| V_4HL
| V_Y17
| V_G6Q
| V_47X
| V_93F
| V_XKQ
| V_46H
| V_NHW
| V_5LP
| V_21L
| V_XBQ
| V_YRG
| V_X1F
| V_LBP
| V_6DV
| V_488
| V_58G
| V_VQY
| V_YD2
| V_C1R
| V_F5C
| V_YKV
| V_ZWC
| V_X9B
| V_G9J
| V_4VM
| V_HP7
| V_8V7
| V_6C8
| V_K36
| V_BHJ
| V_SJJ
| V_RMH
| V_2VW
| V_VP6
| V_VFB
| V_2VP
| V_V18
| V_PM5
| V_ZDB
| V_2KN
| V_PRT
| V_425
| V_JVX
| V_MSQ
| V_R57
| V_D1M
| V_S6F
| V_DZL
| V_7TT
| V_D95
| V_VF8
| V_H1G
| V_F1Y
| V_FRV
| V_KL9
| V_NHJ
| V_3BP
| V_1B1
| V_J1Y
| V_L1X
| V_GKM
| V_GJX
| V_8PV
| V_TVQ
| V_YD1
| V_6XZ
| V_Q2G
| V_2R9
| V_BCQ
| V_2YH
| V_8FN
| V_PBJ
| V_TN8
| V_YYW
| V_TT4
| V_C6T
| V_2GS
| V_QXX
| V_3JM
| V_7PJ
| V_8JH
| V_CFG
| V_DRD
| V_XKT
| V_SDP
| V_PJR
| V_M55
| V_H5X
| V_83Q
| V_WP1
| V_HG2
| V_LPM
| V_SFB
| V_P96
| V_1VZ
| V_5H8
| V_L4D
| V_C5G
| V_8TH
| V_2X9
| V_SVL
| V_D1J
| V_ZNM
| V_13V
| V_FYQ
| V_JJC
| V_RV8
| V_KPX
| V_HLN
| V_89K
| V_G91
| V_B99
| V_6GY
| V_CCV
| V_5LY
| V_B9Z
| V_DQS
| V_MHT
| V_J86
| V_HKQ
| V_XPF
| V_JZF
| V_RT3
| V_KGH
| V_DY4
| V_RTD
| V_T58
| V_41Z
| V_M6Y
| V_RTB
| V_TZG
| V_MFC
| V_8P6
| V_XFC
| V_X9M
| V_RD7
| V_19S
| V_G31
| V_DYP
| V_5T7
| V_SF1
| V_1MV
| V_BQ4
| V_Q96
| V_8G6
| V_LNV
| V_KZ3
| V_N4S
| V_H9P
| V_BX6
| V_82K
| V_K74
| V_1FJ
| V_SN3
| V_TDM
| V_PC1
| V_3V1
| V_DK8
| V_3X7
| V_QJ8
| V_G4G
| V_H86
| V_26D
| V_8QY
| V_M98
| V_8TK
| V_YLM
| V_SXM
| V_6RS
| V_843
| V_H1T
| V_2V7
| V_XZ9
| V_R9X
| V_SFL
| V_JQC
| V_1X4
| V_7QK
| V_LRY
| V_VHR
| V_SS8
| V_ZXH
| V_XKB
| V_F6R
| V_6YS
| V_9S4
| V_8R2
| V_7FR
| V_LHH
| V_WN1
| V_KYD
| V_PLL
| V_2H5
| V_PMD
| V_2V2
| V_4HX
| V_ZX9
| V_ZNV
| V_K4T
| V_18V
| V_4R1
| V_VBK
| V_Y83
| V_S56
| V_B7S
| V_NL3
| V_W4Y
| V_TDX
| V_1CR
| V_3L1
| V_XK9
| V_SPT
| V_96R
| V_S7Z
| V_H1C
| V_VP3
| V_3Q7
| V_XDB
| V_F92
| V_SVJ
| V_HB4
| V_XMQ
| V_93Q
| V_YNP
| V_XPL
| V_FTV
| V_2SK
| V_RJN
| V_JWH
| V_TM5
| V_Q3L
| V_ZYW
| V_Y86
| V_TN4
| V_1NK
| V_4DC
| V_JS9
| V_1P9
| V_SYP
| V_NX2
| V_TCF
| V_6S1
| V_4CC
| V_JSJ
| V_WWL
| V_V26
| V_WN2
| V_FWB
| V_Q6B
| V_BVX
| V_4H7
| V_P7W
| V_XP2
| V_Q6H
| V_TW3
| V_KRJ
| V_VKY
| V_P74
| V_DMF
| V_6NT
| V_NZF
| V_BM9
| V_W73
| V_XKV
| V_3KR
| V_C5F
| V_9Q9
| V_JVF
| V_NHT
| V_DXH
| V_4N7
| V_XZV
| V_8LW
| V_S6M
| V_W7M
| V_MB3
| V_822
| V_YWX
| V_RX2
| V_ZW3
| V_GYX
| V_ZH4
| V_279
| V_LKF
| V_8WL
| V_ZW4
| V_Q25
| V_NYL
| V_GZ9
| V_6L1
| V_FWZ
| V_8FH
| V_7CK
| V_ZHV
| V_XTW
| V_TMG
| V_S1R
| V_5XK
| V_ZS6
| V_L81
| V_JF2
| V_4V2
| V_GQS
| V_5KM
| V_GQZ
| V_HRP
| V_DVZ
| V_G9Q
| V_L9P
| V_3BN
| V_TS5
| V_44R
| V_C63
| V_T15
| V_Z3X
| V_WTG
| V_4C6
| V_P2R
| V_R2R
| V_WKH
| V_47R
| V_ZBZ
| V_YK2
| V_K2Q
| V_5SV
| V_TYQ
| V_6BS
| V_DLK
| V_KSJ
| V_BPV
| V_RZD
| V_2VS
| V_SNV
| V_K4X
| V_4B3
| V_TR2
| V_JC7
| V_PPC
| V_4SP
| V_65Z
| V_CY8
| V_X4J
| V_HMX
| V_LNL
| V_JJ4
| V_VNV
| V_2ND
| V_PJN
| V_B73
| V_C2S
| V_24D
| V_67X
| V_FPG
| V_XZP
| V_G55
| V_CK2
| V_D6M
| V_RBB
| V_LZS
| V_D81
| V_J4T
| V_Z4K
| V_PCG
| V_SVX
| V_JC9
| V_LMT
| V_H2D
| V_G6J
| V_X3J
| V_VR9
| V_4YF
| V_WHL
| V_832
| V_F8L
| V_X35
| V_QXS
| V_SPP
| V_4S4
| V_76V
| V_55S
| V_X9K
| V_6S6
| V_HRR
| V_M18
| V_5SH
| V_GY4
| V_LPB
| V_G26
| V_3VT
| V_VYL
| V_VTW
| V_G1X
| V_H6Y
| V_1TW
| V_SD3
| V_2CN
| V_B8L
| V_TTQ
| V_VHK
| V_3FD
| V_L1D
| V_WSF
| V_Y99
| V_4NH
| V_1BJ
| V_9QM
| V_2MS
| V_CHT
| V_VXX
| V_QXJ
| V_656
| V_5YL
| V_GXX
| V_GGF
| V_GT8
| V_YP7
| V_MQM
| V_R6X
| V_3SN
| V_GT5
| V_BMM
| V_1XX
| V_25F
| V_ZLY
| V_PJF
| V_R9W
| V_HZ4
| V_7CJ
| V_QQX
| V_N9H
| V_N2V
| V_8VC
| V_9X7
| V_CZG
| V_318
| V_VZG
| V_WSX
| V_7NZ
| V_V2B
| V_Y33
| V_6R2
| V_FYX
| V_MVZ
| V_8YY
| V_S93
| V_135
| V_C94
| V_QBW
| V_JFV
| V_51W
| V_T12
| V_RNP
| V_1X9
| V_XYW
| V_HHL
| V_1LH
| V_5ZG
| V_2JJ
| V_7TD
| V_3D6
| V_TMZ
| V_5D7
| V_KK4
| V_8C4
| V_K67
| V_DNW
| V_XQY
| V_RYL
| V_CD7
| V_RHQ
| V_QC1
| V_NS6
| V_2YV
| V_3M4
| V_PCK
| V_BTX
| V_QG3
| V_K6T
| V_YD6
| V_ZWK
| V_BCX
| V_1HH
| V_GHV
| V_NSF
| V_3L7
| V_PW8
| V_6L7
| V_RCJ
| V_XZW
| V_5Q8
| V_WHD
| V_LC3
| V_L6S
| V_RVV
| V_D64
| V_NYV
| V_G5F
| V_ML7
| V_38Y
| V_HT2
| V_N5W
| V_X8C
| V_VGW
| V_DQK
| V_XZQ
| V_S46
| V_ZKR
| V_XK2
| V_1YR
| V_KJ7
| V_COM
| V_XL9
| V_HTH
| V_648
| V_D3V
| V_R9M
| V_9CJ
| V_BBH
| V_31T
| V_L69
| V_QH5
| V_D1C
| V_F4N
| V_JL8
| V_GWV
| V_1MR
| V_JVM
| V_9LW
| V_KFS
| V_ZZY
| V_V4T
| V_4CL
| V_62B
| V_PHC
| V_PWH
| V_VLP
| V_M8B
| V_J58
| V_4L2
| V_THX
| V_L8T
| V_K2P
| V_T6Q
| V_Q73
| V_PZV
| V_9NZ
| V_L3K
| V_H32
| V_C36
| V_YHN
| V_JCL
| V_XR4
| V_MPF
| V_4CP
| V_H57
| V_T7T
| V_877
| V_2BB
| V_G92
| V_S18
| V_QCW
| V_RQ3
| V_MYS
| V_23X
| V_TZQ
| V_FPJ
| V_7FL
| V_DKH
| V_G9G
| V_7XP
| V_96Y
| V_5S5
| V_88G
| V_H8B
| V_28K
| V_W45
| V_XX1
| V_ML5
| V_YY9
| V_JKM
| V_2X4
| V_BVB
| V_4B9
| V_6GS
| V_M9Y
| V_SNJ
| V_G8G
| V_DXT
| V_7J4
| V_TQW
| V_BVN
| V_9YW
| V_SM2
| V_H29
| V_35T
| V_YHF
| V_C33
| V_V4C
| V_XLZ
| V_9NF
| V_QT7
| V_NX9
| V_DZP
| V_6HK
| V_6GG
| V_GQJ
| V_JXQ
| V_QCJ
| V_13W
| V_32V
| V_9KL
| V_V97
| V_5BR
| V_LDK
| V_RMS
| V_GLZ
| V_ZZ5
| V_5MQ
| V_JKC
| V_KHZ
| V_BZ2
| V_6JS
| V_YVX
| V_PJX
| V_4XF
| V_1C6
| V_L53
| V_VSB
| V_JMT
| V_LXH
| V_NCP
| V_N83
| V_VQT
| V_5JJ
| V_DV5
| V_9XM
| V_KKC
| V_QMY
| V_2B8
| V_K8T
| V_H2F
| V_FKN
| V_TQ6
| V_S38
| V_H82
| V_DFR
| V_4JS
| V_Y9T
| V_FZT
| V_LTW
| V_NRH
| V_B69
| V_79F
| V_LPH
| V_F34
| V_5PN
| V_C7Q
| V_417
| V_J8R
| V_GP4
| V_Q89
| V_F1H
| V_SVY
| V_NXQ
| V_MRC
| V_XVC
| V_ZCM
| V_6J7
| V_7D1
| V_QFC
| V_TKW
.


Definition eq_vertex (v1 v2 : vertex) : bool :=
match v1, v2 with
| V_Z4X, V_Z4X => true
| V_3VF, V_3VF => true
| V_HXK, V_HXK => true
| V_QWX, V_QWX => true
| V_X2G, V_X2G => true
| V_R3L, V_R3L => true
| V_QPS, V_QPS => true
| V_YML, V_YML => true
| V_G5J, V_G5J => true
| V_LMV, V_LMV => true
| V_J7Y, V_J7Y => true
| V_JRF, V_JRF => true
| V_MPW, V_MPW => true
| V_6BZ, V_6BZ => true
| V_N1M, V_N1M => true
| V_24G, V_24G => true
| V_5DZ, V_5DZ => true
| V_PMN, V_PMN => true
| V_XVG, V_XVG => true
| V_7Q5, V_7Q5 => true
| V_8WN, V_8WN => true
| V_NJ7, V_NJ7 => true
| V_LPK, V_LPK => true
| V_BCF, V_BCF => true
| V_B98, V_B98 => true
| V_4XV, V_4XV => true
| V_R9C, V_R9C => true
| V_Y1M, V_Y1M => true
| V_92F, V_92F => true
| V_918, V_918 => true
| V_JC2, V_JC2 => true
| V_HVF, V_HVF => true
| V_5PT, V_5PT => true
| V_W81, V_W81 => true
| V_ZL7, V_ZL7 => true
| V_XC4, V_XC4 => true
| V_FSP, V_FSP => true
| V_1SK, V_1SK => true
| V_DY3, V_DY3 => true
| V_NF6, V_NF6 => true
| V_F8Z, V_F8Z => true
| V_Y4C, V_Y4C => true
| V_CZ7, V_CZ7 => true
| V_JWK, V_JWK => true
| V_J9S, V_J9S => true
| V_PR3, V_PR3 => true
| V_3WY, V_3WY => true
| V_8S2, V_8S2 => true
| V_TTH, V_TTH => true
| V_2RR, V_2RR => true
| V_VRB, V_VRB => true
| V_F5Y, V_F5Y => true
| V_L1K, V_L1K => true
| V_1M9, V_1M9 => true
| V_TGN, V_TGN => true
| V_X84, V_X84 => true
| V_XRZ, V_XRZ => true
| V_PX7, V_PX7 => true
| V_RGD, V_RGD => true
| V_GZW, V_GZW => true
| V_61P, V_61P => true
| V_SL3, V_SL3 => true
| V_NY5, V_NY5 => true
| V_LSG, V_LSG => true
| V_T8B, V_T8B => true
| V_QK4, V_QK4 => true
| V_DB7, V_DB7 => true
| V_16B, V_16B => true
| V_KHL, V_KHL => true
| V_2DD, V_2DD => true
| V_5TR, V_5TR => true
| V_YW2, V_YW2 => true
| V_6XW, V_6XW => true
| V_H2R, V_H2R => true
| V_CVP, V_CVP => true
| V_428, V_428 => true
| V_3CP, V_3CP => true
| V_4MS, V_4MS => true
| V_V69, V_V69 => true
| V_QZ4, V_QZ4 => true
| V_LQZ, V_LQZ => true
| V_QMC, V_QMC => true
| V_Q4N, V_Q4N => true
| V_SRY, V_SRY => true
| V_4FR, V_4FR => true
| V_YQX, V_YQX => true
| V_8C3, V_8C3 => true
| V_TX8, V_TX8 => true
| V_MMF, V_MMF => true
| V_WXW, V_WXW => true
| V_9CW, V_9CW => true
| V_4LV, V_4LV => true
| V_XJN, V_XJN => true
| V_R85, V_R85 => true
| V_YOU, V_YOU => true
| V_GW7, V_GW7 => true
| V_2WR, V_2WR => true
| V_954, V_954 => true
| V_9LZ, V_9LZ => true
| V_F2T, V_F2T => true
| V_1KX, V_1KX => true
| V_P2S, V_P2S => true
| V_B8G, V_B8G => true
| V_FSY, V_FSY => true
| V_D18, V_D18 => true
| V_9DV, V_9DV => true
| V_YMQ, V_YMQ => true
| V_K2G, V_K2G => true
| V_SW4, V_SW4 => true
| V_VYK, V_VYK => true
| V_78M, V_78M => true
| V_RHH, V_RHH => true
| V_78Z, V_78Z => true
| V_RLD, V_RLD => true
| V_6WH, V_6WH => true
| V_JJT, V_JJT => true
| V_FHQ, V_FHQ => true
| V_6D4, V_6D4 => true
| V_F83, V_F83 => true
| V_BQ8, V_BQ8 => true
| V_S4L, V_S4L => true
| V_NXN, V_NXN => true
| V_NP3, V_NP3 => true
| V_9CY, V_9CY => true
| V_TJF, V_TJF => true
| V_QFX, V_QFX => true
| V_DTT, V_DTT => true
| V_LHX, V_LHX => true
| V_R73, V_R73 => true
| V_JFD, V_JFD => true
| V_PJH, V_PJH => true
| V_XHG, V_XHG => true
| V_FMG, V_FMG => true
| V_34T, V_34T => true
| V_JLG, V_JLG => true
| V_CWS, V_CWS => true
| V_1RC, V_1RC => true
| V_KQ3, V_KQ3 => true
| V_4LW, V_4LW => true
| V_6XM, V_6XM => true
| V_ZWN, V_ZWN => true
| V_FL4, V_FL4 => true
| V_LQP, V_LQP => true
| V_X25, V_X25 => true
| V_X5L, V_X5L => true
| V_X7X, V_X7X => true
| V_HDF, V_HDF => true
| V_2PW, V_2PW => true
| V_K23, V_K23 => true
| V_4GZ, V_4GZ => true
| V_6JM, V_6JM => true
| V_T6T, V_T6T => true
| V_7TN, V_7TN => true
| V_FVD, V_FVD => true
| V_GG8, V_GG8 => true
| V_RQ6, V_RQ6 => true
| V_DCR, V_DCR => true
| V_WQM, V_WQM => true
| V_CZY, V_CZY => true
| V_JF6, V_JF6 => true
| V_TVG, V_TVG => true
| V_LWH, V_LWH => true
| V_94D, V_94D => true
| V_GH2, V_GH2 => true
| V_PM7, V_PM7 => true
| V_6W2, V_6W2 => true
| V_Z71, V_Z71 => true
| V_CBZ, V_CBZ => true
| V_1V2, V_1V2 => true
| V_3L5, V_3L5 => true
| V_YG9, V_YG9 => true
| V_KQ4, V_KQ4 => true
| V_6DD, V_6DD => true
| V_NJ4, V_NJ4 => true
| V_DFD, V_DFD => true
| V_C58, V_C58 => true
| V_TM9, V_TM9 => true
| V_K6L, V_K6L => true
| V_8XW, V_8XW => true
| V_TSP, V_TSP => true
| V_5CH, V_5CH => true
| V_YJJ, V_YJJ => true
| V_48R, V_48R => true
| V_654, V_654 => true
| V_BZQ, V_BZQ => true
| V_YNY, V_YNY => true
| V_HGB, V_HGB => true
| V_LLK, V_LLK => true
| V_32C, V_32C => true
| V_B1T, V_B1T => true
| V_6NB, V_6NB => true
| V_PFL, V_PFL => true
| V_VPH, V_VPH => true
| V_LRH, V_LRH => true
| V_7BQ, V_7BQ => true
| V_FW2, V_FW2 => true
| V_WW1, V_WW1 => true
| V_MG1, V_MG1 => true
| V_THH, V_THH => true
| V_56B, V_56B => true
| V_98Z, V_98Z => true
| V_TZX, V_TZX => true
| V_C2Q, V_C2Q => true
| V_FN7, V_FN7 => true
| V_G97, V_G97 => true
| V_PZN, V_PZN => true
| V_R6Y, V_R6Y => true
| V_MXP, V_MXP => true
| V_M8P, V_M8P => true
| V_DW7, V_DW7 => true
| V_TRX, V_TRX => true
| V_YNR, V_YNR => true
| V_WZG, V_WZG => true
| V_GNK, V_GNK => true
| V_3H7, V_3H7 => true
| V_W3X, V_W3X => true
| V_L8Z, V_L8Z => true
| V_YFR, V_YFR => true
| V_2GN, V_2GN => true
| V_JF5, V_JF5 => true
| V_MNS, V_MNS => true
| V_QM5, V_QM5 => true
| V_RR4, V_RR4 => true
| V_XCY, V_XCY => true
| V_4G5, V_4G5 => true
| V_NLG, V_NLG => true
| V_BJS, V_BJS => true
| V_JBD, V_JBD => true
| V_DQM, V_DQM => true
| V_S4H, V_S4H => true
| V_JP8, V_JP8 => true
| V_5BX, V_5BX => true
| V_K4F, V_K4F => true
| V_HV1, V_HV1 => true
| V_XM1, V_XM1 => true
| V_DVY, V_DVY => true
| V_1WT, V_1WT => true
| V_XDL, V_XDL => true
| V_DDF, V_DDF => true
| V_GVW, V_GVW => true
| V_SAN, V_SAN => true
| V_W4H, V_W4H => true
| V_Z6R, V_Z6R => true
| V_RYF, V_RYF => true
| V_Q98, V_Q98 => true
| V_86K, V_86K => true
| V_X58, V_X58 => true
| V_M39, V_M39 => true
| V_3VG, V_3VG => true
| V_24M, V_24M => true
| V_CH4, V_CH4 => true
| V_4CX, V_4CX => true
| V_5GL, V_5GL => true
| V_BY1, V_BY1 => true
| V_23Q, V_23Q => true
| V_VQD, V_VQD => true
| V_WNX, V_WNX => true
| V_6X4, V_6X4 => true
| V_WB8, V_WB8 => true
| V_N4X, V_N4X => true
| V_TFV, V_TFV => true
| V_KW8, V_KW8 => true
| V_DTH, V_DTH => true
| V_P83, V_P83 => true
| V_PPL, V_PPL => true
| V_TK6, V_TK6 => true
| V_F95, V_F95 => true
| V_1HP, V_1HP => true
| V_8DD, V_8DD => true
| V_129, V_129 => true
| V_RN9, V_RN9 => true
| V_76W, V_76W => true
| V_4SR, V_4SR => true
| V_HQQ, V_HQQ => true
| V_TT1, V_TT1 => true
| V_FZY, V_FZY => true
| V_6GP, V_6GP => true
| V_VZJ, V_VZJ => true
| V_XWJ, V_XWJ => true
| V_YT5, V_YT5 => true
| V_VK5, V_VK5 => true
| V_YH6, V_YH6 => true
| V_KBL, V_KBL => true
| V_924, V_924 => true
| V_X1C, V_X1C => true
| V_1S5, V_1S5 => true
| V_QGQ, V_QGQ => true
| V_NJF, V_NJF => true
| V_XD3, V_XD3 => true
| V_L2W, V_L2W => true
| V_6NZ, V_6NZ => true
| V_RSW, V_RSW => true
| V_HXF, V_HXF => true
| V_JL7, V_JL7 => true
| V_NXK, V_NXK => true
| V_VBT, V_VBT => true
| V_4FM, V_4FM => true
| V_8FR, V_8FR => true
| V_K2F, V_K2F => true
| V_PYV, V_PYV => true
| V_K6X, V_K6X => true
| V_QD6, V_QD6 => true
| V_JG3, V_JG3 => true
| V_8N7, V_8N7 => true
| V_L2K, V_L2K => true
| V_2Y9, V_2Y9 => true
| V_VJS, V_VJS => true
| V_17H, V_17H => true
| V_FK9, V_FK9 => true
| V_X9R, V_X9R => true
| V_2NJ, V_2NJ => true
| V_6FS, V_6FS => true
| V_11R, V_11R => true
| V_3LB, V_3LB => true
| V_SZZ, V_SZZ => true
| V_4FJ, V_4FJ => true
| V_B43, V_B43 => true
| V_LCJ, V_LCJ => true
| V_P2N, V_P2N => true
| V_Z81, V_Z81 => true
| V_NKC, V_NKC => true
| V_VFL, V_VFL => true
| V_69L, V_69L => true
| V_RLR, V_RLR => true
| V_8FV, V_8FV => true
| V_6ZJ, V_6ZJ => true
| V_YR4, V_YR4 => true
| V_42K, V_42K => true
| V_5KF, V_5KF => true
| V_VJ5, V_VJ5 => true
| V_JPL, V_JPL => true
| V_9LY, V_9LY => true
| V_8JB, V_8JB => true
| V_WB7, V_WB7 => true
| V_5R6, V_5R6 => true
| V_FZB, V_FZB => true
| V_X5P, V_X5P => true
| V_8S6, V_8S6 => true
| V_C9L, V_C9L => true
| V_DNH, V_DNH => true
| V_9JD, V_9JD => true
| V_GKS, V_GKS => true
| V_4HL, V_4HL => true
| V_Y17, V_Y17 => true
| V_G6Q, V_G6Q => true
| V_47X, V_47X => true
| V_93F, V_93F => true
| V_XKQ, V_XKQ => true
| V_46H, V_46H => true
| V_NHW, V_NHW => true
| V_5LP, V_5LP => true
| V_21L, V_21L => true
| V_XBQ, V_XBQ => true
| V_YRG, V_YRG => true
| V_X1F, V_X1F => true
| V_LBP, V_LBP => true
| V_6DV, V_6DV => true
| V_488, V_488 => true
| V_58G, V_58G => true
| V_VQY, V_VQY => true
| V_YD2, V_YD2 => true
| V_C1R, V_C1R => true
| V_F5C, V_F5C => true
| V_YKV, V_YKV => true
| V_ZWC, V_ZWC => true
| V_X9B, V_X9B => true
| V_G9J, V_G9J => true
| V_4VM, V_4VM => true
| V_HP7, V_HP7 => true
| V_8V7, V_8V7 => true
| V_6C8, V_6C8 => true
| V_K36, V_K36 => true
| V_BHJ, V_BHJ => true
| V_SJJ, V_SJJ => true
| V_RMH, V_RMH => true
| V_2VW, V_2VW => true
| V_VP6, V_VP6 => true
| V_VFB, V_VFB => true
| V_2VP, V_2VP => true
| V_V18, V_V18 => true
| V_PM5, V_PM5 => true
| V_ZDB, V_ZDB => true
| V_2KN, V_2KN => true
| V_PRT, V_PRT => true
| V_425, V_425 => true
| V_JVX, V_JVX => true
| V_MSQ, V_MSQ => true
| V_R57, V_R57 => true
| V_D1M, V_D1M => true
| V_S6F, V_S6F => true
| V_DZL, V_DZL => true
| V_7TT, V_7TT => true
| V_D95, V_D95 => true
| V_VF8, V_VF8 => true
| V_H1G, V_H1G => true
| V_F1Y, V_F1Y => true
| V_FRV, V_FRV => true
| V_KL9, V_KL9 => true
| V_NHJ, V_NHJ => true
| V_3BP, V_3BP => true
| V_1B1, V_1B1 => true
| V_J1Y, V_J1Y => true
| V_L1X, V_L1X => true
| V_GKM, V_GKM => true
| V_GJX, V_GJX => true
| V_8PV, V_8PV => true
| V_TVQ, V_TVQ => true
| V_YD1, V_YD1 => true
| V_6XZ, V_6XZ => true
| V_Q2G, V_Q2G => true
| V_2R9, V_2R9 => true
| V_BCQ, V_BCQ => true
| V_2YH, V_2YH => true
| V_8FN, V_8FN => true
| V_PBJ, V_PBJ => true
| V_TN8, V_TN8 => true
| V_YYW, V_YYW => true
| V_TT4, V_TT4 => true
| V_C6T, V_C6T => true
| V_2GS, V_2GS => true
| V_QXX, V_QXX => true
| V_3JM, V_3JM => true
| V_7PJ, V_7PJ => true
| V_8JH, V_8JH => true
| V_CFG, V_CFG => true
| V_DRD, V_DRD => true
| V_XKT, V_XKT => true
| V_SDP, V_SDP => true
| V_PJR, V_PJR => true
| V_M55, V_M55 => true
| V_H5X, V_H5X => true
| V_83Q, V_83Q => true
| V_WP1, V_WP1 => true
| V_HG2, V_HG2 => true
| V_LPM, V_LPM => true
| V_SFB, V_SFB => true
| V_P96, V_P96 => true
| V_1VZ, V_1VZ => true
| V_5H8, V_5H8 => true
| V_L4D, V_L4D => true
| V_C5G, V_C5G => true
| V_8TH, V_8TH => true
| V_2X9, V_2X9 => true
| V_SVL, V_SVL => true
| V_D1J, V_D1J => true
| V_ZNM, V_ZNM => true
| V_13V, V_13V => true
| V_FYQ, V_FYQ => true
| V_JJC, V_JJC => true
| V_RV8, V_RV8 => true
| V_KPX, V_KPX => true
| V_HLN, V_HLN => true
| V_89K, V_89K => true
| V_G91, V_G91 => true
| V_B99, V_B99 => true
| V_6GY, V_6GY => true
| V_CCV, V_CCV => true
| V_5LY, V_5LY => true
| V_B9Z, V_B9Z => true
| V_DQS, V_DQS => true
| V_MHT, V_MHT => true
| V_J86, V_J86 => true
| V_HKQ, V_HKQ => true
| V_XPF, V_XPF => true
| V_JZF, V_JZF => true
| V_RT3, V_RT3 => true
| V_KGH, V_KGH => true
| V_DY4, V_DY4 => true
| V_RTD, V_RTD => true
| V_T58, V_T58 => true
| V_41Z, V_41Z => true
| V_M6Y, V_M6Y => true
| V_RTB, V_RTB => true
| V_TZG, V_TZG => true
| V_MFC, V_MFC => true
| V_8P6, V_8P6 => true
| V_XFC, V_XFC => true
| V_X9M, V_X9M => true
| V_RD7, V_RD7 => true
| V_19S, V_19S => true
| V_G31, V_G31 => true
| V_DYP, V_DYP => true
| V_5T7, V_5T7 => true
| V_SF1, V_SF1 => true
| V_1MV, V_1MV => true
| V_BQ4, V_BQ4 => true
| V_Q96, V_Q96 => true
| V_8G6, V_8G6 => true
| V_LNV, V_LNV => true
| V_KZ3, V_KZ3 => true
| V_N4S, V_N4S => true
| V_H9P, V_H9P => true
| V_BX6, V_BX6 => true
| V_82K, V_82K => true
| V_K74, V_K74 => true
| V_1FJ, V_1FJ => true
| V_SN3, V_SN3 => true
| V_TDM, V_TDM => true
| V_PC1, V_PC1 => true
| V_3V1, V_3V1 => true
| V_DK8, V_DK8 => true
| V_3X7, V_3X7 => true
| V_QJ8, V_QJ8 => true
| V_G4G, V_G4G => true
| V_H86, V_H86 => true
| V_26D, V_26D => true
| V_8QY, V_8QY => true
| V_M98, V_M98 => true
| V_8TK, V_8TK => true
| V_YLM, V_YLM => true
| V_SXM, V_SXM => true
| V_6RS, V_6RS => true
| V_843, V_843 => true
| V_H1T, V_H1T => true
| V_2V7, V_2V7 => true
| V_XZ9, V_XZ9 => true
| V_R9X, V_R9X => true
| V_SFL, V_SFL => true
| V_JQC, V_JQC => true
| V_1X4, V_1X4 => true
| V_7QK, V_7QK => true
| V_LRY, V_LRY => true
| V_VHR, V_VHR => true
| V_SS8, V_SS8 => true
| V_ZXH, V_ZXH => true
| V_XKB, V_XKB => true
| V_F6R, V_F6R => true
| V_6YS, V_6YS => true
| V_9S4, V_9S4 => true
| V_8R2, V_8R2 => true
| V_7FR, V_7FR => true
| V_LHH, V_LHH => true
| V_WN1, V_WN1 => true
| V_KYD, V_KYD => true
| V_PLL, V_PLL => true
| V_2H5, V_2H5 => true
| V_PMD, V_PMD => true
| V_2V2, V_2V2 => true
| V_4HX, V_4HX => true
| V_ZX9, V_ZX9 => true
| V_ZNV, V_ZNV => true
| V_K4T, V_K4T => true
| V_18V, V_18V => true
| V_4R1, V_4R1 => true
| V_VBK, V_VBK => true
| V_Y83, V_Y83 => true
| V_S56, V_S56 => true
| V_B7S, V_B7S => true
| V_NL3, V_NL3 => true
| V_W4Y, V_W4Y => true
| V_TDX, V_TDX => true
| V_1CR, V_1CR => true
| V_3L1, V_3L1 => true
| V_XK9, V_XK9 => true
| V_SPT, V_SPT => true
| V_96R, V_96R => true
| V_S7Z, V_S7Z => true
| V_H1C, V_H1C => true
| V_VP3, V_VP3 => true
| V_3Q7, V_3Q7 => true
| V_XDB, V_XDB => true
| V_F92, V_F92 => true
| V_SVJ, V_SVJ => true
| V_HB4, V_HB4 => true
| V_XMQ, V_XMQ => true
| V_93Q, V_93Q => true
| V_YNP, V_YNP => true
| V_XPL, V_XPL => true
| V_FTV, V_FTV => true
| V_2SK, V_2SK => true
| V_RJN, V_RJN => true
| V_JWH, V_JWH => true
| V_TM5, V_TM5 => true
| V_Q3L, V_Q3L => true
| V_ZYW, V_ZYW => true
| V_Y86, V_Y86 => true
| V_TN4, V_TN4 => true
| V_1NK, V_1NK => true
| V_4DC, V_4DC => true
| V_JS9, V_JS9 => true
| V_1P9, V_1P9 => true
| V_SYP, V_SYP => true
| V_NX2, V_NX2 => true
| V_TCF, V_TCF => true
| V_6S1, V_6S1 => true
| V_4CC, V_4CC => true
| V_JSJ, V_JSJ => true
| V_WWL, V_WWL => true
| V_V26, V_V26 => true
| V_WN2, V_WN2 => true
| V_FWB, V_FWB => true
| V_Q6B, V_Q6B => true
| V_BVX, V_BVX => true
| V_4H7, V_4H7 => true
| V_P7W, V_P7W => true
| V_XP2, V_XP2 => true
| V_Q6H, V_Q6H => true
| V_TW3, V_TW3 => true
| V_KRJ, V_KRJ => true
| V_VKY, V_VKY => true
| V_P74, V_P74 => true
| V_DMF, V_DMF => true
| V_6NT, V_6NT => true
| V_NZF, V_NZF => true
| V_BM9, V_BM9 => true
| V_W73, V_W73 => true
| V_XKV, V_XKV => true
| V_3KR, V_3KR => true
| V_C5F, V_C5F => true
| V_9Q9, V_9Q9 => true
| V_JVF, V_JVF => true
| V_NHT, V_NHT => true
| V_DXH, V_DXH => true
| V_4N7, V_4N7 => true
| V_XZV, V_XZV => true
| V_8LW, V_8LW => true
| V_S6M, V_S6M => true
| V_W7M, V_W7M => true
| V_MB3, V_MB3 => true
| V_822, V_822 => true
| V_YWX, V_YWX => true
| V_RX2, V_RX2 => true
| V_ZW3, V_ZW3 => true
| V_GYX, V_GYX => true
| V_ZH4, V_ZH4 => true
| V_279, V_279 => true
| V_LKF, V_LKF => true
| V_8WL, V_8WL => true
| V_ZW4, V_ZW4 => true
| V_Q25, V_Q25 => true
| V_NYL, V_NYL => true
| V_GZ9, V_GZ9 => true
| V_6L1, V_6L1 => true
| V_FWZ, V_FWZ => true
| V_8FH, V_8FH => true
| V_7CK, V_7CK => true
| V_ZHV, V_ZHV => true
| V_XTW, V_XTW => true
| V_TMG, V_TMG => true
| V_S1R, V_S1R => true
| V_5XK, V_5XK => true
| V_ZS6, V_ZS6 => true
| V_L81, V_L81 => true
| V_JF2, V_JF2 => true
| V_4V2, V_4V2 => true
| V_GQS, V_GQS => true
| V_5KM, V_5KM => true
| V_GQZ, V_GQZ => true
| V_HRP, V_HRP => true
| V_DVZ, V_DVZ => true
| V_G9Q, V_G9Q => true
| V_L9P, V_L9P => true
| V_3BN, V_3BN => true
| V_TS5, V_TS5 => true
| V_44R, V_44R => true
| V_C63, V_C63 => true
| V_T15, V_T15 => true
| V_Z3X, V_Z3X => true
| V_WTG, V_WTG => true
| V_4C6, V_4C6 => true
| V_P2R, V_P2R => true
| V_R2R, V_R2R => true
| V_WKH, V_WKH => true
| V_47R, V_47R => true
| V_ZBZ, V_ZBZ => true
| V_YK2, V_YK2 => true
| V_K2Q, V_K2Q => true
| V_5SV, V_5SV => true
| V_TYQ, V_TYQ => true
| V_6BS, V_6BS => true
| V_DLK, V_DLK => true
| V_KSJ, V_KSJ => true
| V_BPV, V_BPV => true
| V_RZD, V_RZD => true
| V_2VS, V_2VS => true
| V_SNV, V_SNV => true
| V_K4X, V_K4X => true
| V_4B3, V_4B3 => true
| V_TR2, V_TR2 => true
| V_JC7, V_JC7 => true
| V_PPC, V_PPC => true
| V_4SP, V_4SP => true
| V_65Z, V_65Z => true
| V_CY8, V_CY8 => true
| V_X4J, V_X4J => true
| V_HMX, V_HMX => true
| V_LNL, V_LNL => true
| V_JJ4, V_JJ4 => true
| V_VNV, V_VNV => true
| V_2ND, V_2ND => true
| V_PJN, V_PJN => true
| V_B73, V_B73 => true
| V_C2S, V_C2S => true
| V_24D, V_24D => true
| V_67X, V_67X => true
| V_FPG, V_FPG => true
| V_XZP, V_XZP => true
| V_G55, V_G55 => true
| V_CK2, V_CK2 => true
| V_D6M, V_D6M => true
| V_RBB, V_RBB => true
| V_LZS, V_LZS => true
| V_D81, V_D81 => true
| V_J4T, V_J4T => true
| V_Z4K, V_Z4K => true
| V_PCG, V_PCG => true
| V_SVX, V_SVX => true
| V_JC9, V_JC9 => true
| V_LMT, V_LMT => true
| V_H2D, V_H2D => true
| V_G6J, V_G6J => true
| V_X3J, V_X3J => true
| V_VR9, V_VR9 => true
| V_4YF, V_4YF => true
| V_WHL, V_WHL => true
| V_832, V_832 => true
| V_F8L, V_F8L => true
| V_X35, V_X35 => true
| V_QXS, V_QXS => true
| V_SPP, V_SPP => true
| V_4S4, V_4S4 => true
| V_76V, V_76V => true
| V_55S, V_55S => true
| V_X9K, V_X9K => true
| V_6S6, V_6S6 => true
| V_HRR, V_HRR => true
| V_M18, V_M18 => true
| V_5SH, V_5SH => true
| V_GY4, V_GY4 => true
| V_LPB, V_LPB => true
| V_G26, V_G26 => true
| V_3VT, V_3VT => true
| V_VYL, V_VYL => true
| V_VTW, V_VTW => true
| V_G1X, V_G1X => true
| V_H6Y, V_H6Y => true
| V_1TW, V_1TW => true
| V_SD3, V_SD3 => true
| V_2CN, V_2CN => true
| V_B8L, V_B8L => true
| V_TTQ, V_TTQ => true
| V_VHK, V_VHK => true
| V_3FD, V_3FD => true
| V_L1D, V_L1D => true
| V_WSF, V_WSF => true
| V_Y99, V_Y99 => true
| V_4NH, V_4NH => true
| V_1BJ, V_1BJ => true
| V_9QM, V_9QM => true
| V_2MS, V_2MS => true
| V_CHT, V_CHT => true
| V_VXX, V_VXX => true
| V_QXJ, V_QXJ => true
| V_656, V_656 => true
| V_5YL, V_5YL => true
| V_GXX, V_GXX => true
| V_GGF, V_GGF => true
| V_GT8, V_GT8 => true
| V_YP7, V_YP7 => true
| V_MQM, V_MQM => true
| V_R6X, V_R6X => true
| V_3SN, V_3SN => true
| V_GT5, V_GT5 => true
| V_BMM, V_BMM => true
| V_1XX, V_1XX => true
| V_25F, V_25F => true
| V_ZLY, V_ZLY => true
| V_PJF, V_PJF => true
| V_R9W, V_R9W => true
| V_HZ4, V_HZ4 => true
| V_7CJ, V_7CJ => true
| V_QQX, V_QQX => true
| V_N9H, V_N9H => true
| V_N2V, V_N2V => true
| V_8VC, V_8VC => true
| V_9X7, V_9X7 => true
| V_CZG, V_CZG => true
| V_318, V_318 => true
| V_VZG, V_VZG => true
| V_WSX, V_WSX => true
| V_7NZ, V_7NZ => true
| V_V2B, V_V2B => true
| V_Y33, V_Y33 => true
| V_6R2, V_6R2 => true
| V_FYX, V_FYX => true
| V_MVZ, V_MVZ => true
| V_8YY, V_8YY => true
| V_S93, V_S93 => true
| V_135, V_135 => true
| V_C94, V_C94 => true
| V_QBW, V_QBW => true
| V_JFV, V_JFV => true
| V_51W, V_51W => true
| V_T12, V_T12 => true
| V_RNP, V_RNP => true
| V_1X9, V_1X9 => true
| V_XYW, V_XYW => true
| V_HHL, V_HHL => true
| V_1LH, V_1LH => true
| V_5ZG, V_5ZG => true
| V_2JJ, V_2JJ => true
| V_7TD, V_7TD => true
| V_3D6, V_3D6 => true
| V_TMZ, V_TMZ => true
| V_5D7, V_5D7 => true
| V_KK4, V_KK4 => true
| V_8C4, V_8C4 => true
| V_K67, V_K67 => true
| V_DNW, V_DNW => true
| V_XQY, V_XQY => true
| V_RYL, V_RYL => true
| V_CD7, V_CD7 => true
| V_RHQ, V_RHQ => true
| V_QC1, V_QC1 => true
| V_NS6, V_NS6 => true
| V_2YV, V_2YV => true
| V_3M4, V_3M4 => true
| V_PCK, V_PCK => true
| V_BTX, V_BTX => true
| V_QG3, V_QG3 => true
| V_K6T, V_K6T => true
| V_YD6, V_YD6 => true
| V_ZWK, V_ZWK => true
| V_BCX, V_BCX => true
| V_1HH, V_1HH => true
| V_GHV, V_GHV => true
| V_NSF, V_NSF => true
| V_3L7, V_3L7 => true
| V_PW8, V_PW8 => true
| V_6L7, V_6L7 => true
| V_RCJ, V_RCJ => true
| V_XZW, V_XZW => true
| V_5Q8, V_5Q8 => true
| V_WHD, V_WHD => true
| V_LC3, V_LC3 => true
| V_L6S, V_L6S => true
| V_RVV, V_RVV => true
| V_D64, V_D64 => true
| V_NYV, V_NYV => true
| V_G5F, V_G5F => true
| V_ML7, V_ML7 => true
| V_38Y, V_38Y => true
| V_HT2, V_HT2 => true
| V_N5W, V_N5W => true
| V_X8C, V_X8C => true
| V_VGW, V_VGW => true
| V_DQK, V_DQK => true
| V_XZQ, V_XZQ => true
| V_S46, V_S46 => true
| V_ZKR, V_ZKR => true
| V_XK2, V_XK2 => true
| V_1YR, V_1YR => true
| V_KJ7, V_KJ7 => true
| V_COM, V_COM => true
| V_XL9, V_XL9 => true
| V_HTH, V_HTH => true
| V_648, V_648 => true
| V_D3V, V_D3V => true
| V_R9M, V_R9M => true
| V_9CJ, V_9CJ => true
| V_BBH, V_BBH => true
| V_31T, V_31T => true
| V_L69, V_L69 => true
| V_QH5, V_QH5 => true
| V_D1C, V_D1C => true
| V_F4N, V_F4N => true
| V_JL8, V_JL8 => true
| V_GWV, V_GWV => true
| V_1MR, V_1MR => true
| V_JVM, V_JVM => true
| V_9LW, V_9LW => true
| V_KFS, V_KFS => true
| V_ZZY, V_ZZY => true
| V_V4T, V_V4T => true
| V_4CL, V_4CL => true
| V_62B, V_62B => true
| V_PHC, V_PHC => true
| V_PWH, V_PWH => true
| V_VLP, V_VLP => true
| V_M8B, V_M8B => true
| V_J58, V_J58 => true
| V_4L2, V_4L2 => true
| V_THX, V_THX => true
| V_L8T, V_L8T => true
| V_K2P, V_K2P => true
| V_T6Q, V_T6Q => true
| V_Q73, V_Q73 => true
| V_PZV, V_PZV => true
| V_9NZ, V_9NZ => true
| V_L3K, V_L3K => true
| V_H32, V_H32 => true
| V_C36, V_C36 => true
| V_YHN, V_YHN => true
| V_JCL, V_JCL => true
| V_XR4, V_XR4 => true
| V_MPF, V_MPF => true
| V_4CP, V_4CP => true
| V_H57, V_H57 => true
| V_T7T, V_T7T => true
| V_877, V_877 => true
| V_2BB, V_2BB => true
| V_G92, V_G92 => true
| V_S18, V_S18 => true
| V_QCW, V_QCW => true
| V_RQ3, V_RQ3 => true
| V_MYS, V_MYS => true
| V_23X, V_23X => true
| V_TZQ, V_TZQ => true
| V_FPJ, V_FPJ => true
| V_7FL, V_7FL => true
| V_DKH, V_DKH => true
| V_G9G, V_G9G => true
| V_7XP, V_7XP => true
| V_96Y, V_96Y => true
| V_5S5, V_5S5 => true
| V_88G, V_88G => true
| V_H8B, V_H8B => true
| V_28K, V_28K => true
| V_W45, V_W45 => true
| V_XX1, V_XX1 => true
| V_ML5, V_ML5 => true
| V_YY9, V_YY9 => true
| V_JKM, V_JKM => true
| V_2X4, V_2X4 => true
| V_BVB, V_BVB => true
| V_4B9, V_4B9 => true
| V_6GS, V_6GS => true
| V_M9Y, V_M9Y => true
| V_SNJ, V_SNJ => true
| V_G8G, V_G8G => true
| V_DXT, V_DXT => true
| V_7J4, V_7J4 => true
| V_TQW, V_TQW => true
| V_BVN, V_BVN => true
| V_9YW, V_9YW => true
| V_SM2, V_SM2 => true
| V_H29, V_H29 => true
| V_35T, V_35T => true
| V_YHF, V_YHF => true
| V_C33, V_C33 => true
| V_V4C, V_V4C => true
| V_XLZ, V_XLZ => true
| V_9NF, V_9NF => true
| V_QT7, V_QT7 => true
| V_NX9, V_NX9 => true
| V_DZP, V_DZP => true
| V_6HK, V_6HK => true
| V_6GG, V_6GG => true
| V_GQJ, V_GQJ => true
| V_JXQ, V_JXQ => true
| V_QCJ, V_QCJ => true
| V_13W, V_13W => true
| V_32V, V_32V => true
| V_9KL, V_9KL => true
| V_V97, V_V97 => true
| V_5BR, V_5BR => true
| V_LDK, V_LDK => true
| V_RMS, V_RMS => true
| V_GLZ, V_GLZ => true
| V_ZZ5, V_ZZ5 => true
| V_5MQ, V_5MQ => true
| V_JKC, V_JKC => true
| V_KHZ, V_KHZ => true
| V_BZ2, V_BZ2 => true
| V_6JS, V_6JS => true
| V_YVX, V_YVX => true
| V_PJX, V_PJX => true
| V_4XF, V_4XF => true
| V_1C6, V_1C6 => true
| V_L53, V_L53 => true
| V_VSB, V_VSB => true
| V_JMT, V_JMT => true
| V_LXH, V_LXH => true
| V_NCP, V_NCP => true
| V_N83, V_N83 => true
| V_VQT, V_VQT => true
| V_5JJ, V_5JJ => true
| V_DV5, V_DV5 => true
| V_9XM, V_9XM => true
| V_KKC, V_KKC => true
| V_QMY, V_QMY => true
| V_2B8, V_2B8 => true
| V_K8T, V_K8T => true
| V_H2F, V_H2F => true
| V_FKN, V_FKN => true
| V_TQ6, V_TQ6 => true
| V_S38, V_S38 => true
| V_H82, V_H82 => true
| V_DFR, V_DFR => true
| V_4JS, V_4JS => true
| V_Y9T, V_Y9T => true
| V_FZT, V_FZT => true
| V_LTW, V_LTW => true
| V_NRH, V_NRH => true
| V_B69, V_B69 => true
| V_79F, V_79F => true
| V_LPH, V_LPH => true
| V_F34, V_F34 => true
| V_5PN, V_5PN => true
| V_C7Q, V_C7Q => true
| V_417, V_417 => true
| V_J8R, V_J8R => true
| V_GP4, V_GP4 => true
| V_Q89, V_Q89 => true
| V_F1H, V_F1H => true
| V_SVY, V_SVY => true
| V_NXQ, V_NXQ => true
| V_MRC, V_MRC => true
| V_XVC, V_XVC => true
| V_ZCM, V_ZCM => true
| V_6J7, V_6J7 => true
| V_7D1, V_7D1 => true
| V_QFC, V_QFC => true
| V_TKW, V_TKW => true
| _, _ => false
end.


Definition next (v: vertex) : list vertex := 
match v with
| V_Z4X => [V_3VF]
| V_3VF => [V_CZG]
| V_HXK => [V_QWX]
| V_QWX => [V_8FN]
| V_X2G => [V_R3L]
| V_R3L => [V_YNR]
| V_QPS => [V_YML]
| V_YML => [V_W3X]
| V_G5J => [V_LMV]
| V_LMV => [V_4GZ]
| V_J7Y => [V_JRF;V_H1T]
| V_JRF => [V_TTH]
| V_MPW => [V_6BZ]
| V_6BZ => [V_F8Z]
| V_N1M => [V_24G;V_RTB]
| V_24G => [V_DFD]
| V_5DZ => [V_PMN;V_SFB]
| V_PMN => [V_Y4C]
| V_XVG => [V_7Q5]
| V_7Q5 => []
| V_8WN => [V_NJ7]
| V_NJ7 => [V_M8P]
| V_LPK => [V_BCF]
| V_BCF => [V_XKQ]
| V_B98 => [V_4XV]
| V_4XV => []
| V_R9C => [V_Y1M]
| V_Y1M => [V_RQ3;V_96Y]
| V_92F => [V_918]
| V_918 => [V_1XX]
| V_JC2 => [V_HVF]
| V_HVF => [V_RYL]
| V_5PT => [V_W81]
| V_W81 => [V_VXX]
| V_ZL7 => [V_XC4]
| V_XC4 => [V_FYQ]
| V_FSP => [V_1SK]
| V_1SK => [V_JVF;V_31T]
| V_DY3 => [V_NF6]
| V_NF6 => [V_WQM]
| V_F8Z => [V_X9K]
| V_Y4C => [V_6XW]
| V_CZ7 => [V_JWK]
| V_JWK => [V_VRB]
| V_J9S => [V_PR3]
| V_PR3 => [V_ZX9]
| V_3WY => [V_8S2]
| V_8S2 => [V_N5W]
| V_TTH => [V_2RR]
| V_2RR => []
| V_VRB => [V_F5Y]
| V_F5Y => [V_7TT]
| V_L1K => [V_XVG]
| V_1M9 => [V_TGN]
| V_TGN => [V_XD3]
| V_X84 => [V_XRZ;V_1M9]
| V_XRZ => [V_XTW]
| V_PX7 => [V_RGD]
| V_RGD => [V_DB7]
| V_GZW => [V_61P]
| V_61P => [V_6J7]
| V_SL3 => [V_CZ7]
| V_NY5 => [V_LSG]
| V_LSG => [V_RMS]
| V_T8B => [V_QK4]
| V_QK4 => [V_4CL]
| V_DB7 => [V_16B]
| V_16B => [V_FZB]
| V_KHL => [V_2DD]
| V_2DD => [V_VHK]
| V_5TR => [V_YW2]
| V_YW2 => [V_YP7]
| V_6XW => [V_HXK]
| V_H2R => [V_CVP]
| V_CVP => [V_428]
| V_428 => [V_VPH]
| V_3CP => [V_4MS]
| V_4MS => [V_H82]
| V_V69 => [V_QZ4]
| V_QZ4 => [V_YG9]
| V_LQZ => [V_QMC;V_NXN]
| V_QMC => [V_MG1]
| V_Q4N => [V_SRY]
| V_SRY => [V_N9H]
| V_4FR => [V_YQX;V_C33]
| V_YQX => [V_J1Y]
| V_8C3 => [V_TX8]
| V_TX8 => [V_9Q9]
| V_MMF => [V_B98]
| V_WXW => [V_9CW]
| V_9CW => [V_6GP]
| V_4LV => [V_XJN]
| V_XJN => [V_KW8]
| V_R85 => [V_YOU]
| V_YOU => []
| V_GW7 => [V_2WR]
| V_2WR => [V_NYV]
| V_954 => [V_9LZ]
| V_9LZ => [V_6JS]
| V_F2T => [V_1KX]
| V_1KX => [V_LRH]
| V_P2S => [V_B8G]
| V_B8G => [V_XDL]
| V_FSY => [V_D18]
| V_D18 => [V_G26]
| V_9DV => [V_YMQ]
| V_YMQ => [V_D3V]
| V_K2G => [V_SW4;V_F95]
| V_SW4 => [V_XQY]
| V_VYK => [V_78M]
| V_78M => []
| V_RHH => [V_78Z]
| V_78Z => [V_NLG]
| V_RLD => [V_6WH]
| V_6WH => [V_W4H]
| V_JJT => [V_FHQ;V_7NZ]
| V_FHQ => [V_D1J]
| V_6D4 => [V_F83;V_PCG]
| V_F83 => [V_W7M]
| V_BQ8 => [V_S4L]
| V_S4L => [V_ZWN]
| V_NXN => [V_WXW]
| V_NP3 => [V_9CY]
| V_9CY => [V_8JB]
| V_TJF => [V_QFX;V_X5L]
| V_QFX => [V_F1Y]
| V_DTT => [V_LHX]
| V_LHX => [V_YNY]
| V_R73 => [V_JFD]
| V_JFD => [V_GKS]
| V_PJH => [V_XHG]
| V_XHG => [V_QM5]
| V_FMG => [V_34T]
| V_34T => [V_L1K]
| V_JLG => [V_CWS]
| V_CWS => [V_7PJ;V_RQ6]
| V_1RC => [V_KQ3]
| V_KQ3 => [V_B43]
| V_4LW => [V_6XM]
| V_6XM => [V_1TW]
| V_ZWN => [V_FL4]
| V_FL4 => [V_JP8;V_BMM]
| V_LQP => [V_X25]
| V_X25 => [V_F2T]
| V_X5L => [V_8YY]
| V_X7X => [V_HDF]
| V_HDF => [V_ZXH]
| V_2PW => [V_K23]
| V_K23 => [V_HLN]
| V_4GZ => [V_6JM;V_TT4]
| V_6JM => [V_488]
| V_T6T => [V_7TN]
| V_7TN => [V_13W]
| V_FVD => [V_GG8]
| V_GG8 => [V_YK2]
| V_RQ6 => [V_DCR]
| V_DCR => [V_Q89]
| V_WQM => [V_X84]
| V_CZY => [V_JF6]
| V_JF6 => [V_1CR;V_NS6]
| V_TVG => [V_LWH]
| V_LWH => [V_JS9]
| V_94D => [V_GH2]
| V_GH2 => [V_ZKR]
| V_PM7 => [V_6W2]
| V_6W2 => [V_B7S;V_4XF]
| V_Z71 => [V_CBZ]
| V_CBZ => [V_T15;V_XYW]
| V_1V2 => [V_3L5]
| V_3L5 => [V_76V]
| V_YG9 => [V_KQ4]
| V_KQ4 => [V_1VZ]
| V_6DD => [V_NJ4]
| V_NJ4 => [V_FPJ]
| V_DFD => [V_FVD;V_NYL]
| V_C58 => [V_TM9]
| V_TM9 => [V_2MS]
| V_K6L => [V_8XW]
| V_8XW => [V_F8L]
| V_TSP => [V_5CH]
| V_5CH => [V_3KR]
| V_YJJ => [V_48R]
| V_48R => [V_NKC]
| V_654 => [V_BZQ]
| V_BZQ => []
| V_YNY => [V_SAN]
| V_HGB => [V_LLK]
| V_LLK => [V_TJF]
| V_32C => [V_B1T]
| V_B1T => [V_KJ7]
| V_6NB => [V_PFL]
| V_PFL => [V_RZD]
| V_VPH => [V_RYF]
| V_LRH => [V_7BQ]
| V_7BQ => [V_79F]
| V_FW2 => [V_WW1]
| V_WW1 => []
| V_MG1 => [V_9NZ]
| V_THH => [V_56B]
| V_56B => [V_FWB]
| V_98Z => [V_TZX]
| V_TZX => [V_8VC]
| V_C2Q => [V_FN7]
| V_FN7 => [V_DKH]
| V_G97 => [V_PZN]
| V_PZN => [V_PM5]
| V_R6Y => [V_MXP]
| V_MXP => [V_JG3]
| V_M8P => [V_VP3]
| V_DW7 => [V_TRX]
| V_TRX => [V_PBJ]
| V_YNR => [V_WZG]
| V_WZG => [V_5R6]
| V_GNK => [V_3H7]
| V_3H7 => []
| V_W3X => [V_L8Z]
| V_L8Z => []
| V_YFR => [V_2GN]
| V_2GN => [V_VJS]
| V_JF5 => [V_MNS]
| V_MNS => [V_Y83]
| V_QM5 => [V_RR4;V_N1M]
| V_RR4 => [V_2YH]
| V_XCY => [V_4G5]
| V_4G5 => [V_SXM]
| V_NLG => [V_1RC;V_K67]
| V_BJS => [V_JBD]
| V_JBD => []
| V_DQM => [V_S4H]
| V_S4H => [V_DVY]
| V_JP8 => [V_6D4]
| V_5BX => [V_K4F]
| V_K4F => [V_YD1]
| V_HV1 => [V_XM1]
| V_XM1 => [V_9S4]
| V_DVY => [V_1WT]
| V_1WT => [V_YR4]
| V_XDL => [V_32C]
| V_DDF => [V_GVW]
| V_GVW => [V_Y33]
| V_SAN => []
| V_W4H => [V_Z6R]
| V_Z6R => []
| V_RYF => [V_Q98]
| V_Q98 => []
| V_86K => [V_X58]
| V_X58 => [V_5ZG]
| V_M39 => [V_3VG]
| V_3VG => [V_C94]
| V_24M => [V_CH4;V_TT1]
| V_CH4 => [V_Q6B;V_PHC]
| V_4CX => [V_5GL]
| V_5GL => [V_2X9]
| V_BY1 => [V_23Q]
| V_23Q => []
| V_VQD => [V_WNX]
| V_WNX => [V_J8R]
| V_6X4 => [V_WB8]
| V_WB8 => [V_QQX]
| V_N4X => [V_TFV;V_HT2]
| V_TFV => [V_S7Z]
| V_KW8 => [V_VYL]
| V_DTH => [V_P83]
| V_P83 => [V_6YS]
| V_PPL => [V_TK6]
| V_TK6 => [V_ZZ5]
| V_F95 => [V_135]
| V_1HP => [V_8DD;V_HMX]
| V_8DD => [V_TN4;V_LHH]
| V_129 => [V_4LV;V_67X]
| V_RN9 => [V_76W]
| V_76W => [V_11R;V_DXT]
| V_4SR => [V_HQQ]
| V_HQQ => [V_7CK;V_TMZ]
| V_TT1 => [V_FZY]
| V_FZY => [V_S56]
| V_6GP => [V_VZJ]
| V_VZJ => [V_C58]
| V_XWJ => [V_YT5;V_6GG]
| V_YT5 => [V_24D]
| V_VK5 => [V_YH6]
| V_YH6 => []
| V_KBL => [V_924]
| V_924 => [V_88G]
| V_X1C => [V_1S5]
| V_1S5 => [V_5BR]
| V_QGQ => [V_NJF]
| V_NJF => [V_M39]
| V_XD3 => [V_L2W]
| V_L2W => [V_VSB]
| V_6NZ => [V_RSW]
| V_RSW => [V_LC3]
| V_HXF => [V_JL7]
| V_JL7 => [V_4VM]
| V_NXK => [V_VBT]
| V_VBT => [V_BQ4;V_JPL]
| V_4FM => [V_8FR]
| V_8FR => [V_GKM]
| V_K2F => [V_PYV]
| V_PYV => [V_C36]
| V_K6X => [V_QD6]
| V_QD6 => [V_4JS]
| V_JG3 => [V_8N7]
| V_8N7 => []
| V_L2K => [V_2Y9]
| V_2Y9 => [V_4HX]
| V_VJS => [V_17H]
| V_17H => [V_1V2]
| V_FK9 => [V_X9R]
| V_X9R => [V_4CP]
| V_2NJ => [V_6FS;V_J9S]
| V_6FS => [V_PJH]
| V_11R => [V_3LB]
| V_3LB => [V_6NT]
| V_SZZ => [V_4FJ]
| V_4FJ => [V_V4T]
| V_B43 => [V_LCJ]
| V_LCJ => [V_VNV]
| V_P2N => [V_Z81]
| V_Z81 => [V_5MQ]
| V_NKC => [V_WHL]
| V_VFL => [V_654]
| V_69L => [V_NP3;V_JJT]
| V_RLR => [V_Z71]
| V_8FV => [V_6ZJ]
| V_6ZJ => [V_F6R]
| V_YR4 => [V_42K]
| V_42K => [V_G91]
| V_5KF => [V_VJ5]
| V_VJ5 => []
| V_JPL => [V_9LY]
| V_9LY => [V_9DV]
| V_8JB => [V_D81]
| V_WB7 => [V_SZZ]
| V_5R6 => []
| V_FZB => [V_X5P]
| V_X5P => [V_69L]
| V_8S6 => [V_C9L]
| V_C9L => [V_1P9]
| V_DNH => [V_9JD]
| V_9JD => [V_Z3X]
| V_GKS => [V_4HL]
| V_4HL => [V_X35]
| V_Y17 => [V_G6Q]
| V_G6Q => []
| V_47X => [V_93F]
| V_93F => [V_P7W]
| V_XKQ => [V_46H]
| V_46H => [V_VK5]
| V_NHW => [V_5LP]
| V_5LP => [V_YRG]
| V_21L => [V_XBQ]
| V_XBQ => [V_FSP]
| V_YRG => [V_X1F]
| V_X1F => []
| V_LBP => [V_6DV]
| V_6DV => []
| V_488 => [V_4C6]
| V_58G => [V_VQY]
| V_VQY => [V_4H7;V_ZWK]
| V_YD2 => [V_C1R]
| V_C1R => [V_4N7]
| V_F5C => [V_J7Y]
| V_YKV => [V_ZWC]
| V_ZWC => [V_GLZ]
| V_X9B => [V_G9J]
| V_G9J => [V_6RS]
| V_4VM => []
| V_HP7 => [V_8V7]
| V_8V7 => [V_Q73]
| V_6C8 => [V_K36]
| V_K36 => [V_RMH]
| V_BHJ => [V_SJJ]
| V_SJJ => []
| V_RMH => [V_2VW]
| V_2VW => [V_LTW]
| V_VP6 => [V_K6X]
| V_VFB => [V_X7X]
| V_2VP => [V_V18]
| V_V18 => [V_8P6]
| V_PM5 => [V_FTV]
| V_ZDB => [V_2KN]
| V_2KN => [V_GZ9;V_LPK]
| V_PRT => [V_425]
| V_425 => [V_3X7]
| V_JVX => [V_MSQ]
| V_MSQ => [V_VZG]
| V_R57 => [V_D1M]
| V_D1M => [V_HHL]
| V_S6F => [V_DZL]
| V_DZL => [V_QFC]
| V_7TT => [V_D95]
| V_D95 => [V_8R2]
| V_VF8 => [V_H1G]
| V_H1G => [V_8TK;V_JLG]
| V_F1Y => [V_FRV]
| V_FRV => [V_CK2]
| V_KL9 => [V_NHJ]
| V_NHJ => [V_X2G]
| V_3BP => [V_1B1]
| V_1B1 => [V_1X4]
| V_J1Y => [V_BY1]
| V_L1X => [V_5DZ]
| V_GKM => [V_GJX]
| V_GJX => [V_7TD]
| V_8PV => [V_TVQ]
| V_TVQ => [V_PW8]
| V_YD1 => [V_6XZ]
| V_6XZ => [V_WWL]
| V_Q2G => [V_GZW]
| V_2R9 => [V_BCQ;V_2VS]
| V_BCQ => [V_CZY]
| V_2YH => [V_DRD]
| V_8FN => [V_26D]
| V_PBJ => [V_TN8]
| V_TN8 => [V_VFL;V_ML5]
| V_YYW => [V_HXF]
| V_TT4 => [V_M18]
| V_C6T => [V_2GS;V_TDX]
| V_2GS => [V_G97]
| V_QXX => [V_3JM]
| V_3JM => [V_DY3]
| V_7PJ => [V_3BP]
| V_8JH => [V_CFG]
| V_CFG => [V_D6M]
| V_DRD => [V_8WN]
| V_XKT => [V_SDP]
| V_SDP => [V_DW7]
| V_PJR => [V_M55]
| V_M55 => [V_QMY]
| V_H5X => [V_83Q]
| V_83Q => [V_YHF]
| V_WP1 => [V_R73]
| V_HG2 => [V_LPM]
| V_LPM => [V_K8T]
| V_SFB => [V_P96]
| V_P96 => [V_SM2]
| V_1VZ => [V_K2G]
| V_5H8 => [V_L4D]
| V_L4D => [V_G4G]
| V_C5G => [V_8TH]
| V_8TH => [V_4L2]
| V_2X9 => [V_SVL]
| V_SVL => []
| V_D1J => [V_ZNM]
| V_ZNM => [V_M6Y]
| V_13V => [V_C6T]
| V_FYQ => [V_JJC]
| V_JJC => []
| V_RV8 => [V_KPX]
| V_KPX => [V_VP6]
| V_HLN => [V_89K]
| V_89K => [V_XLZ]
| V_G91 => [V_B99]
| V_B99 => [V_HG2]
| V_6GY => [V_DTT]
| V_CCV => [V_5LY]
| V_5LY => [V_X4J;V_R9M]
| V_B9Z => [V_DQS]
| V_DQS => [V_XCY;V_JKM]
| V_MHT => [V_J86]
| V_J86 => [V_T12]
| V_HKQ => [V_XPF]
| V_XPF => [V_D64;V_2YV]
| V_JZF => [V_RT3;V_DNW]
| V_RT3 => [V_ZYW]
| V_KGH => [V_DY4]
| V_DY4 => [V_1LH]
| V_RTD => [V_MPW]
| V_T58 => [V_41Z]
| V_41Z => [V_WSF]
| V_M6Y => [V_SVX]
| V_RTB => [V_1MV]
| V_TZG => [V_MFC]
| V_MFC => [V_BBH]
| V_8P6 => [V_XFC]
| V_XFC => [V_KYD]
| V_X9M => [V_RD7]
| V_RD7 => [V_6L7]
| V_19S => [V_XKT;V_DFR]
| V_G31 => [V_RLR;V_ZLY]
| V_DYP => [V_5T7]
| V_5T7 => [V_NXQ]
| V_SF1 => [V_954]
| V_1MV => [V_ZHV]
| V_BQ4 => [V_PRT]
| V_Q96 => [V_8G6;V_XR4]
| V_8G6 => [V_L81]
| V_LNV => [V_24M]
| V_KZ3 => [V_N4S]
| V_N4S => []
| V_H9P => [V_BX6;V_NRH]
| V_BX6 => [V_GYX]
| V_82K => [V_K74]
| V_K74 => [V_S6F]
| V_1FJ => [V_SN3]
| V_SN3 => [V_G6J]
| V_TDM => [V_PC1]
| V_PC1 => [V_J4T]
| V_3V1 => [V_DK8]
| V_DK8 => [V_BVX]
| V_3X7 => [V_QJ8]
| V_QJ8 => [V_FKN]
| V_G4G => [V_VKY]
| V_H86 => [V_XWJ]
| V_26D => []
| V_8QY => [V_M98]
| V_M98 => []
| V_8TK => [V_YLM]
| V_YLM => [V_GT8]
| V_SXM => [V_KZ3]
| V_6RS => [V_843]
| V_843 => [V_LDK]
| V_H1T => [V_V97]
| V_2V7 => [V_XZ9;V_MHT]
| V_XZ9 => [V_C2Q]
| V_R9X => [V_SFL]
| V_SFL => []
| V_JQC => [V_THH]
| V_1X4 => [V_YYW]
| V_7QK => [V_LRY]
| V_LRY => [V_W45]
| V_VHR => [V_SS8]
| V_SS8 => [V_C63]
| V_ZXH => [V_XKB]
| V_XKB => [V_JC7]
| V_F6R => [V_6NZ]
| V_6YS => [V_5YL]
| V_9S4 => [V_HRP]
| V_8R2 => [V_YFR]
| V_7FR => [V_LQP;V_XL9]
| V_LHH => [V_WN1;V_5BX]
| V_WN1 => [V_2X4]
| V_KYD => [V_GHV]
| V_PLL => [V_2H5]
| V_2H5 => [V_F92]
| V_PMD => [V_2V2;V_VLP]
| V_2V2 => [V_BTX]
| V_4HX => [V_6S6;V_L8T]
| V_ZX9 => [V_8WL]
| V_ZNV => [V_K4T]
| V_K4T => []
| V_18V => [V_ZL7]
| V_4R1 => [V_VBK]
| V_VBK => []
| V_Y83 => [V_T8B]
| V_S56 => [V_5KF]
| V_B7S => [V_1HP]
| V_NL3 => [V_W4Y]
| V_W4Y => [V_23X]
| V_TDX => [V_LNV]
| V_1CR => [V_3L1]
| V_3L1 => [V_DNH]
| V_XK9 => [V_SPT]
| V_SPT => [V_2B8]
| V_96R => [V_SF1]
| V_S7Z => [V_H1C]
| V_H1C => [V_1MR]
| V_VP3 => [V_RCJ]
| V_3Q7 => [V_XDB]
| V_XDB => [V_VF8]
| V_F92 => [V_8QY]
| V_SVJ => [V_HB4]
| V_HB4 => [V_GP4]
| V_XMQ => [V_93Q]
| V_93Q => [V_2NJ]
| V_YNP => [V_XPL]
| V_XPL => [V_RBB]
| V_FTV => [V_YY9]
| V_2SK => [V_RJN]
| V_RJN => [V_PMD]
| V_JWH => [V_4LW]
| V_TM5 => [V_Q3L;V_KL9]
| V_Q3L => [V_DXH]
| V_ZYW => [V_Y86]
| V_Y86 => [V_2V7]
| V_TN4 => [V_SVY]
| V_1NK => [V_4DC]
| V_4DC => [V_KHL]
| V_JS9 => [V_NXK]
| V_1P9 => [V_BM9;V_YVX]
| V_SYP => [V_NX2]
| V_NX2 => [V_6NB]
| V_TCF => [V_6S1]
| V_6S1 => [V_VQT]
| V_4CC => [V_JSJ]
| V_JSJ => [V_LPB]
| V_WWL => [V_NL3]
| V_V26 => [V_WN2]
| V_WN2 => [V_ZZY]
| V_FWB => [V_KBL]
| V_Q6B => [V_JVX]
| V_BVX => [V_ZW4]
| V_4H7 => [V_B8L]
| V_P7W => [V_XP2]
| V_XP2 => [V_QC1;V_K2P]
| V_Q6H => [V_2PW]
| V_TW3 => [V_KRJ]
| V_KRJ => [V_M9Y]
| V_VKY => [V_47R]
| V_P74 => [V_DMF;V_H2D]
| V_DMF => [V_V26]
| V_6NT => [V_NZF]
| V_NZF => [V_5Q8]
| V_BM9 => [V_JWH;V_4FR]
| V_W73 => [V_XKV]
| V_XKV => [V_X9M]
| V_3KR => [V_C5F]
| V_C5F => []
| V_9Q9 => [V_KHZ]
| V_JVF => [V_NHT]
| V_NHT => []
| V_DXH => [V_H86;V_2BB]
| V_4N7 => [V_VQD]
| V_XZV => [V_3CP]
| V_8LW => [V_S6M]
| V_S6M => [V_CD7;V_YD6]
| V_W7M => [V_MB3]
| V_MB3 => [V_MMF]
| V_822 => [V_YWX]
| V_YWX => []
| V_RX2 => [V_ZW3;V_PJR]
| V_ZW3 => [V_WSX]
| V_GYX => [V_ZH4;V_4S4]
| V_ZH4 => [V_TTQ]
| V_279 => [V_LKF]
| V_LKF => []
| V_8WL => [V_W73]
| V_ZW4 => [V_C5G;V_V69]
| V_Q25 => [V_VYK]
| V_NYL => [V_V4C]
| V_GZ9 => [V_6L1]
| V_6L1 => [V_5TR]
| V_FWZ => [V_8FH]
| V_8FH => [V_5XK]
| V_7CK => [V_XVC]
| V_ZHV => [V_6X4]
| V_XTW => [V_GT5]
| V_TMG => [V_S1R]
| V_S1R => [V_65Z]
| V_5XK => [V_ZS6]
| V_ZS6 => [V_LXH]
| V_L81 => [V_JF2]
| V_JF2 => [V_CY8]
| V_4V2 => [V_GQS;V_HV1]
| V_GQS => [V_K2Q]
| V_5KM => [V_GQZ;V_JC2]
| V_GQZ => [V_PX7]
| V_HRP => [V_ZNV;V_32V]
| V_DVZ => [V_G9Q]
| V_G9Q => [V_V2B]
| V_L9P => [V_3BN;V_19S]
| V_3BN => [V_DV5]
| V_TS5 => [V_44R]
| V_44R => []
| V_C63 => [V_Y17]
| V_T15 => [V_BPV]
| V_Z3X => [V_XK9]
| V_WTG => [V_TVG]
| V_4C6 => [V_P2R;V_P2S]
| V_P2R => [V_SPP]
| V_R2R => [V_WKH]
| V_WKH => [V_HKQ;V_KFS]
| V_47R => [V_Q4N]
| V_ZBZ => [V_H9P]
| V_YK2 => [V_FW2]
| V_K2Q => [V_5SV]
| V_5SV => [V_L69]
| V_TYQ => [V_6BS]
| V_6BS => [V_XZP]
| V_DLK => [V_VFB;V_R2R]
| V_KSJ => [V_R57]
| V_BPV => [V_K6L;V_417]
| V_RZD => [V_2VP]
| V_2VS => [V_SNV;V_T6T]
| V_SNV => [V_TZG]
| V_K4X => [V_G31]
| V_4B3 => [V_TR2]
| V_TR2 => [V_18V;V_DYP]
| V_JC7 => [V_822]
| V_PPC => [V_4SP]
| V_4SP => [V_RVV;V_H2F]
| V_65Z => [V_5KM]
| V_CY8 => [V_YKV]
| V_X4J => []
| V_HMX => [V_LNL]
| V_LNL => [V_L2K]
| V_JJ4 => [V_RHH;V_WP1]
| V_VNV => [V_TQW;V_QCW]
| V_2ND => [V_PJN]
| V_PJN => [V_NSF]
| V_B73 => [V_C2S]
| V_C2S => [V_F5C]
| V_24D => [V_NY5]
| V_67X => [V_FPG]
| V_FPG => [V_7FL]
| V_XZP => [V_G55]
| V_G55 => [V_JZF]
| V_CK2 => [V_6R2]
| V_D6M => [V_BJS;V_N83]
| V_RBB => [V_9LW]
| V_LZS => [V_129]
| V_D81 => [V_GW7]
| V_J4T => [V_Z4K]
| V_Z4K => []
| V_PCG => []
| V_SVX => [V_T7T]
| V_JC9 => [V_Q25]
| V_LMT => [V_FWZ]
| V_H2D => [V_QPS]
| V_G6J => [V_X3J]
| V_X3J => [V_JC9]
| V_VR9 => [V_4YF]
| V_4YF => [V_3SN]
| V_WHL => [V_832;V_HZ4]
| V_832 => [V_YNP]
| V_F8L => [V_RTD]
| V_X35 => []
| V_QXS => [V_QGQ]
| V_SPP => [V_KK4]
| V_4S4 => [V_BHJ]
| V_76V => [V_XX1;V_LPH]
| V_55S => [V_3Q7]
| V_X9K => []
| V_6S6 => [V_HRR]
| V_HRR => [V_1BJ]
| V_M18 => [V_BQ8]
| V_5SH => [V_GY4]
| V_GY4 => [V_MYS]
| V_LPB => [V_82K]
| V_G26 => [V_3VT]
| V_3VT => [V_JQC]
| V_VYL => [V_GNK]
| V_VTW => [V_ZBZ]
| V_G1X => [V_H6Y]
| V_H6Y => []
| V_1TW => [V_JFV]
| V_SD3 => [V_2CN;V_R9W]
| V_2CN => []
| V_B8L => [V_P74]
| V_TTQ => [V_L6S]
| V_VHK => [V_KGH]
| V_3FD => [V_2SK]
| V_L1D => [V_RN9]
| V_WSF => [V_Y99]
| V_Y99 => [V_1C6]
| V_4NH => [V_P2N]
| V_1BJ => [V_9QM]
| V_9QM => [V_XZW]
| V_2MS => [V_CHT]
| V_CHT => [V_38Y]
| V_VXX => []
| V_QXJ => [V_656]
| V_656 => [V_4R1]
| V_5YL => []
| V_GXX => [V_GGF]
| V_GGF => [V_S18]
| V_GT8 => [V_3FD]
| V_YP7 => [V_RLD]
| V_MQM => [V_R6X]
| V_R6X => [V_RHQ]
| V_3SN => [V_T6Q]
| V_GT5 => [V_PPC]
| V_BMM => [V_3V1]
| V_1XX => [V_PPL]
| V_25F => [V_SL3]
| V_ZLY => [V_RX2]
| V_PJF => [V_PLL]
| V_R9W => [V_4FM]
| V_HZ4 => [V_7CJ;V_1HH]
| V_7CJ => [V_TW3]
| V_QQX => [V_L1X]
| V_N9H => [V_N2V]
| V_N2V => [V_9YW]
| V_8VC => [V_9X7]
| V_9X7 => [V_86K]
| V_CZG => [V_5SH]
| V_318 => [V_H2R]
| V_VZG => [V_92F;V_5PT]
| V_WSX => [V_FYX]
| V_7NZ => [V_6GS]
| V_V2B => [V_98Z]
| V_Y33 => [V_G1X]
| V_6R2 => [V_MQM]
| V_FYX => [V_MVZ;V_1FJ]
| V_MVZ => [V_NX9]
| V_8YY => [V_S93]
| V_S93 => [V_JF5]
| V_135 => [V_PJF]
| V_C94 => [V_L1D]
| V_QBW => [V_HP7]
| V_JFV => [V_51W]
| V_51W => [V_TKW]
| V_T12 => [V_RNP]
| V_RNP => [V_JJ4]
| V_1X9 => [V_X9B;V_K6T]
| V_XYW => [V_PJX]
| V_HHL => [V_25F]
| V_1LH => [V_21L]
| V_5ZG => [V_2JJ]
| V_2JJ => [V_6GY]
| V_7TD => [V_3D6]
| V_3D6 => [V_H8B]
| V_TMZ => [V_ZDB]
| V_5D7 => [V_DDF]
| V_KK4 => [V_8C4]
| V_8C4 => []
| V_K67 => [V_PCK]
| V_DNW => [V_1X9]
| V_XQY => []
| V_RYL => [V_SVJ]
| V_CD7 => [V_Q6H]
| V_RHQ => [V_F4N]
| V_QC1 => [V_7QK]
| V_NS6 => [V_5D7;V_XZV]
| V_2YV => [V_3M4]
| V_3M4 => [V_58G]
| V_PCK => [V_6DD]
| V_BTX => [V_QG3]
| V_QG3 => [V_Y9T]
| V_K6T => [V_J58]
| V_YD6 => [V_13V]
| V_ZWK => [V_BCX]
| V_BCX => []
| V_1HH => [V_2R9]
| V_GHV => [V_3L7]
| V_NSF => [V_MRC]
| V_3L7 => [V_X1C]
| V_PW8 => [V_PM7]
| V_6L7 => [V_TMG]
| V_RCJ => []
| V_XZW => [V_DTH]
| V_5Q8 => [V_G9G]
| V_WHD => [V_QXX]
| V_LC3 => [V_R85]
| V_L6S => [V_1NK]
| V_RVV => [V_4CC;V_L9P]
| V_D64 => [V_7J4]
| V_NYV => [V_K4X]
| V_G5F => [V_ML7]
| V_ML7 => [V_DVZ]
| V_38Y => [V_9CJ]
| V_HT2 => [V_KSJ]
| V_N5W => [V_X8C]
| V_X8C => [V_4CX]
| V_VGW => [V_2ND]
| V_DQK => [V_XZQ]
| V_XZQ => []
| V_S46 => [V_G5F]
| V_ZKR => [V_8LW]
| V_XK2 => [V_1YR]
| V_1YR => [V_JL8]
| V_KJ7 => []
| V_COM => [V_47X]
| V_XL9 => []
| V_HTH => [V_648]
| V_648 => [V_62B]
| V_D3V => [V_R6Y]
| V_R9M => [V_VHR]
| V_9CJ => [V_H32]
| V_BBH => [V_QT7]
| V_31T => [V_HTH]
| V_L69 => []
| V_QH5 => [V_D1C]
| V_D1C => [V_GWV]
| V_F4N => [V_B69]
| V_JL8 => [V_WTG]
| V_GWV => [V_4NH]
| V_1MR => [V_JVM;V_4B3]
| V_JVM => [V_B73]
| V_9LW => [V_8PV;V_T58]
| V_KFS => [V_BVB]
| V_ZZY => []
| V_V4T => [V_LBP]
| V_4CL => []
| V_62B => [V_VGW]
| V_PHC => [V_PWH]
| V_PWH => []
| V_VLP => [V_M8B]
| V_M8B => [V_9KL]
| V_J58 => [V_R9C]
| V_4L2 => [V_THX]
| V_THX => []
| V_L8T => []
| V_K2P => [V_FMG]
| V_T6Q => [V_NCP]
| V_Q73 => [V_PZV]
| V_PZV => [V_7D1]
| V_9NZ => [V_L3K]
| V_L3K => [V_9NF]
| V_H32 => [V_Z4X]
| V_C36 => []
| V_YHN => [V_JCL]
| V_JCL => []
| V_XR4 => [V_RV8]
| V_MPF => [V_NHW]
| V_4CP => [V_6C8]
| V_H57 => [V_LMT]
| V_T7T => [V_877]
| V_877 => [V_YD2]
| V_2BB => [V_G92]
| V_G92 => [V_SD3]
| V_S18 => []
| V_QCW => [V_8S6]
| V_RQ3 => [V_35T]
| V_MYS => [V_YJJ]
| V_23X => [V_TZQ]
| V_TZQ => []
| V_FPJ => [V_XK2]
| V_7FL => [V_5S5]
| V_DKH => [V_TCF]
| V_G9G => [V_7XP]
| V_7XP => []
| V_96Y => [V_TDM]
| V_5S5 => [V_QXJ]
| V_88G => [V_H5X]
| V_H8B => [V_28K]
| V_28K => []
| V_W45 => [V_WHD]
| V_XX1 => [V_96R]
| V_ML5 => [V_H57]
| V_YY9 => [V_XMQ]
| V_JKM => [V_QXS]
| V_2X4 => [V_MPF]
| V_BVB => [V_4B9]
| V_4B9 => []
| V_6GS => [V_4SR]
| V_M9Y => [V_ZCM]
| V_SNJ => [V_G8G]
| V_G8G => [V_DZP]
| V_DXT => [V_LQZ]
| V_7J4 => [V_4V2]
| V_TQW => [V_BVN]
| V_BVN => []
| V_9YW => [V_8FV]
| V_SM2 => [V_H29]
| V_H29 => []
| V_35T => [V_TSP]
| V_YHF => [V_Q2G]
| V_C33 => [V_8C3]
| V_V4C => [V_8JH]
| V_XLZ => []
| V_9NF => [V_7FR]
| V_QT7 => []
| V_NX9 => [V_N4X]
| V_DZP => [V_6HK;V_QH5]
| V_6HK => [V_DLK]
| V_6GG => [V_BZ2]
| V_GQJ => [V_R9X]
| V_JXQ => [V_QCJ]
| V_QCJ => [V_FSY]
| V_13W => [V_LZS]
| V_32V => [V_3WY]
| V_9KL => [V_YHN]
| V_V97 => [V_318]
| V_5BR => [V_S46]
| V_LDK => []
| V_RMS => []
| V_GLZ => [V_HGB]
| V_ZZ5 => [V_GXX]
| V_5MQ => [V_JKC]
| V_JKC => [V_55S]
| V_KHZ => []
| V_BZ2 => [V_DQM]
| V_6JS => [V_JMT]
| V_YVX => [V_F34]
| V_PJX => []
| V_4XF => [V_Q96]
| V_1C6 => [V_L53]
| V_L53 => [V_TS5]
| V_VSB => [V_B9Z]
| V_JMT => [V_VR9]
| V_LXH => []
| V_NCP => [V_5H8]
| V_N83 => [V_FZT]
| V_VQT => [V_5JJ]
| V_5JJ => []
| V_DV5 => [V_GQJ]
| V_9XM => [V_KKC]
| V_KKC => []
| V_QMY => [V_G5J]
| V_2B8 => [V_JXQ]
| V_K8T => []
| V_H2F => [V_279]
| V_FKN => [V_SNJ]
| V_TQ6 => [V_S38]
| V_S38 => []
| V_H82 => [V_CCV]
| V_DFR => [V_DQK]
| V_4JS => []
| V_Y9T => [V_C7Q]
| V_FZT => [V_WB7;V_VTW]
| V_LTW => [V_TYQ]
| V_NRH => [V_TQ6]
| V_B69 => [V_FK9]
| V_79F => []
| V_LPH => [V_TM5]
| V_F34 => [V_5PN]
| V_5PN => []
| V_C7Q => [V_94D]
| V_417 => [V_9XM]
| V_J8R => []
| V_GP4 => []
| V_Q89 => [V_F1H]
| V_F1H => []
| V_SVY => [V_K2F]
| V_NXQ => []
| V_MRC => []
| V_XVC => []
| V_ZCM => []
| V_6J7 => [V_QBW]
| V_7D1 => [V_SYP]
| V_QFC => []
| V_TKW => []
end.

Definition adjucent (v: vertex) : list vertex := 
match v with
| V_Z4X => [V_3VF;V_H32]
| V_3VF => [V_Z4X;V_CZG]
| V_HXK => [V_QWX;V_6XW]
| V_QWX => [V_HXK;V_8FN]
| V_X2G => [V_R3L;V_NHJ]
| V_R3L => [V_X2G;V_YNR]
| V_QPS => [V_YML;V_H2D]
| V_YML => [V_QPS;V_W3X]
| V_G5J => [V_LMV;V_QMY]
| V_LMV => [V_G5J;V_4GZ]
| V_J7Y => [V_JRF;V_F5C;V_H1T]
| V_JRF => [V_J7Y;V_TTH]
| V_MPW => [V_6BZ;V_RTD]
| V_6BZ => [V_MPW;V_F8Z]
| V_N1M => [V_24G;V_RTB;V_QM5]
| V_24G => [V_N1M;V_DFD]
| V_5DZ => [V_PMN;V_L1X;V_SFB]
| V_PMN => [V_5DZ;V_Y4C]
| V_XVG => [V_7Q5;V_L1K]
| V_7Q5 => [V_XVG]
| V_8WN => [V_NJ7;V_DRD]
| V_NJ7 => [V_8WN;V_M8P]
| V_LPK => [V_BCF;V_2KN]
| V_BCF => [V_LPK;V_XKQ]
| V_B98 => [V_4XV;V_MMF]
| V_4XV => [V_B98]
| V_R9C => [V_Y1M;V_J58]
| V_Y1M => [V_R9C;V_RQ3;V_96Y]
| V_92F => [V_918;V_VZG]
| V_918 => [V_92F;V_1XX]
| V_JC2 => [V_HVF;V_5KM]
| V_HVF => [V_JC2;V_RYL]
| V_5PT => [V_W81;V_VZG]
| V_W81 => [V_5PT;V_VXX]
| V_ZL7 => [V_XC4;V_18V]
| V_XC4 => [V_ZL7;V_FYQ]
| V_FSP => [V_1SK;V_XBQ]
| V_1SK => [V_FSP;V_JVF;V_31T]
| V_DY3 => [V_NF6;V_3JM]
| V_NF6 => [V_DY3;V_WQM]
| V_F8Z => [V_6BZ;V_X9K]
| V_Y4C => [V_PMN;V_6XW]
| V_CZ7 => [V_JWK;V_SL3]
| V_JWK => [V_CZ7;V_VRB]
| V_J9S => [V_PR3;V_2NJ]
| V_PR3 => [V_J9S;V_ZX9]
| V_3WY => [V_8S2;V_32V]
| V_8S2 => [V_3WY;V_N5W]
| V_TTH => [V_2RR;V_JRF]
| V_2RR => [V_TTH]
| V_VRB => [V_F5Y;V_JWK]
| V_F5Y => [V_VRB;V_7TT]
| V_L1K => [V_XVG;V_34T]
| V_1M9 => [V_TGN;V_X84]
| V_TGN => [V_1M9;V_XD3]
| V_X84 => [V_XRZ;V_WQM;V_1M9]
| V_XRZ => [V_X84;V_XTW]
| V_PX7 => [V_RGD;V_GQZ]
| V_RGD => [V_PX7;V_DB7]
| V_GZW => [V_61P;V_Q2G]
| V_61P => [V_GZW;V_6J7]
| V_SL3 => [V_CZ7;V_25F]
| V_NY5 => [V_LSG;V_24D]
| V_LSG => [V_NY5;V_RMS]
| V_T8B => [V_QK4;V_Y83]
| V_QK4 => [V_T8B;V_4CL]
| V_DB7 => [V_16B;V_RGD]
| V_16B => [V_DB7;V_FZB]
| V_KHL => [V_2DD;V_4DC]
| V_2DD => [V_KHL;V_VHK]
| V_5TR => [V_YW2;V_6L1]
| V_YW2 => [V_5TR;V_YP7]
| V_6XW => [V_Y4C;V_HXK]
| V_H2R => [V_CVP;V_318]
| V_CVP => [V_H2R;V_428]
| V_428 => [V_CVP;V_VPH]
| V_3CP => [V_4MS;V_XZV]
| V_4MS => [V_3CP;V_H82]
| V_V69 => [V_QZ4;V_ZW4]
| V_QZ4 => [V_V69;V_YG9]
| V_LQZ => [V_QMC;V_NXN;V_DXT]
| V_QMC => [V_LQZ;V_MG1]
| V_Q4N => [V_SRY;V_47R]
| V_SRY => [V_Q4N;V_N9H]
| V_4FR => [V_YQX;V_C33;V_BM9]
| V_YQX => [V_4FR;V_J1Y]
| V_8C3 => [V_TX8;V_C33]
| V_TX8 => [V_8C3;V_9Q9]
| V_MMF => [V_B98;V_MB3]
| V_WXW => [V_9CW;V_NXN]
| V_9CW => [V_WXW;V_6GP]
| V_4LV => [V_XJN;V_129]
| V_XJN => [V_4LV;V_KW8]
| V_R85 => [V_YOU;V_LC3]
| V_YOU => [V_R85]
| V_GW7 => [V_2WR;V_D81]
| V_2WR => [V_GW7;V_NYV]
| V_954 => [V_9LZ;V_SF1]
| V_9LZ => [V_954;V_6JS]
| V_F2T => [V_1KX;V_X25]
| V_1KX => [V_F2T;V_LRH]
| V_P2S => [V_B8G;V_4C6]
| V_B8G => [V_P2S;V_XDL]
| V_FSY => [V_D18;V_QCJ]
| V_D18 => [V_FSY;V_G26]
| V_9DV => [V_YMQ;V_9LY]
| V_YMQ => [V_9DV;V_D3V]
| V_K2G => [V_SW4;V_F95;V_1VZ]
| V_SW4 => [V_K2G;V_XQY]
| V_VYK => [V_78M;V_Q25]
| V_78M => [V_VYK]
| V_RHH => [V_78Z;V_JJ4]
| V_78Z => [V_RHH;V_NLG]
| V_RLD => [V_6WH;V_YP7]
| V_6WH => [V_RLD;V_W4H]
| V_JJT => [V_FHQ;V_7NZ;V_69L]
| V_FHQ => [V_JJT;V_D1J]
| V_6D4 => [V_F83;V_PCG;V_JP8]
| V_F83 => [V_6D4;V_W7M]
| V_BQ8 => [V_S4L;V_M18]
| V_S4L => [V_BQ8;V_ZWN]
| V_NXN => [V_LQZ;V_WXW]
| V_NP3 => [V_9CY;V_69L]
| V_9CY => [V_NP3;V_8JB]
| V_TJF => [V_QFX;V_X5L;V_LLK]
| V_QFX => [V_TJF;V_F1Y]
| V_DTT => [V_LHX;V_6GY]
| V_LHX => [V_DTT;V_YNY]
| V_R73 => [V_JFD;V_WP1]
| V_JFD => [V_R73;V_GKS]
| V_PJH => [V_XHG;V_6FS]
| V_XHG => [V_PJH;V_QM5]
| V_FMG => [V_34T;V_K2P]
| V_34T => [V_FMG;V_L1K]
| V_JLG => [V_CWS;V_H1G]
| V_CWS => [V_JLG;V_7PJ;V_RQ6]
| V_1RC => [V_KQ3;V_NLG]
| V_KQ3 => [V_1RC;V_B43]
| V_4LW => [V_6XM;V_JWH]
| V_6XM => [V_4LW;V_1TW]
| V_ZWN => [V_FL4;V_S4L]
| V_FL4 => [V_ZWN;V_JP8;V_BMM]
| V_LQP => [V_X25;V_7FR]
| V_X25 => [V_LQP;V_F2T]
| V_X5L => [V_TJF;V_8YY]
| V_X7X => [V_HDF;V_VFB]
| V_HDF => [V_X7X;V_ZXH]
| V_2PW => [V_K23;V_Q6H]
| V_K23 => [V_2PW;V_HLN]
| V_4GZ => [V_6JM;V_TT4;V_LMV]
| V_6JM => [V_4GZ;V_488]
| V_T6T => [V_7TN;V_2VS]
| V_7TN => [V_T6T;V_13W]
| V_FVD => [V_GG8;V_DFD]
| V_GG8 => [V_FVD;V_YK2]
| V_RQ6 => [V_DCR;V_CWS]
| V_DCR => [V_RQ6;V_Q89]
| V_WQM => [V_X84;V_NF6]
| V_CZY => [V_JF6;V_BCQ]
| V_JF6 => [V_CZY;V_1CR;V_NS6]
| V_TVG => [V_LWH;V_WTG]
| V_LWH => [V_TVG;V_JS9]
| V_94D => [V_GH2;V_C7Q]
| V_GH2 => [V_94D;V_ZKR]
| V_PM7 => [V_6W2;V_PW8]
| V_6W2 => [V_PM7;V_B7S;V_4XF]
| V_Z71 => [V_CBZ;V_RLR]
| V_CBZ => [V_Z71;V_T15;V_XYW]
| V_1V2 => [V_3L5;V_17H]
| V_3L5 => [V_1V2;V_76V]
| V_YG9 => [V_KQ4;V_QZ4]
| V_KQ4 => [V_YG9;V_1VZ]
| V_6DD => [V_NJ4;V_PCK]
| V_NJ4 => [V_6DD;V_FPJ]
| V_DFD => [V_24G;V_FVD;V_NYL]
| V_C58 => [V_TM9;V_VZJ]
| V_TM9 => [V_C58;V_2MS]
| V_K6L => [V_8XW;V_BPV]
| V_8XW => [V_K6L;V_F8L]
| V_TSP => [V_5CH;V_35T]
| V_5CH => [V_TSP;V_3KR]
| V_YJJ => [V_48R;V_MYS]
| V_48R => [V_YJJ;V_NKC]
| V_654 => [V_BZQ;V_VFL]
| V_BZQ => [V_654]
| V_YNY => [V_LHX;V_SAN]
| V_HGB => [V_LLK;V_GLZ]
| V_LLK => [V_HGB;V_TJF]
| V_32C => [V_B1T;V_XDL]
| V_B1T => [V_32C;V_KJ7]
| V_6NB => [V_PFL;V_NX2]
| V_PFL => [V_6NB;V_RZD]
| V_VPH => [V_428;V_RYF]
| V_LRH => [V_7BQ;V_1KX]
| V_7BQ => [V_LRH;V_79F]
| V_FW2 => [V_WW1;V_YK2]
| V_WW1 => [V_FW2]
| V_MG1 => [V_QMC;V_9NZ]
| V_THH => [V_56B;V_JQC]
| V_56B => [V_THH;V_FWB]
| V_98Z => [V_TZX;V_V2B]
| V_TZX => [V_98Z;V_8VC]
| V_C2Q => [V_FN7;V_XZ9]
| V_FN7 => [V_C2Q;V_DKH]
| V_G97 => [V_PZN;V_2GS]
| V_PZN => [V_G97;V_PM5]
| V_R6Y => [V_MXP;V_D3V]
| V_MXP => [V_R6Y;V_JG3]
| V_M8P => [V_NJ7;V_VP3]
| V_DW7 => [V_TRX;V_SDP]
| V_TRX => [V_DW7;V_PBJ]
| V_YNR => [V_WZG;V_R3L]
| V_WZG => [V_YNR;V_5R6]
| V_GNK => [V_3H7;V_VYL]
| V_3H7 => [V_GNK]
| V_W3X => [V_L8Z;V_YML]
| V_L8Z => [V_W3X]
| V_YFR => [V_2GN;V_8R2]
| V_2GN => [V_YFR;V_VJS]
| V_JF5 => [V_MNS;V_S93]
| V_MNS => [V_JF5;V_Y83]
| V_QM5 => [V_RR4;V_XHG;V_N1M]
| V_RR4 => [V_QM5;V_2YH]
| V_XCY => [V_4G5;V_DQS]
| V_4G5 => [V_XCY;V_SXM]
| V_NLG => [V_1RC;V_K67;V_78Z]
| V_BJS => [V_JBD;V_D6M]
| V_JBD => [V_BJS]
| V_DQM => [V_S4H;V_BZ2]
| V_S4H => [V_DQM;V_DVY]
| V_JP8 => [V_FL4;V_6D4]
| V_5BX => [V_K4F;V_LHH]
| V_K4F => [V_5BX;V_YD1]
| V_HV1 => [V_XM1;V_4V2]
| V_XM1 => [V_HV1;V_9S4]
| V_DVY => [V_1WT;V_S4H]
| V_1WT => [V_DVY;V_YR4]
| V_XDL => [V_32C;V_B8G]
| V_DDF => [V_GVW;V_5D7]
| V_GVW => [V_DDF;V_Y33]
| V_SAN => [V_YNY]
| V_W4H => [V_Z6R;V_6WH]
| V_Z6R => [V_W4H]
| V_RYF => [V_Q98;V_VPH]
| V_Q98 => [V_RYF]
| V_86K => [V_X58;V_9X7]
| V_X58 => [V_86K;V_5ZG]
| V_M39 => [V_3VG;V_NJF]
| V_3VG => [V_M39;V_C94]
| V_24M => [V_CH4;V_LNV;V_TT1]
| V_CH4 => [V_24M;V_Q6B;V_PHC]
| V_4CX => [V_5GL;V_X8C]
| V_5GL => [V_4CX;V_2X9]
| V_BY1 => [V_23Q;V_J1Y]
| V_23Q => [V_BY1]
| V_VQD => [V_WNX;V_4N7]
| V_WNX => [V_VQD;V_J8R]
| V_6X4 => [V_WB8;V_ZHV]
| V_WB8 => [V_6X4;V_QQX]
| V_N4X => [V_TFV;V_HT2;V_NX9]
| V_TFV => [V_N4X;V_S7Z]
| V_KW8 => [V_XJN;V_VYL]
| V_DTH => [V_P83;V_XZW]
| V_P83 => [V_DTH;V_6YS]
| V_PPL => [V_TK6;V_1XX]
| V_TK6 => [V_PPL;V_ZZ5]
| V_F95 => [V_K2G;V_135]
| V_1HP => [V_8DD;V_HMX;V_B7S]
| V_8DD => [V_1HP;V_TN4;V_LHH]
| V_129 => [V_4LV;V_LZS;V_67X]
| V_RN9 => [V_76W;V_L1D]
| V_76W => [V_RN9;V_11R;V_DXT]
| V_4SR => [V_HQQ;V_6GS]
| V_HQQ => [V_4SR;V_7CK;V_TMZ]
| V_TT1 => [V_FZY;V_24M]
| V_FZY => [V_TT1;V_S56]
| V_6GP => [V_VZJ;V_9CW]
| V_VZJ => [V_6GP;V_C58]
| V_XWJ => [V_YT5;V_H86;V_6GG]
| V_YT5 => [V_XWJ;V_24D]
| V_VK5 => [V_YH6;V_46H]
| V_YH6 => [V_VK5]
| V_KBL => [V_924;V_FWB]
| V_924 => [V_KBL;V_88G]
| V_X1C => [V_1S5;V_3L7]
| V_1S5 => [V_X1C;V_5BR]
| V_QGQ => [V_NJF;V_QXS]
| V_NJF => [V_QGQ;V_M39]
| V_XD3 => [V_L2W;V_TGN]
| V_L2W => [V_XD3;V_VSB]
| V_6NZ => [V_RSW;V_F6R]
| V_RSW => [V_6NZ;V_LC3]
| V_HXF => [V_JL7;V_YYW]
| V_JL7 => [V_HXF;V_4VM]
| V_NXK => [V_VBT;V_JS9]
| V_VBT => [V_NXK;V_BQ4;V_JPL]
| V_4FM => [V_8FR;V_R9W]
| V_8FR => [V_4FM;V_GKM]
| V_K2F => [V_PYV;V_SVY]
| V_PYV => [V_K2F;V_C36]
| V_K6X => [V_QD6;V_VP6]
| V_QD6 => [V_K6X;V_4JS]
| V_JG3 => [V_8N7;V_MXP]
| V_8N7 => [V_JG3]
| V_L2K => [V_2Y9;V_LNL]
| V_2Y9 => [V_L2K;V_4HX]
| V_VJS => [V_17H;V_2GN]
| V_17H => [V_VJS;V_1V2]
| V_FK9 => [V_X9R;V_B69]
| V_X9R => [V_FK9;V_4CP]
| V_2NJ => [V_6FS;V_J9S;V_93Q]
| V_6FS => [V_2NJ;V_PJH]
| V_11R => [V_3LB;V_76W]
| V_3LB => [V_11R;V_6NT]
| V_SZZ => [V_4FJ;V_WB7]
| V_4FJ => [V_SZZ;V_V4T]
| V_B43 => [V_LCJ;V_KQ3]
| V_LCJ => [V_B43;V_VNV]
| V_P2N => [V_Z81;V_4NH]
| V_Z81 => [V_P2N;V_5MQ]
| V_NKC => [V_48R;V_WHL]
| V_VFL => [V_654;V_TN8]
| V_69L => [V_NP3;V_X5P;V_JJT]
| V_RLR => [V_Z71;V_G31]
| V_8FV => [V_6ZJ;V_9YW]
| V_6ZJ => [V_8FV;V_F6R]
| V_YR4 => [V_42K;V_1WT]
| V_42K => [V_YR4;V_G91]
| V_5KF => [V_VJ5;V_S56]
| V_VJ5 => [V_5KF]
| V_JPL => [V_9LY;V_VBT]
| V_9LY => [V_JPL;V_9DV]
| V_8JB => [V_9CY;V_D81]
| V_WB7 => [V_SZZ;V_FZT]
| V_5R6 => [V_WZG]
| V_FZB => [V_X5P;V_16B]
| V_X5P => [V_FZB;V_69L]
| V_8S6 => [V_C9L;V_QCW]
| V_C9L => [V_8S6;V_1P9]
| V_DNH => [V_9JD;V_3L1]
| V_9JD => [V_DNH;V_Z3X]
| V_GKS => [V_4HL;V_JFD]
| V_4HL => [V_GKS;V_X35]
| V_Y17 => [V_G6Q;V_C63]
| V_G6Q => [V_Y17]
| V_47X => [V_93F;V_COM]
| V_93F => [V_47X;V_P7W]
| V_XKQ => [V_46H;V_BCF]
| V_46H => [V_XKQ;V_VK5]
| V_NHW => [V_5LP;V_MPF]
| V_5LP => [V_NHW;V_YRG]
| V_21L => [V_XBQ;V_1LH]
| V_XBQ => [V_21L;V_FSP]
| V_YRG => [V_X1F;V_5LP]
| V_X1F => [V_YRG]
| V_LBP => [V_6DV;V_V4T]
| V_6DV => [V_LBP]
| V_488 => [V_6JM;V_4C6]
| V_58G => [V_VQY;V_3M4]
| V_VQY => [V_58G;V_4H7;V_ZWK]
| V_YD2 => [V_C1R;V_877]
| V_C1R => [V_YD2;V_4N7]
| V_F5C => [V_J7Y;V_C2S]
| V_YKV => [V_ZWC;V_CY8]
| V_ZWC => [V_YKV;V_GLZ]
| V_X9B => [V_G9J;V_1X9]
| V_G9J => [V_X9B;V_6RS]
| V_4VM => [V_JL7]
| V_HP7 => [V_8V7;V_QBW]
| V_8V7 => [V_HP7;V_Q73]
| V_6C8 => [V_K36;V_4CP]
| V_K36 => [V_6C8;V_RMH]
| V_BHJ => [V_SJJ;V_4S4]
| V_SJJ => [V_BHJ]
| V_RMH => [V_2VW;V_K36]
| V_2VW => [V_RMH;V_LTW]
| V_VP6 => [V_K6X;V_KPX]
| V_VFB => [V_X7X;V_DLK]
| V_2VP => [V_V18;V_RZD]
| V_V18 => [V_2VP;V_8P6]
| V_PM5 => [V_PZN;V_FTV]
| V_ZDB => [V_2KN;V_TMZ]
| V_2KN => [V_ZDB;V_GZ9;V_LPK]
| V_PRT => [V_425;V_BQ4]
| V_425 => [V_PRT;V_3X7]
| V_JVX => [V_MSQ;V_Q6B]
| V_MSQ => [V_JVX;V_VZG]
| V_R57 => [V_D1M;V_KSJ]
| V_D1M => [V_R57;V_HHL]
| V_S6F => [V_DZL;V_K74]
| V_DZL => [V_S6F;V_QFC]
| V_7TT => [V_D95;V_F5Y]
| V_D95 => [V_7TT;V_8R2]
| V_VF8 => [V_H1G;V_XDB]
| V_H1G => [V_VF8;V_8TK;V_JLG]
| V_F1Y => [V_FRV;V_QFX]
| V_FRV => [V_F1Y;V_CK2]
| V_KL9 => [V_NHJ;V_TM5]
| V_NHJ => [V_KL9;V_X2G]
| V_3BP => [V_1B1;V_7PJ]
| V_1B1 => [V_3BP;V_1X4]
| V_J1Y => [V_YQX;V_BY1]
| V_L1X => [V_5DZ;V_QQX]
| V_GKM => [V_GJX;V_8FR]
| V_GJX => [V_GKM;V_7TD]
| V_8PV => [V_TVQ;V_9LW]
| V_TVQ => [V_8PV;V_PW8]
| V_YD1 => [V_6XZ;V_K4F]
| V_6XZ => [V_YD1;V_WWL]
| V_Q2G => [V_GZW;V_YHF]
| V_2R9 => [V_BCQ;V_2VS;V_1HH]
| V_BCQ => [V_2R9;V_CZY]
| V_2YH => [V_RR4;V_DRD]
| V_8FN => [V_QWX;V_26D]
| V_PBJ => [V_TN8;V_TRX]
| V_TN8 => [V_PBJ;V_VFL;V_ML5]
| V_YYW => [V_HXF;V_1X4]
| V_TT4 => [V_4GZ;V_M18]
| V_C6T => [V_2GS;V_13V;V_TDX]
| V_2GS => [V_C6T;V_G97]
| V_QXX => [V_3JM;V_WHD]
| V_3JM => [V_QXX;V_DY3]
| V_7PJ => [V_CWS;V_3BP]
| V_8JH => [V_CFG;V_V4C]
| V_CFG => [V_8JH;V_D6M]
| V_DRD => [V_8WN;V_2YH]
| V_XKT => [V_SDP;V_19S]
| V_SDP => [V_XKT;V_DW7]
| V_PJR => [V_M55;V_RX2]
| V_M55 => [V_PJR;V_QMY]
| V_H5X => [V_83Q;V_88G]
| V_83Q => [V_H5X;V_YHF]
| V_WP1 => [V_R73;V_JJ4]
| V_HG2 => [V_LPM;V_B99]
| V_LPM => [V_HG2;V_K8T]
| V_SFB => [V_P96;V_5DZ]
| V_P96 => [V_SFB;V_SM2]
| V_1VZ => [V_KQ4;V_K2G]
| V_5H8 => [V_L4D;V_NCP]
| V_L4D => [V_5H8;V_G4G]
| V_C5G => [V_8TH;V_ZW4]
| V_8TH => [V_C5G;V_4L2]
| V_2X9 => [V_SVL;V_5GL]
| V_SVL => [V_2X9]
| V_D1J => [V_ZNM;V_FHQ]
| V_ZNM => [V_D1J;V_M6Y]
| V_13V => [V_C6T;V_YD6]
| V_FYQ => [V_JJC;V_XC4]
| V_JJC => [V_FYQ]
| V_RV8 => [V_KPX;V_XR4]
| V_KPX => [V_RV8;V_VP6]
| V_HLN => [V_89K;V_K23]
| V_89K => [V_HLN;V_XLZ]
| V_G91 => [V_B99;V_42K]
| V_B99 => [V_G91;V_HG2]
| V_6GY => [V_DTT;V_2JJ]
| V_CCV => [V_5LY;V_H82]
| V_5LY => [V_CCV;V_X4J;V_R9M]
| V_B9Z => [V_DQS;V_VSB]
| V_DQS => [V_B9Z;V_XCY;V_JKM]
| V_MHT => [V_J86;V_2V7]
| V_J86 => [V_MHT;V_T12]
| V_HKQ => [V_XPF;V_WKH]
| V_XPF => [V_HKQ;V_D64;V_2YV]
| V_JZF => [V_RT3;V_DNW;V_G55]
| V_RT3 => [V_JZF;V_ZYW]
| V_KGH => [V_DY4;V_VHK]
| V_DY4 => [V_KGH;V_1LH]
| V_RTD => [V_MPW;V_F8L]
| V_T58 => [V_41Z;V_9LW]
| V_41Z => [V_T58;V_WSF]
| V_M6Y => [V_ZNM;V_SVX]
| V_RTB => [V_N1M;V_1MV]
| V_TZG => [V_MFC;V_SNV]
| V_MFC => [V_TZG;V_BBH]
| V_8P6 => [V_XFC;V_V18]
| V_XFC => [V_8P6;V_KYD]
| V_X9M => [V_RD7;V_XKV]
| V_RD7 => [V_X9M;V_6L7]
| V_19S => [V_XKT;V_L9P;V_DFR]
| V_G31 => [V_RLR;V_K4X;V_ZLY]
| V_DYP => [V_5T7;V_TR2]
| V_5T7 => [V_DYP;V_NXQ]
| V_SF1 => [V_954;V_96R]
| V_1MV => [V_RTB;V_ZHV]
| V_BQ4 => [V_VBT;V_PRT]
| V_Q96 => [V_8G6;V_XR4;V_4XF]
| V_8G6 => [V_Q96;V_L81]
| V_LNV => [V_24M;V_TDX]
| V_KZ3 => [V_N4S;V_SXM]
| V_N4S => [V_KZ3]
| V_H9P => [V_BX6;V_ZBZ;V_NRH]
| V_BX6 => [V_H9P;V_GYX]
| V_82K => [V_K74;V_LPB]
| V_K74 => [V_82K;V_S6F]
| V_1FJ => [V_SN3;V_FYX]
| V_SN3 => [V_1FJ;V_G6J]
| V_TDM => [V_PC1;V_96Y]
| V_PC1 => [V_TDM;V_J4T]
| V_3V1 => [V_DK8;V_BMM]
| V_DK8 => [V_3V1;V_BVX]
| V_3X7 => [V_QJ8;V_425]
| V_QJ8 => [V_3X7;V_FKN]
| V_G4G => [V_L4D;V_VKY]
| V_H86 => [V_XWJ;V_DXH]
| V_26D => [V_8FN]
| V_8QY => [V_M98;V_F92]
| V_M98 => [V_8QY]
| V_8TK => [V_YLM;V_H1G]
| V_YLM => [V_8TK;V_GT8]
| V_SXM => [V_KZ3;V_4G5]
| V_6RS => [V_843;V_G9J]
| V_843 => [V_6RS;V_LDK]
| V_H1T => [V_J7Y;V_V97]
| V_2V7 => [V_XZ9;V_Y86;V_MHT]
| V_XZ9 => [V_2V7;V_C2Q]
| V_R9X => [V_SFL;V_GQJ]
| V_SFL => [V_R9X]
| V_JQC => [V_THH;V_3VT]
| V_1X4 => [V_1B1;V_YYW]
| V_7QK => [V_LRY;V_QC1]
| V_LRY => [V_7QK;V_W45]
| V_VHR => [V_SS8;V_R9M]
| V_SS8 => [V_VHR;V_C63]
| V_ZXH => [V_XKB;V_HDF]
| V_XKB => [V_ZXH;V_JC7]
| V_F6R => [V_6NZ;V_6ZJ]
| V_6YS => [V_P83;V_5YL]
| V_9S4 => [V_XM1;V_HRP]
| V_8R2 => [V_YFR;V_D95]
| V_7FR => [V_LQP;V_XL9;V_9NF]
| V_LHH => [V_WN1;V_8DD;V_5BX]
| V_WN1 => [V_LHH;V_2X4]
| V_KYD => [V_XFC;V_GHV]
| V_PLL => [V_2H5;V_PJF]
| V_2H5 => [V_PLL;V_F92]
| V_PMD => [V_2V2;V_RJN;V_VLP]
| V_2V2 => [V_PMD;V_BTX]
| V_4HX => [V_2Y9;V_6S6;V_L8T]
| V_ZX9 => [V_PR3;V_8WL]
| V_ZNV => [V_K4T;V_HRP]
| V_K4T => [V_ZNV]
| V_18V => [V_ZL7;V_TR2]
| V_4R1 => [V_VBK;V_656]
| V_VBK => [V_4R1]
| V_Y83 => [V_T8B;V_MNS]
| V_S56 => [V_FZY;V_5KF]
| V_B7S => [V_6W2;V_1HP]
| V_NL3 => [V_W4Y;V_WWL]
| V_W4Y => [V_NL3;V_23X]
| V_TDX => [V_C6T;V_LNV]
| V_1CR => [V_3L1;V_JF6]
| V_3L1 => [V_1CR;V_DNH]
| V_XK9 => [V_SPT;V_Z3X]
| V_SPT => [V_XK9;V_2B8]
| V_96R => [V_SF1;V_XX1]
| V_S7Z => [V_H1C;V_TFV]
| V_H1C => [V_S7Z;V_1MR]
| V_VP3 => [V_M8P;V_RCJ]
| V_3Q7 => [V_XDB;V_55S]
| V_XDB => [V_3Q7;V_VF8]
| V_F92 => [V_2H5;V_8QY]
| V_SVJ => [V_HB4;V_RYL]
| V_HB4 => [V_SVJ;V_GP4]
| V_XMQ => [V_93Q;V_YY9]
| V_93Q => [V_XMQ;V_2NJ]
| V_YNP => [V_XPL;V_832]
| V_XPL => [V_YNP;V_RBB]
| V_FTV => [V_PM5;V_YY9]
| V_2SK => [V_RJN;V_3FD]
| V_RJN => [V_2SK;V_PMD]
| V_JWH => [V_4LW;V_BM9]
| V_TM5 => [V_Q3L;V_KL9;V_LPH]
| V_Q3L => [V_TM5;V_DXH]
| V_ZYW => [V_Y86;V_RT3]
| V_Y86 => [V_ZYW;V_2V7]
| V_TN4 => [V_8DD;V_SVY]
| V_1NK => [V_4DC;V_L6S]
| V_4DC => [V_1NK;V_KHL]
| V_JS9 => [V_NXK;V_LWH]
| V_1P9 => [V_C9L;V_BM9;V_YVX]
| V_SYP => [V_NX2;V_7D1]
| V_NX2 => [V_SYP;V_6NB]
| V_TCF => [V_6S1;V_DKH]
| V_6S1 => [V_TCF;V_VQT]
| V_4CC => [V_JSJ;V_RVV]
| V_JSJ => [V_4CC;V_LPB]
| V_WWL => [V_NL3;V_6XZ]
| V_V26 => [V_WN2;V_DMF]
| V_WN2 => [V_V26;V_ZZY]
| V_FWB => [V_56B;V_KBL]
| V_Q6B => [V_CH4;V_JVX]
| V_BVX => [V_DK8;V_ZW4]
| V_4H7 => [V_VQY;V_B8L]
| V_P7W => [V_XP2;V_93F]
| V_XP2 => [V_P7W;V_QC1;V_K2P]
| V_Q6H => [V_2PW;V_CD7]
| V_TW3 => [V_KRJ;V_7CJ]
| V_KRJ => [V_TW3;V_M9Y]
| V_VKY => [V_G4G;V_47R]
| V_P74 => [V_DMF;V_H2D;V_B8L]
| V_DMF => [V_P74;V_V26]
| V_6NT => [V_NZF;V_3LB]
| V_NZF => [V_6NT;V_5Q8]
| V_BM9 => [V_JWH;V_1P9;V_4FR]
| V_W73 => [V_XKV;V_8WL]
| V_XKV => [V_W73;V_X9M]
| V_3KR => [V_C5F;V_5CH]
| V_C5F => [V_3KR]
| V_9Q9 => [V_TX8;V_KHZ]
| V_JVF => [V_NHT;V_1SK]
| V_NHT => [V_JVF]
| V_DXH => [V_H86;V_Q3L;V_2BB]
| V_4N7 => [V_C1R;V_VQD]
| V_XZV => [V_3CP;V_NS6]
| V_8LW => [V_S6M;V_ZKR]
| V_S6M => [V_8LW;V_CD7;V_YD6]
| V_W7M => [V_MB3;V_F83]
| V_MB3 => [V_W7M;V_MMF]
| V_822 => [V_YWX;V_JC7]
| V_YWX => [V_822]
| V_RX2 => [V_ZW3;V_ZLY;V_PJR]
| V_ZW3 => [V_RX2;V_WSX]
| V_GYX => [V_ZH4;V_4S4;V_BX6]
| V_ZH4 => [V_GYX;V_TTQ]
| V_279 => [V_LKF;V_H2F]
| V_LKF => [V_279]
| V_8WL => [V_ZX9;V_W73]
| V_ZW4 => [V_C5G;V_V69;V_BVX]
| V_Q25 => [V_VYK;V_JC9]
| V_NYL => [V_DFD;V_V4C]
| V_GZ9 => [V_6L1;V_2KN]
| V_6L1 => [V_GZ9;V_5TR]
| V_FWZ => [V_8FH;V_LMT]
| V_8FH => [V_FWZ;V_5XK]
| V_7CK => [V_HQQ;V_XVC]
| V_ZHV => [V_6X4;V_1MV]
| V_XTW => [V_XRZ;V_GT5]
| V_TMG => [V_S1R;V_6L7]
| V_S1R => [V_TMG;V_65Z]
| V_5XK => [V_ZS6;V_8FH]
| V_ZS6 => [V_5XK;V_LXH]
| V_L81 => [V_JF2;V_8G6]
| V_JF2 => [V_L81;V_CY8]
| V_4V2 => [V_GQS;V_HV1;V_7J4]
| V_GQS => [V_4V2;V_K2Q]
| V_5KM => [V_GQZ;V_65Z;V_JC2]
| V_GQZ => [V_5KM;V_PX7]
| V_HRP => [V_ZNV;V_9S4;V_32V]
| V_DVZ => [V_G9Q;V_ML7]
| V_G9Q => [V_DVZ;V_V2B]
| V_L9P => [V_3BN;V_RVV;V_19S]
| V_3BN => [V_L9P;V_DV5]
| V_TS5 => [V_44R;V_L53]
| V_44R => [V_TS5]
| V_C63 => [V_Y17;V_SS8]
| V_T15 => [V_CBZ;V_BPV]
| V_Z3X => [V_XK9;V_9JD]
| V_WTG => [V_TVG;V_JL8]
| V_4C6 => [V_P2R;V_P2S;V_488]
| V_P2R => [V_4C6;V_SPP]
| V_R2R => [V_WKH;V_DLK]
| V_WKH => [V_R2R;V_HKQ;V_KFS]
| V_47R => [V_Q4N;V_VKY]
| V_ZBZ => [V_H9P;V_VTW]
| V_YK2 => [V_GG8;V_FW2]
| V_K2Q => [V_5SV;V_GQS]
| V_5SV => [V_K2Q;V_L69]
| V_TYQ => [V_6BS;V_LTW]
| V_6BS => [V_TYQ;V_XZP]
| V_DLK => [V_VFB;V_R2R;V_6HK]
| V_KSJ => [V_R57;V_HT2]
| V_BPV => [V_K6L;V_T15;V_417]
| V_RZD => [V_PFL;V_2VP]
| V_2VS => [V_SNV;V_2R9;V_T6T]
| V_SNV => [V_2VS;V_TZG]
| V_K4X => [V_G31;V_NYV]
| V_4B3 => [V_TR2;V_1MR]
| V_TR2 => [V_4B3;V_18V;V_DYP]
| V_JC7 => [V_822;V_XKB]
| V_PPC => [V_4SP;V_GT5]
| V_4SP => [V_PPC;V_RVV;V_H2F]
| V_65Z => [V_S1R;V_5KM]
| V_CY8 => [V_YKV;V_JF2]
| V_X4J => [V_5LY]
| V_HMX => [V_LNL;V_1HP]
| V_LNL => [V_HMX;V_L2K]
| V_JJ4 => [V_RHH;V_RNP;V_WP1]
| V_VNV => [V_LCJ;V_TQW;V_QCW]
| V_2ND => [V_PJN;V_VGW]
| V_PJN => [V_2ND;V_NSF]
| V_B73 => [V_C2S;V_JVM]
| V_C2S => [V_B73;V_F5C]
| V_24D => [V_NY5;V_YT5]
| V_67X => [V_FPG;V_129]
| V_FPG => [V_67X;V_7FL]
| V_XZP => [V_G55;V_6BS]
| V_G55 => [V_XZP;V_JZF]
| V_CK2 => [V_FRV;V_6R2]
| V_D6M => [V_BJS;V_N83;V_CFG]
| V_RBB => [V_XPL;V_9LW]
| V_LZS => [V_129;V_13W]
| V_D81 => [V_8JB;V_GW7]
| V_J4T => [V_Z4K;V_PC1]
| V_Z4K => [V_J4T]
| V_PCG => [V_6D4]
| V_SVX => [V_M6Y;V_T7T]
| V_JC9 => [V_Q25;V_X3J]
| V_LMT => [V_FWZ;V_H57]
| V_H2D => [V_P74;V_QPS]
| V_G6J => [V_X3J;V_SN3]
| V_X3J => [V_G6J;V_JC9]
| V_VR9 => [V_4YF;V_JMT]
| V_4YF => [V_VR9;V_3SN]
| V_WHL => [V_832;V_NKC;V_HZ4]
| V_832 => [V_WHL;V_YNP]
| V_F8L => [V_8XW;V_RTD]
| V_X35 => [V_4HL]
| V_QXS => [V_QGQ;V_JKM]
| V_SPP => [V_P2R;V_KK4]
| V_4S4 => [V_BHJ;V_GYX]
| V_76V => [V_3L5;V_XX1;V_LPH]
| V_55S => [V_3Q7;V_JKC]
| V_X9K => [V_F8Z]
| V_6S6 => [V_HRR;V_4HX]
| V_HRR => [V_6S6;V_1BJ]
| V_M18 => [V_BQ8;V_TT4]
| V_5SH => [V_GY4;V_CZG]
| V_GY4 => [V_5SH;V_MYS]
| V_LPB => [V_82K;V_JSJ]
| V_G26 => [V_3VT;V_D18]
| V_3VT => [V_G26;V_JQC]
| V_VYL => [V_KW8;V_GNK]
| V_VTW => [V_ZBZ;V_FZT]
| V_G1X => [V_H6Y;V_Y33]
| V_H6Y => [V_G1X]
| V_1TW => [V_6XM;V_JFV]
| V_SD3 => [V_2CN;V_R9W;V_G92]
| V_2CN => [V_SD3]
| V_B8L => [V_P74;V_4H7]
| V_TTQ => [V_ZH4;V_L6S]
| V_VHK => [V_2DD;V_KGH]
| V_3FD => [V_2SK;V_GT8]
| V_L1D => [V_RN9;V_C94]
| V_WSF => [V_Y99;V_41Z]
| V_Y99 => [V_WSF;V_1C6]
| V_4NH => [V_P2N;V_GWV]
| V_1BJ => [V_9QM;V_HRR]
| V_9QM => [V_1BJ;V_XZW]
| V_2MS => [V_CHT;V_TM9]
| V_CHT => [V_2MS;V_38Y]
| V_VXX => [V_W81]
| V_QXJ => [V_656;V_5S5]
| V_656 => [V_QXJ;V_4R1]
| V_5YL => [V_6YS]
| V_GXX => [V_GGF;V_ZZ5]
| V_GGF => [V_GXX;V_S18]
| V_GT8 => [V_YLM;V_3FD]
| V_YP7 => [V_RLD;V_YW2]
| V_MQM => [V_R6X;V_6R2]
| V_R6X => [V_MQM;V_RHQ]
| V_3SN => [V_4YF;V_T6Q]
| V_GT5 => [V_PPC;V_XTW]
| V_BMM => [V_FL4;V_3V1]
| V_1XX => [V_PPL;V_918]
| V_25F => [V_SL3;V_HHL]
| V_ZLY => [V_RX2;V_G31]
| V_PJF => [V_PLL;V_135]
| V_R9W => [V_SD3;V_4FM]
| V_HZ4 => [V_7CJ;V_1HH;V_WHL]
| V_7CJ => [V_HZ4;V_TW3]
| V_QQX => [V_L1X;V_WB8]
| V_N9H => [V_N2V;V_SRY]
| V_N2V => [V_N9H;V_9YW]
| V_8VC => [V_9X7;V_TZX]
| V_9X7 => [V_8VC;V_86K]
| V_CZG => [V_5SH;V_3VF]
| V_318 => [V_H2R;V_V97]
| V_VZG => [V_92F;V_MSQ;V_5PT]
| V_WSX => [V_ZW3;V_FYX]
| V_7NZ => [V_JJT;V_6GS]
| V_V2B => [V_98Z;V_G9Q]
| V_Y33 => [V_G1X;V_GVW]
| V_6R2 => [V_CK2;V_MQM]
| V_FYX => [V_MVZ;V_1FJ;V_WSX]
| V_MVZ => [V_FYX;V_NX9]
| V_8YY => [V_S93;V_X5L]
| V_S93 => [V_8YY;V_JF5]
| V_135 => [V_F95;V_PJF]
| V_C94 => [V_L1D;V_3VG]
| V_QBW => [V_HP7;V_6J7]
| V_JFV => [V_51W;V_1TW]
| V_51W => [V_JFV;V_TKW]
| V_T12 => [V_RNP;V_J86]
| V_RNP => [V_T12;V_JJ4]
| V_1X9 => [V_X9B;V_K6T;V_DNW]
| V_XYW => [V_CBZ;V_PJX]
| V_HHL => [V_D1M;V_25F]
| V_1LH => [V_21L;V_DY4]
| V_5ZG => [V_2JJ;V_X58]
| V_2JJ => [V_5ZG;V_6GY]
| V_7TD => [V_3D6;V_GJX]
| V_3D6 => [V_7TD;V_H8B]
| V_TMZ => [V_HQQ;V_ZDB]
| V_5D7 => [V_DDF;V_NS6]
| V_KK4 => [V_8C4;V_SPP]
| V_8C4 => [V_KK4]
| V_K67 => [V_NLG;V_PCK]
| V_DNW => [V_JZF;V_1X9]
| V_XQY => [V_SW4]
| V_RYL => [V_SVJ;V_HVF]
| V_CD7 => [V_S6M;V_Q6H]
| V_RHQ => [V_R6X;V_F4N]
| V_QC1 => [V_XP2;V_7QK]
| V_NS6 => [V_5D7;V_XZV;V_JF6]
| V_2YV => [V_3M4;V_XPF]
| V_3M4 => [V_2YV;V_58G]
| V_PCK => [V_6DD;V_K67]
| V_BTX => [V_QG3;V_2V2]
| V_QG3 => [V_BTX;V_Y9T]
| V_K6T => [V_1X9;V_J58]
| V_YD6 => [V_13V;V_S6M]
| V_ZWK => [V_BCX;V_VQY]
| V_BCX => [V_ZWK]
| V_1HH => [V_HZ4;V_2R9]
| V_GHV => [V_KYD;V_3L7]
| V_NSF => [V_PJN;V_MRC]
| V_3L7 => [V_GHV;V_X1C]
| V_PW8 => [V_TVQ;V_PM7]
| V_6L7 => [V_RD7;V_TMG]
| V_RCJ => [V_VP3]
| V_XZW => [V_9QM;V_DTH]
| V_5Q8 => [V_NZF;V_G9G]
| V_WHD => [V_QXX;V_W45]
| V_LC3 => [V_RSW;V_R85]
| V_L6S => [V_TTQ;V_1NK]
| V_RVV => [V_4CC;V_L9P;V_4SP]
| V_D64 => [V_XPF;V_7J4]
| V_NYV => [V_K4X;V_2WR]
| V_G5F => [V_ML7;V_S46]
| V_ML7 => [V_G5F;V_DVZ]
| V_38Y => [V_CHT;V_9CJ]
| V_HT2 => [V_N4X;V_KSJ]
| V_N5W => [V_X8C;V_8S2]
| V_X8C => [V_N5W;V_4CX]
| V_VGW => [V_2ND;V_62B]
| V_DQK => [V_XZQ;V_DFR]
| V_XZQ => [V_DQK]
| V_S46 => [V_G5F;V_5BR]
| V_ZKR => [V_8LW;V_GH2]
| V_XK2 => [V_1YR;V_FPJ]
| V_1YR => [V_XK2;V_JL8]
| V_KJ7 => [V_B1T]
| V_COM => [V_47X]
| V_XL9 => [V_7FR]
| V_HTH => [V_648;V_31T]
| V_648 => [V_HTH;V_62B]
| V_D3V => [V_R6Y;V_YMQ]
| V_R9M => [V_VHR;V_5LY]
| V_9CJ => [V_38Y;V_H32]
| V_BBH => [V_MFC;V_QT7]
| V_31T => [V_HTH;V_1SK]
| V_L69 => [V_5SV]
| V_QH5 => [V_D1C;V_DZP]
| V_D1C => [V_QH5;V_GWV]
| V_F4N => [V_RHQ;V_B69]
| V_JL8 => [V_1YR;V_WTG]
| V_GWV => [V_4NH;V_D1C]
| V_1MR => [V_JVM;V_H1C;V_4B3]
| V_JVM => [V_1MR;V_B73]
| V_9LW => [V_8PV;V_T58;V_RBB]
| V_KFS => [V_WKH;V_BVB]
| V_ZZY => [V_WN2]
| V_V4T => [V_4FJ;V_LBP]
| V_4CL => [V_QK4]
| V_62B => [V_648;V_VGW]
| V_PHC => [V_PWH;V_CH4]
| V_PWH => [V_PHC]
| V_VLP => [V_M8B;V_PMD]
| V_M8B => [V_VLP;V_9KL]
| V_J58 => [V_R9C;V_K6T]
| V_4L2 => [V_THX;V_8TH]
| V_THX => [V_4L2]
| V_L8T => [V_4HX]
| V_K2P => [V_FMG;V_XP2]
| V_T6Q => [V_3SN;V_NCP]
| V_Q73 => [V_PZV;V_8V7]
| V_PZV => [V_Q73;V_7D1]
| V_9NZ => [V_L3K;V_MG1]
| V_L3K => [V_9NZ;V_9NF]
| V_H32 => [V_Z4X;V_9CJ]
| V_C36 => [V_PYV]
| V_YHN => [V_JCL;V_9KL]
| V_JCL => [V_YHN]
| V_XR4 => [V_Q96;V_RV8]
| V_MPF => [V_NHW;V_2X4]
| V_4CP => [V_X9R;V_6C8]
| V_H57 => [V_LMT;V_ML5]
| V_T7T => [V_877;V_SVX]
| V_877 => [V_T7T;V_YD2]
| V_2BB => [V_G92;V_DXH]
| V_G92 => [V_2BB;V_SD3]
| V_S18 => [V_GGF]
| V_QCW => [V_8S6;V_VNV]
| V_RQ3 => [V_Y1M;V_35T]
| V_MYS => [V_GY4;V_YJJ]
| V_23X => [V_TZQ;V_W4Y]
| V_TZQ => [V_23X]
| V_FPJ => [V_XK2;V_NJ4]
| V_7FL => [V_FPG;V_5S5]
| V_DKH => [V_TCF;V_FN7]
| V_G9G => [V_7XP;V_5Q8]
| V_7XP => [V_G9G]
| V_96Y => [V_TDM;V_Y1M]
| V_5S5 => [V_7FL;V_QXJ]
| V_88G => [V_H5X;V_924]
| V_H8B => [V_28K;V_3D6]
| V_28K => [V_H8B]
| V_W45 => [V_LRY;V_WHD]
| V_XX1 => [V_96R;V_76V]
| V_ML5 => [V_TN8;V_H57]
| V_YY9 => [V_XMQ;V_FTV]
| V_JKM => [V_QXS;V_DQS]
| V_2X4 => [V_WN1;V_MPF]
| V_BVB => [V_4B9;V_KFS]
| V_4B9 => [V_BVB]
| V_6GS => [V_7NZ;V_4SR]
| V_M9Y => [V_KRJ;V_ZCM]
| V_SNJ => [V_G8G;V_FKN]
| V_G8G => [V_SNJ;V_DZP]
| V_DXT => [V_76W;V_LQZ]
| V_7J4 => [V_4V2;V_D64]
| V_TQW => [V_BVN;V_VNV]
| V_BVN => [V_TQW]
| V_9YW => [V_8FV;V_N2V]
| V_SM2 => [V_H29;V_P96]
| V_H29 => [V_SM2]
| V_35T => [V_RQ3;V_TSP]
| V_YHF => [V_Q2G;V_83Q]
| V_C33 => [V_4FR;V_8C3]
| V_V4C => [V_NYL;V_8JH]
| V_XLZ => [V_89K]
| V_9NF => [V_7FR;V_L3K]
| V_QT7 => [V_BBH]
| V_NX9 => [V_N4X;V_MVZ]
| V_DZP => [V_6HK;V_QH5;V_G8G]
| V_6HK => [V_DZP;V_DLK]
| V_6GG => [V_XWJ;V_BZ2]
| V_GQJ => [V_R9X;V_DV5]
| V_JXQ => [V_QCJ;V_2B8]
| V_QCJ => [V_JXQ;V_FSY]
| V_13W => [V_7TN;V_LZS]
| V_32V => [V_HRP;V_3WY]
| V_9KL => [V_M8B;V_YHN]
| V_V97 => [V_318;V_H1T]
| V_5BR => [V_1S5;V_S46]
| V_LDK => [V_843]
| V_RMS => [V_LSG]
| V_GLZ => [V_HGB;V_ZWC]
| V_ZZ5 => [V_GXX;V_TK6]
| V_5MQ => [V_JKC;V_Z81]
| V_JKC => [V_5MQ;V_55S]
| V_KHZ => [V_9Q9]
| V_BZ2 => [V_6GG;V_DQM]
| V_6JS => [V_9LZ;V_JMT]
| V_YVX => [V_1P9;V_F34]
| V_PJX => [V_XYW]
| V_4XF => [V_6W2;V_Q96]
| V_1C6 => [V_L53;V_Y99]
| V_L53 => [V_1C6;V_TS5]
| V_VSB => [V_L2W;V_B9Z]
| V_JMT => [V_6JS;V_VR9]
| V_LXH => [V_ZS6]
| V_NCP => [V_5H8;V_T6Q]
| V_N83 => [V_D6M;V_FZT]
| V_VQT => [V_5JJ;V_6S1]
| V_5JJ => [V_VQT]
| V_DV5 => [V_3BN;V_GQJ]
| V_9XM => [V_KKC;V_417]
| V_KKC => [V_9XM]
| V_QMY => [V_M55;V_G5J]
| V_2B8 => [V_SPT;V_JXQ]
| V_K8T => [V_LPM]
| V_H2F => [V_4SP;V_279]
| V_FKN => [V_QJ8;V_SNJ]
| V_TQ6 => [V_S38;V_NRH]
| V_S38 => [V_TQ6]
| V_H82 => [V_4MS;V_CCV]
| V_DFR => [V_DQK;V_19S]
| V_4JS => [V_QD6]
| V_Y9T => [V_QG3;V_C7Q]
| V_FZT => [V_WB7;V_VTW;V_N83]
| V_LTW => [V_TYQ;V_2VW]
| V_NRH => [V_TQ6;V_H9P]
| V_B69 => [V_FK9;V_F4N]
| V_79F => [V_7BQ]
| V_LPH => [V_76V;V_TM5]
| V_F34 => [V_5PN;V_YVX]
| V_5PN => [V_F34]
| V_C7Q => [V_94D;V_Y9T]
| V_417 => [V_9XM;V_BPV]
| V_J8R => [V_WNX]
| V_GP4 => [V_HB4]
| V_Q89 => [V_F1H;V_DCR]
| V_F1H => [V_Q89]
| V_SVY => [V_TN4;V_K2F]
| V_NXQ => [V_5T7]
| V_MRC => [V_NSF]
| V_XVC => [V_7CK]
| V_ZCM => [V_M9Y]
| V_6J7 => [V_61P;V_QBW]
| V_7D1 => [V_PZV;V_SYP]
| V_QFC => [V_DZL]
| V_TKW => [V_51W]
end.


Definition list_sum (l: list N) := fold_right N.add 0%N l.

Fixpoint Solve (max_d: nat) (start: vertex) (acc_d: N) :N := 
    match max_d with
       | 0 => acc_d
       | S d => let child_solutions := map (fun n => Solve d n (acc_d + 1)) (next start)
            in acc_d + list_sum child_solutions
    end.

(* Compute Solve 1200 V_COM 0. *)

Fixpoint traverse (max_d: nat) (cur: vertex) (prev: vertex) (dest: vertex): N :=
    match max_d with
    | 0 => 99999%N
    | S d => if eq_vertex cur dest then
                0%N
             else
                let next_vert_list := filter (fun v => negb (eq_vertex v prev)) (adjucent cur) in
                    let steps := map (fun v => traverse d v cur dest) next_vert_list in
                    1 + fold_right N.min 99999%N steps
    end.

(* And substract 2 from the result *)
Compute traverse 1200 V_YOU V_YOU V_SAN. 