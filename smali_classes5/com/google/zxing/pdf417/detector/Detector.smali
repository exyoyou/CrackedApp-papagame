.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final SKEW_THRESHOLD:I = 0x2

.field private static final START_PATTERN:[I

.field private static final START_PATTERN_REVERSE:[I

.field private static final STOP_PATTERN:[I

.field private static final STOP_PATTERN_REVERSE:[I


# instance fields
.field private final image:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    .line 16
    .line 17
    const/16 v0, 0x9

    .line 18
    .line 19
    new-array v1, v0, [I

    .line 20
    .line 21
    fill-array-data v1, :array_2

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 25
    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    fill-array-data v0, :array_3

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_1
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x8
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
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
    :array_2
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/BinaryBitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    .line 5
    .line 6
    return-void
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    div-float/2addr p0, p4

    .line 6
    invoke-static {p0}, Lcom/google/zxing/pdf417/detector/Detector;->round(F)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p2, p3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    div-float/2addr p1, p4

    .line 15
    invoke-static {p1}, Lcom/google/zxing/pdf417/detector/Detector;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    add-int/2addr p0, p1

    .line 20
    shr-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    add-int/lit8 p0, p0, 0x8

    .line 23
    .line 24
    div-int/lit8 p0, p0, 0x11

    .line 25
    .line 26
    mul-int/lit8 p0, p0, 0x11

    .line 27
    .line 28
    return p0
.end method

.method private static computeModuleWidth([Lcom/google/zxing/ResultPoint;)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    aget-object v1, p0, v1

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    aget-object v1, p0, v1

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    aget-object v2, p0, v2

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-float/2addr v0, v1

    .line 22
    const/high16 v1, 0x42080000    # 34.0f

    .line 23
    .line 24
    div-float/2addr v0, v1

    .line 25
    const/4 v1, 0x6

    .line 26
    aget-object v1, p0, v1

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    aget-object v2, p0, v2

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x7

    .line 36
    aget-object v2, p0, v2

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    aget-object p0, p0, v3

    .line 40
    .line 41
    invoke-static {v2, p0}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    add-float/2addr v1, p0

    .line 46
    const/high16 p0, 0x42100000    # 36.0f

    .line 47
    .line 48
    div-float/2addr v1, p0

    .line 49
    add-float/2addr v0, v1

    .line 50
    const/high16 p0, 0x40000000    # 2.0f

    .line 51
    .line 52
    div-float/2addr v0, p0

    .line 53
    return v0
.end method

.method private static correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    aget-object v1, p0, v0

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x6

    .line 9
    aget-object v3, p0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-float/2addr v1, v3

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    neg-float v1, v1

    .line 19
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    .line 20
    .line 21
    cmpl-float v4, v1, v3

    .line 22
    .line 23
    if-lez v4, :cond_1

    .line 24
    .line 25
    aget-object v1, p0, v0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v4, 0x0

    .line 32
    aget-object v5, p0, v4

    .line 33
    .line 34
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    sub-float/2addr v1, v5

    .line 39
    aget-object v5, p0, v2

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aget-object v6, p0, v4

    .line 46
    .line 47
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    sub-float/2addr v5, v6

    .line 52
    aget-object v2, p0, v2

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    aget-object v4, p0, v4

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-float/2addr v2, v4

    .line 65
    mul-float v1, v1, v2

    .line 66
    .line 67
    div-float/2addr v1, v5

    .line 68
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 69
    .line 70
    aget-object v4, p0, v0

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    aget-object v5, p0, v0

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    add-float/2addr v5, v1

    .line 83
    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 84
    .line 85
    .line 86
    aput-object v2, p0, v0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    neg-float v1, v1

    .line 90
    cmpl-float v1, v1, v3

    .line 91
    .line 92
    if-lez v1, :cond_2

    .line 93
    .line 94
    const/4 v1, 0x2

    .line 95
    aget-object v4, p0, v1

    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    aget-object v5, p0, v2

    .line 102
    .line 103
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    sub-float/2addr v4, v5

    .line 108
    aget-object v5, p0, v1

    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    aget-object v6, p0, v0

    .line 115
    .line 116
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    sub-float/2addr v5, v6

    .line 121
    aget-object v1, p0, v1

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    aget-object v0, p0, v0

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    sub-float/2addr v1, v0

    .line 134
    mul-float v4, v4, v1

    .line 135
    .line 136
    div-float/2addr v4, v5

    .line 137
    new-instance v0, Lcom/google/zxing/ResultPoint;

    .line 138
    .line 139
    aget-object v1, p0, v2

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    aget-object v5, p0, v2

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    sub-float/2addr v5, v4

    .line 152
    invoke-direct {v0, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 153
    .line 154
    .line 155
    aput-object v0, p0, v2

    .line 156
    .line 157
    :cond_2
    :goto_0
    const/4 v0, 0x7

    .line 158
    aget-object v1, p0, v0

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/4 v2, 0x5

    .line 165
    aget-object v4, p0, v2

    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    sub-float/2addr v1, v4

    .line 172
    if-eqz p1, :cond_3

    .line 173
    .line 174
    neg-float v1, v1

    .line 175
    :cond_3
    cmpl-float p1, v1, v3

    .line 176
    .line 177
    if-lez p1, :cond_4

    .line 178
    .line 179
    aget-object p1, p0, v2

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    const/4 v1, 0x1

    .line 186
    aget-object v3, p0, v1

    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    sub-float/2addr p1, v3

    .line 193
    aget-object v3, p0, v0

    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    aget-object v4, p0, v1

    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    sub-float/2addr v3, v4

    .line 206
    aget-object v0, p0, v0

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    aget-object v1, p0, v1

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    sub-float/2addr v0, v1

    .line 219
    mul-float p1, p1, v0

    .line 220
    .line 221
    div-float/2addr p1, v3

    .line 222
    new-instance v0, Lcom/google/zxing/ResultPoint;

    .line 223
    .line 224
    aget-object v1, p0, v2

    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    aget-object v3, p0, v2

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    add-float/2addr v3, p1

    .line 237
    invoke-direct {v0, v1, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 238
    .line 239
    .line 240
    aput-object v0, p0, v2

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_4
    neg-float p1, v1

    .line 244
    cmpl-float p1, p1, v3

    .line 245
    .line 246
    if-lez p1, :cond_5

    .line 247
    .line 248
    const/4 p1, 0x3

    .line 249
    aget-object v1, p0, p1

    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    aget-object v3, p0, v0

    .line 256
    .line 257
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    sub-float/2addr v1, v3

    .line 262
    aget-object v3, p0, p1

    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    aget-object v4, p0, v2

    .line 269
    .line 270
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    sub-float/2addr v3, v4

    .line 275
    aget-object p1, p0, p1

    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    aget-object v2, p0, v2

    .line 282
    .line 283
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    sub-float/2addr p1, v2

    .line 288
    mul-float v1, v1, p1

    .line 289
    .line 290
    div-float/2addr v1, v3

    .line 291
    new-instance p1, Lcom/google/zxing/ResultPoint;

    .line 292
    .line 293
    aget-object v2, p0, v0

    .line 294
    .line 295
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    aget-object v3, p0, v0

    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    sub-float/2addr v3, v1

    .line 306
    invoke-direct {p1, v2, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 307
    .line 308
    .line 309
    aput-object p1, p0, v0

    .line 310
    .line 311
    :cond_5
    :goto_1
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 9

    .line 1
    array-length v0, p6

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p6, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4
    .line 5
    .line 6
    array-length v0, p5

    .line 7
    move v2, p1

    .line 8
    move v4, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    add-int v5, p1, p3

    .line 11
    .line 12
    if-ge v2, v5, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v2, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    xor-int/2addr v5, p4

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    aget v5, p6, v3

    .line 23
    .line 24
    add-int/2addr v5, v6

    .line 25
    aput v5, p6, v3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    add-int/lit8 v5, v0, -0x1

    .line 29
    .line 30
    if-ne v3, v5, :cond_2

    .line 31
    .line 32
    const/16 v7, 0xcc

    .line 33
    .line 34
    invoke-static {p6, p5, v7}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/16 v8, 0x6b

    .line 39
    .line 40
    if-ge v7, v8, :cond_1

    .line 41
    .line 42
    filled-new-array {v4, v2}, [I

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    aget v7, p6, v1

    .line 48
    .line 49
    aget v8, p6, v6

    .line 50
    .line 51
    add-int/2addr v7, v8

    .line 52
    add-int/2addr v4, v7

    .line 53
    add-int/lit8 v7, v0, -0x2

    .line 54
    .line 55
    const/4 v8, 0x2

    .line 56
    invoke-static {p6, v8, p6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    aput v1, p6, v7

    .line 60
    .line 61
    aput v1, p6, v5

    .line 62
    .line 63
    add-int/lit8 v3, v3, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    :goto_1
    aput v6, p6, v3

    .line 69
    .line 70
    xor-int/lit8 p4, p4, 0x1

    .line 71
    .line 72
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    new-array v9, v1, [Lcom/google/zxing/ResultPoint;

    .line 12
    .line 13
    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 14
    .line 15
    array-length v1, v1

    .line 16
    new-array v10, v1, [I

    .line 17
    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x0

    .line 20
    :goto_0
    const/4 v13, 0x1

    .line 21
    if-ge v12, v0, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 26
    .line 27
    move-object v1, p0

    .line 28
    move v3, v12

    .line 29
    move v4, v8

    .line 30
    move-object v7, v10

    .line 31
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 38
    .line 39
    aget v3, v1, v11

    .line 40
    .line 41
    int-to-float v3, v3

    .line 42
    int-to-float v4, v12

    .line 43
    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    aput-object v2, v9, v11

    .line 47
    .line 48
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 49
    .line 50
    aget v1, v1, v13

    .line 51
    .line 52
    int-to-float v1, v1

    .line 53
    invoke-direct {v2, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    aput-object v2, v9, v1

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    :goto_1
    if-eqz v1, :cond_4

    .line 66
    .line 67
    add-int/lit8 v1, v0, -0x1

    .line 68
    .line 69
    move v12, v1

    .line 70
    :goto_2
    if-lez v12, :cond_3

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 75
    .line 76
    move-object v1, p0

    .line 77
    move v3, v12

    .line 78
    move v4, v8

    .line 79
    move-object v7, v10

    .line 80
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 87
    .line 88
    aget v3, v1, v11

    .line 89
    .line 90
    int-to-float v3, v3

    .line 91
    int-to-float v4, v12

    .line 92
    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 93
    .line 94
    .line 95
    aput-object v2, v9, v13

    .line 96
    .line 97
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 98
    .line 99
    aget v1, v1, v13

    .line 100
    .line 101
    int-to-float v1, v1

    .line 102
    invoke-direct {v2, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x5

    .line 106
    aput-object v2, v9, v1

    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    goto :goto_3

    .line 110
    :cond_2
    add-int/lit8 v12, v12, -0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const/4 v1, 0x0

    .line 114
    :cond_4
    :goto_3
    sget-object v2, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 115
    .line 116
    array-length v2, v2

    .line 117
    new-array v10, v2, [I

    .line 118
    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    const/4 v12, 0x0

    .line 122
    :goto_4
    if-ge v12, v0, :cond_6

    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    const/4 v5, 0x0

    .line 126
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 127
    .line 128
    move-object v1, p0

    .line 129
    move v3, v12

    .line 130
    move v4, v8

    .line 131
    move-object v7, v10

    .line 132
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 139
    .line 140
    aget v3, v1, v13

    .line 141
    .line 142
    int-to-float v3, v3

    .line 143
    int-to-float v4, v12

    .line 144
    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 145
    .line 146
    .line 147
    const/4 v3, 0x2

    .line 148
    aput-object v2, v9, v3

    .line 149
    .line 150
    new-instance v2, Lcom/google/zxing/ResultPoint;

    .line 151
    .line 152
    aget v1, v1, v11

    .line 153
    .line 154
    int-to-float v1, v1

    .line 155
    invoke-direct {v2, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 156
    .line 157
    .line 158
    const/4 v1, 0x6

    .line 159
    aput-object v2, v9, v1

    .line 160
    .line 161
    const/4 v1, 0x1

    .line 162
    goto :goto_5

    .line 163
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    const/4 v1, 0x0

    .line 167
    :cond_7
    :goto_5
    if-eqz v1, :cond_9

    .line 168
    .line 169
    sub-int/2addr v0, v13

    .line 170
    :goto_6
    if-lez v0, :cond_a

    .line 171
    .line 172
    const/4 v2, 0x0

    .line 173
    const/4 v5, 0x0

    .line 174
    sget-object v6, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 175
    .line 176
    move-object v1, p0

    .line 177
    move v3, v0

    .line 178
    move v4, v8

    .line 179
    move-object v7, v10

    .line 180
    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    new-instance p0, Lcom/google/zxing/ResultPoint;

    .line 187
    .line 188
    aget v2, v1, v13

    .line 189
    .line 190
    int-to-float v2, v2

    .line 191
    int-to-float v0, v0

    .line 192
    invoke-direct {p0, v2, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x3

    .line 196
    aput-object p0, v9, v2

    .line 197
    .line 198
    new-instance p0, Lcom/google/zxing/ResultPoint;

    .line 199
    .line 200
    aget v1, v1, v11

    .line 201
    .line 202
    int-to-float v1, v1

    .line 203
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 204
    .line 205
    .line 206
    const/4 v0, 0x7

    .line 207
    aput-object p0, v9, v0

    .line 208
    .line 209
    const/4 v11, 0x1

    .line 210
    goto :goto_7

    .line 211
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_9
    move v11, v1

    .line 215
    :cond_a
    :goto_7
    if-eqz v11, :cond_b

    .line 216
    .line 217
    goto :goto_8

    .line 218
    :cond_b
    const/4 v9, 0x0

    .line 219
    :goto_8
    return-object v9
.end method

.method private static findVertices180(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    shr-int/2addr v1, v2

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    new-array v10, v3, [Lcom/google/zxing/ResultPoint;

    .line 14
    .line 15
    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    .line 16
    .line 17
    array-length v3, v3

    .line 18
    new-array v11, v3, [I

    .line 19
    .line 20
    add-int/lit8 v12, v0, -0x1

    .line 21
    .line 22
    move v13, v12

    .line 23
    :goto_0
    const/4 v14, 0x0

    .line 24
    if-lez v13, :cond_1

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    .line 28
    .line 29
    move-object v3, p0

    .line 30
    move v4, v1

    .line 31
    move v5, v13

    .line 32
    move v6, v1

    .line 33
    move-object v9, v11

    .line 34
    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 41
    .line 42
    aget v5, v3, v2

    .line 43
    .line 44
    int-to-float v5, v5

    .line 45
    int-to-float v6, v13

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 47
    .line 48
    .line 49
    aput-object v4, v10, v14

    .line 50
    .line 51
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 52
    .line 53
    aget v3, v3, v14

    .line 54
    .line 55
    int-to-float v3, v3

    .line 56
    invoke-direct {v4, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x4

    .line 60
    aput-object v4, v10, v3

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v13, v13, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v3, 0x0

    .line 68
    :goto_1
    if-eqz v3, :cond_4

    .line 69
    .line 70
    const/4 v13, 0x0

    .line 71
    :goto_2
    if-ge v13, v0, :cond_3

    .line 72
    .line 73
    const/4 v7, 0x1

    .line 74
    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    .line 75
    .line 76
    move-object v3, p0

    .line 77
    move v4, v1

    .line 78
    move v5, v13

    .line 79
    move v6, v1

    .line 80
    move-object v9, v11

    .line 81
    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 88
    .line 89
    aget v5, v3, v2

    .line 90
    .line 91
    int-to-float v5, v5

    .line 92
    int-to-float v6, v13

    .line 93
    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 94
    .line 95
    .line 96
    aput-object v4, v10, v2

    .line 97
    .line 98
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 99
    .line 100
    aget v3, v3, v14

    .line 101
    .line 102
    int-to-float v3, v3

    .line 103
    invoke-direct {v4, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 104
    .line 105
    .line 106
    const/4 v3, 0x5

    .line 107
    aput-object v4, v10, v3

    .line 108
    .line 109
    const/4 v3, 0x1

    .line 110
    goto :goto_3

    .line 111
    :cond_2
    add-int/lit8 v13, v13, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const/4 v3, 0x0

    .line 115
    :cond_4
    :goto_3
    sget-object v4, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    .line 116
    .line 117
    array-length v4, v4

    .line 118
    new-array v11, v4, [I

    .line 119
    .line 120
    if-eqz v3, :cond_7

    .line 121
    .line 122
    :goto_4
    if-lez v12, :cond_6

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    const/4 v7, 0x0

    .line 126
    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    .line 127
    .line 128
    move-object v3, p0

    .line 129
    move v5, v12

    .line 130
    move v6, v1

    .line 131
    move-object v9, v11

    .line 132
    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 139
    .line 140
    aget v5, v3, v14

    .line 141
    .line 142
    int-to-float v5, v5

    .line 143
    int-to-float v6, v12

    .line 144
    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 145
    .line 146
    .line 147
    const/4 v5, 0x2

    .line 148
    aput-object v4, v10, v5

    .line 149
    .line 150
    new-instance v4, Lcom/google/zxing/ResultPoint;

    .line 151
    .line 152
    aget v3, v3, v2

    .line 153
    .line 154
    int-to-float v3, v3

    .line 155
    invoke-direct {v4, v3, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 156
    .line 157
    .line 158
    const/4 v3, 0x6

    .line 159
    aput-object v4, v10, v3

    .line 160
    .line 161
    const/4 v3, 0x1

    .line 162
    goto :goto_5

    .line 163
    :cond_5
    add-int/lit8 v12, v12, -0x1

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_6
    const/4 v3, 0x0

    .line 167
    :cond_7
    :goto_5
    if-eqz v3, :cond_a

    .line 168
    .line 169
    const/4 v12, 0x0

    .line 170
    :goto_6
    if-ge v12, v0, :cond_9

    .line 171
    .line 172
    const/4 v4, 0x0

    .line 173
    const/4 v7, 0x0

    .line 174
    sget-object v8, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    .line 175
    .line 176
    move-object v3, p0

    .line 177
    move v5, v12

    .line 178
    move v6, v1

    .line 179
    move-object v9, v11

    .line 180
    invoke-static/range {v3 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-eqz v3, :cond_8

    .line 185
    .line 186
    new-instance p0, Lcom/google/zxing/ResultPoint;

    .line 187
    .line 188
    aget v0, v3, v14

    .line 189
    .line 190
    int-to-float v0, v0

    .line 191
    int-to-float v1, v12

    .line 192
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 193
    .line 194
    .line 195
    const/4 v0, 0x3

    .line 196
    aput-object p0, v10, v0

    .line 197
    .line 198
    new-instance p0, Lcom/google/zxing/ResultPoint;

    .line 199
    .line 200
    aget v0, v3, v2

    .line 201
    .line 202
    int-to-float v0, v0

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 204
    .line 205
    .line 206
    const/4 v0, 0x7

    .line 207
    aput-object p0, v10, v0

    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_9
    const/4 v2, 0x0

    .line 214
    goto :goto_7

    .line 215
    :cond_a
    move v2, v3

    .line 216
    :goto_7
    if-eqz v2, :cond_b

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_b
    const/4 v10, 0x0

    .line 220
    :goto_8
    return-object v10
.end method

.method private static patternMatchVariance([I[II)I
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    aget v5, p0, v2

    .line 9
    .line 10
    add-int/2addr v3, v5

    .line 11
    aget v5, p1, v2

    .line 12
    .line 13
    add-int/2addr v4, v5

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    shl-int/lit8 v5, v3, 0x8

    .line 24
    .line 25
    div-int/2addr v5, v4

    .line 26
    mul-int p2, p2, v5

    .line 27
    .line 28
    shr-int/lit8 p2, p2, 0x8

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_1
    if-ge v1, v0, :cond_4

    .line 32
    .line 33
    aget v6, p0, v1

    .line 34
    .line 35
    shl-int/lit8 v6, v6, 0x8

    .line 36
    .line 37
    aget v7, p1, v1

    .line 38
    .line 39
    mul-int v7, v7, v5

    .line 40
    .line 41
    if-le v6, v7, :cond_2

    .line 42
    .line 43
    sub-int/2addr v6, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    sub-int v6, v7, v6

    .line 46
    .line 47
    :goto_2
    if-le v6, p2, :cond_3

    .line 48
    .line 49
    return v2

    .line 50
    :cond_3
    add-int/2addr v4, v6

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    div-int/2addr v4, v3

    .line 55
    return v4
.end method

.method private static round(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v3, p5

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move/from16 v6, p5

    .line 14
    .line 15
    int-to-float v6, v6

    .line 16
    move v8, v6

    .line 17
    move v9, v6

    .line 18
    move v11, v6

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v12

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v13

    .line 29
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 30
    .line 31
    .line 32
    move-result v14

    .line 33
    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 34
    .line 35
    .line 36
    move-result v15

    .line 37
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 38
    .line 39
    .line 40
    move-result v16

    .line 41
    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 42
    .line 43
    .line 44
    move-result v17

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 46
    .line 47
    .line 48
    move-result v18

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 50
    .line 51
    .line 52
    move-result v19

    .line 53
    invoke-virtual/range {v0 .. v19}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices180(Lcom/google/zxing/common/BitMatrix;)[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1, v7}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, v6}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 7
    invoke-static {p1}, Lcom/google/zxing/pdf417/detector/Detector;->computeModuleWidth([Lcom/google/zxing/ResultPoint;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_3

    const/4 v8, 0x4

    .line 8
    aget-object v2, p1, v8

    const/4 v9, 0x6

    aget-object v3, p1, v9

    const/4 v10, 0x5

    aget-object v4, p1, v10

    const/4 v11, 0x7

    aget-object v5, p1, v11

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/zxing/pdf417/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v5

    if-lt v5, v7, :cond_2

    .line 9
    aget-object v1, p1, v8

    aget-object v2, p1, v10

    aget-object v3, p1, v9

    aget-object v4, p1, v11

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    new-array v2, v8, [Lcom/google/zxing/ResultPoint;

    aget-object v3, p1, v10

    aput-object v3, v2, v6

    aget-object v3, p1, v8

    aput-object v3, v2, v7

    const/4 v3, 0x2

    aget-object v4, p1, v9

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aget-object p1, p1, v11

    aput-object p1, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v1

    .line 11
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 12
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 13
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
