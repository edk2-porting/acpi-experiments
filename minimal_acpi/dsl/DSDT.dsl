/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200430 (32-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./Section_Raw_PlatformAcpiTable_body5.raw, Tue May 12 17:37:28 2020
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000007B (123)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xF6
 *     OEM ID           "ARMLTD"
 *     OEM Table ID     "ARM-JUNO"
 *     OEM Revision     0x20140727 (538183463)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180105 (538444037)
 */
DefinitionBlock ("", "DSDT", 1, "ARMLTD", "ARM-JUNO", 0x20140727)
{
    Scope (_SB)
    {
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            Return (Arg3)
        }

        Device (CLU0)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Device (CPU0)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
            }
        }
    }
}

