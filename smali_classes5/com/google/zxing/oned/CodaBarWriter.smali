.class public Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[B
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static {v1, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_e

    .line 21
    .line 22
    new-array v1, v0, [C

    .line 23
    .line 24
    fill-array-data v1, :array_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    sub-int/2addr v3, v4

    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-static {v1, v3}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_d

    .line 46
    .line 47
    new-array v0, v0, [C

    .line 48
    .line 49
    fill-array-data v0, :array_2

    .line 50
    .line 51
    .line 52
    const/16 v1, 0x14

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    sub-int/2addr v5, v4

    .line 60
    if-ge v3, v5, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const/16 v6, 0x2d

    .line 77
    .line 78
    if-eq v5, v6, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    const/16 v6, 0x24

    .line 85
    .line 86
    if-ne v5, v6, :cond_0

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-static {v0, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_1

    .line 98
    .line 99
    add-int/lit8 v1, v1, 0xa

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "Cannot encode : \'"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const/16 p1, 0x27

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x9

    .line 135
    .line 136
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sub-int/2addr v0, v4

    .line 144
    add-int/2addr v1, v0

    .line 145
    new-array v0, v1, [B

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    const/4 v3, 0x0

    .line 149
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-ge v1, v5, :cond_c

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    sub-int/2addr v6, v4

    .line 168
    if-ne v1, v6, :cond_5

    .line 169
    .line 170
    const/16 v6, 0x2a

    .line 171
    .line 172
    if-ne v5, v6, :cond_4

    .line 173
    .line 174
    const/16 v5, 0x43

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_4
    const/16 v6, 0x45

    .line 178
    .line 179
    if-ne v5, v6, :cond_5

    .line 180
    .line 181
    const/16 v5, 0x44

    .line 182
    .line 183
    :cond_5
    :goto_4
    const/4 v6, 0x0

    .line 184
    :goto_5
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 185
    .line 186
    array-length v8, v7

    .line 187
    if-ge v6, v8, :cond_7

    .line 188
    .line 189
    aget-char v7, v7, v6

    .line 190
    .line 191
    if-ne v5, v7, :cond_6

    .line 192
    .line 193
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 194
    .line 195
    aget v5, v5, v6

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_7
    const/4 v5, 0x0

    .line 202
    :goto_6
    const/4 v6, 0x0

    .line 203
    const/4 v7, 0x1

    .line 204
    :goto_7
    const/4 v8, 0x0

    .line 205
    :goto_8
    const/4 v9, 0x7

    .line 206
    if-ge v6, v9, :cond_a

    .line 207
    .line 208
    aput-byte v7, v0, v3

    .line 209
    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 211
    .line 212
    rsub-int/lit8 v9, v6, 0x6

    .line 213
    .line 214
    shr-int v9, v5, v9

    .line 215
    .line 216
    and-int/2addr v9, v4

    .line 217
    if-eqz v9, :cond_9

    .line 218
    .line 219
    if-ne v8, v4, :cond_8

    .line 220
    .line 221
    goto :goto_9

    .line 222
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_9
    :goto_9
    xor-int/lit8 v7, v7, 0x1

    .line 226
    .line 227
    int-to-byte v7, v7

    .line 228
    add-int/lit8 v6, v6, 0x1

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    sub-int/2addr v5, v4

    .line 236
    if-ge v1, v5, :cond_b

    .line 237
    .line 238
    aput-byte v2, v0, v3

    .line 239
    .line 240
    add-int/lit8 v3, v3, 0x1

    .line 241
    .line 242
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_c
    return-object v0

    .line 246
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 247
    .line 248
    const-string v0, "Codabar should end with one of the following: \'T\', \'N\', \'*\' or \'E\'"

    .line 249
    .line 250
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 255
    .line 256
    const-string v0, "Codabar should start with one of the following: \'A\', \'B\', \'C\' or \'D\'"

    .line 257
    .line 258
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    throw p1

    .line 262
    nop

    .line 263
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method
