.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 5
    .line 6
    return-void
.end method

.method private static correctParameterData([ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x7

    .line 5
    const/4 v1, 0x2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 p1, 0xa

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    :goto_0
    sub-int v2, p1, v1

    .line 11
    .line 12
    new-array v3, p1, [I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    :goto_1
    const/4 v6, 0x1

    .line 17
    if-ge v5, p1, :cond_3

    .line 18
    .line 19
    const/4 v7, 0x1

    .line 20
    :goto_2
    if-gt v6, v0, :cond_2

    .line 21
    .line 22
    mul-int v8, v0, v5

    .line 23
    .line 24
    add-int/2addr v8, v0

    .line 25
    sub-int/2addr v8, v6

    .line 26
    aget-boolean v8, p0, v8

    .line 27
    .line 28
    if-eqz v8, :cond_1

    .line 29
    .line 30
    aget v8, v3, v5

    .line 31
    .line 32
    add-int/2addr v8, v7

    .line 33
    aput v8, v3, v5

    .line 34
    .line 35
    :cond_1
    shl-int/lit8 v7, v7, 0x1

    .line 36
    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    :try_start_0
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 44
    .line 45
    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 46
    .line 47
    invoke-direct {p1, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v3, v2}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    :goto_3
    if-ge p1, v1, :cond_6

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    const/4 v5, 0x1

    .line 58
    :goto_4
    if-gt v2, v0, :cond_5

    .line 59
    .line 60
    mul-int/lit8 v7, p1, 0x4

    .line 61
    .line 62
    add-int/2addr v7, v0

    .line 63
    sub-int/2addr v7, v2

    .line 64
    aget v8, v3, p1

    .line 65
    .line 66
    and-int/2addr v8, v5

    .line 67
    if-ne v8, v5, :cond_4

    .line 68
    .line 69
    const/4 v8, 0x1

    .line 70
    goto :goto_5

    .line 71
    :cond_4
    const/4 v8, 0x0

    .line 72
    :goto_5
    aput-boolean v8, p0, v7

    .line 73
    .line 74
    shl-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_6
    return-void

    .line 83
    :catch_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    throw p0
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 2
    .line 3
    iget v1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 4
    .line 5
    sub-int v2, v0, v1

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    mul-int v2, v2, v0

    .line 9
    .line 10
    iget p0, p0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 11
    .line 12
    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 13
    .line 14
    sub-int v0, p0, p1

    .line 15
    .line 16
    sub-int/2addr p0, p1

    .line 17
    mul-int v0, v0, p0

    .line 18
    .line 19
    add-int/2addr v2, v0

    .line 20
    int-to-double p0, v2

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    double-to-float p0, p0

    .line 26
    return p0
.end method

.method private extractParameters([Lcom/google/zxing/aztec/detector/Detector$Point;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    aget-object v3, p1, v2

    .line 6
    .line 7
    iget v4, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    mul-int/lit8 v4, v4, 0x2

    .line 11
    .line 12
    add-int/2addr v4, v2

    .line 13
    invoke-direct {p0, v1, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    aget-object v4, p1, v5

    .line 20
    .line 21
    iget v6, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 22
    .line 23
    mul-int/lit8 v6, v6, 0x2

    .line 24
    .line 25
    add-int/2addr v6, v2

    .line 26
    invoke-direct {p0, v3, v4, v6}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aget-object v4, p1, v5

    .line 31
    .line 32
    const/4 v6, 0x3

    .line 33
    aget-object v7, p1, v6

    .line 34
    .line 35
    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 36
    .line 37
    mul-int/lit8 v8, v8, 0x2

    .line 38
    .line 39
    add-int/2addr v8, v2

    .line 40
    invoke-direct {p0, v4, v7, v8}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    aget-object v7, p1, v6

    .line 45
    .line 46
    aget-object p1, p1, v0

    .line 47
    .line 48
    iget v8, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 49
    .line 50
    mul-int/lit8 v8, v8, 0x2

    .line 51
    .line 52
    add-int/2addr v8, v2

    .line 53
    invoke-direct {p0, v7, p1, v8}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    aget-boolean v7, v1, v0

    .line 58
    .line 59
    if-eqz v7, :cond_0

    .line 60
    .line 61
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 62
    .line 63
    mul-int/lit8 v7, v7, 0x2

    .line 64
    .line 65
    aget-boolean v7, v1, v7

    .line 66
    .line 67
    if-eqz v7, :cond_0

    .line 68
    .line 69
    iput v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    aget-boolean v7, v3, v0

    .line 73
    .line 74
    if-eqz v7, :cond_1

    .line 75
    .line 76
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 77
    .line 78
    mul-int/lit8 v7, v7, 0x2

    .line 79
    .line 80
    aget-boolean v7, v3, v7

    .line 81
    .line 82
    if-eqz v7, :cond_1

    .line 83
    .line 84
    iput v2, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    aget-boolean v7, v4, v0

    .line 88
    .line 89
    if-eqz v7, :cond_2

    .line 90
    .line 91
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 92
    .line 93
    mul-int/lit8 v7, v7, 0x2

    .line 94
    .line 95
    aget-boolean v7, v4, v7

    .line 96
    .line 97
    if-eqz v7, :cond_2

    .line 98
    .line 99
    iput v5, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    aget-boolean v7, p1, v0

    .line 103
    .line 104
    if-eqz v7, :cond_9

    .line 105
    .line 106
    iget v7, p0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 107
    .line 108
    mul-int/lit8 v7, v7, 0x2

    .line 109
    .line 110
    aget-boolean v5, p1, v7

    .line 111
    .line 112
    if-eqz v5, :cond_9

    .line 113
    .line 114
    iput v6, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 115
    .line 116
    :goto_0
    iget-boolean v5, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 117
    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    const/16 v2, 0x1c

    .line 121
    .line 122
    new-array v5, v2, [Z

    .line 123
    .line 124
    const/4 v6, 0x0

    .line 125
    :goto_1
    const/4 v7, 0x7

    .line 126
    if-ge v6, v7, :cond_3

    .line 127
    .line 128
    add-int/lit8 v7, v6, 0x2

    .line 129
    .line 130
    aget-boolean v8, v1, v7

    .line 131
    .line 132
    aput-boolean v8, v5, v6

    .line 133
    .line 134
    add-int/lit8 v8, v6, 0x7

    .line 135
    .line 136
    aget-boolean v9, v3, v7

    .line 137
    .line 138
    aput-boolean v9, v5, v8

    .line 139
    .line 140
    add-int/lit8 v8, v6, 0xe

    .line 141
    .line 142
    aget-boolean v9, v4, v7

    .line 143
    .line 144
    aput-boolean v9, v5, v8

    .line 145
    .line 146
    add-int/lit8 v8, v6, 0x15

    .line 147
    .line 148
    aget-boolean v7, p1, v7

    .line 149
    .line 150
    aput-boolean v7, v5, v8

    .line 151
    .line 152
    add-int/lit8 v6, v6, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    new-array p1, v2, [Z

    .line 156
    .line 157
    :goto_2
    if-ge v0, v2, :cond_8

    .line 158
    .line 159
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 160
    .line 161
    mul-int/lit8 v1, v1, 0x7

    .line 162
    .line 163
    add-int/2addr v1, v0

    .line 164
    rem-int/2addr v1, v2

    .line 165
    aget-boolean v1, v5, v1

    .line 166
    .line 167
    aput-boolean v1, p1, v0

    .line 168
    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    const/16 v5, 0x28

    .line 173
    .line 174
    new-array v6, v5, [Z

    .line 175
    .line 176
    const/4 v7, 0x0

    .line 177
    :goto_3
    const/16 v8, 0xb

    .line 178
    .line 179
    if-ge v7, v8, :cond_7

    .line 180
    .line 181
    const/4 v8, 0x5

    .line 182
    if-ge v7, v8, :cond_5

    .line 183
    .line 184
    add-int/lit8 v9, v7, 0x2

    .line 185
    .line 186
    aget-boolean v10, v1, v9

    .line 187
    .line 188
    aput-boolean v10, v6, v7

    .line 189
    .line 190
    add-int/lit8 v10, v7, 0xa

    .line 191
    .line 192
    aget-boolean v11, v3, v9

    .line 193
    .line 194
    aput-boolean v11, v6, v10

    .line 195
    .line 196
    add-int/lit8 v10, v7, 0x14

    .line 197
    .line 198
    aget-boolean v11, v4, v9

    .line 199
    .line 200
    aput-boolean v11, v6, v10

    .line 201
    .line 202
    add-int/lit8 v10, v7, 0x1e

    .line 203
    .line 204
    aget-boolean v9, p1, v9

    .line 205
    .line 206
    aput-boolean v9, v6, v10

    .line 207
    .line 208
    :cond_5
    if-le v7, v8, :cond_6

    .line 209
    .line 210
    add-int/lit8 v8, v7, -0x1

    .line 211
    .line 212
    add-int/lit8 v9, v7, 0x2

    .line 213
    .line 214
    aget-boolean v10, v1, v9

    .line 215
    .line 216
    aput-boolean v10, v6, v8

    .line 217
    .line 218
    add-int/lit8 v8, v7, 0xa

    .line 219
    .line 220
    sub-int/2addr v8, v2

    .line 221
    aget-boolean v10, v3, v9

    .line 222
    .line 223
    aput-boolean v10, v6, v8

    .line 224
    .line 225
    add-int/lit8 v8, v7, 0x14

    .line 226
    .line 227
    sub-int/2addr v8, v2

    .line 228
    aget-boolean v10, v4, v9

    .line 229
    .line 230
    aput-boolean v10, v6, v8

    .line 231
    .line 232
    add-int/lit8 v8, v7, 0x1e

    .line 233
    .line 234
    sub-int/2addr v8, v2

    .line 235
    aget-boolean v9, p1, v9

    .line 236
    .line 237
    aput-boolean v9, v6, v8

    .line 238
    .line 239
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_7
    new-array p1, v5, [Z

    .line 243
    .line 244
    :goto_4
    if-ge v0, v5, :cond_8

    .line 245
    .line 246
    iget v1, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 247
    .line 248
    mul-int/lit8 v1, v1, 0xa

    .line 249
    .line 250
    add-int/2addr v1, v0

    .line 251
    rem-int/2addr v1, v5

    .line 252
    aget-boolean v1, v6, v1

    .line 253
    .line 254
    aput-boolean v1, p1, v0

    .line 255
    .line 256
    add-int/lit8 v0, v0, 0x1

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_8
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 260
    .line 261
    invoke-static {p1, v0}, Lcom/google/zxing/aztec/detector/Detector;->correctParameterData([ZZ)V

    .line 262
    .line 263
    .line 264
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/detector/Detector;->getParameters([Z)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    throw p1
.end method

.method private getBullEyeCornerPoints(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    move-object v3, v2

    .line 9
    move-object v4, v3

    .line 10
    move-object v5, v4

    .line 11
    const/4 v6, 0x1

    .line 12
    :goto_0
    iget v7, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 13
    .line 14
    const/16 v8, 0x9

    .line 15
    .line 16
    const/4 v9, 0x2

    .line 17
    if-ge v7, v8, :cond_1

    .line 18
    .line 19
    const/4 v7, -0x1

    .line 20
    invoke-direct {v0, v2, v6, v1, v7}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    invoke-direct {v0, v3, v6, v1, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    invoke-direct {v0, v4, v6, v7, v1}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 29
    .line 30
    .line 31
    move-result-object v11

    .line 32
    invoke-direct {v0, v5, v6, v7, v7}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    iget v12, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 37
    .line 38
    if-le v12, v9, :cond_0

    .line 39
    .line 40
    invoke-static {v7, v8}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    iget v13, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 45
    .line 46
    int-to-float v13, v13

    .line 47
    mul-float v12, v12, v13

    .line 48
    .line 49
    invoke-static {v5, v2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    iget v14, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 54
    .line 55
    add-int/2addr v14, v9

    .line 56
    int-to-float v14, v14

    .line 57
    mul-float v13, v13, v14

    .line 58
    .line 59
    div-float/2addr v12, v13

    .line 60
    float-to-double v12, v12

    .line 61
    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    .line 62
    .line 63
    cmpg-double v16, v12, v14

    .line 64
    .line 65
    if-ltz v16, :cond_1

    .line 66
    .line 67
    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    .line 68
    .line 69
    cmpl-double v16, v12, v14

    .line 70
    .line 71
    if-gtz v16, :cond_1

    .line 72
    .line 73
    invoke-direct {v0, v8, v10, v11, v7}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-nez v12, :cond_0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    xor-int/lit8 v6, v6, 0x1

    .line 81
    .line 82
    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 83
    .line 84
    add-int/2addr v2, v1

    .line 85
    iput v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 86
    .line 87
    move-object v5, v7

    .line 88
    move-object v2, v8

    .line 89
    move-object v3, v10

    .line 90
    move-object v4, v11

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    :goto_1
    iget v6, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 93
    .line 94
    const/4 v7, 0x5

    .line 95
    if-eq v6, v7, :cond_3

    .line 96
    .line 97
    const/4 v8, 0x7

    .line 98
    if-ne v6, v8, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    throw v1

    .line 106
    :cond_3
    :goto_2
    const/4 v8, 0x0

    .line 107
    if-ne v6, v7, :cond_4

    .line 108
    .line 109
    const/4 v7, 0x1

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    const/4 v7, 0x0

    .line 112
    :goto_3
    iput-boolean v7, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 113
    .line 114
    mul-int/lit8 v6, v6, 0x2

    .line 115
    .line 116
    const/4 v7, 0x3

    .line 117
    sub-int/2addr v6, v7

    .line 118
    int-to-float v6, v6

    .line 119
    const/high16 v10, 0x3fc00000    # 1.5f

    .line 120
    .line 121
    div-float/2addr v10, v6

    .line 122
    iget v6, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 123
    .line 124
    iget v11, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 125
    .line 126
    sub-int/2addr v6, v11

    .line 127
    iget v12, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 128
    .line 129
    iget v13, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 130
    .line 131
    sub-int/2addr v12, v13

    .line 132
    int-to-float v11, v11

    .line 133
    int-to-float v6, v6

    .line 134
    mul-float v6, v6, v10

    .line 135
    .line 136
    sub-float/2addr v11, v6

    .line 137
    invoke-static {v11}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    iget v4, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 142
    .line 143
    int-to-float v4, v4

    .line 144
    int-to-float v12, v12

    .line 145
    mul-float v12, v12, v10

    .line 146
    .line 147
    sub-float/2addr v4, v12

    .line 148
    invoke-static {v4}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    iget v13, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 153
    .line 154
    int-to-float v13, v13

    .line 155
    add-float/2addr v13, v6

    .line 156
    invoke-static {v13}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    iget v2, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 161
    .line 162
    int-to-float v2, v2

    .line 163
    add-float/2addr v2, v12

    .line 164
    invoke-static {v2}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    iget v12, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 169
    .line 170
    iget v13, v5, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 171
    .line 172
    sub-int/2addr v12, v13

    .line 173
    iget v14, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 174
    .line 175
    iget v15, v5, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 176
    .line 177
    sub-int/2addr v14, v15

    .line 178
    int-to-float v13, v13

    .line 179
    int-to-float v12, v12

    .line 180
    mul-float v12, v12, v10

    .line 181
    .line 182
    sub-float/2addr v13, v12

    .line 183
    invoke-static {v13}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    iget v5, v5, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 188
    .line 189
    int-to-float v5, v5

    .line 190
    int-to-float v14, v14

    .line 191
    mul-float v10, v10, v14

    .line 192
    .line 193
    sub-float/2addr v5, v10

    .line 194
    invoke-static {v5}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    iget v14, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 199
    .line 200
    int-to-float v14, v14

    .line 201
    add-float/2addr v14, v12

    .line 202
    invoke-static {v14}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 203
    .line 204
    .line 205
    move-result v12

    .line 206
    iget v3, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 207
    .line 208
    int-to-float v3, v3

    .line 209
    add-float/2addr v3, v10

    .line 210
    invoke-static {v3}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    invoke-direct {v0, v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    if-eqz v10, :cond_5

    .line 219
    .line 220
    invoke-direct {v0, v12, v3}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-eqz v10, :cond_5

    .line 225
    .line 226
    invoke-direct {v0, v11, v4}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    if-eqz v10, :cond_5

    .line 231
    .line 232
    invoke-direct {v0, v13, v5}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    if-eqz v10, :cond_5

    .line 237
    .line 238
    new-instance v10, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 239
    .line 240
    const/4 v14, 0x0

    .line 241
    invoke-direct {v10, v6, v2, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 242
    .line 243
    .line 244
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 245
    .line 246
    invoke-direct {v2, v12, v3, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 247
    .line 248
    .line 249
    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 250
    .line 251
    invoke-direct {v3, v11, v4, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 252
    .line 253
    .line 254
    new-instance v4, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 255
    .line 256
    invoke-direct {v4, v13, v5, v14}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 257
    .line 258
    .line 259
    const/4 v5, 0x4

    .line 260
    new-array v5, v5, [Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 261
    .line 262
    aput-object v10, v5, v8

    .line 263
    .line 264
    aput-object v2, v5, v1

    .line 265
    .line 266
    aput-object v3, v5, v9

    .line 267
    .line 268
    aput-object v4, v5, v7

    .line 269
    .line 270
    return-object v5

    .line 271
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    throw v1
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 10

    .line 1
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 6
    .line 7
    iget v2, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v1, v0

    .line 12
    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 13
    .line 14
    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 15
    .line 16
    sub-int/2addr p2, p1

    .line 17
    int-to-float p2, p2

    .line 18
    div-float/2addr p2, v0

    .line 19
    int-to-float v3, v2

    .line 20
    int-to-float v4, p1

    .line 21
    iget-object v5, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 22
    .line 23
    invoke-virtual {v5, v2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    :goto_0
    int-to-float v7, v5

    .line 31
    cmpg-float v7, v7, v0

    .line 32
    .line 33
    if-gez v7, :cond_1

    .line 34
    .line 35
    add-float/2addr v3, v1

    .line 36
    add-float/2addr v4, p2

    .line 37
    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-static {v4}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eq v7, p1, :cond_0

    .line 52
    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    int-to-float p2, v6

    .line 59
    div-float/2addr p2, v0

    .line 60
    float-to-double v0, p2

    .line 61
    const-wide v3, 0x3fb999999999999aL    # 0.1

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    cmpl-double p2, v0, v3

    .line 67
    .line 68
    if-lez p2, :cond_2

    .line 69
    .line 70
    const-wide v5, 0x3feccccccccccccdL    # 0.9

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    cmpg-double p2, v0, v5

    .line 76
    .line 77
    if-gez p2, :cond_2

    .line 78
    .line 79
    return v2

    .line 80
    :cond_2
    const/4 p2, -0x1

    .line 81
    const/4 v2, 0x1

    .line 82
    cmpg-double v5, v0, v3

    .line 83
    .line 84
    if-gtz v5, :cond_4

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    const/4 p2, 0x1

    .line 89
    :cond_3
    return p2

    .line 90
    :cond_4
    if-eqz p1, :cond_5

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    const/4 p2, 0x1

    .line 94
    :goto_1
    return p2
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 2

    .line 1
    iget v0, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 2
    .line 3
    add-int/2addr v0, p3

    .line 4
    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 5
    .line 6
    :goto_0
    add-int/2addr p1, p4

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v1, p2, :cond_0

    .line 20
    .line 21
    add-int/2addr v0, p3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sub-int/2addr v0, p3

    .line 24
    sub-int/2addr p1, p4

    .line 25
    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 32
    .line 33
    invoke-virtual {v1, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v1, p2, :cond_1

    .line 38
    .line 39
    add-int/2addr v0, p3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sub-int/2addr v0, p3

    .line 42
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    iget-object p3, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 49
    .line 50
    invoke-virtual {p3, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-ne p3, p2, :cond_2

    .line 55
    .line 56
    add-int/2addr p1, p4

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    sub-int/2addr p1, p4

    .line 59
    new-instance p2, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 60
    .line 61
    const/4 p3, 0x0

    .line 62
    invoke-direct {p2, v0, p1, p3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 63
    .line 64
    .line 65
    return-object p2
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 13

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, -0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    :try_start_0
    new-instance v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    .line 8
    .line 9
    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 10
    .line 11
    invoke-direct {v6, v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    aget-object v7, v6, v5

    .line 19
    .line 20
    aget-object v8, v6, v4

    .line 21
    .line 22
    aget-object v9, v6, v1

    .line 23
    .line 24
    aget-object v6, v6, v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    iget-object v6, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 28
    .line 29
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    div-int/2addr v6, v1

    .line 34
    iget-object v7, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 35
    .line 36
    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    div-int/2addr v7, v1

    .line 41
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 42
    .line 43
    add-int/lit8 v9, v6, 0x7

    .line 44
    .line 45
    add-int/lit8 v10, v7, -0x7

    .line 46
    .line 47
    invoke-direct {v8, v9, v10, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v8, v5, v4, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 59
    .line 60
    add-int/lit8 v7, v7, 0x7

    .line 61
    .line 62
    invoke-direct {v11, v9, v7, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v11, v5, v4, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 74
    .line 75
    add-int/lit8 v6, v6, -0x7

    .line 76
    .line 77
    invoke-direct {v11, v6, v7, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v11, v5, v2, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 89
    .line 90
    invoke-direct {v11, v6, v10, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, v11, v5, v2, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    move-object v12, v9

    .line 102
    move-object v9, v7

    .line 103
    move-object v7, v8

    .line 104
    move-object v8, v12

    .line 105
    :goto_0
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    add-float/2addr v10, v11

    .line 114
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    add-float/2addr v10, v11

    .line 119
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    add-float/2addr v10, v11

    .line 124
    const/high16 v11, 0x40800000    # 4.0f

    .line 125
    .line 126
    div-float/2addr v10, v11

    .line 127
    invoke-static {v10}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    add-float/2addr v7, v6

    .line 140
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    add-float/2addr v7, v6

    .line 145
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    add-float/2addr v7, v6

    .line 150
    div-float/2addr v7, v11

    .line 151
    invoke-static {v7}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    :try_start_1
    new-instance v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    .line 156
    .line 157
    iget-object v8, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 158
    .line 159
    const/16 v9, 0xf

    .line 160
    .line 161
    invoke-direct {v7, v8, v9, v10, v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    aget-object v8, v7, v5

    .line 169
    .line 170
    aget-object v9, v7, v4

    .line 171
    .line 172
    aget-object v1, v7, v1

    .line 173
    .line 174
    aget-object v0, v7, v0
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catch_1
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 178
    .line 179
    add-int/lit8 v1, v10, 0x7

    .line 180
    .line 181
    add-int/lit8 v7, v6, -0x7

    .line 182
    .line 183
    invoke-direct {v0, v1, v7, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {p0, v0, v5, v4, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 195
    .line 196
    add-int/lit8 v6, v6, 0x7

    .line 197
    .line 198
    invoke-direct {v0, v1, v6, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p0, v0, v5, v4, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 210
    .line 211
    add-int/lit8 v10, v10, -0x7

    .line 212
    .line 213
    invoke-direct {v0, v10, v6, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 214
    .line 215
    .line 216
    invoke-direct {p0, v0, v5, v2, v4}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 225
    .line 226
    invoke-direct {v0, v10, v7, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 227
    .line 228
    .line 229
    invoke-direct {p0, v0, v5, v2, v2}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_1
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    add-float/2addr v2, v4

    .line 246
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    add-float/2addr v2, v4

    .line 251
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    add-float/2addr v2, v4

    .line 256
    div-float/2addr v2, v11

    .line 257
    invoke-static {v2}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    add-float/2addr v4, v0

    .line 270
    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    add-float/2addr v4, v0

    .line 275
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    add-float/2addr v4, v0

    .line 280
    div-float/2addr v4, v11

    .line 281
    invoke-static {v4}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 286
    .line 287
    invoke-direct {v1, v2, v0, v3}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 288
    .line 289
    .line 290
    return-object v1
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 4
    .line 5
    mul-int/lit8 v2, v1, 0x2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x4

    .line 10
    if-le v1, v5, :cond_0

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v6, 0x0

    .line 15
    :goto_0
    add-int/2addr v2, v6

    .line 16
    sub-int/2addr v1, v5

    .line 17
    div-int/lit8 v1, v1, 0x8

    .line 18
    .line 19
    add-int/2addr v2, v1

    .line 20
    int-to-float v1, v2

    .line 21
    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    .line 22
    .line 23
    int-to-float v2, v2

    .line 24
    const/high16 v6, 0x40000000    # 2.0f

    .line 25
    .line 26
    mul-float v2, v2, v6

    .line 27
    .line 28
    div-float/2addr v1, v2

    .line 29
    aget-object v2, p1, v3

    .line 30
    .line 31
    iget v6, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 32
    .line 33
    const/4 v7, 0x2

    .line 34
    aget-object v8, p1, v7

    .line 35
    .line 36
    iget v9, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 37
    .line 38
    sub-int/2addr v6, v9

    .line 39
    const/4 v10, -0x1

    .line 40
    if-lez v6, :cond_1

    .line 41
    .line 42
    const/4 v11, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v11, -0x1

    .line 45
    :goto_1
    add-int/2addr v6, v11

    .line 46
    iget v2, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 47
    .line 48
    iget v8, v8, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 49
    .line 50
    sub-int/2addr v2, v8

    .line 51
    if-lez v2, :cond_2

    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v8, -0x1

    .line 56
    :goto_2
    add-int/2addr v2, v8

    .line 57
    int-to-float v8, v9

    .line 58
    int-to-float v6, v6

    .line 59
    mul-float v6, v6, v1

    .line 60
    .line 61
    sub-float/2addr v8, v6

    .line 62
    invoke-static {v8}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    aget-object v9, p1, v7

    .line 67
    .line 68
    iget v9, v9, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 69
    .line 70
    int-to-float v9, v9

    .line 71
    int-to-float v2, v2

    .line 72
    mul-float v2, v2, v1

    .line 73
    .line 74
    sub-float/2addr v9, v2

    .line 75
    invoke-static {v9}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    aget-object v11, p1, v3

    .line 80
    .line 81
    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 82
    .line 83
    int-to-float v11, v11

    .line 84
    add-float/2addr v11, v6

    .line 85
    invoke-static {v11}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    aget-object v11, p1, v3

    .line 90
    .line 91
    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 92
    .line 93
    int-to-float v11, v11

    .line 94
    add-float/2addr v11, v2

    .line 95
    invoke-static {v11}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    aget-object v11, p1, v4

    .line 100
    .line 101
    iget v12, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 102
    .line 103
    const/4 v13, 0x3

    .line 104
    aget-object v14, p1, v13

    .line 105
    .line 106
    iget v15, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 107
    .line 108
    sub-int/2addr v12, v15

    .line 109
    if-lez v12, :cond_3

    .line 110
    .line 111
    const/16 v16, 0x1

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    const/16 v16, -0x1

    .line 115
    .line 116
    :goto_3
    add-int v12, v12, v16

    .line 117
    .line 118
    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 119
    .line 120
    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 121
    .line 122
    sub-int/2addr v11, v14

    .line 123
    if-lez v11, :cond_4

    .line 124
    .line 125
    const/4 v10, 0x1

    .line 126
    :cond_4
    add-int/2addr v11, v10

    .line 127
    int-to-float v10, v15

    .line 128
    int-to-float v12, v12

    .line 129
    mul-float v12, v12, v1

    .line 130
    .line 131
    sub-float/2addr v10, v12

    .line 132
    invoke-static {v10}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    aget-object v14, p1, v13

    .line 137
    .line 138
    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 139
    .line 140
    int-to-float v14, v14

    .line 141
    int-to-float v11, v11

    .line 142
    mul-float v1, v1, v11

    .line 143
    .line 144
    sub-float/2addr v14, v1

    .line 145
    invoke-static {v14}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 146
    .line 147
    .line 148
    move-result v11

    .line 149
    aget-object v14, p1, v4

    .line 150
    .line 151
    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 152
    .line 153
    int-to-float v14, v14

    .line 154
    add-float/2addr v14, v12

    .line 155
    invoke-static {v14}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    aget-object v14, p1, v4

    .line 160
    .line 161
    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 162
    .line 163
    int-to-float v14, v14

    .line 164
    add-float/2addr v14, v1

    .line 165
    invoke-static {v14}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-direct {v0, v6, v2}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_5

    .line 174
    .line 175
    invoke-direct {v0, v12, v1}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    if-eqz v14, :cond_5

    .line 180
    .line 181
    invoke-direct {v0, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-eqz v14, :cond_5

    .line 186
    .line 187
    invoke-direct {v0, v10, v11}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    if-eqz v14, :cond_5

    .line 192
    .line 193
    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    .line 194
    .line 195
    new-instance v14, Lcom/google/zxing/ResultPoint;

    .line 196
    .line 197
    int-to-float v6, v6

    .line 198
    int-to-float v2, v2

    .line 199
    invoke-direct {v14, v6, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 200
    .line 201
    .line 202
    aput-object v14, v5, v3

    .line 203
    .line 204
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 205
    .line 206
    int-to-float v3, v12

    .line 207
    int-to-float v1, v1

    .line 208
    invoke-direct {v2, v3, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 209
    .line 210
    .line 211
    aput-object v2, v5, v4

    .line 212
    .line 213
    new-instance v1, Lcom/google/zxing/ResultPoint;

    .line 214
    .line 215
    int-to-float v2, v8

    .line 216
    int-to-float v3, v9

    .line 217
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 218
    .line 219
    .line 220
    aput-object v1, v5, v7

    .line 221
    .line 222
    new-instance v1, Lcom/google/zxing/ResultPoint;

    .line 223
    .line 224
    int-to-float v2, v10

    .line 225
    int-to-float v3, v11

    .line 226
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 227
    .line 228
    .line 229
    aput-object v1, v5, v13

    .line 230
    .line 231
    return-object v5

    .line 232
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    throw v1
.end method

.method private getParameters([Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x6

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x5

    .line 9
    const/16 v1, 0xb

    .line 10
    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    :goto_1
    if-ge v2, v0, :cond_2

    .line 13
    .line 14
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 15
    .line 16
    shl-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 19
    .line 20
    aget-boolean v4, p1, v2

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 27
    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v2, v0

    .line 32
    :goto_2
    add-int v3, v0, v1

    .line 33
    .line 34
    if-ge v2, v3, :cond_4

    .line 35
    .line 36
    iget v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 37
    .line 38
    shl-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 41
    .line 42
    aget-boolean v4, p1, v2

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    iput v3, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 49
    .line 50
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    iget p1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 54
    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 58
    .line 59
    iget p1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    iput p1, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 64
    .line 65
    return-void
.end method

.method private isValid(II)Z
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    if-lez p2, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-ge p2, p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 2
    .line 3
    iget v1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x3

    .line 6
    .line 7
    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x3

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, p1, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 16
    .line 17
    iget v1, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x3

    .line 20
    .line 21
    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 22
    .line 23
    add-int/lit8 p2, p2, -0x3

    .line 24
    .line 25
    invoke-direct {p1, v1, p2, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 26
    .line 27
    .line 28
    new-instance p2, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 29
    .line 30
    iget v1, p3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x3

    .line 33
    .line 34
    iget p3, p3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 35
    .line 36
    add-int/lit8 p3, p3, -0x3

    .line 37
    .line 38
    invoke-direct {p2, v1, p3, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 39
    .line 40
    .line 41
    new-instance p3, Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 42
    .line 43
    iget v1, p4, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x3

    .line 46
    .line 47
    iget p4, p4, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 48
    .line 49
    add-int/lit8 p4, p4, 0x3

    .line 50
    .line 51
    invoke-direct {p3, v1, p4, v2}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p3, v0}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    .line 55
    .line 56
    .line 57
    move-result p4

    .line 58
    const/4 v1, 0x0

    .line 59
    if-nez p4, :cond_0

    .line 60
    .line 61
    return v1

    .line 62
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eq v0, p4, :cond_1

    .line 67
    .line 68
    return v1

    .line 69
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eq p1, p4, :cond_2

    .line 74
    .line 75
    return v1

    .line 76
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ne p1, p4, :cond_3

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    :cond_3
    return v1
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 9
    .line 10
    mul-int/lit8 v1, v1, 0x4

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0xb

    .line 13
    .line 14
    :goto_0
    move v5, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 17
    .line 18
    if-gt v1, v2, :cond_1

    .line 19
    .line 20
    mul-int/lit8 v1, v1, 0x4

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0xf

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    mul-int/lit8 v3, v1, 0x4

    .line 26
    .line 27
    sub-int/2addr v1, v2

    .line 28
    div-int/lit8 v1, v1, 0x8

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    mul-int/lit8 v1, v1, 0x2

    .line 33
    .line 34
    add-int/2addr v3, v1

    .line 35
    add-int/lit8 v1, v3, 0xf

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/high16 v6, 0x3f000000    # 0.5f

    .line 43
    .line 44
    const/high16 v7, 0x3f000000    # 0.5f

    .line 45
    .line 46
    int-to-float v1, v5

    .line 47
    const/high16 v3, 0x3f000000    # 0.5f

    .line 48
    .line 49
    sub-float v11, v1, v3

    .line 50
    .line 51
    move v8, v11

    .line 52
    move v13, v11

    .line 53
    move v10, v11

    .line 54
    const/high16 v9, 0x3f000000    # 0.5f

    .line 55
    .line 56
    const/high16 v12, 0x3f000000    # 0.5f

    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 63
    .line 64
    .line 65
    move-result v15

    .line 66
    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 67
    .line 68
    .line 69
    move-result v16

    .line 70
    invoke-virtual/range {p5 .. p5}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 71
    .line 72
    .line 73
    move-result v17

    .line 74
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 75
    .line 76
    .line 77
    move-result v18

    .line 78
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 79
    .line 80
    .line 81
    move-result v19

    .line 82
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v20

    .line 86
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 87
    .line 88
    .line 89
    move-result v21

    .line 90
    move-object/from16 v3, p1

    .line 91
    .line 92
    move v4, v5

    .line 93
    invoke-virtual/range {v2 .. v21}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    return-object v1
.end method

.method private sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z
    .locals 7

    .line 1
    new-array v0, p3, [Z

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v2, p3, -0x1

    .line 8
    .line 9
    int-to-float v2, v2

    .line 10
    div-float v2, v1, v2

    .line 11
    .line 12
    iget v3, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 13
    .line 14
    iget v4, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 15
    .line 16
    sub-int/2addr v3, v4

    .line 17
    int-to-float v3, v3

    .line 18
    mul-float v3, v3, v2

    .line 19
    .line 20
    div-float/2addr v3, v1

    .line 21
    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 22
    .line 23
    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 24
    .line 25
    sub-int/2addr p2, p1

    .line 26
    int-to-float p2, p2

    .line 27
    mul-float v2, v2, p2

    .line 28
    .line 29
    div-float/2addr v2, v1

    .line 30
    int-to-float p2, v4

    .line 31
    int-to-float p1, p1

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-ge v1, p3, :cond_0

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {p1}, Lcom/google/zxing/aztec/detector/Detector;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    aput-boolean v4, v0, v1

    .line 50
    .line 51
    add-float/2addr p2, v3

    .line 52
    add-float/2addr p1, v2

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->getBullEyeCornerPoints(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/aztec/detector/Detector$Point;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/aztec/detector/Detector$Point;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    iget-object v5, p0, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 17
    .line 18
    iget v0, p0, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 19
    .line 20
    rem-int/lit8 v1, v0, 0x4

    .line 21
    .line 22
    aget-object v6, v3, v1

    .line 23
    .line 24
    add-int/lit8 v1, v0, 0x3

    .line 25
    .line 26
    rem-int/lit8 v1, v1, 0x4

    .line 27
    .line 28
    aget-object v7, v3, v1

    .line 29
    .line 30
    add-int/lit8 v1, v0, 0x2

    .line 31
    .line 32
    rem-int/lit8 v1, v1, 0x4

    .line 33
    .line 34
    aget-object v8, v3, v1

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    rem-int/lit8 v0, v0, 0x4

    .line 39
    .line 40
    aget-object v9, v3, v0

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v0, Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 50
    .line 51
    iget v5, p0, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 52
    .line 53
    iget v6, p0, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method
