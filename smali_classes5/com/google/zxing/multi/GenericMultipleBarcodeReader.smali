.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 5
    .line 6
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/google/zxing/Result;",
            ">;II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v7, p4

    .line 4
    .line 5
    move/from16 v8, p5

    .line 6
    .line 7
    move-object/from16 v9, p0

    .line 8
    .line 9
    :try_start_0
    iget-object v1, v9, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 10
    .line 11
    move-object/from16 v10, p2

    .line 12
    .line 13
    invoke-interface {v1, v0, v10}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v11, 0x0

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/google/zxing/Result;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-eqz v2, :cond_2

    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    invoke-static {v1, v7, v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object/from16 v12, p3

    .line 59
    .line 60
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_c

    .line 68
    .line 69
    array-length v2, v1

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v13

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    int-to-float v2, v13

    .line 83
    int-to-float v3, v14

    .line 84
    array-length v4, v1

    .line 85
    const/4 v5, 0x0

    .line 86
    move v15, v3

    .line 87
    const/4 v3, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    :goto_1
    if-ge v3, v4, :cond_8

    .line 90
    .line 91
    aget-object v16, v1, v3

    .line 92
    .line 93
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 94
    .line 95
    .line 96
    move-result v17

    .line 97
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 98
    .line 99
    .line 100
    move-result v16

    .line 101
    cmpg-float v18, v17, v2

    .line 102
    .line 103
    if-gez v18, :cond_4

    .line 104
    .line 105
    move/from16 v2, v17

    .line 106
    .line 107
    :cond_4
    cmpg-float v18, v16, v15

    .line 108
    .line 109
    if-gez v18, :cond_5

    .line 110
    .line 111
    move/from16 v15, v16

    .line 112
    .line 113
    :cond_5
    cmpl-float v18, v17, v6

    .line 114
    .line 115
    if-lez v18, :cond_6

    .line 116
    .line 117
    move/from16 v6, v17

    .line 118
    .line 119
    :cond_6
    cmpl-float v17, v16, v5

    .line 120
    .line 121
    if-lez v17, :cond_7

    .line 122
    .line 123
    move/from16 v5, v16

    .line 124
    .line 125
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_8
    const/high16 v16, 0x42c80000    # 100.0f

    .line 129
    .line 130
    cmpl-float v1, v2, v16

    .line 131
    .line 132
    if-lez v1, :cond_9

    .line 133
    .line 134
    float-to-int v1, v2

    .line 135
    invoke-virtual {v0, v11, v11, v1, v14}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object/from16 v1, p0

    .line 140
    .line 141
    move-object/from16 v3, p2

    .line 142
    .line 143
    move-object/from16 v4, p3

    .line 144
    .line 145
    move/from16 v19, v5

    .line 146
    .line 147
    move/from16 v5, p4

    .line 148
    .line 149
    move/from16 v20, v6

    .line 150
    .line 151
    move/from16 v6, p5

    .line 152
    .line 153
    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_9
    move/from16 v19, v5

    .line 158
    .line 159
    move/from16 v20, v6

    .line 160
    .line 161
    :goto_2
    cmpl-float v1, v15, v16

    .line 162
    .line 163
    if-lez v1, :cond_a

    .line 164
    .line 165
    float-to-int v1, v15

    .line 166
    invoke-virtual {v0, v11, v11, v13, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move-object/from16 v1, p0

    .line 171
    .line 172
    move-object/from16 v3, p2

    .line 173
    .line 174
    move-object/from16 v4, p3

    .line 175
    .line 176
    move/from16 v5, p4

    .line 177
    .line 178
    move/from16 v6, p5

    .line 179
    .line 180
    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 181
    .line 182
    .line 183
    :cond_a
    add-int/lit8 v1, v13, -0x64

    .line 184
    .line 185
    int-to-float v1, v1

    .line 186
    move/from16 v5, v20

    .line 187
    .line 188
    cmpg-float v1, v5, v1

    .line 189
    .line 190
    if-gez v1, :cond_b

    .line 191
    .line 192
    float-to-int v1, v5

    .line 193
    sub-int v2, v13, v1

    .line 194
    .line 195
    invoke-virtual {v0, v1, v11, v2, v14}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    add-int v5, v7, v1

    .line 200
    .line 201
    move-object/from16 v1, p0

    .line 202
    .line 203
    move-object/from16 v3, p2

    .line 204
    .line 205
    move-object/from16 v4, p3

    .line 206
    .line 207
    move/from16 v6, p5

    .line 208
    .line 209
    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 210
    .line 211
    .line 212
    :cond_b
    add-int/lit8 v1, v14, -0x64

    .line 213
    .line 214
    int-to-float v1, v1

    .line 215
    move/from16 v5, v19

    .line 216
    .line 217
    cmpg-float v1, v5, v1

    .line 218
    .line 219
    if-gez v1, :cond_c

    .line 220
    .line 221
    float-to-int v1, v5

    .line 222
    sub-int/2addr v14, v1

    .line 223
    invoke-virtual {v0, v11, v1, v13, v14}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    add-int v5, v8, v1

    .line 228
    .line 229
    move-object/from16 v0, p0

    .line 230
    .line 231
    move-object v1, v2

    .line 232
    move-object/from16 v2, p2

    .line 233
    .line 234
    move-object/from16 v3, p3

    .line 235
    .line 236
    move/from16 v4, p4

    .line 237
    .line 238
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 239
    .line 240
    .line 241
    :catch_0
    :cond_c
    :goto_3
    return-void
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    array-length v1, v0

    .line 9
    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, v0

    .line 13
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    int-to-float v6, p1

    .line 24
    add-float/2addr v5, v6

    .line 25
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v6, p2

    .line 30
    add-float/2addr v3, v6

    .line 31
    invoke-direct {v4, v5, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 32
    .line 33
    .line 34
    aput-object v4, v1, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance p1, Lcom/google/zxing/Result;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {p1, p2, v0, v1, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/zxing/Result;

    invoke-interface {v6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/Result;

    return-object p1

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
