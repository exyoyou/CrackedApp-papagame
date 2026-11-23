.class public final Lcom/kwad/sdk/utils/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private brL:[C

.field public brM:[B

.field public position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/kwad/sdk/utils/a/b;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-array p1, p1, [B

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/b;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/utils/a/b;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brL:[C

    .line 5
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 6
    iput p2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    return-void
.end method

.method private K(II)I
    .locals 3

    .line 1
    :goto_0
    and-int/lit8 v0, p2, -0x80

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x1

    .line 8
    .line 9
    and-int/lit8 v2, p2, 0x7f

    .line 10
    .line 11
    or-int/lit16 v2, v2, 0x80

    .line 12
    .line 13
    int-to-byte v2, v2

    .line 14
    aput-byte v2, v0, p1

    .line 15
    .line 16
    ushr-int/lit8 p2, p2, 0x7

    .line 17
    .line 18
    move p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 21
    .line 22
    add-int/lit8 v1, p1, 0x1

    .line 23
    .line 24
    int-to-byte p2, p2

    .line 25
    aput-byte p2, v0, p1

    .line 26
    .line 27
    return v1
.end method

.method private getLong(I)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte p1, v0, p1

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 p1, v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v6, v1

    and-long/2addr v6, v4

    const/16 v1, 0x8

    shl-long/2addr v6, v1

    or-long v1, v2, v6

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x10

    shl-long/2addr v6, p1

    or-long/2addr v1, v6

    add-int/lit8 p1, v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v6, v4

    const/16 p1, 0x20

    shl-long/2addr v6, p1

    or-long/2addr v1, v6

    add-int/lit8 p1, v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    const/16 v3, 0x28

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, v0, p1

    int-to-long v6, p1

    and-long/2addr v4, v6

    const/16 p1, 0x30

    shl-long/2addr v4, p1

    or-long/2addr v1, v4

    aget-byte p1, v0, v3

    int-to-long v3, p1

    const/16 p1, 0x38

    shl-long/2addr v3, p1

    or-long v0, v1, v3

    return-wide v0
.end method

.method public static gh(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    shr-int/lit8 v0, p0, 0xe

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    shr-int/lit8 v0, p0, 0x15

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    shr-int/lit8 p0, p0, 0x1c

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method private gj(I)[C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brL:[C

    .line 2
    .line 3
    const/16 v1, 0x800

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x100

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    new-array p1, v0, [C

    .line 12
    .line 13
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/b;->brL:[C

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-array p1, v1, [C

    .line 17
    .line 18
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/b;->brL:[C

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    array-length v0, v0

    .line 22
    if-ge v0, p1, :cond_2

    .line 23
    .line 24
    new-array p1, v1, [C

    .line 25
    .line 26
    iput-object p1, p0, Lcom/kwad/sdk/utils/a/b;->brL:[C

    .line 27
    .line 28
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kwad/sdk/utils/a/b;->brL:[C

    .line 29
    .line 30
    return-object p1
.end method

.method private gk(I)Ljava/lang/String;
    .locals 9

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 8
    .line 9
    iget v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 10
    .line 11
    sget-object v3, Lcom/kwad/sdk/utils/a/b;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/b;->gj(I)[C

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 22
    .line 23
    iget v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 24
    .line 25
    add-int/2addr p1, v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v2, p1, :cond_4

    .line 29
    .line 30
    add-int/lit8 v5, v2, 0x1

    .line 31
    .line 32
    aget-byte v2, v1, v2

    .line 33
    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v6, v4, 0x1

    .line 37
    .line 38
    xor-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    int-to-char v2, v2

    .line 41
    aput-char v2, v0, v4

    .line 42
    .line 43
    move v2, v5

    .line 44
    move v4, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 v6, -0x20

    .line 47
    .line 48
    if-ge v2, v6, :cond_2

    .line 49
    .line 50
    add-int/lit8 v6, v5, 0x1

    .line 51
    .line 52
    aget-byte v5, v1, v5

    .line 53
    .line 54
    add-int/lit8 v7, v4, 0x1

    .line 55
    .line 56
    and-int/lit8 v2, v2, 0x1f

    .line 57
    .line 58
    shl-int/lit8 v2, v2, 0x6

    .line 59
    .line 60
    and-int/lit8 v5, v5, 0x3f

    .line 61
    .line 62
    or-int/2addr v2, v5

    .line 63
    int-to-char v2, v2

    .line 64
    aput-char v2, v0, v4

    .line 65
    .line 66
    move v2, v6

    .line 67
    move v4, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const/16 v6, -0x10

    .line 70
    .line 71
    if-ge v2, v6, :cond_3

    .line 72
    .line 73
    add-int/lit8 v6, v5, 0x1

    .line 74
    .line 75
    aget-byte v5, v1, v5

    .line 76
    .line 77
    add-int/lit8 v7, v6, 0x1

    .line 78
    .line 79
    aget-byte v6, v1, v6

    .line 80
    .line 81
    add-int/lit8 v8, v4, 0x1

    .line 82
    .line 83
    and-int/lit8 v2, v2, 0xf

    .line 84
    .line 85
    shl-int/lit8 v2, v2, 0xc

    .line 86
    .line 87
    and-int/lit8 v5, v5, 0x3f

    .line 88
    .line 89
    shl-int/lit8 v5, v5, 0x6

    .line 90
    .line 91
    or-int/2addr v2, v5

    .line 92
    and-int/lit8 v5, v6, 0x3f

    .line 93
    .line 94
    or-int/2addr v2, v5

    .line 95
    int-to-char v2, v2

    .line 96
    aput-char v2, v0, v4

    .line 97
    .line 98
    move v2, v7

    .line 99
    move v4, v8

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .line 102
    .line 103
    aget-byte v5, v1, v5

    .line 104
    .line 105
    add-int/lit8 v7, v6, 0x1

    .line 106
    .line 107
    aget-byte v6, v1, v6

    .line 108
    .line 109
    add-int/lit8 v8, v7, 0x1

    .line 110
    .line 111
    aget-byte v7, v1, v7

    .line 112
    .line 113
    and-int/lit8 v2, v2, 0x7

    .line 114
    .line 115
    shl-int/lit8 v2, v2, 0x12

    .line 116
    .line 117
    and-int/lit8 v5, v5, 0x3f

    .line 118
    .line 119
    shl-int/lit8 v5, v5, 0xc

    .line 120
    .line 121
    or-int/2addr v2, v5

    .line 122
    and-int/lit8 v5, v6, 0x3f

    .line 123
    .line 124
    shl-int/lit8 v5, v5, 0x6

    .line 125
    .line 126
    or-int/2addr v2, v5

    .line 127
    and-int/lit8 v5, v7, 0x3f

    .line 128
    .line 129
    or-int/2addr v2, v5

    .line 130
    add-int/lit8 v5, v4, 0x1

    .line 131
    .line 132
    ushr-int/lit8 v6, v2, 0xa

    .line 133
    .line 134
    const v7, 0xd7c0

    .line 135
    .line 136
    .line 137
    add-int/2addr v6, v7

    .line 138
    int-to-char v6, v6

    .line 139
    aput-char v6, v0, v4

    .line 140
    .line 141
    add-int/lit8 v4, v5, 0x1

    .line 142
    .line 143
    and-int/lit16 v2, v2, 0x3ff

    .line 144
    .line 145
    const v6, 0xdc00

    .line 146
    .line 147
    .line 148
    add-int/2addr v2, v6

    .line 149
    int-to-char v2, v2

    .line 150
    aput-char v2, v0, v5

    .line 151
    .line 152
    move v2, v8

    .line 153
    goto :goto_0

    .line 154
    :cond_4
    if-gt v2, p1, :cond_5

    .line 155
    .line 156
    new-instance p1, Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {p1, v0, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 159
    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    const-string v0, "Invalid String"

    .line 165
    .line 166
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1
.end method

.method private gl(I)Ljava/lang/String;
    .locals 9

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 8
    .line 9
    iget v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 10
    .line 11
    sget-object v3, Lcom/kwad/sdk/utils/a/b;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/b;->gj(I)[C

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 22
    .line 23
    iget v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 24
    .line 25
    add-int/2addr p1, v2

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v2, p1, :cond_4

    .line 29
    .line 30
    add-int/lit8 v5, v2, 0x1

    .line 31
    .line 32
    aget-byte v2, v1, v2

    .line 33
    .line 34
    if-lez v2, :cond_1

    .line 35
    .line 36
    add-int/lit8 v6, v4, 0x1

    .line 37
    .line 38
    int-to-char v2, v2

    .line 39
    aput-char v2, v0, v4

    .line 40
    .line 41
    move v2, v5

    .line 42
    move v4, v6

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v6, -0x20

    .line 45
    .line 46
    if-ge v2, v6, :cond_2

    .line 47
    .line 48
    add-int/lit8 v6, v5, 0x1

    .line 49
    .line 50
    aget-byte v5, v1, v5

    .line 51
    .line 52
    add-int/lit8 v7, v4, 0x1

    .line 53
    .line 54
    and-int/lit8 v2, v2, 0x1f

    .line 55
    .line 56
    shl-int/lit8 v2, v2, 0x6

    .line 57
    .line 58
    and-int/lit8 v5, v5, 0x3f

    .line 59
    .line 60
    or-int/2addr v2, v5

    .line 61
    int-to-char v2, v2

    .line 62
    aput-char v2, v0, v4

    .line 63
    .line 64
    move v2, v6

    .line 65
    move v4, v7

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/16 v6, -0x10

    .line 68
    .line 69
    if-ge v2, v6, :cond_3

    .line 70
    .line 71
    add-int/lit8 v6, v5, 0x1

    .line 72
    .line 73
    aget-byte v5, v1, v5

    .line 74
    .line 75
    add-int/lit8 v7, v6, 0x1

    .line 76
    .line 77
    aget-byte v6, v1, v6

    .line 78
    .line 79
    add-int/lit8 v8, v4, 0x1

    .line 80
    .line 81
    and-int/lit8 v2, v2, 0xf

    .line 82
    .line 83
    shl-int/lit8 v2, v2, 0xc

    .line 84
    .line 85
    and-int/lit8 v5, v5, 0x3f

    .line 86
    .line 87
    shl-int/lit8 v5, v5, 0x6

    .line 88
    .line 89
    or-int/2addr v2, v5

    .line 90
    and-int/lit8 v5, v6, 0x3f

    .line 91
    .line 92
    or-int/2addr v2, v5

    .line 93
    int-to-char v2, v2

    .line 94
    aput-char v2, v0, v4

    .line 95
    .line 96
    move v2, v7

    .line 97
    move v4, v8

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .line 100
    .line 101
    aget-byte v5, v1, v5

    .line 102
    .line 103
    add-int/lit8 v7, v6, 0x1

    .line 104
    .line 105
    aget-byte v6, v1, v6

    .line 106
    .line 107
    add-int/lit8 v8, v7, 0x1

    .line 108
    .line 109
    aget-byte v7, v1, v7

    .line 110
    .line 111
    and-int/lit8 v2, v2, 0x7

    .line 112
    .line 113
    shl-int/lit8 v2, v2, 0x12

    .line 114
    .line 115
    and-int/lit8 v5, v5, 0x3f

    .line 116
    .line 117
    shl-int/lit8 v5, v5, 0xc

    .line 118
    .line 119
    or-int/2addr v2, v5

    .line 120
    and-int/lit8 v5, v6, 0x3f

    .line 121
    .line 122
    shl-int/lit8 v5, v5, 0x6

    .line 123
    .line 124
    or-int/2addr v2, v5

    .line 125
    and-int/lit8 v5, v7, 0x3f

    .line 126
    .line 127
    or-int/2addr v2, v5

    .line 128
    add-int/lit8 v5, v4, 0x1

    .line 129
    .line 130
    ushr-int/lit8 v6, v2, 0xa

    .line 131
    .line 132
    const v7, 0xd7c0

    .line 133
    .line 134
    .line 135
    add-int/2addr v6, v7

    .line 136
    int-to-char v6, v6

    .line 137
    aput-char v6, v0, v4

    .line 138
    .line 139
    add-int/lit8 v4, v5, 0x1

    .line 140
    .line 141
    and-int/lit16 v2, v2, 0x3ff

    .line 142
    .line 143
    const v6, 0xdc00

    .line 144
    .line 145
    .line 146
    add-int/2addr v2, v6

    .line 147
    int-to-char v2, v2

    .line 148
    aput-char v2, v0, v5

    .line 149
    .line 150
    move v2, v8

    .line 151
    goto :goto_0

    .line 152
    :cond_4
    if-gt v2, p1, :cond_5

    .line 153
    .line 154
    new-instance p1, Ljava/lang/String;

    .line 155
    .line 156
    invoke-direct {p1, v0, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 157
    .line 158
    .line 159
    return-object p1

    .line 160
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 161
    .line 162
    const-string v0, "Invalid String"

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1
.end method

.method public static iu(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_4

    .line 8
    .line 9
    add-int/lit8 v3, v1, 0x1

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v4, 0x80

    .line 16
    .line 17
    if-ge v1, v4, :cond_0

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    :goto_1
    move v1, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v4, 0x800

    .line 24
    .line 25
    if-ge v1, v4, :cond_1

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const v4, 0xd800

    .line 31
    .line 32
    .line 33
    if-lt v1, v4, :cond_3

    .line 34
    .line 35
    const v4, 0xdfff

    .line 36
    .line 37
    .line 38
    if-le v1, v4, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_4
    return v2
.end method

.method private iv(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_4

    .line 11
    .line 12
    add-int/lit8 v4, v3, 0x1

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v5, 0x80

    .line 19
    .line 20
    if-ge v3, v5, :cond_0

    .line 21
    .line 22
    add-int/lit8 v5, v1, 0x1

    .line 23
    .line 24
    xor-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    int-to-byte v3, v3

    .line 27
    aput-byte v3, v0, v1

    .line 28
    .line 29
    move v3, v4

    .line 30
    move v1, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v6, 0x800

    .line 33
    .line 34
    if-ge v3, v6, :cond_1

    .line 35
    .line 36
    add-int/lit8 v6, v1, 0x1

    .line 37
    .line 38
    ushr-int/lit8 v7, v3, 0x6

    .line 39
    .line 40
    or-int/lit16 v7, v7, 0xc0

    .line 41
    .line 42
    int-to-byte v7, v7

    .line 43
    aput-byte v7, v0, v1

    .line 44
    .line 45
    add-int/lit8 v1, v6, 0x1

    .line 46
    .line 47
    and-int/lit8 v3, v3, 0x3f

    .line 48
    .line 49
    or-int/2addr v3, v5

    .line 50
    int-to-byte v3, v3

    .line 51
    aput-byte v3, v0, v6

    .line 52
    .line 53
    move v3, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const v6, 0xd800

    .line 56
    .line 57
    .line 58
    if-lt v3, v6, :cond_3

    .line 59
    .line 60
    const v6, 0xdfff

    .line 61
    .line 62
    .line 63
    if-le v3, v6, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    add-int/lit8 v6, v4, 0x1

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    shl-int/lit8 v3, v3, 0xa

    .line 73
    .line 74
    add-int/2addr v3, v4

    .line 75
    const v4, -0x35fdc00

    .line 76
    .line 77
    .line 78
    add-int/2addr v3, v4

    .line 79
    add-int/lit8 v4, v1, 0x1

    .line 80
    .line 81
    ushr-int/lit8 v7, v3, 0x12

    .line 82
    .line 83
    or-int/lit16 v7, v7, 0xf0

    .line 84
    .line 85
    int-to-byte v7, v7

    .line 86
    aput-byte v7, v0, v1

    .line 87
    .line 88
    add-int/lit8 v1, v4, 0x1

    .line 89
    .line 90
    ushr-int/lit8 v7, v3, 0xc

    .line 91
    .line 92
    and-int/lit8 v7, v7, 0x3f

    .line 93
    .line 94
    or-int/2addr v7, v5

    .line 95
    int-to-byte v7, v7

    .line 96
    aput-byte v7, v0, v4

    .line 97
    .line 98
    add-int/lit8 v4, v1, 0x1

    .line 99
    .line 100
    ushr-int/lit8 v7, v3, 0x6

    .line 101
    .line 102
    and-int/lit8 v7, v7, 0x3f

    .line 103
    .line 104
    or-int/2addr v7, v5

    .line 105
    int-to-byte v7, v7

    .line 106
    aput-byte v7, v0, v1

    .line 107
    .line 108
    add-int/lit8 v1, v4, 0x1

    .line 109
    .line 110
    and-int/lit8 v3, v3, 0x3f

    .line 111
    .line 112
    or-int/2addr v3, v5

    .line 113
    int-to-byte v3, v3

    .line 114
    aput-byte v3, v0, v4

    .line 115
    .line 116
    move v3, v6

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    :goto_1
    add-int/lit8 v6, v1, 0x1

    .line 119
    .line 120
    ushr-int/lit8 v7, v3, 0xc

    .line 121
    .line 122
    or-int/lit16 v7, v7, 0xe0

    .line 123
    .line 124
    int-to-byte v7, v7

    .line 125
    aput-byte v7, v0, v1

    .line 126
    .line 127
    add-int/lit8 v1, v6, 0x1

    .line 128
    .line 129
    ushr-int/lit8 v7, v3, 0x6

    .line 130
    .line 131
    and-int/lit8 v7, v7, 0x3f

    .line 132
    .line 133
    or-int/2addr v7, v5

    .line 134
    int-to-byte v7, v7

    .line 135
    aput-byte v7, v0, v6

    .line 136
    .line 137
    add-int/lit8 v6, v1, 0x1

    .line 138
    .line 139
    and-int/lit8 v3, v3, 0x3f

    .line 140
    .line 141
    or-int/2addr v3, v5

    .line 142
    int-to-byte v3, v3

    .line 143
    aput-byte v3, v0, v1

    .line 144
    .line 145
    move v3, v4

    .line 146
    move v1, v6

    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_4
    iput v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 150
    .line 151
    return-void
.end method

.method public static iw(Ljava/lang/String;)[B
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/utils/a/b;->iu(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_4

    .line 14
    .line 15
    add-int/lit8 v4, v2, 0x1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v5, 0x80

    .line 22
    .line 23
    if-ge v2, v5, :cond_0

    .line 24
    .line 25
    add-int/lit8 v5, v3, 0x1

    .line 26
    .line 27
    xor-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    int-to-byte v2, v2

    .line 30
    aput-byte v2, v0, v3

    .line 31
    .line 32
    move v2, v4

    .line 33
    move v3, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v6, 0x800

    .line 36
    .line 37
    if-ge v2, v6, :cond_1

    .line 38
    .line 39
    add-int/lit8 v6, v3, 0x1

    .line 40
    .line 41
    ushr-int/lit8 v7, v2, 0x6

    .line 42
    .line 43
    or-int/lit16 v7, v7, 0xc0

    .line 44
    .line 45
    int-to-byte v7, v7

    .line 46
    aput-byte v7, v0, v3

    .line 47
    .line 48
    add-int/lit8 v3, v6, 0x1

    .line 49
    .line 50
    and-int/lit8 v2, v2, 0x3f

    .line 51
    .line 52
    or-int/2addr v2, v5

    .line 53
    int-to-byte v2, v2

    .line 54
    aput-byte v2, v0, v6

    .line 55
    .line 56
    move v2, v4

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const v6, 0xd800

    .line 59
    .line 60
    .line 61
    if-lt v2, v6, :cond_3

    .line 62
    .line 63
    const v6, 0xdfff

    .line 64
    .line 65
    .line 66
    if-le v2, v6, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v6, v4, 0x1

    .line 70
    .line 71
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    shl-int/lit8 v2, v2, 0xa

    .line 76
    .line 77
    add-int/2addr v2, v4

    .line 78
    const v4, -0x35fdc00

    .line 79
    .line 80
    .line 81
    add-int/2addr v2, v4

    .line 82
    add-int/lit8 v4, v3, 0x1

    .line 83
    .line 84
    ushr-int/lit8 v7, v2, 0x12

    .line 85
    .line 86
    or-int/lit16 v7, v7, 0xf0

    .line 87
    .line 88
    int-to-byte v7, v7

    .line 89
    aput-byte v7, v0, v3

    .line 90
    .line 91
    add-int/lit8 v3, v4, 0x1

    .line 92
    .line 93
    ushr-int/lit8 v7, v2, 0xc

    .line 94
    .line 95
    and-int/lit8 v7, v7, 0x3f

    .line 96
    .line 97
    or-int/2addr v7, v5

    .line 98
    int-to-byte v7, v7

    .line 99
    aput-byte v7, v0, v4

    .line 100
    .line 101
    add-int/lit8 v4, v3, 0x1

    .line 102
    .line 103
    ushr-int/lit8 v7, v2, 0x6

    .line 104
    .line 105
    and-int/lit8 v7, v7, 0x3f

    .line 106
    .line 107
    or-int/2addr v7, v5

    .line 108
    int-to-byte v7, v7

    .line 109
    aput-byte v7, v0, v3

    .line 110
    .line 111
    add-int/lit8 v3, v4, 0x1

    .line 112
    .line 113
    and-int/lit8 v2, v2, 0x3f

    .line 114
    .line 115
    or-int/2addr v2, v5

    .line 116
    int-to-byte v2, v2

    .line 117
    aput-byte v2, v0, v4

    .line 118
    .line 119
    move v2, v6

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    :goto_1
    add-int/lit8 v6, v3, 0x1

    .line 122
    .line 123
    ushr-int/lit8 v7, v2, 0xc

    .line 124
    .line 125
    or-int/lit16 v7, v7, 0xe0

    .line 126
    .line 127
    int-to-byte v7, v7

    .line 128
    aput-byte v7, v0, v3

    .line 129
    .line 130
    add-int/lit8 v3, v6, 0x1

    .line 131
    .line 132
    ushr-int/lit8 v7, v2, 0x6

    .line 133
    .line 134
    and-int/lit8 v7, v7, 0x3f

    .line 135
    .line 136
    or-int/2addr v7, v5

    .line 137
    int-to-byte v7, v7

    .line 138
    aput-byte v7, v0, v6

    .line 139
    .line 140
    add-int/lit8 v6, v3, 0x1

    .line 141
    .line 142
    and-int/lit8 v2, v2, 0x3f

    .line 143
    .line 144
    or-int/2addr v2, v5

    .line 145
    int-to-byte v2, v2

    .line 146
    aput-byte v2, v0, v3

    .line 147
    .line 148
    move v2, v4

    .line 149
    move v3, v6

    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_4
    return-object v0
.end method

.method static j([BI)Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v2, p1, :cond_3

    .line 8
    .line 9
    add-int/lit8 v4, v2, 0x1

    .line 10
    .line 11
    aget-byte v2, p0, v2

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    add-int/lit8 v5, v3, 0x1

    .line 16
    .line 17
    xor-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    int-to-char v2, v2

    .line 20
    aput-char v2, v0, v3

    .line 21
    .line 22
    move v2, v4

    .line 23
    move v3, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v5, -0x20

    .line 26
    .line 27
    if-ge v2, v5, :cond_1

    .line 28
    .line 29
    add-int/lit8 v5, v4, 0x1

    .line 30
    .line 31
    aget-byte v4, p0, v4

    .line 32
    .line 33
    add-int/lit8 v6, v3, 0x1

    .line 34
    .line 35
    and-int/lit8 v2, v2, 0x1f

    .line 36
    .line 37
    shl-int/lit8 v2, v2, 0x6

    .line 38
    .line 39
    and-int/lit8 v4, v4, 0x3f

    .line 40
    .line 41
    or-int/2addr v2, v4

    .line 42
    int-to-char v2, v2

    .line 43
    aput-char v2, v0, v3

    .line 44
    .line 45
    move v2, v5

    .line 46
    move v3, v6

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v5, -0x10

    .line 49
    .line 50
    if-ge v2, v5, :cond_2

    .line 51
    .line 52
    add-int/lit8 v5, v4, 0x1

    .line 53
    .line 54
    aget-byte v4, p0, v4

    .line 55
    .line 56
    add-int/lit8 v6, v5, 0x1

    .line 57
    .line 58
    aget-byte v5, p0, v5

    .line 59
    .line 60
    add-int/lit8 v7, v3, 0x1

    .line 61
    .line 62
    and-int/lit8 v2, v2, 0xf

    .line 63
    .line 64
    shl-int/lit8 v2, v2, 0xc

    .line 65
    .line 66
    and-int/lit8 v4, v4, 0x3f

    .line 67
    .line 68
    shl-int/lit8 v4, v4, 0x6

    .line 69
    .line 70
    or-int/2addr v2, v4

    .line 71
    and-int/lit8 v4, v5, 0x3f

    .line 72
    .line 73
    or-int/2addr v2, v4

    .line 74
    int-to-char v2, v2

    .line 75
    aput-char v2, v0, v3

    .line 76
    .line 77
    move v2, v6

    .line 78
    move v3, v7

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v5, v4, 0x1

    .line 81
    .line 82
    aget-byte v4, p0, v4

    .line 83
    .line 84
    add-int/lit8 v6, v5, 0x1

    .line 85
    .line 86
    aget-byte v5, p0, v5

    .line 87
    .line 88
    add-int/lit8 v7, v6, 0x1

    .line 89
    .line 90
    aget-byte v6, p0, v6

    .line 91
    .line 92
    and-int/lit8 v2, v2, 0x7

    .line 93
    .line 94
    shl-int/lit8 v2, v2, 0x12

    .line 95
    .line 96
    and-int/lit8 v4, v4, 0x3f

    .line 97
    .line 98
    shl-int/lit8 v4, v4, 0xc

    .line 99
    .line 100
    or-int/2addr v2, v4

    .line 101
    and-int/lit8 v4, v5, 0x3f

    .line 102
    .line 103
    shl-int/lit8 v4, v4, 0x6

    .line 104
    .line 105
    or-int/2addr v2, v4

    .line 106
    and-int/lit8 v4, v6, 0x3f

    .line 107
    .line 108
    or-int/2addr v2, v4

    .line 109
    add-int/lit8 v4, v3, 0x1

    .line 110
    .line 111
    ushr-int/lit8 v5, v2, 0xa

    .line 112
    .line 113
    const v6, 0xd7c0

    .line 114
    .line 115
    .line 116
    add-int/2addr v5, v6

    .line 117
    int-to-char v5, v5

    .line 118
    aput-char v5, v0, v3

    .line 119
    .line 120
    add-int/lit8 v3, v4, 0x1

    .line 121
    .line 122
    and-int/lit16 v2, v2, 0x3ff

    .line 123
    .line 124
    const v5, 0xdc00

    .line 125
    .line 126
    .line 127
    add-int/2addr v2, v5

    .line 128
    int-to-char v2, v2

    .line 129
    aput-char v2, v0, v4

    .line 130
    .line 131
    move v2, v7

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    if-gt v2, p1, :cond_4

    .line 134
    .line 135
    new-instance p0, Ljava/lang/String;

    .line 136
    .line 137
    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 138
    .line 139
    .line 140
    return-object p0

    .line 141
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    const-string p1, "Invalid String"

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0
.end method


# virtual methods
.method public final J(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    int-to-byte v2, p2

    .line 6
    aput-byte v2, v0, p1

    .line 7
    .line 8
    add-int/lit8 p1, v1, 0x1

    .line 9
    .line 10
    shr-int/lit8 v2, p2, 0x8

    .line 11
    .line 12
    int-to-byte v2, v2

    .line 13
    aput-byte v2, v0, v1

    .line 14
    .line 15
    add-int/lit8 v1, p1, 0x1

    .line 16
    .line 17
    shr-int/lit8 v2, p2, 0x10

    .line 18
    .line 19
    int-to-byte v2, v2

    .line 20
    aput-byte v2, v0, p1

    .line 21
    .line 22
    shr-int/lit8 p1, p2, 0x18

    .line 23
    .line 24
    int-to-byte p1, p1

    .line 25
    aput-byte p1, v0, v1

    .line 26
    .line 27
    return-void
.end method

.method final L(II)J
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-gtz p2, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    shr-int/lit8 v2, p2, 0x3

    .line 7
    .line 8
    and-int/lit8 p2, p2, 0x7

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    move v5, p1

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, v5}, Lcom/kwad/sdk/utils/a/b;->getLong(I)J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    xor-long/2addr v0, v6

    .line 20
    add-int/lit8 v5, v5, 0x8

    .line 21
    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    shl-int/lit8 p2, p2, 0x3

    .line 26
    .line 27
    :goto_1
    if-ge v3, p2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 30
    .line 31
    add-int/lit8 v4, v5, 0x1

    .line 32
    .line 33
    aget-byte v2, v2, v5

    .line 34
    .line 35
    int-to-long v5, v2

    .line 36
    const-wide/16 v7, 0xff

    .line 37
    .line 38
    and-long/2addr v5, v7

    .line 39
    shl-long/2addr v5, v3

    .line 40
    xor-long/2addr v0, v5

    .line 41
    add-int/lit8 v3, v3, 0x8

    .line 42
    .line 43
    move v5, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    and-int/lit8 p1, p1, 0x7

    .line 46
    .line 47
    shl-int/lit8 p1, p1, 0x3

    .line 48
    .line 49
    shl-long v2, v0, p1

    .line 50
    .line 51
    rsub-int/lit8 p1, p1, 0x40

    .line 52
    .line 53
    ushr-long p1, v0, p1

    .line 54
    .line 55
    or-long/2addr p1, v2

    .line 56
    return-wide p1
.end method

.method public final Xj()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 8
    .line 9
    aget-byte v1, v0, v1

    .line 10
    .line 11
    shr-int/lit8 v3, v1, 0x7

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    and-int/lit8 v1, v1, 0x7f

    .line 17
    .line 18
    add-int/lit8 v3, v2, 0x1

    .line 19
    .line 20
    iput v3, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 21
    .line 22
    aget-byte v2, v0, v2

    .line 23
    .line 24
    shl-int/lit8 v2, v2, 0x7

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    shr-int/lit8 v2, v1, 0xe

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    and-int/lit16 v1, v1, 0x3fff

    .line 33
    .line 34
    add-int/lit8 v2, v3, 0x1

    .line 35
    .line 36
    iput v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 37
    .line 38
    aget-byte v3, v0, v3

    .line 39
    .line 40
    shl-int/lit8 v3, v3, 0xe

    .line 41
    .line 42
    or-int/2addr v1, v3

    .line 43
    shr-int/lit8 v3, v1, 0x15

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    const v3, 0x1fffff

    .line 49
    .line 50
    .line 51
    and-int/2addr v1, v3

    .line 52
    add-int/lit8 v3, v2, 0x1

    .line 53
    .line 54
    iput v3, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 55
    .line 56
    aget-byte v2, v0, v2

    .line 57
    .line 58
    shl-int/lit8 v2, v2, 0x15

    .line 59
    .line 60
    or-int/2addr v1, v2

    .line 61
    shr-int/lit8 v2, v1, 0x1c

    .line 62
    .line 63
    if-nez v2, :cond_3

    .line 64
    .line 65
    return v1

    .line 66
    :cond_3
    const v2, 0xfffffff

    .line 67
    .line 68
    .line 69
    and-int/2addr v1, v2

    .line 70
    add-int/lit8 v2, v3, 0x1

    .line 71
    .line 72
    iput v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 73
    .line 74
    aget-byte v0, v0, v3

    .line 75
    .line 76
    shl-int/lit8 v0, v0, 0x1c

    .line 77
    .line 78
    or-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public final a(S)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    int-to-byte v3, p1

    .line 8
    aput-byte v3, v0, v1

    .line 9
    .line 10
    add-int/lit8 v1, v2, 0x1

    .line 11
    .line 12
    iput v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 13
    .line 14
    shr-int/lit8 p1, p1, 0x8

    .line 15
    .line 16
    int-to-byte p1, p1

    .line 17
    aput-byte p1, v0, v2

    .line 18
    .line 19
    return-void
.end method

.method public final bg(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/kwad/sdk/utils/a/b;->h(IJ)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x8

    .line 9
    .line 10
    iput p1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 11
    .line 12
    return-void
.end method

.method public final e(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 8
    .line 9
    aput-byte p1, v0, v1

    .line 10
    .line 11
    return-void
.end method

.method public final get()B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 8
    .line 9
    aget-byte v0, v0, v1

    .line 10
    .line 11
    return v0
.end method

.method public final getBytes(I)[B
    .locals 4

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 4
    .line 5
    iget v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 12
    .line 13
    add-int/2addr v1, p1

    .line 14
    iput v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 15
    .line 16
    return-object v0
.end method

.method public final getDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/utils/a/b;->getLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final getFloat()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/kwad/sdk/utils/a/b;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getInt()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v1, v0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x1

    .line 12
    .line 13
    aget-byte v2, v0, v2

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    shl-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    or-int/2addr v1, v2

    .line 20
    add-int/lit8 v2, v3, 0x1

    .line 21
    .line 22
    aget-byte v3, v0, v3

    .line 23
    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 25
    .line 26
    shl-int/lit8 v3, v3, 0x10

    .line 27
    .line 28
    or-int/2addr v1, v3

    .line 29
    add-int/lit8 v3, v2, 0x1

    .line 30
    .line 31
    iput v3, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 32
    .line 33
    aget-byte v0, v0, v2

    .line 34
    .line 35
    shl-int/lit8 v0, v0, 0x18

    .line 36
    .line 37
    or-int/2addr v0, v1

    .line 38
    return v0
.end method

.method public final getLong()J
    .locals 3

    .line 2
    iget v0, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/a/b;->getLong(I)J

    move-result-wide v0

    .line 3
    iget v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    return-wide v0
.end method

.method public final getShort()S
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v1, v0, v1

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    add-int/lit8 v3, v2, 0x1

    .line 12
    .line 13
    iput v3, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 14
    .line 15
    aget-byte v0, v0, v2

    .line 16
    .line 17
    shl-int/lit8 v0, v0, 0x8

    .line 18
    .line 19
    or-int/2addr v0, v1

    .line 20
    int-to-short v0, v0

    .line 21
    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/b;->gk(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 15
    .line 16
    add-int/2addr v1, p1

    .line 17
    iput v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 18
    .line 19
    return-object v0
.end method

.method public final gf(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    int-to-byte v3, p1

    .line 8
    aput-byte v3, v0, v1

    .line 9
    .line 10
    add-int/lit8 v1, v2, 0x1

    .line 11
    .line 12
    shr-int/lit8 v3, p1, 0x8

    .line 13
    .line 14
    int-to-byte v3, v3

    .line 15
    aput-byte v3, v0, v2

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    shr-int/lit8 v3, p1, 0x10

    .line 20
    .line 21
    int-to-byte v3, v3

    .line 22
    aput-byte v3, v0, v1

    .line 23
    .line 24
    add-int/lit8 v1, v2, 0x1

    .line 25
    .line 26
    iput v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 27
    .line 28
    shr-int/lit8 p1, p1, 0x18

    .line 29
    .line 30
    int-to-byte p1, p1

    .line 31
    aput-byte p1, v0, v2

    .line 32
    .line 33
    return-void
.end method

.method public final gg(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/kwad/sdk/utils/a/b;->K(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 8
    .line 9
    return-void
.end method

.method public final gi(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/b;->gl(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 15
    .line 16
    add-int/2addr v1, p1

    .line 17
    iput v1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 18
    .line 19
    return-object v0
.end method

.method public final h(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    long-to-int v2, p2

    .line 6
    int-to-byte v2, v2

    .line 7
    aput-byte v2, v0, p1

    .line 8
    .line 9
    add-int/lit8 p1, v1, 0x1

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    shr-long v2, p2, v2

    .line 14
    .line 15
    long-to-int v3, v2

    .line 16
    int-to-byte v2, v3

    .line 17
    aput-byte v2, v0, v1

    .line 18
    .line 19
    add-int/lit8 v1, p1, 0x1

    .line 20
    .line 21
    const/16 v2, 0x10

    .line 22
    .line 23
    shr-long v2, p2, v2

    .line 24
    .line 25
    long-to-int v3, v2

    .line 26
    int-to-byte v2, v3

    .line 27
    aput-byte v2, v0, p1

    .line 28
    .line 29
    add-int/lit8 p1, v1, 0x1

    .line 30
    .line 31
    const/16 v2, 0x18

    .line 32
    .line 33
    shr-long v2, p2, v2

    .line 34
    .line 35
    long-to-int v3, v2

    .line 36
    int-to-byte v2, v3

    .line 37
    aput-byte v2, v0, v1

    .line 38
    .line 39
    add-int/lit8 v1, p1, 0x1

    .line 40
    .line 41
    const/16 v2, 0x20

    .line 42
    .line 43
    shr-long v2, p2, v2

    .line 44
    .line 45
    long-to-int v3, v2

    .line 46
    int-to-byte v2, v3

    .line 47
    aput-byte v2, v0, p1

    .line 48
    .line 49
    add-int/lit8 p1, v1, 0x1

    .line 50
    .line 51
    const/16 v2, 0x28

    .line 52
    .line 53
    shr-long v2, p2, v2

    .line 54
    .line 55
    long-to-int v3, v2

    .line 56
    int-to-byte v2, v3

    .line 57
    aput-byte v2, v0, v1

    .line 58
    .line 59
    add-int/lit8 v1, p1, 0x1

    .line 60
    .line 61
    const/16 v2, 0x30

    .line 62
    .line 63
    shr-long v2, p2, v2

    .line 64
    .line 65
    long-to-int v3, v2

    .line 66
    int-to-byte v2, v3

    .line 67
    aput-byte v2, v0, p1

    .line 68
    .line 69
    const/16 p1, 0x38

    .line 70
    .line 71
    shr-long p1, p2, p1

    .line 72
    .line 73
    long-to-int p2, p1

    .line 74
    int-to-byte p1, p2

    .line 75
    aput-byte p1, v0, v1

    .line 76
    .line 77
    return-void
.end method

.method public final it(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/kwad/sdk/utils/a/b;->iv(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final p([B)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/kwad/sdk/utils/a/b;->brM:[B

    .line 5
    .line 6
    iget v2, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    iget p1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 13
    .line 14
    add-int/2addr p1, v0

    .line 15
    iput p1, p0, Lcom/kwad/sdk/utils/a/b;->position:I

    .line 16
    .line 17
    :cond_0
    return-void
.end method
