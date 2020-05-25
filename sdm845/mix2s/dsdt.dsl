/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200430 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT-lenovo.bin, Mon May 18 11:17:56 2020
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000378A9 (227497)
 *     Revision         0x02
 *     Checksum         0x53
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x05000000 (83886080)
 */
DefinitionBlock ("", "DSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    External (_SB_.CPU0, UnknownObj)
    External (_SB_.CPU1, UnknownObj)
    External (_SB_.CPU2, UnknownObj)
    External (_SB_.CPU3, UnknownObj)
    External (_SB_.CPU4, UnknownObj)
    External (_SB_.CPU5, UnknownObj)
    External (_SB_.CPU6, UnknownObj)
    External (_SB_.CPU7, UnknownObj)
    External (TRUE, UnknownObj)

    Scope (\_SB)
    {
        Name (PSUB, "CLS00850")
        Name (YSUB, "LNEP5801")
        Name (SOID, 0x0000015C)
        Name (SIDS, "SDM850")
        Name (SIDV, 0x00020001)
        Name (SVMJ, 0x0002)
        Name (SVMI, 0x0001)
        Name (SDFE, 0x004F)
        Name (SFES, "899800000000000")
        Name (SIDM, 0x0000000FFFFF00FF)
        Name (SOSN, 0x000003F465015096)
        Name (RMTB, 0x85D00000)
        Name (RMTX, 0x00200000)
        Name (RFMB, 0x00000000)
        Name (RFMS, 0x00000000)
        Name (RFAB, 0x00000000)
        Name (RFAS, 0x00000000)
        Name (TCMA, 0x8B500000)
        Name (TCML, 0x00A00000)
        Name (SOSI, 0x0000000086007210)
        Device (UFS0)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_HID, "QCOM24A5")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, "ACPIQCOM24A5")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01D84000,         // Address Base
                        0x00014000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000129,
                    }
                })
                Return (RBUF) /* \_SB_.UFS0._CRS.RBUF */
            }

            Device (DEV0)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (0x08)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }        
        

        Name (ESNL, 0x14)
        Name (DBFL, 0x17)
        Device (ABD)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PEP0
            })
            Name (_HID, "QCOM0242")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }

            OperationRegion (ROP1, GenericSerialBus, Zero, 0x0100)
            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x09))
                {
                    AVBL = Arg1
                }
            }
        }
         Device (AGR0)
        {
            Name (_HID, "ACPI000C" /* Processor Aggregator Device */)  // _HID: Hardware ID
            Name (_PUR, Package (0x02)  // _PUR: Processor Utilization Request
            {
                One, 
                Zero
            })
            Method (_OST, 3, NotSerialized)  // _OST: OSPM Status Indication
            {
                \_SB.PEP0.ROST = Arg2
            }
        }
        Device (PMIC)
        {
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.SPMI
            })
            Name (_HID, "QCOM0266")  // _HID: Hardware ID
            Name (_CID, "PNP0CA3")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }

            Method (PMCF, 0, NotSerialized)
            {
                Name (CFG0, Package (0x04)
                {
                    0x03, 
                    Package (0x02)
                    {
                        Zero, 
                        One
                    }, 

                    Package (0x02)
                    {
                        0x02, 
                        0x03
                    }, 

                    Package (0x02)
                    {
                        0x04, 
                        0x05
                    }
                })
                Return (CFG0) /* \_SB_.PMIC.PMCF.CFG0 */
            }
        }
        //memory * 1
        Device (SPMI)
        {
            Name (_HID, "QCOM0216")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_CID, "PNP0CA2")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0C440000,         // Address Base
                        0x00001100,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.SPMI._CRS.RBUF */
            }

            Method (CONF, 0, NotSerialized)
            {
                Name (XBUF, Buffer (0x1A)
                {
                    /* 0000 */  0x00, 0x01, 0x01, 0x01, 0xFF, 0x00, 0x02, 0x00,  // ........
                    /* 0008 */  0x0A, 0x07, 0x04, 0x07, 0x01, 0xFF, 0x10, 0x01,  // ........
                    /* 0010 */  0x00, 0x01, 0x0C, 0x40, 0x00, 0x00, 0x02, 0x80,  // ...@....
                    /* 0018 */  0x00, 0x00                                       // ..
                })
                //0c400000 02800000
                Return (XBUF) /* \_SB_.SPMI.CONF.XBUF */
            }
        }
        //interrupt x1
        Device (PM01)  //UNchecked
        {
            Name (_HID, "QCOM0269")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (One)  // _DEP: Dependencies
            {
                \_SB.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x201,
                    }
                })
                Return (RBUF) /* \_SB_.PM01._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.PM01._DSM._T_0 */
                    If ((_T_0 == ToUUID ("4f248f40-d5e2-499f-834c-27758ea1cd3f") /* GPIO Controller */))
                    {
                        While (One)
                        {
                            Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (Package (0x02)
                                {
                                    Zero, 
                                    One
                                })
                            }
                            Else
                            {
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Break
                }
            }
        }



        Device (PEP0)
        {
            Name (_HID, "QCOM0237")  // _HID: Hardware ID
            Name (_CID, "PNP0D80" /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x0000021A,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x0000021C,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x0000021B,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, ExclusiveAndWake, ,, )
                    {
                        0x0000021D,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000025,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000A1,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x000001A5,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000040,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000041,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000265,
                    }
                })
            }

            Field (\_SB.ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0001, ControllerInitiated, 0x00000000,
                        AddressingMode7Bit, "\\_SB.ABD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                AccessAs (BufferAcc, AttribRawBytes (0x15)), 
                FLD0,   168
            }

            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x04){})
                CreateByteField (BUFF, Zero, STAT)
                CreateWordField (BUFF, 0x02, DATA)
                DATA = One
                Return (DATA) /* \_SB_.PEP0.GEPT.DATA */
            }

            Name (ROST, Zero)
            Method (NPUR, 1, NotSerialized)
            {
                \_SB.AGR0._PUR [One] = Arg0
                Notify (\_SB.AGR0, 0x80) // Status Change
            }

            Method (INTR, 0, NotSerialized)
            {
                Name (RBUF, Package (0x18)
                {
                    0x02, 
                    One, 
                    0x03, 
                    One, 
                    0x06, 
                    0x17911008, 
                    One, 
                    Zero, 
                    0x86000000, 
                    0x00200000, 
                    Zero, 
                    Zero, 
                    0x0C300000, 
                    0x1000, 
                    Zero, 
                    Zero, 
                    0x01FD4000, 
                    0x08, 
                    Zero, 
                    Zero, 
                    0x1799000C, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Return (RBUF) /* \_SB_.PEP0.INTR.RBUF */
            }

            Method (CRTC, 0, NotSerialized)
            {
                Return (CTRX) /* \_SB_.PEP0.CTRX */
            }

            Name (CTRX, Package (0x0B)
            {
                "NSTC", 
                "HLCB", 
                "MMVD", 
                "DSGP", 
                "CCGP", 
                "MTPS", 
                "CPGP", 
                "DMPP", 
                "VRDL", 
                "GBDL", 
                "SRDL"
            })
            Method (STND, 0, NotSerialized)
            {
                Return (STNX) /* \_SB_.PEP0.STNX */
            }

            Name (STNX, Package (0x19)
            {
                "DMPO", 
                "DMSB", 
                "DMQP", 
                "DMMS", 
                "DMPA", 
                "DMPC", 
                "DMPB", 
                "DM0G", 
                "DM1G", 
                "DM2G", 
                "DM3G", 
                "DM4G", 
                "DM5G", 
                "DM6G", 
                "DM7G", 
                "DM8G", 
                "DM9G", 
                "DMPS", 
                "DMPL", 
                "DMDQ", 
                "DMPI", 
                "DMWE", 
                "XMPC", 
                "XMPL", 
                "DMEP"
            })
            Method (CTPM, 0, NotSerialized)
            {
                Name (CTPN, Package (0x02)
                {
                    "CORE_TOPOLOGY", 
                    0x08
                })
                Return (CTPN) /* \_SB_.PEP0.CTPM.CTPN */
            }

            Name (CCFG, Package (0x08)
            {
                Package (0x02)
                {
                    "\\_SB.SYSM.CLUS.CPU0", 
                    0x10
                }, 

                Package (0x02)
                {
                    "\\_SB.SYSM.CLUS.CPU1", 
                    0x11
                }, 

                Package (0x02)
                {
                    "\\_SB.SYSM.CLUS.CPU2", 
                    0x12
                }, 

                Package (0x02)
                {
                    "\\_SB.SYSM.CLUS.CPU3", 
                    0x13
                }, 

                Package (0x02)
                {
                    "\\_SB.SYSM.CLUS.CPU4", 
                    0x14
                }, 

                Package (0x02)
                {
                    "\\_SB.SYSM.CLUS.CPU5", 
                    0x15
                }, 

                Package (0x02)
                {
                    "\\_SB.SYSM.CLUS.CPU6", 
                    0x16
                }, 

                Package (0x02)
                {
                    "\\_SB.SYSM.CLUS.CPU7", 
                    0x17
                }
            })
            Method (PGCC, 0, NotSerialized)
            {
                Return (CCFG) /* \_SB_.PEP0.CCFG */
            }

            Name (DRVC, Package (0x02)
            {
                Package (0x03)
                {
                    "HLOS_DRV", 
                    0x02, 
                    "/icb/arbiter"
                }, 

                Package (0x03)
                {
                    "DISPLAY_DRV", 
                    0x09, 
                    "/icb/arbiter/display"
                }
            })
            Method (LDRV, 0, NotSerialized)
            {
                Return (DRVC) /* \_SB_.PEP0.DRVC */
            }

            Name (DCVS, Zero)
            Method (PGDS, 0, NotSerialized)
            {
                Return (DCVS) /* \_SB_.PEP0.DCVS */
            }

            Name (PPPP, Package (0x32)
            {
                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS3_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS4_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS5_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS6_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS7_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS9_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS1_C", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS2_C", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_SMPS3_C", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO3_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO4_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO5_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO6_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO7_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO8_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO9_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO10_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO11_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO12_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO13_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO14_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO15_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO16_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO17_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO18_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO19_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO20_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO21_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO22_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO23_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO24_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO25_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO26_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO27_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LDO28_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LVS1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_LVS2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK3_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_RFCLK3_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK1_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK2_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK3_A", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }, 

                Package (0x03)
                {
                    "PPP_RESOURCE_ID_BUCK_BOOST1_B", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_RPMH", 
                    "PM_RESOURCE_SERVICE_INTERFACE_TYPE_PMIC_KMDF"
                }
            })
            Method (PPPM, 0, NotSerialized)
            {
                Return (PPPP) /* \_SB_.PEP0.PPPP */
            }

            Name (PRRP, Package (0x12)
            {
                "PPP_RESOURCE_RANGE_INFO_SMPS_A", 
                "PPP_RESOURCE_ID_SMPS1_A", 
                "PPP_RESOURCE_ID_SMPS13_A", 
                "PPP_RESOURCE_RANGE_INFO_SMPS_C", 
                "PPP_RESOURCE_ID_SMPS1_C", 
                "PPP_RESOURCE_ID_SMPS4_C", 
                "PPP_RESOURCE_RANGE_INFO_LDO_A", 
                "PPP_RESOURCE_ID_LDO1_A", 
                "PPP_RESOURCE_ID_LDO28_A", 
                "PPP_RESOURCE_RANGE_INFO_LVS_A", 
                "PPP_RESOURCE_ID_LVS1_A", 
                "PPP_RESOURCE_ID_LVS2_A", 
                "PPP_RESOURCE_RANGE_INFO_CXO_BUFFERS_A", 
                "PPP_RESOURCE_ID_CXO_BUFFERS_BBCLK2_A", 
                "PPP_RESOURCE_ID_CXO_BUFFERS_DIVCLK3_A", 
                "PPP_RESOURCE_RANGE_INFO_BUCK_BOOST_B", 
                "PPP_RESOURCE_ID_BUCK_BOOST1_B", 
                "PPP_RESOURCE_ID_BUCK_BOOST1_B"
            })
            Method (PPRR, 0, NotSerialized)
            {
                Return (PRRP) /* \_SB_.PEP0.PRRP */
            }

            Method (PGSD, 0, NotSerialized)
            {
                Return (SDFR) /* \_SB_.PEP0.SDFR */
            }

            Name (FPDP, Zero)
            Method (FPMD, 0, NotSerialized)
            {
                Return (FPDP) /* \_SB_.PEP0.FPDP */
            }

            Name (PPPC, Zero)
            Method (PGPC, 0, NotSerialized)
            {
                Return (PPPC) /* \_SB_.PEP0.PPPC */
            }

            Method (DPRF, 0, NotSerialized)
            {
                Return (\_SB.DPP0)
            }

            Method (DMRF, 0, NotSerialized)
            {
                Return (\_SB.DPP1)
            }
        }

        Name (HPDB, Zero)
        Name (PINA, Zero)
        Name (CCST, Buffer (One)
        {
             0x02                                             // .
        })
        Name (HSFL, Buffer (One)
        {
             0x00                                             // .
        })
        Name (HPDS, Zero)
        Name (USBC, Buffer (One)
        {
             0x0B                                             // .
        })
        Name (DPP1, Buffer (One)
        {
             0x00                                             // .
        })


        Name (DPPN, 0x0D)
        Name (MUXC, Buffer (One)
        {
             0x00                                             // .
        })
        Name (PHYR, 0x0D)
        Name (PHYA, Buffer (One)
        {
             0x00                                             // .
        })
        Method (USBH, 2, Serialized)
        {
            \_SB.PHYR = Arg0
            If ((\_SB.PHYR == Zero))
            {
                Return (\_SB.PHYA)
            }
            Else
            {
                \_SB.PHYA = Arg1
            }
        }

        Name (HPDF, Buffer (One)
        {
             0x00                                             // .
        })
        

        Method (CCOT, 2, NotSerialized)
        {
            Debug = "_SB CCOT trigger"
            \_SB.CCST = Arg0
            \_SB.HSFL = Arg1
        }

       
        Device (SYSM)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x00100000)  // _UID: Unique ID
            Name (_LPI, Package (0x05)  // _LPI: Low Power Idle States
            {
                Zero, 
                0x01000000, 
                0x02, 
                Package (0x0A)
                {
                    0x251C, 
                    0x1770, 
                    Zero, 
                    0x20, 
                    Zero, 
                    Zero, 
                    0x3300, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "platform.F1"
                }, 

                Package (0x0A)
                {
                    0x2710, 
                    0x19C8, 
                    One, 
                    0x20, 
                    Zero, 
                    Zero, 
                    0xC300, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "platform.F2"
                }
            })
            Device (CLUS)
            {
                Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                Name (_UID, 0x10)  // _UID: Unique ID
                Name (_LPI, Package (0x05)  // _LPI: Low Power Idle States
                {
                    Zero, 
                    0x01000000, 
                    0x02, 
                    Package (0x0A)
                    {
                        0x170C, 
                        0x0BB8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x20, 
                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        "L3Cluster.D2"
                    }, 

                    Package (0x0A)
                    {
                        0x1770, 
                        0x0CE4, 
                        One, 
                        Zero, 
                        Zero, 
                        0x02, 
                        0x40, 
                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        "L3Cluster.D4"
                    }
                })
                Device (CPU0)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x1388, 
                            0x01F4, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x13EC, 
                            0x0226, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C4"
                        }
                    })
                }

                Device (CPU1)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x1388, 
                            0x01F4, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x13EC, 
                            0x0226, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C4"
                        }
                    })
                }

                Device (CPU2)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x1388, 
                            0x01F4, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x13EC, 
                            0x0226, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C4"
                        }
                    })
                }

                Device (CPU3)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x1388, 
                            0x01F4, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x13EC, 
                            0x0226, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C4"
                        }
                    })
                }

                Device (CPU4)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x03E8, 
                            0x028A, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x05DC, 
                            0x044C, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C4"
                        }
                    })
                }

                Device (CPU5)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x03E8, 
                            0x028A, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x05DC, 
                            0x044C, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C4"
                        }
                    })
                }

                Device (CPU6)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x03E8, 
                            0x028A, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x05DC, 
                            0x044C, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C4"
                        }
                    })
                }

                Device (CPU7)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x07)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold3.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold3.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x03E8, 
                            0x028A, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold3.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x05DC, 
                            0x044C, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold3.C4"
                        }
                    })
                }
            }
        }

        

        // Name (CAVR, Zero)
        // Name (CFWV, "00.00.20")
        // Name (CVNC, 0x07)
        // Name (ECIF, One)
        // Name (SECG, "0x8BE4DF61, 0x93CA, 0x11d2, 0x8C2B0398E0000DAA")
        // Name (SECN, "SecureBoot")
        // Name (ESMD, Buffer (0x20){})
        // Name (ESMS, Zero)
        // Name (BPWU, One)
        // Name (BODC, 0x1770)
        // Name (BFCC, 0x1770)
        // Name (BRCG, One)
        // Name (BODV, 0x2A30)
        // Name (BWCL, 0x0258)
        // Name (BLCL, 0xB4)
        // Name (BCGN, 0x0108)
        // Name (BCG1, 0x0EC4)
        // Name (BNAM, "PABAS0241231")
        // Name (BTSN, "41167")
        // Name (BTYP, "Li-Ion")
        // Name (BMAF, "COMPAL ")
        // Name (BDCW, 0x0A)
        // Name (BDCL, 0x03)
        



        Mutex (CFMX, 0x00)
        

        Name (HWNH, Zero)
        Name (HWNL, Zero)
        
    }
}

