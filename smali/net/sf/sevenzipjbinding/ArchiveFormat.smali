.class public final enum Lnet/sf/sevenzipjbinding/ArchiveFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/sevenzipjbinding/ArchiveFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum AR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum ARJ:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum BZIP2:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum CAB:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum CHM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum CPIO:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum FAT:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum GZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum HFS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum ISO:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum LZH:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum LZMA:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum NSIS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum NTFS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum RAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum RAR5:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum RPM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum SEVEN_ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum SPLIT:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum TAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum UDF:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum WIM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum XAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum Z:Lnet/sf/sevenzipjbinding/ArchiveFormat;

.field public static final enum ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;


# instance fields
.field private codecIndex:I

.field private methodName:Ljava/lang/String;

.field outArchiveImplementation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;>;"
        }
    .end annotation
.end field

.field private supportMultipleFiles:Z


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 1
    new-instance v6, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    const-string v1, "ZIP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Zip"

    .line 7
    .line 8
    const-class v4, Lnet/sf/sevenzipjbinding/impl/OutArchiveZipImpl;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    .line 13
    .line 14
    .line 15
    sput-object v6, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 16
    .line 17
    new-instance v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 18
    .line 19
    const-string v8, "TAR"

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    const-string v10, "Tar"

    .line 23
    .line 24
    const-class v11, Lnet/sf/sevenzipjbinding/impl/OutArchiveTarImpl;

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    move-object v7, v0

    .line 28
    invoke-direct/range {v7 .. v12}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->TAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 32
    .line 33
    new-instance v1, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 34
    .line 35
    const-string v2, "SPLIT"

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    const-string v4, "Split"

    .line 39
    .line 40
    invoke-direct {v1, v2, v3, v4, v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lnet/sf/sevenzipjbinding/ArchiveFormat;->SPLIT:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 44
    .line 45
    new-instance v2, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 46
    .line 47
    const-string v4, "Rar"

    .line 48
    .line 49
    const-string v7, "RAR"

    .line 50
    .line 51
    const/4 v8, 0x3

    .line 52
    invoke-direct {v2, v7, v8, v4, v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    sput-object v2, Lnet/sf/sevenzipjbinding/ArchiveFormat;->RAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 56
    .line 57
    new-instance v4, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 58
    .line 59
    const-string v7, "Rar5"

    .line 60
    .line 61
    const-string v9, "RAR5"

    .line 62
    .line 63
    const/4 v10, 0x4

    .line 64
    invoke-direct {v4, v9, v10, v7, v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    sput-object v4, Lnet/sf/sevenzipjbinding/ArchiveFormat;->RAR5:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 68
    .line 69
    new-instance v7, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 70
    .line 71
    const-string v9, "LZMA"

    .line 72
    .line 73
    const/4 v11, 0x5

    .line 74
    const-string v12, "Lzma"

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    invoke-direct {v7, v9, v11, v12, v13}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    sput-object v7, Lnet/sf/sevenzipjbinding/ArchiveFormat;->LZMA:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 81
    .line 82
    new-instance v9, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 83
    .line 84
    const-string v12, "Iso"

    .line 85
    .line 86
    const-string v14, "ISO"

    .line 87
    .line 88
    const/4 v15, 0x6

    .line 89
    invoke-direct {v9, v14, v15, v12, v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 90
    .line 91
    .line 92
    sput-object v9, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ISO:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 93
    .line 94
    new-instance v12, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 95
    .line 96
    const-string v14, "HFS"

    .line 97
    .line 98
    const/4 v15, 0x7

    .line 99
    invoke-direct {v12, v14, v15, v14, v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 100
    .line 101
    .line 102
    sput-object v12, Lnet/sf/sevenzipjbinding/ArchiveFormat;->HFS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 103
    .line 104
    new-instance v14, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 105
    .line 106
    const-string v17, "GZIP"

    .line 107
    .line 108
    const/16 v18, 0x8

    .line 109
    .line 110
    const-string v19, "GZip"

    .line 111
    .line 112
    const-class v20, Lnet/sf/sevenzipjbinding/impl/OutArchiveGZipImpl;

    .line 113
    .line 114
    const/16 v21, 0x0

    .line 115
    .line 116
    move-object/from16 v16, v14

    .line 117
    .line 118
    invoke-direct/range {v16 .. v21}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    .line 119
    .line 120
    .line 121
    sput-object v14, Lnet/sf/sevenzipjbinding/ArchiveFormat;->GZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 122
    .line 123
    new-instance v15, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 124
    .line 125
    const-string v11, "Cpio"

    .line 126
    .line 127
    const-string v10, "CPIO"

    .line 128
    .line 129
    const/16 v8, 0x9

    .line 130
    .line 131
    invoke-direct {v15, v10, v8, v11, v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 132
    .line 133
    .line 134
    sput-object v15, Lnet/sf/sevenzipjbinding/ArchiveFormat;->CPIO:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 135
    .line 136
    new-instance v10, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 137
    .line 138
    const-string v21, "BZIP2"

    .line 139
    .line 140
    const/16 v22, 0xa

    .line 141
    .line 142
    const-string v23, "BZip2"

    .line 143
    .line 144
    const-class v24, Lnet/sf/sevenzipjbinding/impl/OutArchiveBZip2Impl;

    .line 145
    .line 146
    const/16 v25, 0x0

    .line 147
    .line 148
    move-object/from16 v20, v10

    .line 149
    .line 150
    invoke-direct/range {v20 .. v25}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    .line 151
    .line 152
    .line 153
    sput-object v10, Lnet/sf/sevenzipjbinding/ArchiveFormat;->BZIP2:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 154
    .line 155
    new-instance v11, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 156
    .line 157
    const-string v27, "SEVEN_ZIP"

    .line 158
    .line 159
    const/16 v28, 0xb

    .line 160
    .line 161
    const-string v29, "7z"

    .line 162
    .line 163
    const-class v30, Lnet/sf/sevenzipjbinding/impl/OutArchive7zImpl;

    .line 164
    .line 165
    const/16 v31, 0x1

    .line 166
    .line 167
    move-object/from16 v26, v11

    .line 168
    .line 169
    invoke-direct/range {v26 .. v31}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    .line 170
    .line 171
    .line 172
    sput-object v11, Lnet/sf/sevenzipjbinding/ArchiveFormat;->SEVEN_ZIP:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 173
    .line 174
    new-instance v8, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 175
    .line 176
    const-string v3, "Z"

    .line 177
    .line 178
    const/16 v5, 0xc

    .line 179
    .line 180
    invoke-direct {v8, v3, v5, v3, v13}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    sput-object v8, Lnet/sf/sevenzipjbinding/ArchiveFormat;->Z:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 184
    .line 185
    new-instance v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 186
    .line 187
    const-string v5, "Arj"

    .line 188
    .line 189
    const-string v13, "ARJ"

    .line 190
    .line 191
    move-object/from16 v25, v8

    .line 192
    .line 193
    const/16 v8, 0xd

    .line 194
    .line 195
    const/4 v11, 0x1

    .line 196
    invoke-direct {v3, v13, v8, v5, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 197
    .line 198
    .line 199
    sput-object v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;->ARJ:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 200
    .line 201
    new-instance v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 202
    .line 203
    const-string v13, "Cab"

    .line 204
    .line 205
    const-string v8, "CAB"

    .line 206
    .line 207
    move-object/from16 v27, v3

    .line 208
    .line 209
    const/16 v3, 0xe

    .line 210
    .line 211
    invoke-direct {v5, v8, v3, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 212
    .line 213
    .line 214
    sput-object v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;->CAB:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 215
    .line 216
    new-instance v8, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 217
    .line 218
    const-string v13, "Lzh"

    .line 219
    .line 220
    const-string v3, "LZH"

    .line 221
    .line 222
    move-object/from16 v29, v5

    .line 223
    .line 224
    const/16 v5, 0xf

    .line 225
    .line 226
    invoke-direct {v8, v3, v5, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    sput-object v8, Lnet/sf/sevenzipjbinding/ArchiveFormat;->LZH:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 230
    .line 231
    new-instance v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 232
    .line 233
    const-string v13, "Chm"

    .line 234
    .line 235
    const-string v5, "CHM"

    .line 236
    .line 237
    move-object/from16 v31, v8

    .line 238
    .line 239
    const/16 v8, 0x10

    .line 240
    .line 241
    invoke-direct {v3, v5, v8, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 242
    .line 243
    .line 244
    sput-object v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;->CHM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 245
    .line 246
    new-instance v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 247
    .line 248
    const-string v13, "Nsis"

    .line 249
    .line 250
    const-string v8, "NSIS"

    .line 251
    .line 252
    move-object/from16 v32, v3

    .line 253
    .line 254
    const/16 v3, 0x11

    .line 255
    .line 256
    invoke-direct {v5, v8, v3, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 257
    .line 258
    .line 259
    sput-object v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;->NSIS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 260
    .line 261
    new-instance v8, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 262
    .line 263
    const-string v13, "Ar"

    .line 264
    .line 265
    const-string v3, "AR"

    .line 266
    .line 267
    move-object/from16 v33, v5

    .line 268
    .line 269
    const/16 v5, 0x12

    .line 270
    .line 271
    invoke-direct {v8, v3, v5, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    sput-object v8, Lnet/sf/sevenzipjbinding/ArchiveFormat;->AR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 275
    .line 276
    new-instance v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 277
    .line 278
    const-string v13, "Rpm"

    .line 279
    .line 280
    const-string v5, "RPM"

    .line 281
    .line 282
    move-object/from16 v34, v8

    .line 283
    .line 284
    const/16 v8, 0x13

    .line 285
    .line 286
    invoke-direct {v3, v5, v8, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 287
    .line 288
    .line 289
    sput-object v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;->RPM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 290
    .line 291
    new-instance v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 292
    .line 293
    const-string v13, "Udf"

    .line 294
    .line 295
    const-string v8, "UDF"

    .line 296
    .line 297
    move-object/from16 v35, v3

    .line 298
    .line 299
    const/16 v3, 0x14

    .line 300
    .line 301
    invoke-direct {v5, v8, v3, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 302
    .line 303
    .line 304
    sput-object v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;->UDF:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 305
    .line 306
    new-instance v8, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 307
    .line 308
    const-string v13, "Wim"

    .line 309
    .line 310
    const-string v3, "WIM"

    .line 311
    .line 312
    move-object/from16 v36, v5

    .line 313
    .line 314
    const/16 v5, 0x15

    .line 315
    .line 316
    invoke-direct {v8, v3, v5, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 317
    .line 318
    .line 319
    sput-object v8, Lnet/sf/sevenzipjbinding/ArchiveFormat;->WIM:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 320
    .line 321
    new-instance v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 322
    .line 323
    const-string v13, "Xar"

    .line 324
    .line 325
    const-string v5, "XAR"

    .line 326
    .line 327
    move-object/from16 v37, v8

    .line 328
    .line 329
    const/16 v8, 0x16

    .line 330
    .line 331
    invoke-direct {v3, v5, v8, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 332
    .line 333
    .line 334
    sput-object v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;->XAR:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 335
    .line 336
    new-instance v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 337
    .line 338
    const/16 v13, 0x17

    .line 339
    .line 340
    const-string v8, "fat"

    .line 341
    .line 342
    move-object/from16 v38, v3

    .line 343
    .line 344
    const-string v3, "FAT"

    .line 345
    .line 346
    invoke-direct {v5, v3, v13, v8, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 347
    .line 348
    .line 349
    sput-object v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;->FAT:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 350
    .line 351
    new-instance v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 352
    .line 353
    const/16 v8, 0x18

    .line 354
    .line 355
    const-string v13, "ntfs"

    .line 356
    .line 357
    move-object/from16 v39, v5

    .line 358
    .line 359
    const-string v5, "NTFS"

    .line 360
    .line 361
    invoke-direct {v3, v5, v8, v13, v11}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 362
    .line 363
    .line 364
    sput-object v3, Lnet/sf/sevenzipjbinding/ArchiveFormat;->NTFS:Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 365
    .line 366
    const/16 v5, 0x19

    .line 367
    .line 368
    new-array v5, v5, [Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 369
    .line 370
    const/4 v8, 0x0

    .line 371
    aput-object v6, v5, v8

    .line 372
    .line 373
    aput-object v0, v5, v11

    .line 374
    .line 375
    const/4 v0, 0x2

    .line 376
    aput-object v1, v5, v0

    .line 377
    .line 378
    const/4 v0, 0x3

    .line 379
    aput-object v2, v5, v0

    .line 380
    .line 381
    const/4 v0, 0x4

    .line 382
    aput-object v4, v5, v0

    .line 383
    .line 384
    const/4 v0, 0x5

    .line 385
    aput-object v7, v5, v0

    .line 386
    .line 387
    const/4 v0, 0x6

    .line 388
    aput-object v9, v5, v0

    .line 389
    .line 390
    const/4 v0, 0x7

    .line 391
    aput-object v12, v5, v0

    .line 392
    .line 393
    const/16 v0, 0x8

    .line 394
    .line 395
    aput-object v14, v5, v0

    .line 396
    .line 397
    const/16 v0, 0x9

    .line 398
    .line 399
    aput-object v15, v5, v0

    .line 400
    .line 401
    const/16 v0, 0xa

    .line 402
    .line 403
    aput-object v10, v5, v0

    .line 404
    .line 405
    const/16 v0, 0xb

    .line 406
    .line 407
    aput-object v26, v5, v0

    .line 408
    .line 409
    const/16 v0, 0xc

    .line 410
    .line 411
    aput-object v25, v5, v0

    .line 412
    .line 413
    const/16 v0, 0xd

    .line 414
    .line 415
    aput-object v27, v5, v0

    .line 416
    .line 417
    const/16 v0, 0xe

    .line 418
    .line 419
    aput-object v29, v5, v0

    .line 420
    .line 421
    const/16 v0, 0xf

    .line 422
    .line 423
    aput-object v31, v5, v0

    .line 424
    .line 425
    const/16 v0, 0x10

    .line 426
    .line 427
    aput-object v32, v5, v0

    .line 428
    .line 429
    const/16 v0, 0x11

    .line 430
    .line 431
    aput-object v33, v5, v0

    .line 432
    .line 433
    const/16 v0, 0x12

    .line 434
    .line 435
    aput-object v34, v5, v0

    .line 436
    .line 437
    const/16 v0, 0x13

    .line 438
    .line 439
    aput-object v35, v5, v0

    .line 440
    .line 441
    const/16 v0, 0x14

    .line 442
    .line 443
    aput-object v36, v5, v0

    .line 444
    .line 445
    const/16 v0, 0x15

    .line 446
    .line 447
    aput-object v37, v5, v0

    .line 448
    .line 449
    const/16 v0, 0x16

    .line 450
    .line 451
    aput-object v38, v5, v0

    .line 452
    .line 453
    const/16 v0, 0x17

    .line 454
    .line 455
    aput-object v39, v5, v0

    .line 456
    .line 457
    const/16 v0, 0x18

    .line 458
    .line 459
    aput-object v3, v5, v0

    .line 460
    .line 461
    sput-object v5, Lnet/sf/sevenzipjbinding/ArchiveFormat;->$VALUES:[Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 462
    .line 463
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x2

    .line 3
    iput p1, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->codecIndex:I

    .line 4
    iput-object p3, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->methodName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->outArchiveImplementation:Ljava/lang/Class;

    .line 6
    iput-boolean p5, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->supportMultipleFiles:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lnet/sf/sevenzipjbinding/ArchiveFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method static findOutArchiveImplementationToInterface(Ljava/lang/Class;)Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/sevenzipjbinding/IOutCreateArchive<",
            "*>;>;)",
            "Lnet/sf/sevenzipjbinding/ArchiveFormat;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/sevenzipjbinding/SevenZipException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->values()[Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lnet/sf/sevenzipjbinding/ArchiveFormat;->getOutArchiveImplementation()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    new-instance p0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "Can\'t determine corresponding archive format to the interface "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-class v1, Lnet/sf/sevenzipjbinding/IOutArchive;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, "."

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    .line 1
    const-class v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/sf/sevenzipjbinding/ArchiveFormat;
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->$VALUES:[Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lnet/sf/sevenzipjbinding/ArchiveFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/sf/sevenzipjbinding/ArchiveFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOutArchiveImplementation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/sevenzipjbinding/impl/OutArchiveImpl<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->outArchiveImplementation:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public isOutArchiveSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->outArchiveImplementation:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public supportMultipleFiles()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->supportMultipleFiles:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/ArchiveFormat;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
