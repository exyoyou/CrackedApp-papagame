.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "file.encoding"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "SJIS"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "EUC_JP"

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    :goto_0
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    .line 8
    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    array-length v1, v0

    .line 19
    const-string v2, "UTF8"

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x1

    .line 24
    if-le v1, v3, :cond_1

    .line 25
    .line 26
    aget-byte v1, v0, v4

    .line 27
    .line 28
    const/16 v6, -0x11

    .line 29
    .line 30
    if-ne v1, v6, :cond_1

    .line 31
    .line 32
    aget-byte v1, v0, v5

    .line 33
    .line 34
    const/16 v6, -0x45

    .line 35
    .line 36
    if-ne v1, v6, :cond_1

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    aget-byte v1, v0, v1

    .line 40
    .line 41
    const/16 v6, -0x41

    .line 42
    .line 43
    if-ne v1, v6, :cond_1

    .line 44
    .line 45
    return-object v2

    .line 46
    :cond_1
    array-length v1, v0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x1

    .line 49
    const/4 v8, 0x1

    .line 50
    const/4 v9, 0x1

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    const/4 v13, 0x0

    .line 55
    const/4 v14, 0x0

    .line 56
    const/4 v15, 0x0

    .line 57
    :goto_0
    if-ge v6, v1, :cond_17

    .line 58
    .line 59
    if-nez v7, :cond_2

    .line 60
    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    if-nez v9, :cond_2

    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_2
    aget-byte v4, v0, v6

    .line 68
    .line 69
    const/16 v3, 0xff

    .line 70
    .line 71
    and-int/2addr v4, v3

    .line 72
    const/16 v5, 0xbf

    .line 73
    .line 74
    const/16 v3, 0x80

    .line 75
    .line 76
    if-lt v4, v3, :cond_3

    .line 77
    .line 78
    if-gt v4, v5, :cond_3

    .line 79
    .line 80
    if-lez v10, :cond_6

    .line 81
    .line 82
    add-int/lit8 v10, v10, -0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    if-lez v10, :cond_4

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    :cond_4
    const/16 v3, 0xc0

    .line 89
    .line 90
    if-lt v4, v3, :cond_6

    .line 91
    .line 92
    const/16 v3, 0xfd

    .line 93
    .line 94
    if-gt v4, v3, :cond_6

    .line 95
    .line 96
    move v3, v4

    .line 97
    :goto_1
    and-int/lit8 v11, v3, 0x40

    .line 98
    .line 99
    if-nez v11, :cond_5

    .line 100
    .line 101
    const/4 v11, 0x1

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 104
    .line 105
    shl-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    :goto_2
    const/16 v3, 0xc3

    .line 109
    .line 110
    const/16 v5, 0xc2

    .line 111
    .line 112
    if-eq v4, v5, :cond_7

    .line 113
    .line 114
    if-ne v4, v3, :cond_a

    .line 115
    .line 116
    :cond_7
    add-int/lit8 v3, v1, -0x1

    .line 117
    .line 118
    if-ge v6, v3, :cond_a

    .line 119
    .line 120
    add-int/lit8 v3, v6, 0x1

    .line 121
    .line 122
    aget-byte v3, v0, v3

    .line 123
    .line 124
    const/16 v5, 0xff

    .line 125
    .line 126
    and-int/2addr v3, v5

    .line 127
    const/16 v5, 0xbf

    .line 128
    .line 129
    if-gt v3, v5, :cond_a

    .line 130
    .line 131
    const/16 v5, 0xc2

    .line 132
    .line 133
    if-ne v4, v5, :cond_8

    .line 134
    .line 135
    const/16 v5, 0xa0

    .line 136
    .line 137
    if-ge v3, v5, :cond_9

    .line 138
    .line 139
    :cond_8
    const/16 v5, 0xc3

    .line 140
    .line 141
    if-ne v4, v5, :cond_a

    .line 142
    .line 143
    const/16 v5, 0x80

    .line 144
    .line 145
    if-lt v3, v5, :cond_a

    .line 146
    .line 147
    :cond_9
    const/4 v14, 0x1

    .line 148
    :cond_a
    const/16 v3, 0x7f

    .line 149
    .line 150
    const/16 v5, 0x9f

    .line 151
    .line 152
    if-lt v4, v3, :cond_b

    .line 153
    .line 154
    if-gt v4, v5, :cond_b

    .line 155
    .line 156
    const/4 v7, 0x0

    .line 157
    :cond_b
    const/16 v3, 0xa1

    .line 158
    .line 159
    if-lt v4, v3, :cond_c

    .line 160
    .line 161
    const/16 v3, 0xdf

    .line 162
    .line 163
    if-gt v4, v3, :cond_c

    .line 164
    .line 165
    if-nez v15, :cond_c

    .line 166
    .line 167
    add-int/lit8 v13, v13, 0x1

    .line 168
    .line 169
    :cond_c
    if-nez v15, :cond_f

    .line 170
    .line 171
    const/16 v3, 0xf0

    .line 172
    .line 173
    if-lt v4, v3, :cond_d

    .line 174
    .line 175
    const/16 v3, 0xff

    .line 176
    .line 177
    if-le v4, v3, :cond_e

    .line 178
    .line 179
    :cond_d
    const/16 v3, 0x80

    .line 180
    .line 181
    if-eq v4, v3, :cond_e

    .line 182
    .line 183
    const/16 v3, 0xa0

    .line 184
    .line 185
    if-ne v4, v3, :cond_f

    .line 186
    .line 187
    :cond_e
    const/4 v8, 0x0

    .line 188
    :cond_f
    const/16 v3, 0x81

    .line 189
    .line 190
    if-lt v4, v3, :cond_10

    .line 191
    .line 192
    if-le v4, v5, :cond_11

    .line 193
    .line 194
    :cond_10
    const/16 v3, 0xe0

    .line 195
    .line 196
    if-lt v4, v3, :cond_12

    .line 197
    .line 198
    const/16 v3, 0xef

    .line 199
    .line 200
    if-gt v4, v3, :cond_12

    .line 201
    .line 202
    :cond_11
    if-eqz v15, :cond_13

    .line 203
    .line 204
    :cond_12
    const/4 v4, 0x1

    .line 205
    goto :goto_5

    .line 206
    :cond_13
    array-length v3, v0

    .line 207
    const/4 v4, 0x1

    .line 208
    sub-int/2addr v3, v4

    .line 209
    if-lt v6, v3, :cond_15

    .line 210
    .line 211
    :cond_14
    :goto_3
    const/4 v8, 0x0

    .line 212
    :goto_4
    const/4 v15, 0x1

    .line 213
    goto :goto_6

    .line 214
    :cond_15
    add-int/lit8 v3, v6, 0x1

    .line 215
    .line 216
    aget-byte v3, v0, v3

    .line 217
    .line 218
    const/16 v5, 0xff

    .line 219
    .line 220
    and-int/2addr v3, v5

    .line 221
    const/16 v5, 0x40

    .line 222
    .line 223
    if-lt v3, v5, :cond_14

    .line 224
    .line 225
    const/16 v5, 0xfc

    .line 226
    .line 227
    if-le v3, v5, :cond_16

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :goto_5
    const/4 v15, 0x0

    .line 234
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 235
    .line 236
    const/4 v3, 0x3

    .line 237
    const/4 v4, 0x0

    .line 238
    const/4 v5, 0x1

    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_17
    :goto_7
    if-lez v10, :cond_18

    .line 242
    .line 243
    const/4 v4, 0x0

    .line 244
    goto :goto_8

    .line 245
    :cond_18
    move v4, v9

    .line 246
    :goto_8
    const-string v0, "SJIS"

    .line 247
    .line 248
    if-eqz v8, :cond_19

    .line 249
    .line 250
    sget-boolean v3, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 251
    .line 252
    if-eqz v3, :cond_19

    .line 253
    .line 254
    return-object v0

    .line 255
    :cond_19
    if-eqz v4, :cond_1a

    .line 256
    .line 257
    if-eqz v11, :cond_1a

    .line 258
    .line 259
    return-object v2

    .line 260
    :cond_1a
    if-eqz v8, :cond_1c

    .line 261
    .line 262
    const/4 v2, 0x3

    .line 263
    if-ge v12, v2, :cond_1b

    .line 264
    .line 265
    mul-int/lit8 v13, v13, 0x14

    .line 266
    .line 267
    if-le v13, v1, :cond_1c

    .line 268
    .line 269
    :cond_1b
    return-object v0

    .line 270
    :cond_1c
    if-nez v14, :cond_1d

    .line 271
    .line 272
    if-eqz v7, :cond_1d

    .line 273
    .line 274
    const-string v0, "GB2312"

    .line 275
    .line 276
    return-object v0

    .line 277
    :cond_1d
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 278
    .line 279
    return-object v0
.end method
