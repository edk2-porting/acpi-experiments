/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200430 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of bgrt.acp, Sun May 24 17:27:18 2020
 *
 * ACPI Data Table [BGRT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "BGRT"    [Boot Graphics Resource Table]
[004h 0004   4]                 Table Length : 00000038
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 00     /* Incorrect checksum, should be BF */
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   2]                      Version : 0001
[026h 0038   1]       Status (decoded below) : 00
                                   Displayed : 0
                          Orientation Offset : 0
[027h 0039   1]                   Image Type : 00
[028h 0040   8]                Image Address : 0000000000000000
[030h 0048   4]                Image OffsetX : 00000000
[034h 0052   4]                Image OffsetY : 00000000

Raw Table Data: Length 56 (0x38)

    0000: 42 47 52 54 38 00 00 00 01 00 51 43 4F 4D 20 20  // BGRT8.....QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 01 00 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  // ................
    0030: 00 00 00 00 00 00 00 00                          // ........
