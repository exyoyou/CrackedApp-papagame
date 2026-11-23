.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 9
    .line 10
    const/16 v0, 0x19

    .line 11
    .line 12
    new-array v0, v0, [C

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    new-array v0, v0, [Ljava/math/BigInteger;

    .line 22
    .line 23
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 27
    .line 28
    aput-object v2, v0, v1

    .line 29
    .line 30
    const-wide/16 v1, 0x384

    .line 31
    .line 32
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 41
    .line 42
    array-length v3, v2

    .line 43
    if-ge v0, v3, :cond_0

    .line 44
    .line 45
    add-int/lit8 v3, v0, -0x1

    .line 46
    .line 47
    aget-object v3, v2, v3

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    aput-object v3, v2, v0

    .line 54
    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-void

    .line 59
    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
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
    .line 92
    nop

    .line 93
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
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

.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
    .locals 23

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/16 v2, 0x39a

    .line 6
    .line 7
    const/16 v4, 0x39b

    .line 8
    .line 9
    const/16 v5, 0x3a0

    .line 10
    .line 11
    const/16 v6, 0x386

    .line 12
    .line 13
    const-wide/16 v7, 0x384

    .line 14
    .line 15
    const/16 v11, 0x39c

    .line 16
    .line 17
    const/16 v12, 0x384

    .line 18
    .line 19
    const/4 v13, 0x6

    .line 20
    const/4 v15, 0x0

    .line 21
    const/16 v9, 0x385

    .line 22
    .line 23
    if-ne v0, v9, :cond_6

    .line 24
    .line 25
    new-array v0, v13, [C

    .line 26
    .line 27
    new-array v10, v13, [I

    .line 28
    .line 29
    move/from16 v14, p2

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const-wide/16 v16, 0x0

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    :goto_0
    aget v13, p1, v15

    .line 37
    .line 38
    if-ge v14, v13, :cond_5

    .line 39
    .line 40
    if-nez v18, :cond_5

    .line 41
    .line 42
    add-int/lit8 v13, v14, 0x1

    .line 43
    .line 44
    aget v14, p1, v14

    .line 45
    .line 46
    if-ge v14, v12, :cond_1

    .line 47
    .line 48
    aput v14, v10, v3

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    mul-long v16, v16, v7

    .line 53
    .line 54
    int-to-long v7, v14

    .line 55
    add-long v16, v16, v7

    .line 56
    .line 57
    :cond_0
    move v14, v13

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-eq v14, v12, :cond_2

    .line 60
    .line 61
    if-eq v14, v9, :cond_2

    .line 62
    .line 63
    if-eq v14, v6, :cond_2

    .line 64
    .line 65
    if-eq v14, v11, :cond_2

    .line 66
    .line 67
    if-eq v14, v5, :cond_2

    .line 68
    .line 69
    if-eq v14, v4, :cond_2

    .line 70
    .line 71
    if-ne v14, v2, :cond_0

    .line 72
    .line 73
    :cond_2
    add-int/lit8 v13, v13, -0x1

    .line 74
    .line 75
    move v14, v13

    .line 76
    const/16 v18, 0x1

    .line 77
    .line 78
    :goto_1
    rem-int/lit8 v7, v3, 0x5

    .line 79
    .line 80
    if-nez v7, :cond_4

    .line 81
    .line 82
    if-lez v3, :cond_4

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    :goto_2
    const/4 v7, 0x6

    .line 86
    if-ge v3, v7, :cond_3

    .line 87
    .line 88
    rsub-int/lit8 v7, v3, 0x5

    .line 89
    .line 90
    const-wide/16 v21, 0x100

    .line 91
    .line 92
    rem-long v4, v16, v21

    .line 93
    .line 94
    long-to-int v5, v4

    .line 95
    int-to-char v4, v5

    .line 96
    aput-char v4, v0, v7

    .line 97
    .line 98
    const/16 v4, 0x8

    .line 99
    .line 100
    shr-long v16, v16, v4

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    const/16 v4, 0x39b

    .line 105
    .line 106
    const/16 v5, 0x3a0

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    :cond_4
    const/16 v4, 0x39b

    .line 114
    .line 115
    const/16 v5, 0x3a0

    .line 116
    .line 117
    const-wide/16 v7, 0x384

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_5
    div-int/lit8 v0, v3, 0x5

    .line 121
    .line 122
    mul-int/lit8 v0, v0, 0x5

    .line 123
    .line 124
    :goto_3
    if-ge v0, v3, :cond_f

    .line 125
    .line 126
    aget v2, v10, v0

    .line 127
    .line 128
    int-to-char v2, v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    if-ne v0, v11, :cond_e

    .line 136
    .line 137
    move/from16 v0, p2

    .line 138
    .line 139
    const/4 v3, 0x0

    .line 140
    const/4 v4, 0x0

    .line 141
    const-wide/16 v16, 0x0

    .line 142
    .line 143
    :goto_4
    aget v5, p1, v15

    .line 144
    .line 145
    if-ge v0, v5, :cond_d

    .line 146
    .line 147
    if-nez v3, :cond_d

    .line 148
    .line 149
    add-int/lit8 v5, v0, 0x1

    .line 150
    .line 151
    aget v0, p1, v0

    .line 152
    .line 153
    if-ge v0, v12, :cond_7

    .line 154
    .line 155
    add-int/lit8 v4, v4, 0x1

    .line 156
    .line 157
    const-wide/16 v19, 0x384

    .line 158
    .line 159
    mul-long v16, v16, v19

    .line 160
    .line 161
    int-to-long v13, v0

    .line 162
    add-long v16, v16, v13

    .line 163
    .line 164
    move v0, v5

    .line 165
    const/16 v7, 0x3a0

    .line 166
    .line 167
    const/16 v8, 0x39b

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_7
    const-wide/16 v19, 0x384

    .line 171
    .line 172
    if-eq v0, v12, :cond_9

    .line 173
    .line 174
    if-eq v0, v9, :cond_9

    .line 175
    .line 176
    if-eq v0, v6, :cond_9

    .line 177
    .line 178
    if-eq v0, v11, :cond_9

    .line 179
    .line 180
    const/16 v7, 0x3a0

    .line 181
    .line 182
    const/16 v8, 0x39b

    .line 183
    .line 184
    if-eq v0, v7, :cond_a

    .line 185
    .line 186
    if-eq v0, v8, :cond_a

    .line 187
    .line 188
    if-ne v0, v2, :cond_8

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_8
    move v0, v5

    .line 192
    goto :goto_6

    .line 193
    :cond_9
    const/16 v7, 0x3a0

    .line 194
    .line 195
    const/16 v8, 0x39b

    .line 196
    .line 197
    :cond_a
    :goto_5
    add-int/lit8 v5, v5, -0x1

    .line 198
    .line 199
    move v0, v5

    .line 200
    const/4 v3, 0x1

    .line 201
    :goto_6
    rem-int/lit8 v5, v4, 0x5

    .line 202
    .line 203
    if-nez v5, :cond_c

    .line 204
    .line 205
    if-lez v4, :cond_c

    .line 206
    .line 207
    const/4 v5, 0x6

    .line 208
    new-array v10, v5, [C

    .line 209
    .line 210
    const/4 v13, 0x0

    .line 211
    :goto_7
    if-ge v13, v5, :cond_b

    .line 212
    .line 213
    rsub-int/lit8 v14, v13, 0x5

    .line 214
    .line 215
    const-wide/16 v21, 0xff

    .line 216
    .line 217
    move/from16 p0, v3

    .line 218
    .line 219
    and-long v2, v16, v21

    .line 220
    .line 221
    long-to-int v3, v2

    .line 222
    int-to-char v2, v3

    .line 223
    aput-char v2, v10, v14

    .line 224
    .line 225
    const/16 v2, 0x8

    .line 226
    .line 227
    shr-long v16, v16, v2

    .line 228
    .line 229
    add-int/lit8 v13, v13, 0x1

    .line 230
    .line 231
    move/from16 v3, p0

    .line 232
    .line 233
    const/16 v2, 0x39a

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_b
    move/from16 p0, v3

    .line 237
    .line 238
    const/16 v2, 0x8

    .line 239
    .line 240
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    goto :goto_8

    .line 244
    :cond_c
    move/from16 p0, v3

    .line 245
    .line 246
    const/16 v2, 0x8

    .line 247
    .line 248
    const/4 v5, 0x6

    .line 249
    :goto_8
    move/from16 v3, p0

    .line 250
    .line 251
    const/16 v2, 0x39a

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_d
    move v14, v0

    .line 255
    goto :goto_9

    .line 256
    :cond_e
    move/from16 v14, p2

    .line 257
    .line 258
    :cond_f
    :goto_9
    return v14
.end method

.method static decode([I)Lcom/google/zxing/common/DecoderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aget v1, p0, v1

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    aget v3, p0, v3

    .line 14
    .line 15
    if-ge v2, v3, :cond_3

    .line 16
    .line 17
    const/16 v3, 0x391

    .line 18
    .line 19
    if-eq v1, v3, :cond_1

    .line 20
    .line 21
    const/16 v3, 0x39c

    .line 22
    .line 23
    if-eq v1, v3, :cond_0

    .line 24
    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_1

    .line 35
    :pswitch_0
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_1

    .line 40
    :pswitch_1
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_1

    .line 45
    :pswitch_2
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_1
    array-length v2, p0

    .line 60
    if-ge v1, v2, :cond_2

    .line 61
    .line 62
    add-int/lit8 v2, v1, 0x1

    .line 63
    .line 64
    aget v1, p0, v1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    throw p0

    .line 72
    :cond_3
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, v1, v0, v1, v1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x1

    .line 6
    if-ge v2, p1, :cond_0

    .line 7
    .line 8
    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 9
    .line 10
    sub-int v5, p1, v2

    .line 11
    .line 12
    sub-int/2addr v5, v3

    .line 13
    aget-object v3, v4, v5

    .line 14
    .line 15
    aget v4, p0, v2

    .line 16
    .line 17
    int-to-long v4, v4

    .line 18
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/16 v0, 0x31

    .line 42
    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 15

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move/from16 v4, p2

    .line 7
    .line 8
    move-object v3, v1

    .line 9
    const/4 v5, 0x0

    .line 10
    :goto_0
    if-ge v5, v4, :cond_17

    .line 11
    .line 12
    aget v6, p0, v5

    .line 13
    .line 14
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    aget v7, v7, v8

    .line 21
    .line 22
    const/16 v8, 0x1c

    .line 23
    .line 24
    const/16 v9, 0x1b

    .line 25
    .line 26
    const/16 v10, 0x391

    .line 27
    .line 28
    const/16 v11, 0x20

    .line 29
    .line 30
    const/16 v12, 0x1d

    .line 31
    .line 32
    const/16 v13, 0x1a

    .line 33
    .line 34
    packed-switch v7, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :pswitch_0
    if-ge v6, v12, :cond_0

    .line 40
    .line 41
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 42
    .line 43
    aget-char v11, v1, v6

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-ne v6, v12, :cond_2

    .line 47
    .line 48
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 49
    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :pswitch_1
    if-ge v6, v13, :cond_1

    .line 53
    .line 54
    add-int/lit8 v6, v6, 0x41

    .line 55
    .line 56
    int-to-char v11, v6

    .line 57
    :goto_1
    move-object v1, v3

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_1
    if-ne v6, v13, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move-object v1, v3

    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :pswitch_2
    if-ge v6, v12, :cond_3

    .line 67
    .line 68
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 69
    .line 70
    aget-char v11, v7, v6

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_3
    if-ne v6, v12, :cond_4

    .line 75
    .line 76
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_4
    if-ne v6, v10, :cond_15

    .line 81
    .line 82
    aget v6, p1, v5

    .line 83
    .line 84
    int-to-char v6, v6

    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :pswitch_3
    const/16 v7, 0x19

    .line 91
    .line 92
    if-ge v6, v7, :cond_5

    .line 93
    .line 94
    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 95
    .line 96
    aget-char v11, v7, v6

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_5
    if-ne v6, v7, :cond_6

    .line 101
    .line 102
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_6
    if-ne v6, v13, :cond_7

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_7
    if-ne v6, v9, :cond_8

    .line 111
    .line 112
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_8
    if-ne v6, v8, :cond_9

    .line 117
    .line 118
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_9
    if-ne v6, v12, :cond_a

    .line 123
    .line 124
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_a
    if-ne v6, v10, :cond_15

    .line 128
    .line 129
    aget v6, p1, v5

    .line 130
    .line 131
    int-to-char v6, v6

    .line 132
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :pswitch_4
    if-ge v6, v13, :cond_b

    .line 137
    .line 138
    add-int/lit8 v6, v6, 0x61

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_b
    if-ne v6, v13, :cond_c

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_c
    if-ne v6, v9, :cond_d

    .line 145
    .line 146
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 147
    .line 148
    :goto_2
    const/4 v11, 0x0

    .line 149
    move-object v14, v3

    .line 150
    move-object v3, v1

    .line 151
    move-object v1, v14

    .line 152
    goto :goto_5

    .line 153
    :cond_d
    if-ne v6, v8, :cond_e

    .line 154
    .line 155
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_e
    if-ne v6, v12, :cond_f

    .line 159
    .line 160
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_f
    if-ne v6, v10, :cond_15

    .line 164
    .line 165
    aget v6, p1, v5

    .line 166
    .line 167
    int-to-char v6, v6

    .line 168
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :pswitch_5
    if-ge v6, v13, :cond_10

    .line 173
    .line 174
    add-int/lit8 v6, v6, 0x41

    .line 175
    .line 176
    :goto_3
    int-to-char v11, v6

    .line 177
    goto :goto_5

    .line 178
    :cond_10
    if-ne v6, v13, :cond_11

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_11
    if-ne v6, v9, :cond_12

    .line 182
    .line 183
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_12
    if-ne v6, v8, :cond_13

    .line 187
    .line 188
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_13
    if-ne v6, v12, :cond_14

    .line 192
    .line 193
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_14
    if-ne v6, v10, :cond_15

    .line 197
    .line 198
    aget v6, p1, v5

    .line 199
    .line 200
    int-to-char v6, v6

    .line 201
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    :cond_15
    :goto_4
    const/4 v11, 0x0

    .line 205
    :goto_5
    if-eqz v11, :cond_16

    .line 206
    .line 207
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_17
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    aget v4, p0, v1

    .line 9
    .line 10
    if-ge p1, v4, :cond_6

    .line 11
    .line 12
    if-nez v2, :cond_6

    .line 13
    .line 14
    add-int/lit8 v5, p1, 0x1

    .line 15
    .line 16
    aget p1, p0, p1

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    if-ne v5, v4, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    :cond_0
    const/16 v4, 0x384

    .line 23
    .line 24
    if-ge p1, v4, :cond_1

    .line 25
    .line 26
    aput p1, v0, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-eq p1, v4, :cond_2

    .line 32
    .line 33
    const/16 v4, 0x385

    .line 34
    .line 35
    if-eq p1, v4, :cond_2

    .line 36
    .line 37
    const/16 v4, 0x39c

    .line 38
    .line 39
    if-eq p1, v4, :cond_2

    .line 40
    .line 41
    const/16 v4, 0x3a0

    .line 42
    .line 43
    if-eq p1, v4, :cond_2

    .line 44
    .line 45
    const/16 v4, 0x39b

    .line 46
    .line 47
    if-eq p1, v4, :cond_2

    .line 48
    .line 49
    const/16 v4, 0x39a

    .line 50
    .line 51
    if-ne p1, v4, :cond_3

    .line 52
    .line 53
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    :cond_3
    :goto_1
    rem-int/lit8 v4, v3, 0xf

    .line 57
    .line 58
    if-eqz v4, :cond_4

    .line 59
    .line 60
    const/16 v4, 0x386

    .line 61
    .line 62
    if-eq p1, v4, :cond_4

    .line 63
    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    :cond_4
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    :cond_5
    move p1, v5

    .line 75
    goto :goto_0

    .line 76
    :cond_6
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    shl-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    new-array v2, v2, [I

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    shl-int/2addr v1, v3

    .line 10
    new-array v1, v1, [I

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    aget v6, p0, v0

    .line 15
    .line 16
    if-ge p1, v6, :cond_3

    .line 17
    .line 18
    if-nez v4, :cond_3

    .line 19
    .line 20
    add-int/lit8 v6, p1, 0x1

    .line 21
    .line 22
    aget p1, p0, p1

    .line 23
    .line 24
    const/16 v7, 0x384

    .line 25
    .line 26
    if-ge p1, v7, :cond_0

    .line 27
    .line 28
    div-int/lit8 v7, p1, 0x1e

    .line 29
    .line 30
    aput v7, v2, v5

    .line 31
    .line 32
    add-int/lit8 v7, v5, 0x1

    .line 33
    .line 34
    rem-int/lit8 p1, p1, 0x1e

    .line 35
    .line 36
    aput p1, v2, v7

    .line 37
    .line 38
    add-int/lit8 v5, v5, 0x2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/16 v7, 0x391

    .line 42
    .line 43
    if-eq p1, v7, :cond_2

    .line 44
    .line 45
    const/16 v7, 0x39c

    .line 46
    .line 47
    if-eq p1, v7, :cond_1

    .line 48
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    :goto_1
    move p1, v6

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :pswitch_0
    add-int/lit8 v6, v6, -0x1

    .line 55
    .line 56
    move p1, v6

    .line 57
    const/4 v4, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    aput v7, v2, v5

    .line 60
    .line 61
    add-int/lit8 p1, v6, 0x1

    .line 62
    .line 63
    aget v6, p0, v6

    .line 64
    .line 65
    aput v6, v1, v5

    .line 66
    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-static {v2, v1, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 71
    .line 72
    .line 73
    return p1

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
