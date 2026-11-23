.class public final Lcom/papa/sim/statistic/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x80

.field private static final b:I = 0x40

.field private static final c:I = 0x18

.field private static final d:I = 0x8

.field private static final e:I = 0x10

.field private static final f:I = 0x4

.field private static final g:I = -0x80

.field private static h:C = '='

.field private static i:[B

.field private static j:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    sput-object v1, Lcom/papa/sim/statistic/d;->i:[B

    .line 6
    .line 7
    const/16 v1, 0x40

    .line 8
    .line 9
    new-array v1, v1, [C

    .line 10
    .line 11
    sput-object v1, Lcom/papa/sim/statistic/d;->j:[C

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v0, :cond_0

    .line 16
    .line 17
    sget-object v3, Lcom/papa/sim/statistic/d;->i:[B

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    aput-byte v4, v3, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v0, 0x5a

    .line 26
    .line 27
    :goto_1
    const/16 v2, 0x41

    .line 28
    .line 29
    if-lt v0, v2, :cond_1

    .line 30
    .line 31
    sget-object v2, Lcom/papa/sim/statistic/d;->i:[B

    .line 32
    .line 33
    add-int/lit8 v3, v0, -0x41

    .line 34
    .line 35
    int-to-byte v3, v3

    .line 36
    aput-byte v3, v2, v0

    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v0, 0x7a

    .line 42
    .line 43
    :goto_2
    const/16 v2, 0x1a

    .line 44
    .line 45
    const/16 v3, 0x61

    .line 46
    .line 47
    if-lt v0, v3, :cond_2

    .line 48
    .line 49
    sget-object v3, Lcom/papa/sim/statistic/d;->i:[B

    .line 50
    .line 51
    add-int/lit8 v4, v0, -0x61

    .line 52
    .line 53
    add-int/2addr v4, v2

    .line 54
    int-to-byte v2, v4

    .line 55
    aput-byte v2, v3, v0

    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v0, 0x39

    .line 61
    .line 62
    :goto_3
    const/16 v3, 0x34

    .line 63
    .line 64
    const/16 v4, 0x30

    .line 65
    .line 66
    if-lt v0, v4, :cond_3

    .line 67
    .line 68
    sget-object v4, Lcom/papa/sim/statistic/d;->i:[B

    .line 69
    .line 70
    add-int/lit8 v5, v0, -0x30

    .line 71
    .line 72
    add-int/2addr v5, v3

    .line 73
    int-to-byte v3, v5

    .line 74
    aput-byte v3, v4, v0

    .line 75
    .line 76
    add-int/lit8 v0, v0, -0x1

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    sget-object v0, Lcom/papa/sim/statistic/d;->i:[B

    .line 80
    .line 81
    const/16 v4, 0x2b

    .line 82
    .line 83
    const/16 v5, 0x3e

    .line 84
    .line 85
    aput-byte v5, v0, v4

    .line 86
    .line 87
    const/16 v6, 0x2f

    .line 88
    .line 89
    const/16 v7, 0x3f

    .line 90
    .line 91
    aput-byte v7, v0, v6

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    :goto_4
    const/16 v8, 0x19

    .line 95
    .line 96
    if-gt v0, v8, :cond_4

    .line 97
    .line 98
    sget-object v8, Lcom/papa/sim/statistic/d;->j:[C

    .line 99
    .line 100
    add-int/lit8 v9, v0, 0x41

    .line 101
    .line 102
    int-to-char v9, v9

    .line 103
    aput-char v9, v8, v0

    .line 104
    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_4
    const/4 v0, 0x0

    .line 109
    :goto_5
    const/16 v8, 0x33

    .line 110
    .line 111
    if-gt v2, v8, :cond_5

    .line 112
    .line 113
    sget-object v8, Lcom/papa/sim/statistic/d;->j:[C

    .line 114
    .line 115
    add-int/lit8 v9, v0, 0x61

    .line 116
    .line 117
    int-to-char v9, v9

    .line 118
    aput-char v9, v8, v2

    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    :goto_6
    const/16 v0, 0x3d

    .line 126
    .line 127
    if-gt v3, v0, :cond_6

    .line 128
    .line 129
    sget-object v0, Lcom/papa/sim/statistic/d;->j:[C

    .line 130
    .line 131
    add-int/lit8 v2, v1, 0x30

    .line 132
    .line 133
    int-to-char v2, v2

    .line 134
    aput-char v2, v0, v3

    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_6
    sget-object v0, Lcom/papa/sim/statistic/d;->j:[C

    .line 142
    .line 143
    aput-char v4, v0, v5

    .line 144
    .line 145
    aput-char v6, v0, v7

    .line 146
    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/d;->f([C)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    rem-int/lit8 v2, v1, 0x4

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    div-int/lit8 v1, v1, 0x4

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    new-array p0, v2, [B

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    mul-int/lit8 v3, v1, 0x3

    .line 27
    .line 28
    new-array v3, v3, [B

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    :goto_0
    add-int/lit8 v7, v1, -0x1

    .line 34
    .line 35
    if-ge v4, v7, :cond_5

    .line 36
    .line 37
    add-int/lit8 v7, v5, 0x1

    .line 38
    .line 39
    aget-char v5, p0, v5

    .line 40
    .line 41
    invoke-static {v5}, Lcom/papa/sim/statistic/d;->c(C)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-eqz v8, :cond_4

    .line 46
    .line 47
    add-int/lit8 v8, v7, 0x1

    .line 48
    .line 49
    aget-char v7, p0, v7

    .line 50
    .line 51
    invoke-static {v7}, Lcom/papa/sim/statistic/d;->c(C)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_4

    .line 56
    .line 57
    add-int/lit8 v9, v8, 0x1

    .line 58
    .line 59
    aget-char v8, p0, v8

    .line 60
    .line 61
    invoke-static {v8}, Lcom/papa/sim/statistic/d;->c(C)Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_4

    .line 66
    .line 67
    add-int/lit8 v10, v9, 0x1

    .line 68
    .line 69
    aget-char v9, p0, v9

    .line 70
    .line 71
    invoke-static {v9}, Lcom/papa/sim/statistic/d;->c(C)Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-nez v11, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    sget-object v11, Lcom/papa/sim/statistic/d;->i:[B

    .line 79
    .line 80
    aget-byte v5, v11, v5

    .line 81
    .line 82
    aget-byte v7, v11, v7

    .line 83
    .line 84
    aget-byte v8, v11, v8

    .line 85
    .line 86
    aget-byte v9, v11, v9

    .line 87
    .line 88
    add-int/lit8 v11, v6, 0x1

    .line 89
    .line 90
    shl-int/lit8 v5, v5, 0x2

    .line 91
    .line 92
    shr-int/lit8 v12, v7, 0x4

    .line 93
    .line 94
    or-int/2addr v5, v12

    .line 95
    int-to-byte v5, v5

    .line 96
    aput-byte v5, v3, v6

    .line 97
    .line 98
    add-int/lit8 v5, v11, 0x1

    .line 99
    .line 100
    and-int/lit8 v6, v7, 0xf

    .line 101
    .line 102
    shl-int/lit8 v6, v6, 0x4

    .line 103
    .line 104
    shr-int/lit8 v7, v8, 0x2

    .line 105
    .line 106
    and-int/lit8 v7, v7, 0xf

    .line 107
    .line 108
    or-int/2addr v6, v7

    .line 109
    int-to-byte v6, v6

    .line 110
    aput-byte v6, v3, v11

    .line 111
    .line 112
    add-int/lit8 v6, v5, 0x1

    .line 113
    .line 114
    shl-int/lit8 v7, v8, 0x6

    .line 115
    .line 116
    or-int/2addr v7, v9

    .line 117
    int-to-byte v7, v7

    .line 118
    aput-byte v7, v3, v5

    .line 119
    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    move v5, v10

    .line 123
    goto :goto_0

    .line 124
    :cond_4
    :goto_1
    return-object v0

    .line 125
    :cond_5
    add-int/lit8 v1, v5, 0x1

    .line 126
    .line 127
    aget-char v5, p0, v5

    .line 128
    .line 129
    invoke-static {v5}, Lcom/papa/sim/statistic/d;->c(C)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_c

    .line 134
    .line 135
    add-int/lit8 v7, v1, 0x1

    .line 136
    .line 137
    aget-char v1, p0, v1

    .line 138
    .line 139
    invoke-static {v1}, Lcom/papa/sim/statistic/d;->c(C)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-nez v8, :cond_6

    .line 144
    .line 145
    goto/16 :goto_3

    .line 146
    .line 147
    :cond_6
    sget-object v8, Lcom/papa/sim/statistic/d;->i:[B

    .line 148
    .line 149
    aget-byte v5, v8, v5

    .line 150
    .line 151
    aget-byte v1, v8, v1

    .line 152
    .line 153
    add-int/lit8 v8, v7, 0x1

    .line 154
    .line 155
    aget-char v7, p0, v7

    .line 156
    .line 157
    aget-char p0, p0, v8

    .line 158
    .line 159
    invoke-static {v7}, Lcom/papa/sim/statistic/d;->c(C)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_8

    .line 164
    .line 165
    invoke-static {p0}, Lcom/papa/sim/statistic/d;->c(C)Z

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    if-nez v8, :cond_7

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    sget-object v0, Lcom/papa/sim/statistic/d;->i:[B

    .line 173
    .line 174
    aget-byte v2, v0, v7

    .line 175
    .line 176
    aget-byte p0, v0, p0

    .line 177
    .line 178
    add-int/lit8 v0, v6, 0x1

    .line 179
    .line 180
    shl-int/lit8 v4, v5, 0x2

    .line 181
    .line 182
    shr-int/lit8 v5, v1, 0x4

    .line 183
    .line 184
    or-int/2addr v4, v5

    .line 185
    int-to-byte v4, v4

    .line 186
    aput-byte v4, v3, v6

    .line 187
    .line 188
    add-int/lit8 v4, v0, 0x1

    .line 189
    .line 190
    and-int/lit8 v1, v1, 0xf

    .line 191
    .line 192
    shl-int/lit8 v1, v1, 0x4

    .line 193
    .line 194
    shr-int/lit8 v5, v2, 0x2

    .line 195
    .line 196
    and-int/lit8 v5, v5, 0xf

    .line 197
    .line 198
    or-int/2addr v1, v5

    .line 199
    int-to-byte v1, v1

    .line 200
    aput-byte v1, v3, v0

    .line 201
    .line 202
    shl-int/lit8 v0, v2, 0x6

    .line 203
    .line 204
    or-int/2addr p0, v0

    .line 205
    int-to-byte p0, p0

    .line 206
    aput-byte p0, v3, v4

    .line 207
    .line 208
    return-object v3

    .line 209
    :cond_8
    :goto_2
    invoke-static {v7}, Lcom/papa/sim/statistic/d;->d(C)Z

    .line 210
    .line 211
    .line 212
    move-result v8

    .line 213
    if-eqz v8, :cond_a

    .line 214
    .line 215
    invoke-static {p0}, Lcom/papa/sim/statistic/d;->d(C)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-eqz v8, :cond_a

    .line 220
    .line 221
    and-int/lit8 p0, v1, 0xf

    .line 222
    .line 223
    if-eqz p0, :cond_9

    .line 224
    .line 225
    return-object v0

    .line 226
    :cond_9
    mul-int/lit8 v4, v4, 0x3

    .line 227
    .line 228
    add-int/lit8 p0, v4, 0x1

    .line 229
    .line 230
    new-array p0, p0, [B

    .line 231
    .line 232
    invoke-static {v3, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    .line 234
    .line 235
    shl-int/lit8 v0, v5, 0x2

    .line 236
    .line 237
    shr-int/lit8 v1, v1, 0x4

    .line 238
    .line 239
    or-int/2addr v0, v1

    .line 240
    int-to-byte v0, v0

    .line 241
    aput-byte v0, p0, v6

    .line 242
    .line 243
    return-object p0

    .line 244
    :cond_a
    invoke-static {v7}, Lcom/papa/sim/statistic/d;->d(C)Z

    .line 245
    .line 246
    .line 247
    move-result v8

    .line 248
    if-nez v8, :cond_c

    .line 249
    .line 250
    invoke-static {p0}, Lcom/papa/sim/statistic/d;->d(C)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_c

    .line 255
    .line 256
    sget-object p0, Lcom/papa/sim/statistic/d;->i:[B

    .line 257
    .line 258
    aget-byte p0, p0, v7

    .line 259
    .line 260
    and-int/lit8 v7, p0, 0x3

    .line 261
    .line 262
    if-eqz v7, :cond_b

    .line 263
    .line 264
    return-object v0

    .line 265
    :cond_b
    mul-int/lit8 v4, v4, 0x3

    .line 266
    .line 267
    add-int/lit8 v0, v4, 0x2

    .line 268
    .line 269
    new-array v0, v0, [B

    .line 270
    .line 271
    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    .line 273
    .line 274
    add-int/lit8 v2, v6, 0x1

    .line 275
    .line 276
    shl-int/lit8 v3, v5, 0x2

    .line 277
    .line 278
    shr-int/lit8 v4, v1, 0x4

    .line 279
    .line 280
    or-int/2addr v3, v4

    .line 281
    int-to-byte v3, v3

    .line 282
    aput-byte v3, v0, v6

    .line 283
    .line 284
    and-int/lit8 v1, v1, 0xf

    .line 285
    .line 286
    shl-int/lit8 v1, v1, 0x4

    .line 287
    .line 288
    shr-int/lit8 p0, p0, 0x2

    .line 289
    .line 290
    and-int/lit8 p0, p0, 0xf

    .line 291
    .line 292
    or-int/2addr p0, v1

    .line 293
    int-to-byte p0, p0

    .line 294
    aput-byte p0, v0, v2

    .line 295
    .line 296
    :cond_c
    :goto_3
    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 15

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x8

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string p0, ""

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    rem-int/lit8 v2, v0, 0x18

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x18

    .line 18
    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    add-int/lit8 v3, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move v3, v0

    .line 25
    :goto_0
    mul-int/lit8 v3, v3, 0x4

    .line 26
    .line 27
    new-array v3, v3, [C

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    :goto_1
    if-ge v4, v0, :cond_6

    .line 33
    .line 34
    add-int/lit8 v7, v5, 0x1

    .line 35
    .line 36
    aget-byte v5, p0, v5

    .line 37
    .line 38
    add-int/lit8 v8, v7, 0x1

    .line 39
    .line 40
    aget-byte v7, p0, v7

    .line 41
    .line 42
    add-int/lit8 v9, v8, 0x1

    .line 43
    .line 44
    aget-byte v8, p0, v8

    .line 45
    .line 46
    and-int/lit8 v10, v7, 0xf

    .line 47
    .line 48
    int-to-byte v10, v10

    .line 49
    and-int/lit8 v11, v5, 0x3

    .line 50
    .line 51
    int-to-byte v11, v11

    .line 52
    and-int/lit8 v12, v5, -0x80

    .line 53
    .line 54
    if-nez v12, :cond_3

    .line 55
    .line 56
    shr-int/lit8 v5, v5, 0x2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    shr-int/lit8 v5, v5, 0x2

    .line 60
    .line 61
    xor-int/lit16 v5, v5, 0xc0

    .line 62
    .line 63
    :goto_2
    int-to-byte v5, v5

    .line 64
    and-int/lit8 v12, v7, -0x80

    .line 65
    .line 66
    if-nez v12, :cond_4

    .line 67
    .line 68
    shr-int/lit8 v7, v7, 0x4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    shr-int/lit8 v7, v7, 0x4

    .line 72
    .line 73
    xor-int/lit16 v7, v7, 0xf0

    .line 74
    .line 75
    :goto_3
    int-to-byte v7, v7

    .line 76
    and-int/lit8 v12, v8, -0x80

    .line 77
    .line 78
    if-nez v12, :cond_5

    .line 79
    .line 80
    shr-int/lit8 v12, v8, 0x6

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    shr-int/lit8 v12, v8, 0x6

    .line 84
    .line 85
    xor-int/lit16 v12, v12, 0xfc

    .line 86
    .line 87
    :goto_4
    int-to-byte v12, v12

    .line 88
    add-int/lit8 v13, v6, 0x1

    .line 89
    .line 90
    sget-object v14, Lcom/papa/sim/statistic/d;->j:[C

    .line 91
    .line 92
    aget-char v5, v14, v5

    .line 93
    .line 94
    aput-char v5, v3, v6

    .line 95
    .line 96
    add-int/lit8 v5, v13, 0x1

    .line 97
    .line 98
    shl-int/lit8 v6, v11, 0x4

    .line 99
    .line 100
    or-int/2addr v6, v7

    .line 101
    aget-char v6, v14, v6

    .line 102
    .line 103
    aput-char v6, v3, v13

    .line 104
    .line 105
    add-int/lit8 v6, v5, 0x1

    .line 106
    .line 107
    shl-int/lit8 v7, v10, 0x2

    .line 108
    .line 109
    or-int/2addr v7, v12

    .line 110
    aget-char v7, v14, v7

    .line 111
    .line 112
    aput-char v7, v3, v5

    .line 113
    .line 114
    add-int/lit8 v5, v6, 0x1

    .line 115
    .line 116
    and-int/lit8 v7, v8, 0x3f

    .line 117
    .line 118
    aget-char v7, v14, v7

    .line 119
    .line 120
    aput-char v7, v3, v6

    .line 121
    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    move v6, v5

    .line 125
    move v5, v9

    .line 126
    goto :goto_1

    .line 127
    :cond_6
    if-ne v2, v1, :cond_8

    .line 128
    .line 129
    aget-byte p0, p0, v5

    .line 130
    .line 131
    and-int/lit8 v0, p0, 0x3

    .line 132
    .line 133
    int-to-byte v0, v0

    .line 134
    and-int/lit8 v1, p0, -0x80

    .line 135
    .line 136
    if-nez v1, :cond_7

    .line 137
    .line 138
    shr-int/lit8 p0, p0, 0x2

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    shr-int/lit8 p0, p0, 0x2

    .line 142
    .line 143
    xor-int/lit16 p0, p0, 0xc0

    .line 144
    .line 145
    :goto_5
    int-to-byte p0, p0

    .line 146
    add-int/lit8 v1, v6, 0x1

    .line 147
    .line 148
    sget-object v2, Lcom/papa/sim/statistic/d;->j:[C

    .line 149
    .line 150
    aget-char p0, v2, p0

    .line 151
    .line 152
    aput-char p0, v3, v6

    .line 153
    .line 154
    add-int/lit8 p0, v1, 0x1

    .line 155
    .line 156
    shl-int/lit8 v0, v0, 0x4

    .line 157
    .line 158
    aget-char v0, v2, v0

    .line 159
    .line 160
    aput-char v0, v3, v1

    .line 161
    .line 162
    add-int/lit8 v0, p0, 0x1

    .line 163
    .line 164
    sget-char v1, Lcom/papa/sim/statistic/d;->h:C

    .line 165
    .line 166
    aput-char v1, v3, p0

    .line 167
    .line 168
    aput-char v1, v3, v0

    .line 169
    .line 170
    goto :goto_8

    .line 171
    :cond_8
    const/16 v0, 0x10

    .line 172
    .line 173
    if-ne v2, v0, :cond_b

    .line 174
    .line 175
    aget-byte v0, p0, v5

    .line 176
    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    aget-byte p0, p0, v5

    .line 180
    .line 181
    and-int/lit8 v1, p0, 0xf

    .line 182
    .line 183
    int-to-byte v1, v1

    .line 184
    and-int/lit8 v2, v0, 0x3

    .line 185
    .line 186
    int-to-byte v2, v2

    .line 187
    and-int/lit8 v4, v0, -0x80

    .line 188
    .line 189
    if-nez v4, :cond_9

    .line 190
    .line 191
    shr-int/lit8 v0, v0, 0x2

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_9
    shr-int/lit8 v0, v0, 0x2

    .line 195
    .line 196
    xor-int/lit16 v0, v0, 0xc0

    .line 197
    .line 198
    :goto_6
    int-to-byte v0, v0

    .line 199
    and-int/lit8 v4, p0, -0x80

    .line 200
    .line 201
    if-nez v4, :cond_a

    .line 202
    .line 203
    shr-int/lit8 p0, p0, 0x4

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_a
    shr-int/lit8 p0, p0, 0x4

    .line 207
    .line 208
    xor-int/lit16 p0, p0, 0xf0

    .line 209
    .line 210
    :goto_7
    int-to-byte p0, p0

    .line 211
    add-int/lit8 v4, v6, 0x1

    .line 212
    .line 213
    sget-object v5, Lcom/papa/sim/statistic/d;->j:[C

    .line 214
    .line 215
    aget-char v0, v5, v0

    .line 216
    .line 217
    aput-char v0, v3, v6

    .line 218
    .line 219
    add-int/lit8 v0, v4, 0x1

    .line 220
    .line 221
    shl-int/lit8 v2, v2, 0x4

    .line 222
    .line 223
    or-int/2addr p0, v2

    .line 224
    aget-char p0, v5, p0

    .line 225
    .line 226
    aput-char p0, v3, v4

    .line 227
    .line 228
    add-int/lit8 p0, v0, 0x1

    .line 229
    .line 230
    shl-int/lit8 v1, v1, 0x2

    .line 231
    .line 232
    aget-char v1, v5, v1

    .line 233
    .line 234
    aput-char v1, v3, v0

    .line 235
    .line 236
    sget-char v0, Lcom/papa/sim/statistic/d;->h:C

    .line 237
    .line 238
    aput-char v0, v3, p0

    .line 239
    .line 240
    :cond_b
    :goto_8
    new-instance p0, Ljava/lang/String;

    .line 241
    .line 242
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 243
    .line 244
    .line 245
    return-object p0
.end method

.method private static c(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/papa/sim/statistic/d;->i:[B

    .line 6
    .line 7
    aget-byte p0, v0, p0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method private static d(C)Z
    .locals 1

    .line 1
    sget-char v0, Lcom/papa/sim/statistic/d;->h:C

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method private static e(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static f([C)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    aget-char v3, p0, v0

    .line 10
    .line 11
    invoke-static {v3}, Lcom/papa/sim/statistic/d;->e(C)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    aget-char v4, p0, v0

    .line 20
    .line 21
    aput-char v4, p0, v2

    .line 22
    .line 23
    move v2, v3

    .line 24
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return v2
.end method
