.class public Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/proxy/app/ApiBase64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field static final RFC4648:Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;

.field static final RFC4648_URLSAFE:Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;

.field private static final toBase64:[C

.field private static final toBase64URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;-><init>(Z[BIZ)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->RFC4648:Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;

    .line 11
    .line 12
    new-instance v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;

    .line 13
    .line 14
    invoke-direct {v0, v4, v2, v3, v1}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;-><init>(Z[BIZ)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->RFC4648_URLSAFE:Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;

    .line 18
    .line 19
    const/16 v0, 0x40

    .line 20
    .line 21
    new-array v1, v0, [C

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->toBase64:[C

    .line 27
    .line 28
    new-array v0, v0, [C

    .line 29
    .line 30
    fill-array-data v0, :array_1

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->toBase64URL:[C

    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data

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
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2ds
        0x5fs
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->isURL:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->newline:[B

    .line 7
    .line 8
    iput p3, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->linemax:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->doPadding:Z

    .line 11
    .line 12
    return-void
.end method

.method static synthetic access$000()[C
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->toBase64:[C

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100()[C
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->toBase64URL:[C

    .line 2
    .line 3
    return-object v0
.end method

.method private encode0([BII[B)I
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->isURL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->toBase64URL:[C

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->toBase64:[C

    .line 9
    .line 10
    :goto_0
    sub-int v1, p3, p2

    .line 11
    .line 12
    div-int/lit8 v1, v1, 0x3

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x3

    .line 15
    .line 16
    add-int v2, p2, v1

    .line 17
    .line 18
    iget v3, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->linemax:I

    .line 19
    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    div-int/lit8 v4, v3, 0x4

    .line 23
    .line 24
    mul-int/lit8 v4, v4, 0x3

    .line 25
    .line 26
    if-le v1, v4, :cond_1

    .line 27
    .line 28
    div-int/lit8 v3, v3, 0x4

    .line 29
    .line 30
    mul-int/lit8 v1, v3, 0x3

    .line 31
    .line 32
    :cond_1
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    :goto_1
    if-ge p2, v2, :cond_4

    .line 35
    .line 36
    add-int v5, p2, v1

    .line 37
    .line 38
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    move v6, p2

    .line 43
    move v7, v4

    .line 44
    :goto_2
    if-ge v6, v5, :cond_2

    .line 45
    .line 46
    add-int/lit8 v8, v6, 0x1

    .line 47
    .line 48
    aget-byte v6, p1, v6

    .line 49
    .line 50
    and-int/lit16 v6, v6, 0xff

    .line 51
    .line 52
    shl-int/lit8 v6, v6, 0x10

    .line 53
    .line 54
    add-int/lit8 v9, v8, 0x1

    .line 55
    .line 56
    aget-byte v8, p1, v8

    .line 57
    .line 58
    and-int/lit16 v8, v8, 0xff

    .line 59
    .line 60
    shl-int/lit8 v8, v8, 0x8

    .line 61
    .line 62
    or-int/2addr v6, v8

    .line 63
    add-int/lit8 v8, v9, 0x1

    .line 64
    .line 65
    aget-byte v9, p1, v9

    .line 66
    .line 67
    and-int/lit16 v9, v9, 0xff

    .line 68
    .line 69
    or-int/2addr v6, v9

    .line 70
    add-int/lit8 v9, v7, 0x1

    .line 71
    .line 72
    ushr-int/lit8 v10, v6, 0x12

    .line 73
    .line 74
    and-int/lit8 v10, v10, 0x3f

    .line 75
    .line 76
    aget-char v10, v0, v10

    .line 77
    .line 78
    int-to-byte v10, v10

    .line 79
    aput-byte v10, p4, v7

    .line 80
    .line 81
    add-int/lit8 v7, v9, 0x1

    .line 82
    .line 83
    ushr-int/lit8 v10, v6, 0xc

    .line 84
    .line 85
    and-int/lit8 v10, v10, 0x3f

    .line 86
    .line 87
    aget-char v10, v0, v10

    .line 88
    .line 89
    int-to-byte v10, v10

    .line 90
    aput-byte v10, p4, v9

    .line 91
    .line 92
    add-int/lit8 v9, v7, 0x1

    .line 93
    .line 94
    ushr-int/lit8 v10, v6, 0x6

    .line 95
    .line 96
    and-int/lit8 v10, v10, 0x3f

    .line 97
    .line 98
    aget-char v10, v0, v10

    .line 99
    .line 100
    int-to-byte v10, v10

    .line 101
    aput-byte v10, p4, v7

    .line 102
    .line 103
    add-int/lit8 v7, v9, 0x1

    .line 104
    .line 105
    and-int/lit8 v6, v6, 0x3f

    .line 106
    .line 107
    aget-char v6, v0, v6

    .line 108
    .line 109
    int-to-byte v6, v6

    .line 110
    aput-byte v6, p4, v9

    .line 111
    .line 112
    move v6, v8

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    sub-int p2, v5, p2

    .line 115
    .line 116
    div-int/lit8 p2, p2, 0x3

    .line 117
    .line 118
    mul-int/lit8 p2, p2, 0x4

    .line 119
    .line 120
    add-int/2addr v4, p2

    .line 121
    iget v6, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->linemax:I

    .line 122
    .line 123
    if-ne p2, v6, :cond_3

    .line 124
    .line 125
    if-ge v5, p3, :cond_3

    .line 126
    .line 127
    iget-object p2, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->newline:[B

    .line 128
    .line 129
    array-length v6, p2

    .line 130
    const/4 v7, 0x0

    .line 131
    :goto_3
    if-ge v7, v6, :cond_3

    .line 132
    .line 133
    aget-byte v8, p2, v7

    .line 134
    .line 135
    add-int/lit8 v9, v4, 0x1

    .line 136
    .line 137
    aput-byte v8, p4, v4

    .line 138
    .line 139
    add-int/lit8 v7, v7, 0x1

    .line 140
    .line 141
    move v4, v9

    .line 142
    goto :goto_3

    .line 143
    :cond_3
    move p2, v5

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    if-ge p2, p3, :cond_6

    .line 146
    .line 147
    add-int/lit8 v1, p2, 0x1

    .line 148
    .line 149
    aget-byte p2, p1, p2

    .line 150
    .line 151
    and-int/lit16 p2, p2, 0xff

    .line 152
    .line 153
    add-int/lit8 v2, v4, 0x1

    .line 154
    .line 155
    shr-int/lit8 v3, p2, 0x2

    .line 156
    .line 157
    aget-char v3, v0, v3

    .line 158
    .line 159
    int-to-byte v3, v3

    .line 160
    aput-byte v3, p4, v4

    .line 161
    .line 162
    const/16 v3, 0x3d

    .line 163
    .line 164
    if-ne v1, p3, :cond_5

    .line 165
    .line 166
    add-int/lit8 v4, v2, 0x1

    .line 167
    .line 168
    shl-int/lit8 p1, p2, 0x4

    .line 169
    .line 170
    and-int/lit8 p1, p1, 0x3f

    .line 171
    .line 172
    aget-char p1, v0, p1

    .line 173
    .line 174
    int-to-byte p1, p1

    .line 175
    aput-byte p1, p4, v2

    .line 176
    .line 177
    iget-boolean p1, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->doPadding:Z

    .line 178
    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    add-int/lit8 p1, v4, 0x1

    .line 182
    .line 183
    aput-byte v3, p4, v4

    .line 184
    .line 185
    add-int/lit8 v4, p1, 0x1

    .line 186
    .line 187
    aput-byte v3, p4, p1

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_5
    aget-byte p1, p1, v1

    .line 191
    .line 192
    and-int/lit16 p1, p1, 0xff

    .line 193
    .line 194
    add-int/lit8 p3, v2, 0x1

    .line 195
    .line 196
    shl-int/lit8 p2, p2, 0x4

    .line 197
    .line 198
    and-int/lit8 p2, p2, 0x3f

    .line 199
    .line 200
    shr-int/lit8 v1, p1, 0x4

    .line 201
    .line 202
    or-int/2addr p2, v1

    .line 203
    aget-char p2, v0, p2

    .line 204
    .line 205
    int-to-byte p2, p2

    .line 206
    aput-byte p2, p4, v2

    .line 207
    .line 208
    add-int/lit8 v4, p3, 0x1

    .line 209
    .line 210
    shl-int/lit8 p1, p1, 0x2

    .line 211
    .line 212
    and-int/lit8 p1, p1, 0x3f

    .line 213
    .line 214
    aget-char p1, v0, p1

    .line 215
    .line 216
    int-to-byte p1, p1

    .line 217
    aput-byte p1, p4, p3

    .line 218
    .line 219
    iget-boolean p1, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->doPadding:Z

    .line 220
    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    add-int/lit8 p1, v4, 0x1

    .line 224
    .line 225
    aput-byte v3, p4, v4

    .line 226
    .line 227
    move v4, p1

    .line 228
    :cond_6
    :goto_4
    return v4
.end method

.method private final outLength(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->doPadding:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    div-int/lit8 p1, p1, 0x3

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x4

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    rem-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    div-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    mul-int/lit8 p1, p1, 0x4

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    :goto_0
    add-int/2addr p1, v0

    .line 25
    :goto_1
    iget v0, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->linemax:I

    .line 26
    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    add-int/lit8 v1, p1, -0x1

    .line 30
    .line 31
    div-int/2addr v1, v0

    .line 32
    iget-object v0, p0, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->newline:[B

    .line 33
    .line 34
    array-length v0, v0

    .line 35
    mul-int v1, v1, v0

    .line 36
    .line 37
    add-int/2addr p1, v1

    .line 38
    :cond_2
    return p1
.end method


# virtual methods
.method public encode([B[B)I
    .locals 2

    .line 5
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->outLength(I)I

    move-result v0

    .line 6
    array-length v1, p2

    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    .line 7
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->encode0([BII[B)I

    move-result p1

    return p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output byte array is too small for encoding all input bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->outLength(I)I

    move-result v0

    .line 10
    new-array v1, v0, [B

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v5

    add-int/2addr v4, v5

    .line 14
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 15
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-array v3, v2, [B

    .line 17
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 18
    invoke-direct {p0, v3, p1, v2, v1}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->encode0([BII[B)I

    move-result v2

    :goto_0
    if-eq v2, v0, :cond_1

    .line 19
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 20
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public encode([B)[B
    .locals 4

    .line 1
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->outLength(I)I

    move-result v0

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 3
    array-length v3, p1

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->encode0([BII[B)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 4
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/kwad/sdk/api/proxy/app/ApiBase64$Encoder;->encode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, p1, v2, v2, v1}, Ljava/lang/String;-><init>([BIII)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
