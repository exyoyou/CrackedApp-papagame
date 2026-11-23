.class public final enum Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/proto/GSSDK$GameCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final enum CURSOR_APPSTARTING:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_APPSTARTING_VALUE:I = 0x7f8a

.field public static final enum CURSOR_ARROW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_ARROW_VALUE:I = 0x7f00

.field public static final enum CURSOR_CROSS:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_CROSS_VALUE:I = 0x7f03

.field public static final enum CURSOR_CUSTOM:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_CUSTOM_VALUE:I = 0x1

.field public static final enum CURSOR_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_DEFAULT_VALUE:I = 0x0

.field public static final enum CURSOR_HAND:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_HAND_VALUE:I = 0x7f89

.field public static final enum CURSOR_HELP:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_HELP_VALUE:I = 0x7f8b

.field public static final enum CURSOR_IBEAM:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_IBEAM_VALUE:I = 0x7f01

.field public static final enum CURSOR_ICON:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_ICON_VALUE:I = 0x7f81

.field public static final enum CURSOR_NO:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final enum CURSOR_NONE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_NONE_VALUE:I = 0x2

.field public static final CURSOR_NO_VALUE:I = 0x7f88

.field public static final enum CURSOR_SIZE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final enum CURSOR_SIZEALL:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_SIZEALL_VALUE:I = 0x7f86

.field public static final enum CURSOR_SIZENESW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_SIZENESW_VALUE:I = 0x7f83

.field public static final enum CURSOR_SIZENS:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_SIZENS_VALUE:I = 0x7f85

.field public static final enum CURSOR_SIZENWSE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_SIZENWSE_VALUE:I = 0x7f82

.field public static final enum CURSOR_SIZEWE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_SIZEWE_VALUE:I = 0x7f84

.field public static final CURSOR_SIZE_VALUE:I = 0x7f80

.field public static final enum CURSOR_UPARROW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_UPARROW_VALUE:I = 0x7f04

.field public static final enum CURSOR_WAIT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field public static final CURSOR_WAIT_VALUE:I = 0x7f02

.field private static final VALUES:[Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 2
    .line 3
    const-string v1, "CURSOR_DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 10
    .line 11
    new-instance v1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 12
    .line 13
    const-string v3, "CURSOR_CUSTOM"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_CUSTOM:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 20
    .line 21
    new-instance v3, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 22
    .line 23
    const-string v5, "CURSOR_NONE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_NONE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 30
    .line 31
    new-instance v5, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 32
    .line 33
    const/16 v7, 0x7f8a

    .line 34
    .line 35
    const-string v8, "CURSOR_APPSTARTING"

    .line 36
    .line 37
    const/4 v9, 0x3

    .line 38
    invoke-direct {v5, v8, v9, v7}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v5, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_APPSTARTING:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 42
    .line 43
    new-instance v7, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 44
    .line 45
    const/16 v8, 0x7f00

    .line 46
    .line 47
    const-string v10, "CURSOR_ARROW"

    .line 48
    .line 49
    const/4 v11, 0x4

    .line 50
    invoke-direct {v7, v10, v11, v8}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v7, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_ARROW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 54
    .line 55
    new-instance v8, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 56
    .line 57
    const/16 v10, 0x7f03

    .line 58
    .line 59
    const-string v12, "CURSOR_CROSS"

    .line 60
    .line 61
    const/4 v13, 0x5

    .line 62
    invoke-direct {v8, v12, v13, v10}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v8, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_CROSS:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 66
    .line 67
    new-instance v10, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 68
    .line 69
    const/16 v12, 0x7f89

    .line 70
    .line 71
    const-string v14, "CURSOR_HAND"

    .line 72
    .line 73
    const/4 v15, 0x6

    .line 74
    invoke-direct {v10, v14, v15, v12}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v10, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_HAND:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 78
    .line 79
    new-instance v12, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 80
    .line 81
    const/16 v14, 0x7f8b

    .line 82
    .line 83
    const-string v15, "CURSOR_HELP"

    .line 84
    .line 85
    const/4 v13, 0x7

    .line 86
    invoke-direct {v12, v15, v13, v14}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 87
    .line 88
    .line 89
    sput-object v12, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_HELP:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 90
    .line 91
    new-instance v14, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 92
    .line 93
    const/16 v15, 0x7f01

    .line 94
    .line 95
    const-string v13, "CURSOR_IBEAM"

    .line 96
    .line 97
    const/16 v11, 0x8

    .line 98
    .line 99
    invoke-direct {v14, v13, v11, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    sput-object v14, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_IBEAM:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 103
    .line 104
    new-instance v13, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 105
    .line 106
    const/16 v15, 0x7f81

    .line 107
    .line 108
    const-string v11, "CURSOR_ICON"

    .line 109
    .line 110
    const/16 v9, 0x9

    .line 111
    .line 112
    invoke-direct {v13, v11, v9, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    sput-object v13, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_ICON:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 116
    .line 117
    new-instance v11, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 118
    .line 119
    const/16 v15, 0x7f88

    .line 120
    .line 121
    const-string v9, "CURSOR_NO"

    .line 122
    .line 123
    const/16 v6, 0xa

    .line 124
    .line 125
    invoke-direct {v11, v9, v6, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 126
    .line 127
    .line 128
    sput-object v11, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_NO:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 129
    .line 130
    new-instance v9, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 131
    .line 132
    const/16 v15, 0x7f80

    .line 133
    .line 134
    const-string v6, "CURSOR_SIZE"

    .line 135
    .line 136
    const/16 v4, 0xb

    .line 137
    .line 138
    invoke-direct {v9, v6, v4, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    sput-object v9, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 142
    .line 143
    new-instance v6, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 144
    .line 145
    const/16 v15, 0x7f86

    .line 146
    .line 147
    const-string v4, "CURSOR_SIZEALL"

    .line 148
    .line 149
    const/16 v2, 0xc

    .line 150
    .line 151
    invoke-direct {v6, v4, v2, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 152
    .line 153
    .line 154
    sput-object v6, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZEALL:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 155
    .line 156
    new-instance v4, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 157
    .line 158
    const/16 v15, 0x7f83

    .line 159
    .line 160
    const-string v2, "CURSOR_SIZENESW"

    .line 161
    .line 162
    move-object/from16 v16, v6

    .line 163
    .line 164
    const/16 v6, 0xd

    .line 165
    .line 166
    invoke-direct {v4, v2, v6, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 167
    .line 168
    .line 169
    sput-object v4, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZENESW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 170
    .line 171
    new-instance v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 172
    .line 173
    const/16 v15, 0x7f85

    .line 174
    .line 175
    const-string v6, "CURSOR_SIZENS"

    .line 176
    .line 177
    move-object/from16 v17, v4

    .line 178
    .line 179
    const/16 v4, 0xe

    .line 180
    .line 181
    invoke-direct {v2, v6, v4, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 182
    .line 183
    .line 184
    sput-object v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZENS:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 185
    .line 186
    new-instance v6, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 187
    .line 188
    const/16 v15, 0x7f82

    .line 189
    .line 190
    const-string v4, "CURSOR_SIZENWSE"

    .line 191
    .line 192
    move-object/from16 v18, v2

    .line 193
    .line 194
    const/16 v2, 0xf

    .line 195
    .line 196
    invoke-direct {v6, v4, v2, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 197
    .line 198
    .line 199
    sput-object v6, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZENWSE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 200
    .line 201
    new-instance v4, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 202
    .line 203
    const/16 v15, 0x7f84

    .line 204
    .line 205
    const-string v2, "CURSOR_SIZEWE"

    .line 206
    .line 207
    move-object/from16 v19, v6

    .line 208
    .line 209
    const/16 v6, 0x10

    .line 210
    .line 211
    invoke-direct {v4, v2, v6, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 212
    .line 213
    .line 214
    sput-object v4, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZEWE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 215
    .line 216
    new-instance v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 217
    .line 218
    const/16 v15, 0x7f04

    .line 219
    .line 220
    const-string v6, "CURSOR_UPARROW"

    .line 221
    .line 222
    move-object/from16 v20, v4

    .line 223
    .line 224
    const/16 v4, 0x11

    .line 225
    .line 226
    invoke-direct {v2, v6, v4, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 227
    .line 228
    .line 229
    sput-object v2, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_UPARROW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 230
    .line 231
    new-instance v6, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 232
    .line 233
    const/16 v15, 0x7f02

    .line 234
    .line 235
    const-string v4, "CURSOR_WAIT"

    .line 236
    .line 237
    move-object/from16 v21, v2

    .line 238
    .line 239
    const/16 v2, 0x12

    .line 240
    .line 241
    invoke-direct {v6, v4, v2, v15}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;-><init>(Ljava/lang/String;II)V

    .line 242
    .line 243
    .line 244
    sput-object v6, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_WAIT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 245
    .line 246
    const/16 v4, 0x13

    .line 247
    .line 248
    new-array v4, v4, [Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 249
    .line 250
    const/4 v15, 0x0

    .line 251
    aput-object v0, v4, v15

    .line 252
    .line 253
    const/4 v0, 0x1

    .line 254
    aput-object v1, v4, v0

    .line 255
    .line 256
    const/4 v0, 0x2

    .line 257
    aput-object v3, v4, v0

    .line 258
    .line 259
    const/4 v0, 0x3

    .line 260
    aput-object v5, v4, v0

    .line 261
    .line 262
    const/4 v0, 0x4

    .line 263
    aput-object v7, v4, v0

    .line 264
    .line 265
    const/4 v0, 0x5

    .line 266
    aput-object v8, v4, v0

    .line 267
    .line 268
    const/4 v0, 0x6

    .line 269
    aput-object v10, v4, v0

    .line 270
    .line 271
    const/4 v0, 0x7

    .line 272
    aput-object v12, v4, v0

    .line 273
    .line 274
    const/16 v0, 0x8

    .line 275
    .line 276
    aput-object v14, v4, v0

    .line 277
    .line 278
    const/16 v0, 0x9

    .line 279
    .line 280
    aput-object v13, v4, v0

    .line 281
    .line 282
    const/16 v0, 0xa

    .line 283
    .line 284
    aput-object v11, v4, v0

    .line 285
    .line 286
    const/16 v0, 0xb

    .line 287
    .line 288
    aput-object v9, v4, v0

    .line 289
    .line 290
    const/16 v0, 0xc

    .line 291
    .line 292
    aput-object v16, v4, v0

    .line 293
    .line 294
    const/16 v0, 0xd

    .line 295
    .line 296
    aput-object v17, v4, v0

    .line 297
    .line 298
    const/16 v0, 0xe

    .line 299
    .line 300
    aput-object v18, v4, v0

    .line 301
    .line 302
    const/16 v0, 0xf

    .line 303
    .line 304
    aput-object v19, v4, v0

    .line 305
    .line 306
    const/16 v0, 0x10

    .line 307
    .line 308
    aput-object v20, v4, v0

    .line 309
    .line 310
    const/16 v0, 0x11

    .line 311
    .line 312
    aput-object v21, v4, v0

    .line 313
    .line 314
    aput-object v6, v4, v2

    .line 315
    .line 316
    sput-object v4, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 317
    .line 318
    new-instance v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle$1;

    .line 319
    .line 320
    invoke-direct {v0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle$1;-><init>()V

    .line 321
    .line 322
    .line 323
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 324
    .line 325
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->values()[Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    sput-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 330
    .line 331
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p0, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    packed-switch p0, :pswitch_data_2

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_HELP:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_1
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_APPSTARTING:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_2
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_HAND:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_3
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_NO:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_4
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZEALL:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_5
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZENS:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_6
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZEWE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_7
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZENESW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_8
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZENWSE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_9
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_ICON:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_a
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_SIZE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_b
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_UPARROW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_c
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_CROSS:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_d
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_WAIT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_e
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_IBEAM:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 63
    .line 64
    return-object p0

    .line 65
    :pswitch_f
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_ARROW:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_0
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_NONE:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_1
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_CUSTOM:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_2
    sget-object p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->CURSOR_DEFAULT:Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f00
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :pswitch_data_1
    .packed-switch 0x7f80
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    :pswitch_data_2
    .packed-switch 0x7f88
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 15
    .line 16
    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->VALUES:[Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    return-object p0
.end method

.method public static values()[Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->$VALUES:[Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 18
    .line 19
    return-object v0
.end method
