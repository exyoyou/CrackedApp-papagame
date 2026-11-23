.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCDTN"

.field static final CHARACTER_ENCODINGS:[I

.field private static final STARTEND_ENCODING:[C

.field private static final minCharacterLength:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0123456789-$:/.+ABCDTN"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 8
    .line 9
    const/16 v0, 0x16

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    new-array v0, v0, [C

    .line 21
    .line 22
    fill-array-data v0, :array_1

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
        0x1a
        0x29
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
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
    .line 76
    .line 77
    :array_1
    .array-data 2
        0x45s
        0x2as
        0x41s
        0x42s
        0x43s
        0x44s
        0x54s
        0x4es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-char v3, p0, v2

    .line 9
    .line 10
    if-ne v3, p1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v0
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x7

    .line 11
    new-array v3, v3, [I

    .line 12
    .line 13
    move v4, v2

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    if-ge v2, v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    xor-int/2addr v7, v5

    .line 23
    const/4 v8, 0x1

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    aget v7, v3, v6

    .line 27
    .line 28
    add-int/2addr v7, v8

    .line 29
    aput v7, v3, v6

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const/4 v7, 0x6

    .line 33
    if-ne v6, v7, :cond_2

    .line 34
    .line 35
    const/4 v9, 0x2

    .line 36
    :try_start_0
    sget-object v10, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    .line 37
    .line 38
    invoke-static {v3}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern([I)C

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    invoke-static {v10, v11}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-eqz v10, :cond_1

    .line 47
    .line 48
    sub-int v10, v2, v4

    .line 49
    .line 50
    div-int/2addr v10, v9

    .line 51
    sub-int v10, v4, v10

    .line 52
    .line 53
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-eqz v10, :cond_1

    .line 62
    .line 63
    filled-new-array {v4, v2}, [I

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object p0

    .line 68
    :catch_0
    :cond_1
    aget v10, v3, v1

    .line 69
    .line 70
    aget v11, v3, v8

    .line 71
    .line 72
    add-int/2addr v10, v11

    .line 73
    add-int/2addr v4, v10

    .line 74
    const/4 v10, 0x5

    .line 75
    invoke-static {v3, v9, v3, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    .line 78
    aput v1, v3, v10

    .line 79
    .line 80
    aput v1, v3, v7

    .line 81
    .line 82
    add-int/lit8 v6, v6, -0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    :goto_1
    aput v8, v3, v6

    .line 88
    .line 89
    xor-int/lit8 v5, v5, 0x1

    .line 90
    .line 91
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    throw p0
.end method

.method private static toNarrowWidePattern([I)C
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const v2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_2

    .line 9
    .line 10
    aget v5, p0, v3

    .line 11
    .line 12
    if-ge v5, v2, :cond_0

    .line 13
    .line 14
    move v2, v5

    .line 15
    :cond_0
    if-le v5, v4, :cond_1

    .line 16
    .line 17
    move v4, v5

    .line 18
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v3, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_1
    if-ge v3, v0, :cond_4

    .line 25
    .line 26
    aget v7, p0, v3

    .line 27
    .line 28
    if-le v7, v4, :cond_3

    .line 29
    .line 30
    add-int/lit8 v7, v0, -0x1

    .line 31
    .line 32
    sub-int/2addr v7, v3

    .line 33
    const/4 v8, 0x1

    .line 34
    shl-int v7, v8, v7

    .line 35
    .line 36
    or-int/2addr v6, v7

    .line 37
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    const/4 v3, 0x2

    .line 43
    if-eq v5, v3, :cond_5

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-ne v5, v3, :cond_7

    .line 47
    .line 48
    :cond_5
    const/4 v3, 0x0

    .line 49
    :goto_2
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 50
    .line 51
    array-length v7, v5

    .line 52
    if-ge v3, v7, :cond_7

    .line 53
    .line 54
    aget v5, v5, v3

    .line 55
    .line 56
    if-ne v5, v6, :cond_6

    .line 57
    .line 58
    sget-object p0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 59
    .line 60
    aget-char p0, p0, v3

    .line 61
    .line 62
    return p0

    .line 63
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 67
    .line 68
    if-gt v4, v2, :cond_2

    .line 69
    .line 70
    const/16 p0, 0x21

    .line 71
    .line 72
    return p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/zxing/oned/CodaBarReader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    aput v1, p3, v0

    .line 8
    .line 9
    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x7

    .line 23
    new-array v6, v5, [I

    .line 24
    .line 25
    :goto_0
    const/4 v7, 0x0

    .line 26
    :goto_1
    if-ge v7, v5, :cond_0

    .line 27
    .line 28
    aput v1, v6, v7

    .line 29
    .line 30
    add-int/lit8 v7, v7, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {p2, v2, v6}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v6}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern([I)C

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const/16 v8, 0x21

    .line 41
    .line 42
    if-eq v7, v8, :cond_b

    .line 43
    .line 44
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move v8, v2

    .line 48
    const/4 v7, 0x0

    .line 49
    :goto_2
    if-ge v7, v5, :cond_1

    .line 50
    .line 51
    aget v9, v6, v7

    .line 52
    .line 53
    add-int/2addr v8, v9

    .line 54
    add-int/lit8 v7, v7, 0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {p2, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-lt v7, v3, :cond_a

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    :goto_3
    if-ge p2, v5, :cond_2

    .line 66
    .line 67
    aget v9, v6, p2

    .line 68
    .line 69
    add-int/2addr v8, v9

    .line 70
    add-int/lit8 p2, p2, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    sub-int p2, v7, v2

    .line 74
    .line 75
    sub-int/2addr p2, v8

    .line 76
    const/4 v5, 0x2

    .line 77
    if-eq v7, v3, :cond_4

    .line 78
    .line 79
    div-int/2addr p2, v5

    .line 80
    if-lt p2, v8, :cond_3

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    throw p1

    .line 88
    :cond_4
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-lt p2, v5, :cond_9

    .line 93
    .line 94
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    .line 99
    .line 100
    invoke-static {v3, p2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_8

    .line 105
    .line 106
    const/4 v3, 0x1

    .line 107
    :goto_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-ge v3, v6, :cond_6

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-ne v6, p2, :cond_5

    .line 118
    .line 119
    add-int/lit8 v6, v3, 0x1

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eq v6, v8, :cond_5

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    sub-int/2addr p2, v0

    .line 132
    invoke-virtual {v4, v6, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_6
    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    const/4 v3, 0x6

    .line 144
    if-le p2, v3, :cond_7

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    sub-int/2addr p2, v0

    .line 151
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    aget p2, p3, v0

    .line 158
    .line 159
    aget p3, p3, v1

    .line 160
    .line 161
    add-int/2addr p2, p3

    .line 162
    int-to-float p2, p2

    .line 163
    const/high16 p3, 0x40000000    # 2.0f

    .line 164
    .line 165
    div-float/2addr p2, p3

    .line 166
    add-int/2addr v7, v2

    .line 167
    int-to-float v2, v7

    .line 168
    div-float/2addr v2, p3

    .line 169
    new-instance p3, Lcom/google/zxing/Result;

    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    new-array v4, v5, [Lcom/google/zxing/ResultPoint;

    .line 176
    .line 177
    new-instance v5, Lcom/google/zxing/ResultPoint;

    .line 178
    .line 179
    int-to-float p1, p1

    .line 180
    invoke-direct {v5, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 181
    .line 182
    .line 183
    aput-object v5, v4, v1

    .line 184
    .line 185
    new-instance p2, Lcom/google/zxing/ResultPoint;

    .line 186
    .line 187
    invoke-direct {p2, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 188
    .line 189
    .line 190
    aput-object p2, v4, v0

    .line 191
    .line 192
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 193
    .line 194
    const/4 p2, 0x0

    .line 195
    invoke-direct {p3, v3, p2, v4, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 196
    .line 197
    .line 198
    return-object p3

    .line 199
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    throw p1

    .line 204
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    throw p1

    .line 209
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    throw p1

    .line 214
    :cond_a
    move v2, v7

    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    throw p1
.end method
