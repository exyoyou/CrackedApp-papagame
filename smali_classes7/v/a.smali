.class public final Lv/a;
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

.field private static final h:C = '='

.field private static final i:[B

.field private static final j:[C


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
    sput-object v1, Lv/a;->i:[B

    .line 6
    .line 7
    const/16 v1, 0x40

    .line 8
    .line 9
    new-array v1, v1, [C

    .line 10
    .line 11
    sput-object v1, Lv/a;->j:[C

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
    sget-object v3, Lv/a;->i:[B

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
    sget-object v2, Lv/a;->i:[B

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
    sget-object v3, Lv/a;->i:[B

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
    sget-object v4, Lv/a;->i:[B

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
    sget-object v0, Lv/a;->i:[B

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
    sget-object v8, Lv/a;->j:[C

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
    sget-object v8, Lv/a;->j:[C

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
    sget-object v0, Lv/a;->j:[C

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
    sget-object v0, Lv/a;->j:[C

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

.method private static a([C)I
    .locals 6

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
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_4

    .line 9
    .line 10
    aget-char v4, p0, v2

    .line 11
    .line 12
    const/16 v5, 0x20

    .line 13
    .line 14
    if-eq v4, v5, :cond_2

    .line 15
    .line 16
    const/16 v5, 0xd

    .line 17
    .line 18
    if-eq v4, v5, :cond_2

    .line 19
    .line 20
    const/16 v5, 0xa

    .line 21
    .line 22
    if-eq v4, v5, :cond_2

    .line 23
    .line 24
    const/16 v5, 0x9

    .line 25
    .line 26
    if-ne v4, v5, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v5, 0x0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 32
    :goto_2
    if-nez v5, :cond_3

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    aput-char v4, p0, v3

    .line 37
    .line 38
    move v3, v5

    .line 39
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    return v3
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
    shr-int/lit8 v5, v5, 0x2

    .line 55
    .line 56
    if-nez v12, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    xor-int/lit16 v5, v5, 0xc0

    .line 60
    .line 61
    :goto_2
    int-to-byte v5, v5

    .line 62
    and-int/lit8 v12, v7, -0x80

    .line 63
    .line 64
    shr-int/lit8 v7, v7, 0x4

    .line 65
    .line 66
    if-nez v12, :cond_4

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    xor-int/lit16 v7, v7, 0xf0

    .line 70
    .line 71
    :goto_3
    int-to-byte v7, v7

    .line 72
    and-int/lit8 v12, v8, -0x80

    .line 73
    .line 74
    if-nez v12, :cond_5

    .line 75
    .line 76
    shr-int/lit8 v12, v8, 0x6

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    shr-int/lit8 v12, v8, 0x6

    .line 80
    .line 81
    xor-int/lit16 v12, v12, 0xfc

    .line 82
    .line 83
    :goto_4
    int-to-byte v12, v12

    .line 84
    add-int/lit8 v13, v6, 0x1

    .line 85
    .line 86
    sget-object v14, Lv/a;->j:[C

    .line 87
    .line 88
    aget-char v5, v14, v5

    .line 89
    .line 90
    aput-char v5, v3, v6

    .line 91
    .line 92
    add-int/lit8 v5, v13, 0x1

    .line 93
    .line 94
    shl-int/lit8 v6, v11, 0x4

    .line 95
    .line 96
    or-int/2addr v6, v7

    .line 97
    aget-char v6, v14, v6

    .line 98
    .line 99
    aput-char v6, v3, v13

    .line 100
    .line 101
    add-int/lit8 v6, v5, 0x1

    .line 102
    .line 103
    shl-int/lit8 v7, v10, 0x2

    .line 104
    .line 105
    or-int/2addr v7, v12

    .line 106
    aget-char v7, v14, v7

    .line 107
    .line 108
    aput-char v7, v3, v5

    .line 109
    .line 110
    add-int/lit8 v5, v6, 0x1

    .line 111
    .line 112
    and-int/lit8 v7, v8, 0x3f

    .line 113
    .line 114
    aget-char v7, v14, v7

    .line 115
    .line 116
    aput-char v7, v3, v6

    .line 117
    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    move v6, v5

    .line 121
    move v5, v9

    .line 122
    goto :goto_1

    .line 123
    :cond_6
    const/16 v0, 0x3d

    .line 124
    .line 125
    if-ne v2, v1, :cond_8

    .line 126
    .line 127
    aget-byte p0, p0, v5

    .line 128
    .line 129
    and-int/lit8 v1, p0, 0x3

    .line 130
    .line 131
    int-to-byte v1, v1

    .line 132
    and-int/lit8 v2, p0, -0x80

    .line 133
    .line 134
    shr-int/lit8 p0, p0, 0x2

    .line 135
    .line 136
    if-nez v2, :cond_7

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_7
    xor-int/lit16 p0, p0, 0xc0

    .line 140
    .line 141
    :goto_5
    int-to-byte p0, p0

    .line 142
    add-int/lit8 v2, v6, 0x1

    .line 143
    .line 144
    sget-object v4, Lv/a;->j:[C

    .line 145
    .line 146
    aget-char p0, v4, p0

    .line 147
    .line 148
    aput-char p0, v3, v6

    .line 149
    .line 150
    add-int/lit8 p0, v2, 0x1

    .line 151
    .line 152
    shl-int/lit8 v1, v1, 0x4

    .line 153
    .line 154
    aget-char v1, v4, v1

    .line 155
    .line 156
    aput-char v1, v3, v2

    .line 157
    .line 158
    add-int/lit8 v1, p0, 0x1

    .line 159
    .line 160
    aput-char v0, v3, p0

    .line 161
    .line 162
    aput-char v0, v3, v1

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_8
    const/16 v1, 0x10

    .line 166
    .line 167
    if-ne v2, v1, :cond_b

    .line 168
    .line 169
    aget-byte v1, p0, v5

    .line 170
    .line 171
    add-int/lit8 v5, v5, 0x1

    .line 172
    .line 173
    aget-byte p0, p0, v5

    .line 174
    .line 175
    and-int/lit8 v2, p0, 0xf

    .line 176
    .line 177
    int-to-byte v2, v2

    .line 178
    and-int/lit8 v4, v1, 0x3

    .line 179
    .line 180
    int-to-byte v4, v4

    .line 181
    and-int/lit8 v5, v1, -0x80

    .line 182
    .line 183
    shr-int/lit8 v1, v1, 0x2

    .line 184
    .line 185
    if-nez v5, :cond_9

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_9
    xor-int/lit16 v1, v1, 0xc0

    .line 189
    .line 190
    :goto_6
    int-to-byte v1, v1

    .line 191
    and-int/lit8 v5, p0, -0x80

    .line 192
    .line 193
    shr-int/lit8 p0, p0, 0x4

    .line 194
    .line 195
    if-nez v5, :cond_a

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_a
    xor-int/lit16 p0, p0, 0xf0

    .line 199
    .line 200
    :goto_7
    int-to-byte p0, p0

    .line 201
    add-int/lit8 v5, v6, 0x1

    .line 202
    .line 203
    sget-object v7, Lv/a;->j:[C

    .line 204
    .line 205
    aget-char v1, v7, v1

    .line 206
    .line 207
    aput-char v1, v3, v6

    .line 208
    .line 209
    add-int/lit8 v1, v5, 0x1

    .line 210
    .line 211
    shl-int/lit8 v4, v4, 0x4

    .line 212
    .line 213
    or-int/2addr p0, v4

    .line 214
    aget-char p0, v7, p0

    .line 215
    .line 216
    aput-char p0, v3, v5

    .line 217
    .line 218
    add-int/lit8 p0, v1, 0x1

    .line 219
    .line 220
    shl-int/lit8 v2, v2, 0x2

    .line 221
    .line 222
    aget-char v2, v7, v2

    .line 223
    .line 224
    aput-char v2, v3, v1

    .line 225
    .line 226
    aput-char v0, v3, p0

    .line 227
    .line 228
    :cond_b
    :goto_8
    new-instance p0, Ljava/lang/String;

    .line 229
    .line 230
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 231
    .line 232
    .line 233
    return-object p0
.end method

.method private static c(C)Z
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

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 14

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
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    goto :goto_3

    .line 15
    :cond_1
    array-length v3, p0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    if-ge v4, v3, :cond_5

    .line 19
    .line 20
    aget-char v6, p0, v4

    .line 21
    .line 22
    const/16 v7, 0x20

    .line 23
    .line 24
    if-eq v6, v7, :cond_3

    .line 25
    .line 26
    const/16 v7, 0xd

    .line 27
    .line 28
    if-eq v6, v7, :cond_3

    .line 29
    .line 30
    const/16 v7, 0xa

    .line 31
    .line 32
    if-eq v6, v7, :cond_3

    .line 33
    .line 34
    const/16 v7, 0x9

    .line 35
    .line 36
    if-ne v6, v7, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v7, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    const/4 v7, 0x1

    .line 42
    :goto_2
    if-nez v7, :cond_4

    .line 43
    .line 44
    add-int/lit8 v7, v5, 0x1

    .line 45
    .line 46
    aput-char v6, p0, v5

    .line 47
    .line 48
    move v5, v7

    .line 49
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    :goto_3
    rem-int/lit8 v3, v5, 0x4

    .line 53
    .line 54
    if-eqz v3, :cond_6

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_6
    div-int/lit8 v5, v5, 0x4

    .line 58
    .line 59
    if-nez v5, :cond_7

    .line 60
    .line 61
    new-array p0, v1, [B

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_7
    mul-int/lit8 v3, v5, 0x3

    .line 65
    .line 66
    new-array v3, v3, [B

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    :goto_4
    add-int/lit8 v8, v5, -0x1

    .line 72
    .line 73
    if-ge v4, v8, :cond_a

    .line 74
    .line 75
    add-int/lit8 v8, v6, 0x1

    .line 76
    .line 77
    aget-char v6, p0, v6

    .line 78
    .line 79
    invoke-static {v6}, Lv/a;->f(C)Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-eqz v9, :cond_9

    .line 84
    .line 85
    add-int/lit8 v9, v8, 0x1

    .line 86
    .line 87
    aget-char v8, p0, v8

    .line 88
    .line 89
    invoke-static {v8}, Lv/a;->f(C)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_9

    .line 94
    .line 95
    add-int/lit8 v10, v9, 0x1

    .line 96
    .line 97
    aget-char v9, p0, v9

    .line 98
    .line 99
    invoke-static {v9}, Lv/a;->f(C)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_9

    .line 104
    .line 105
    add-int/lit8 v11, v10, 0x1

    .line 106
    .line 107
    aget-char v10, p0, v10

    .line 108
    .line 109
    invoke-static {v10}, Lv/a;->f(C)Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-nez v12, :cond_8

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_8
    sget-object v12, Lv/a;->i:[B

    .line 117
    .line 118
    aget-byte v6, v12, v6

    .line 119
    .line 120
    aget-byte v8, v12, v8

    .line 121
    .line 122
    aget-byte v9, v12, v9

    .line 123
    .line 124
    aget-byte v10, v12, v10

    .line 125
    .line 126
    add-int/lit8 v12, v7, 0x1

    .line 127
    .line 128
    shl-int/lit8 v6, v6, 0x2

    .line 129
    .line 130
    shr-int/lit8 v13, v8, 0x4

    .line 131
    .line 132
    or-int/2addr v6, v13

    .line 133
    int-to-byte v6, v6

    .line 134
    aput-byte v6, v3, v7

    .line 135
    .line 136
    add-int/lit8 v6, v12, 0x1

    .line 137
    .line 138
    and-int/lit8 v7, v8, 0xf

    .line 139
    .line 140
    shl-int/lit8 v7, v7, 0x4

    .line 141
    .line 142
    shr-int/lit8 v8, v9, 0x2

    .line 143
    .line 144
    and-int/lit8 v8, v8, 0xf

    .line 145
    .line 146
    or-int/2addr v7, v8

    .line 147
    int-to-byte v7, v7

    .line 148
    aput-byte v7, v3, v12

    .line 149
    .line 150
    add-int/lit8 v7, v6, 0x1

    .line 151
    .line 152
    shl-int/lit8 v8, v9, 0x6

    .line 153
    .line 154
    or-int/2addr v8, v10

    .line 155
    int-to-byte v8, v8

    .line 156
    aput-byte v8, v3, v6

    .line 157
    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 159
    .line 160
    move v6, v11

    .line 161
    goto :goto_4

    .line 162
    :cond_9
    :goto_5
    return-object v0

    .line 163
    :cond_a
    add-int/lit8 v2, v6, 0x1

    .line 164
    .line 165
    aget-char v5, p0, v6

    .line 166
    .line 167
    invoke-static {v5}, Lv/a;->f(C)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_11

    .line 172
    .line 173
    add-int/lit8 v6, v2, 0x1

    .line 174
    .line 175
    aget-char v2, p0, v2

    .line 176
    .line 177
    invoke-static {v2}, Lv/a;->f(C)Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-nez v8, :cond_b

    .line 182
    .line 183
    goto/16 :goto_7

    .line 184
    .line 185
    :cond_b
    sget-object v8, Lv/a;->i:[B

    .line 186
    .line 187
    aget-byte v5, v8, v5

    .line 188
    .line 189
    aget-byte v2, v8, v2

    .line 190
    .line 191
    add-int/lit8 v9, v6, 0x1

    .line 192
    .line 193
    aget-char v6, p0, v6

    .line 194
    .line 195
    aget-char p0, p0, v9

    .line 196
    .line 197
    invoke-static {v6}, Lv/a;->f(C)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_d

    .line 202
    .line 203
    invoke-static {p0}, Lv/a;->f(C)Z

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    if-nez v9, :cond_c

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_c
    aget-byte v0, v8, v6

    .line 211
    .line 212
    aget-byte p0, v8, p0

    .line 213
    .line 214
    add-int/lit8 v1, v7, 0x1

    .line 215
    .line 216
    shl-int/lit8 v4, v5, 0x2

    .line 217
    .line 218
    shr-int/lit8 v5, v2, 0x4

    .line 219
    .line 220
    or-int/2addr v4, v5

    .line 221
    int-to-byte v4, v4

    .line 222
    aput-byte v4, v3, v7

    .line 223
    .line 224
    add-int/lit8 v4, v1, 0x1

    .line 225
    .line 226
    and-int/lit8 v2, v2, 0xf

    .line 227
    .line 228
    shl-int/lit8 v2, v2, 0x4

    .line 229
    .line 230
    shr-int/lit8 v5, v0, 0x2

    .line 231
    .line 232
    and-int/lit8 v5, v5, 0xf

    .line 233
    .line 234
    or-int/2addr v2, v5

    .line 235
    int-to-byte v2, v2

    .line 236
    aput-byte v2, v3, v1

    .line 237
    .line 238
    shl-int/lit8 v0, v0, 0x6

    .line 239
    .line 240
    or-int/2addr p0, v0

    .line 241
    int-to-byte p0, p0

    .line 242
    aput-byte p0, v3, v4

    .line 243
    .line 244
    return-object v3

    .line 245
    :cond_d
    :goto_6
    invoke-static {v6}, Lv/a;->e(C)Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-eqz v9, :cond_f

    .line 250
    .line 251
    invoke-static {p0}, Lv/a;->e(C)Z

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    if-eqz v9, :cond_f

    .line 256
    .line 257
    and-int/lit8 p0, v2, 0xf

    .line 258
    .line 259
    if-eqz p0, :cond_e

    .line 260
    .line 261
    return-object v0

    .line 262
    :cond_e
    mul-int/lit8 v4, v4, 0x3

    .line 263
    .line 264
    add-int/lit8 p0, v4, 0x1

    .line 265
    .line 266
    new-array p0, p0, [B

    .line 267
    .line 268
    invoke-static {v3, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    .line 270
    .line 271
    shl-int/lit8 v0, v5, 0x2

    .line 272
    .line 273
    shr-int/lit8 v1, v2, 0x4

    .line 274
    .line 275
    or-int/2addr v0, v1

    .line 276
    int-to-byte v0, v0

    .line 277
    aput-byte v0, p0, v7

    .line 278
    .line 279
    return-object p0

    .line 280
    :cond_f
    invoke-static {v6}, Lv/a;->e(C)Z

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    if-nez v9, :cond_11

    .line 285
    .line 286
    invoke-static {p0}, Lv/a;->e(C)Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    if-eqz p0, :cond_11

    .line 291
    .line 292
    aget-byte p0, v8, v6

    .line 293
    .line 294
    and-int/lit8 v6, p0, 0x3

    .line 295
    .line 296
    if-eqz v6, :cond_10

    .line 297
    .line 298
    return-object v0

    .line 299
    :cond_10
    mul-int/lit8 v4, v4, 0x3

    .line 300
    .line 301
    add-int/lit8 v0, v4, 0x2

    .line 302
    .line 303
    new-array v0, v0, [B

    .line 304
    .line 305
    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    .line 307
    .line 308
    add-int/lit8 v1, v7, 0x1

    .line 309
    .line 310
    shl-int/lit8 v3, v5, 0x2

    .line 311
    .line 312
    shr-int/lit8 v4, v2, 0x4

    .line 313
    .line 314
    or-int/2addr v3, v4

    .line 315
    int-to-byte v3, v3

    .line 316
    aput-byte v3, v0, v7

    .line 317
    .line 318
    and-int/lit8 v2, v2, 0xf

    .line 319
    .line 320
    shl-int/lit8 v2, v2, 0x4

    .line 321
    .line 322
    shr-int/lit8 p0, p0, 0x2

    .line 323
    .line 324
    and-int/lit8 p0, p0, 0xf

    .line 325
    .line 326
    or-int/2addr p0, v2

    .line 327
    int-to-byte p0, p0

    .line 328
    aput-byte p0, v0, v1

    .line 329
    .line 330
    :cond_11
    :goto_7
    return-object v0
.end method

.method private static e(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static f(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lv/a;->i:[B

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
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
