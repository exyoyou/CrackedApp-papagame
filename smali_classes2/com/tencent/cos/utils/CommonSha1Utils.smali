.class public final Lcom/tencent/cos/utils/CommonSha1Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private block:[I

.field private blockIndex:I

.field private count:J

.field dd:[I

.field public digestBits:[B

.field public digestValid:Z

.field private state:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    iput-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 14
    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    iput-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    .line 22
    .line 23
    const/16 v0, 0x14

    .line 24
    .line 25
    new-array v0, v0, [B

    .line 26
    .line 27
    iput-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestBits:[B

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestValid:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method final R0([IIIIIII)V
    .locals 2

    .line 1
    aget v0, p1, p6

    .line 2
    .line 3
    aget v1, p1, p3

    .line 4
    .line 5
    aget p4, p1, p4

    .line 6
    .line 7
    aget p5, p1, p5

    .line 8
    .line 9
    xor-int/2addr p4, p5

    .line 10
    and-int/2addr p4, v1

    .line 11
    xor-int/2addr p4, p5

    .line 12
    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk0(I)I

    .line 13
    .line 14
    .line 15
    move-result p5

    .line 16
    add-int/2addr p4, p5

    .line 17
    const p5, 0x5a827999

    .line 18
    .line 19
    .line 20
    add-int/2addr p4, p5

    .line 21
    aget p2, p1, p2

    .line 22
    .line 23
    const/4 p5, 0x5

    .line 24
    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    add-int/2addr p4, p2

    .line 29
    add-int/2addr v0, p4

    .line 30
    aput v0, p1, p6

    .line 31
    .line 32
    aget p2, p1, p3

    .line 33
    .line 34
    const/16 p4, 0x1e

    .line 35
    .line 36
    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    aput p2, p1, p3

    .line 41
    .line 42
    return-void
.end method

.method final R1([IIIIIII)V
    .locals 2

    .line 1
    aget v0, p1, p6

    .line 2
    .line 3
    aget v1, p1, p3

    .line 4
    .line 5
    aget p4, p1, p4

    .line 6
    .line 7
    aget p5, p1, p5

    .line 8
    .line 9
    xor-int/2addr p4, p5

    .line 10
    and-int/2addr p4, v1

    .line 11
    xor-int/2addr p4, p5

    .line 12
    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk(I)I

    .line 13
    .line 14
    .line 15
    move-result p5

    .line 16
    add-int/2addr p4, p5

    .line 17
    const p5, 0x5a827999

    .line 18
    .line 19
    .line 20
    add-int/2addr p4, p5

    .line 21
    aget p2, p1, p2

    .line 22
    .line 23
    const/4 p5, 0x5

    .line 24
    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    add-int/2addr p4, p2

    .line 29
    add-int/2addr v0, p4

    .line 30
    aput v0, p1, p6

    .line 31
    .line 32
    aget p2, p1, p3

    .line 33
    .line 34
    const/16 p4, 0x1e

    .line 35
    .line 36
    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    aput p2, p1, p3

    .line 41
    .line 42
    return-void
.end method

.method final R2([IIIIIII)V
    .locals 2

    .line 1
    aget v0, p1, p6

    .line 2
    .line 3
    aget v1, p1, p3

    .line 4
    .line 5
    aget p4, p1, p4

    .line 6
    .line 7
    xor-int/2addr p4, v1

    .line 8
    aget p5, p1, p5

    .line 9
    .line 10
    xor-int/2addr p4, p5

    .line 11
    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk(I)I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    add-int/2addr p4, p5

    .line 16
    const p5, 0x6ed9eba1

    .line 17
    .line 18
    .line 19
    add-int/2addr p4, p5

    .line 20
    aget p2, p1, p2

    .line 21
    .line 22
    const/4 p5, 0x5

    .line 23
    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    add-int/2addr p4, p2

    .line 28
    add-int/2addr v0, p4

    .line 29
    aput v0, p1, p6

    .line 30
    .line 31
    aget p2, p1, p3

    .line 32
    .line 33
    const/16 p4, 0x1e

    .line 34
    .line 35
    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    aput p2, p1, p3

    .line 40
    .line 41
    return-void
.end method

.method final R3([IIIIIII)V
    .locals 3

    .line 1
    aget v0, p1, p6

    .line 2
    .line 3
    aget v1, p1, p3

    .line 4
    .line 5
    aget p4, p1, p4

    .line 6
    .line 7
    or-int v2, v1, p4

    .line 8
    .line 9
    aget p5, p1, p5

    .line 10
    .line 11
    and-int/2addr p5, v2

    .line 12
    and-int/2addr p4, v1

    .line 13
    or-int/2addr p4, p5

    .line 14
    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk(I)I

    .line 15
    .line 16
    .line 17
    move-result p5

    .line 18
    add-int/2addr p4, p5

    .line 19
    const p5, -0x70e44324

    .line 20
    .line 21
    .line 22
    add-int/2addr p4, p5

    .line 23
    aget p2, p1, p2

    .line 24
    .line 25
    const/4 p5, 0x5

    .line 26
    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    add-int/2addr p4, p2

    .line 31
    add-int/2addr v0, p4

    .line 32
    aput v0, p1, p6

    .line 33
    .line 34
    aget p2, p1, p3

    .line 35
    .line 36
    const/16 p4, 0x1e

    .line 37
    .line 38
    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    aput p2, p1, p3

    .line 43
    .line 44
    return-void
.end method

.method final R4([IIIIIII)V
    .locals 2

    .line 1
    aget v0, p1, p6

    .line 2
    .line 3
    aget v1, p1, p3

    .line 4
    .line 5
    aget p4, p1, p4

    .line 6
    .line 7
    xor-int/2addr p4, v1

    .line 8
    aget p5, p1, p5

    .line 9
    .line 10
    xor-int/2addr p4, p5

    .line 11
    invoke-virtual {p0, p7}, Lcom/tencent/cos/utils/CommonSha1Utils;->blk(I)I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    add-int/2addr p4, p5

    .line 16
    const p5, -0x359d3e2a    # -3715189.5f

    .line 17
    .line 18
    .line 19
    add-int/2addr p4, p5

    .line 20
    aget p2, p1, p2

    .line 21
    .line 22
    const/4 p5, 0x5

    .line 23
    invoke-virtual {p0, p2, p5}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    add-int/2addr p4, p2

    .line 28
    add-int/2addr v0, p4

    .line 29
    aput v0, p1, p6

    .line 30
    .line 31
    aget p2, p1, p3

    .line 32
    .line 33
    const/16 p4, 0x1e

    .line 34
    .line 35
    invoke-virtual {p0, p2, p4}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    aput p2, p1, p3

    .line 40
    .line 41
    return-void
.end method

.method final blk(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    .line 2
    .line 3
    and-int/lit8 v1, p1, 0xf

    .line 4
    .line 5
    add-int/lit8 v2, p1, 0xd

    .line 6
    .line 7
    and-int/lit8 v2, v2, 0xf

    .line 8
    .line 9
    aget v2, v0, v2

    .line 10
    .line 11
    add-int/lit8 v3, p1, 0x8

    .line 12
    .line 13
    and-int/lit8 v3, v3, 0xf

    .line 14
    .line 15
    aget v3, v0, v3

    .line 16
    .line 17
    xor-int/2addr v2, v3

    .line 18
    add-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    and-int/lit8 p1, p1, 0xf

    .line 21
    .line 22
    aget p1, v0, p1

    .line 23
    .line 24
    xor-int/2addr p1, v2

    .line 25
    aget v2, v0, v1

    .line 26
    .line 27
    xor-int/2addr p1, v2

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0, p1, v2}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    aput p1, v0, v1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    .line 36
    .line 37
    aget p1, p1, v1

    .line 38
    .line 39
    return p1
.end method

.method final blk0(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v2, -0xff0100

    .line 12
    .line 13
    .line 14
    and-int/2addr v1, v2

    .line 15
    iget-object v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    .line 16
    .line 17
    aget v2, v2, p1

    .line 18
    .line 19
    const/16 v3, 0x8

    .line 20
    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->rol(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const v3, 0xff00ff

    .line 26
    .line 27
    .line 28
    and-int/2addr v2, v3

    .line 29
    or-int/2addr v1, v2

    .line 30
    aput v1, v0, p1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    .line 33
    .line 34
    aget p1, v0, p1

    .line 35
    .line 36
    return p1
.end method

.method public digout()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/16 v2, 0x14

    .line 8
    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestBits:[B

    .line 12
    .line 13
    aget-byte v2, v2, v1

    .line 14
    .line 15
    ushr-int/lit8 v3, v2, 0x4

    .line 16
    .line 17
    and-int/lit8 v3, v3, 0xf

    .line 18
    .line 19
    int-to-char v3, v3

    .line 20
    and-int/lit8 v2, v2, 0xf

    .line 21
    .line 22
    int-to-char v2, v2

    .line 23
    const/16 v4, 0x9

    .line 24
    .line 25
    if-le v3, v4, :cond_0

    .line 26
    .line 27
    add-int/lit8 v3, v3, -0xa

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x61

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v3, v3, 0x30

    .line 33
    .line 34
    :goto_1
    int-to-char v3, v3

    .line 35
    if-le v2, v4, :cond_1

    .line 36
    .line 37
    add-int/lit8 v2, v2, -0xa

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x61

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x30

    .line 43
    .line 44
    :goto_2
    int-to-char v2, v2

    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method public dumpTempState()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    const/4 v3, 0x5

    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_1
    const/4 v4, 0x4

    .line 13
    if-ge v3, v4, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    new-array v4, v4, [Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    .line 19
    .line 20
    aget v5, v5, v2

    .line 21
    .line 22
    mul-int/lit8 v6, v3, 0x8

    .line 23
    .line 24
    ushr-int/2addr v5, v6

    .line 25
    int-to-byte v5, v5

    .line 26
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    aput-object v5, v4, v1

    .line 31
    .line 32
    const-string v5, "%02x"

    .line 33
    .line 34
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public finish()V
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    .line 10
    .line 11
    rsub-int/lit8 v6, v3, 0x7

    .line 12
    .line 13
    mul-int/lit8 v6, v6, 0x8

    .line 14
    .line 15
    ushr-long/2addr v4, v6

    .line 16
    const-wide/16 v6, 0xff

    .line 17
    .line 18
    and-long/2addr v4, v6

    .line 19
    long-to-int v5, v4

    .line 20
    int-to-byte v4, v5

    .line 21
    aput-byte v4, v1, v3

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v3, -0x80

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lcom/tencent/cos/utils/CommonSha1Utils;->update(B)V

    .line 29
    .line 30
    .line 31
    :goto_1
    iget v3, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I

    .line 32
    .line 33
    const/16 v4, 0x38

    .line 34
    .line 35
    if-eq v3, v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/tencent/cos/utils/CommonSha1Utils;->update(B)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tencent/cos/utils/CommonSha1Utils;->update([B)V

    .line 42
    .line 43
    .line 44
    :goto_2
    const/16 v1, 0x14

    .line 45
    .line 46
    if-ge v2, v1, :cond_2

    .line 47
    .line 48
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestBits:[B

    .line 49
    .line 50
    iget-object v3, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    .line 51
    .line 52
    shr-int/lit8 v4, v2, 0x2

    .line 53
    .line 54
    aget v3, v3, v4

    .line 55
    .line 56
    and-int/lit8 v4, v2, 0x3

    .line 57
    .line 58
    rsub-int/lit8 v4, v4, 0x3

    .line 59
    .line 60
    mul-int/lit8 v4, v4, 0x8

    .line 61
    .line 62
    shr-int/2addr v3, v4

    .line 63
    and-int/lit16 v3, v3, 0xff

    .line 64
    .line 65
    int-to-byte v3, v3

    .line 66
    aput-byte v3, v1, v2

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestValid:Z

    .line 73
    .line 74
    return-void
.end method

.method public getAlg()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA1"

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    .line 2
    .line 3
    const v1, 0x67452301

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const v3, -0x10325477

    .line 11
    .line 12
    .line 13
    aput v3, v0, v1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const v3, -0x67452302

    .line 17
    .line 18
    .line 19
    aput v3, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    const v3, 0x10325476

    .line 23
    .line 24
    .line 25
    aput v3, v0, v1

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    const v3, -0x3c2d1e10

    .line 29
    .line 30
    .line 31
    aput v3, v0, v1

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    .line 36
    .line 37
    const/16 v0, 0x14

    .line 38
    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    iput-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestBits:[B

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->digestValid:Z

    .line 44
    .line 45
    iput v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I

    .line 46
    .line 47
    return-void
.end method

.method final rol(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method transform()V
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    aget v2, v0, v8

    .line 7
    .line 8
    aput v2, v1, v8

    .line 9
    .line 10
    const/4 v9, 0x1

    .line 11
    aget v2, v0, v9

    .line 12
    .line 13
    aput v2, v1, v9

    .line 14
    .line 15
    const/4 v10, 0x2

    .line 16
    aget v2, v0, v10

    .line 17
    .line 18
    aput v2, v1, v10

    .line 19
    .line 20
    const/4 v11, 0x3

    .line 21
    aget v2, v0, v11

    .line 22
    .line 23
    aput v2, v1, v11

    .line 24
    .line 25
    const/4 v12, 0x4

    .line 26
    aget v0, v0, v12

    .line 27
    .line 28
    aput v0, v1, v12

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x3

    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v0, p0

    .line 37
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x1

    .line 45
    const/4 v5, 0x2

    .line 46
    const/4 v6, 0x3

    .line 47
    const/4 v7, 0x1

    .line 48
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    const/4 v3, 0x4

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x1

    .line 57
    const/4 v6, 0x2

    .line 58
    const/4 v7, 0x2

    .line 59
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    const/4 v3, 0x3

    .line 66
    const/4 v4, 0x4

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x1

    .line 69
    const/4 v7, 0x3

    .line 70
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    const/4 v3, 0x2

    .line 77
    const/4 v4, 0x3

    .line 78
    const/4 v5, 0x4

    .line 79
    const/4 v6, 0x0

    .line 80
    const/4 v7, 0x4

    .line 81
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x1

    .line 88
    const/4 v4, 0x2

    .line 89
    const/4 v5, 0x3

    .line 90
    const/4 v6, 0x4

    .line 91
    const/4 v7, 0x5

    .line 92
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 96
    .line 97
    const/4 v2, 0x4

    .line 98
    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x1

    .line 100
    const/4 v5, 0x2

    .line 101
    const/4 v6, 0x3

    .line 102
    const/4 v7, 0x6

    .line 103
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 107
    .line 108
    const/4 v2, 0x3

    .line 109
    const/4 v3, 0x4

    .line 110
    const/4 v4, 0x0

    .line 111
    const/4 v5, 0x1

    .line 112
    const/4 v6, 0x2

    .line 113
    const/4 v7, 0x7

    .line 114
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 118
    .line 119
    const/4 v2, 0x2

    .line 120
    const/4 v3, 0x3

    .line 121
    const/4 v4, 0x4

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v6, 0x1

    .line 124
    const/16 v7, 0x8

    .line 125
    .line 126
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    const/4 v3, 0x2

    .line 133
    const/4 v4, 0x3

    .line 134
    const/4 v5, 0x4

    .line 135
    const/4 v6, 0x0

    .line 136
    const/16 v7, 0x9

    .line 137
    .line 138
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 142
    .line 143
    const/4 v2, 0x0

    .line 144
    const/4 v3, 0x1

    .line 145
    const/4 v4, 0x2

    .line 146
    const/4 v5, 0x3

    .line 147
    const/4 v6, 0x4

    .line 148
    const/16 v7, 0xa

    .line 149
    .line 150
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 154
    .line 155
    const/4 v2, 0x4

    .line 156
    const/4 v3, 0x0

    .line 157
    const/4 v4, 0x1

    .line 158
    const/4 v5, 0x2

    .line 159
    const/4 v6, 0x3

    .line 160
    const/16 v7, 0xb

    .line 161
    .line 162
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 166
    .line 167
    const/4 v2, 0x3

    .line 168
    const/4 v3, 0x4

    .line 169
    const/4 v4, 0x0

    .line 170
    const/4 v5, 0x1

    .line 171
    const/4 v6, 0x2

    .line 172
    const/16 v7, 0xc

    .line 173
    .line 174
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 175
    .line 176
    .line 177
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 178
    .line 179
    const/4 v2, 0x2

    .line 180
    const/4 v3, 0x3

    .line 181
    const/4 v4, 0x4

    .line 182
    const/4 v5, 0x0

    .line 183
    const/4 v6, 0x1

    .line 184
    const/16 v7, 0xd

    .line 185
    .line 186
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    const/4 v3, 0x2

    .line 193
    const/4 v4, 0x3

    .line 194
    const/4 v5, 0x4

    .line 195
    const/4 v6, 0x0

    .line 196
    const/16 v7, 0xe

    .line 197
    .line 198
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 202
    .line 203
    const/4 v2, 0x0

    .line 204
    const/4 v3, 0x1

    .line 205
    const/4 v4, 0x2

    .line 206
    const/4 v5, 0x3

    .line 207
    const/4 v6, 0x4

    .line 208
    const/16 v7, 0xf

    .line 209
    .line 210
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R0([IIIIIII)V

    .line 211
    .line 212
    .line 213
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 214
    .line 215
    const/4 v2, 0x4

    .line 216
    const/4 v3, 0x0

    .line 217
    const/4 v4, 0x1

    .line 218
    const/4 v5, 0x2

    .line 219
    const/4 v6, 0x3

    .line 220
    const/16 v7, 0x10

    .line 221
    .line 222
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R1([IIIIIII)V

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 226
    .line 227
    const/4 v2, 0x3

    .line 228
    const/4 v3, 0x4

    .line 229
    const/4 v4, 0x0

    .line 230
    const/4 v5, 0x1

    .line 231
    const/4 v6, 0x2

    .line 232
    const/16 v7, 0x11

    .line 233
    .line 234
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R1([IIIIIII)V

    .line 235
    .line 236
    .line 237
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 238
    .line 239
    const/4 v2, 0x2

    .line 240
    const/4 v3, 0x3

    .line 241
    const/4 v4, 0x4

    .line 242
    const/4 v5, 0x0

    .line 243
    const/4 v6, 0x1

    .line 244
    const/16 v7, 0x12

    .line 245
    .line 246
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R1([IIIIIII)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 250
    .line 251
    const/4 v2, 0x1

    .line 252
    const/4 v3, 0x2

    .line 253
    const/4 v4, 0x3

    .line 254
    const/4 v5, 0x4

    .line 255
    const/4 v6, 0x0

    .line 256
    const/16 v7, 0x13

    .line 257
    .line 258
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R1([IIIIIII)V

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 262
    .line 263
    const/4 v2, 0x0

    .line 264
    const/4 v3, 0x1

    .line 265
    const/4 v4, 0x2

    .line 266
    const/4 v5, 0x3

    .line 267
    const/4 v6, 0x4

    .line 268
    const/16 v7, 0x14

    .line 269
    .line 270
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 271
    .line 272
    .line 273
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 274
    .line 275
    const/4 v2, 0x4

    .line 276
    const/4 v3, 0x0

    .line 277
    const/4 v4, 0x1

    .line 278
    const/4 v5, 0x2

    .line 279
    const/4 v6, 0x3

    .line 280
    const/16 v7, 0x15

    .line 281
    .line 282
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 283
    .line 284
    .line 285
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 286
    .line 287
    const/4 v2, 0x3

    .line 288
    const/4 v3, 0x4

    .line 289
    const/4 v4, 0x0

    .line 290
    const/4 v5, 0x1

    .line 291
    const/4 v6, 0x2

    .line 292
    const/16 v7, 0x16

    .line 293
    .line 294
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 295
    .line 296
    .line 297
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 298
    .line 299
    const/4 v2, 0x2

    .line 300
    const/4 v3, 0x3

    .line 301
    const/4 v4, 0x4

    .line 302
    const/4 v5, 0x0

    .line 303
    const/4 v6, 0x1

    .line 304
    const/16 v7, 0x17

    .line 305
    .line 306
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 307
    .line 308
    .line 309
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 310
    .line 311
    const/4 v2, 0x1

    .line 312
    const/4 v3, 0x2

    .line 313
    const/4 v4, 0x3

    .line 314
    const/4 v5, 0x4

    .line 315
    const/4 v6, 0x0

    .line 316
    const/16 v7, 0x18

    .line 317
    .line 318
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 319
    .line 320
    .line 321
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 322
    .line 323
    const/4 v2, 0x0

    .line 324
    const/4 v3, 0x1

    .line 325
    const/4 v4, 0x2

    .line 326
    const/4 v5, 0x3

    .line 327
    const/4 v6, 0x4

    .line 328
    const/16 v7, 0x19

    .line 329
    .line 330
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 331
    .line 332
    .line 333
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 334
    .line 335
    const/4 v2, 0x4

    .line 336
    const/4 v3, 0x0

    .line 337
    const/4 v4, 0x1

    .line 338
    const/4 v5, 0x2

    .line 339
    const/4 v6, 0x3

    .line 340
    const/16 v7, 0x1a

    .line 341
    .line 342
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 343
    .line 344
    .line 345
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 346
    .line 347
    const/4 v2, 0x3

    .line 348
    const/4 v3, 0x4

    .line 349
    const/4 v4, 0x0

    .line 350
    const/4 v5, 0x1

    .line 351
    const/4 v6, 0x2

    .line 352
    const/16 v7, 0x1b

    .line 353
    .line 354
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 358
    .line 359
    const/4 v2, 0x2

    .line 360
    const/4 v3, 0x3

    .line 361
    const/4 v4, 0x4

    .line 362
    const/4 v5, 0x0

    .line 363
    const/4 v6, 0x1

    .line 364
    const/16 v7, 0x1c

    .line 365
    .line 366
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 367
    .line 368
    .line 369
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 370
    .line 371
    const/4 v2, 0x1

    .line 372
    const/4 v3, 0x2

    .line 373
    const/4 v4, 0x3

    .line 374
    const/4 v5, 0x4

    .line 375
    const/4 v6, 0x0

    .line 376
    const/16 v7, 0x1d

    .line 377
    .line 378
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 379
    .line 380
    .line 381
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 382
    .line 383
    const/4 v2, 0x0

    .line 384
    const/4 v3, 0x1

    .line 385
    const/4 v4, 0x2

    .line 386
    const/4 v5, 0x3

    .line 387
    const/4 v6, 0x4

    .line 388
    const/16 v7, 0x1e

    .line 389
    .line 390
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 391
    .line 392
    .line 393
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 394
    .line 395
    const/4 v2, 0x4

    .line 396
    const/4 v3, 0x0

    .line 397
    const/4 v4, 0x1

    .line 398
    const/4 v5, 0x2

    .line 399
    const/4 v6, 0x3

    .line 400
    const/16 v7, 0x1f

    .line 401
    .line 402
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 403
    .line 404
    .line 405
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 406
    .line 407
    const/4 v2, 0x3

    .line 408
    const/4 v3, 0x4

    .line 409
    const/4 v4, 0x0

    .line 410
    const/4 v5, 0x1

    .line 411
    const/4 v6, 0x2

    .line 412
    const/16 v7, 0x20

    .line 413
    .line 414
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 415
    .line 416
    .line 417
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 418
    .line 419
    const/4 v2, 0x2

    .line 420
    const/4 v3, 0x3

    .line 421
    const/4 v4, 0x4

    .line 422
    const/4 v5, 0x0

    .line 423
    const/4 v6, 0x1

    .line 424
    const/16 v7, 0x21

    .line 425
    .line 426
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 427
    .line 428
    .line 429
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 430
    .line 431
    const/4 v2, 0x1

    .line 432
    const/4 v3, 0x2

    .line 433
    const/4 v4, 0x3

    .line 434
    const/4 v5, 0x4

    .line 435
    const/4 v6, 0x0

    .line 436
    const/16 v7, 0x22

    .line 437
    .line 438
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 439
    .line 440
    .line 441
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 442
    .line 443
    const/4 v2, 0x0

    .line 444
    const/4 v3, 0x1

    .line 445
    const/4 v4, 0x2

    .line 446
    const/4 v5, 0x3

    .line 447
    const/4 v6, 0x4

    .line 448
    const/16 v7, 0x23

    .line 449
    .line 450
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 451
    .line 452
    .line 453
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 454
    .line 455
    const/4 v2, 0x4

    .line 456
    const/4 v3, 0x0

    .line 457
    const/4 v4, 0x1

    .line 458
    const/4 v5, 0x2

    .line 459
    const/4 v6, 0x3

    .line 460
    const/16 v7, 0x24

    .line 461
    .line 462
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 463
    .line 464
    .line 465
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 466
    .line 467
    const/4 v2, 0x3

    .line 468
    const/4 v3, 0x4

    .line 469
    const/4 v4, 0x0

    .line 470
    const/4 v5, 0x1

    .line 471
    const/4 v6, 0x2

    .line 472
    const/16 v7, 0x25

    .line 473
    .line 474
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 475
    .line 476
    .line 477
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 478
    .line 479
    const/4 v2, 0x2

    .line 480
    const/4 v3, 0x3

    .line 481
    const/4 v4, 0x4

    .line 482
    const/4 v5, 0x0

    .line 483
    const/4 v6, 0x1

    .line 484
    const/16 v7, 0x26

    .line 485
    .line 486
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 487
    .line 488
    .line 489
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 490
    .line 491
    const/4 v2, 0x1

    .line 492
    const/4 v3, 0x2

    .line 493
    const/4 v4, 0x3

    .line 494
    const/4 v5, 0x4

    .line 495
    const/4 v6, 0x0

    .line 496
    const/16 v7, 0x27

    .line 497
    .line 498
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R2([IIIIIII)V

    .line 499
    .line 500
    .line 501
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 502
    .line 503
    const/4 v2, 0x0

    .line 504
    const/4 v3, 0x1

    .line 505
    const/4 v4, 0x2

    .line 506
    const/4 v5, 0x3

    .line 507
    const/4 v6, 0x4

    .line 508
    const/16 v7, 0x28

    .line 509
    .line 510
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 511
    .line 512
    .line 513
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 514
    .line 515
    const/4 v2, 0x4

    .line 516
    const/4 v3, 0x0

    .line 517
    const/4 v4, 0x1

    .line 518
    const/4 v5, 0x2

    .line 519
    const/4 v6, 0x3

    .line 520
    const/16 v7, 0x29

    .line 521
    .line 522
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 523
    .line 524
    .line 525
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 526
    .line 527
    const/4 v2, 0x3

    .line 528
    const/4 v3, 0x4

    .line 529
    const/4 v4, 0x0

    .line 530
    const/4 v5, 0x1

    .line 531
    const/4 v6, 0x2

    .line 532
    const/16 v7, 0x2a

    .line 533
    .line 534
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 535
    .line 536
    .line 537
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 538
    .line 539
    const/4 v2, 0x2

    .line 540
    const/4 v3, 0x3

    .line 541
    const/4 v4, 0x4

    .line 542
    const/4 v5, 0x0

    .line 543
    const/4 v6, 0x1

    .line 544
    const/16 v7, 0x2b

    .line 545
    .line 546
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 547
    .line 548
    .line 549
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 550
    .line 551
    const/4 v2, 0x1

    .line 552
    const/4 v3, 0x2

    .line 553
    const/4 v4, 0x3

    .line 554
    const/4 v5, 0x4

    .line 555
    const/4 v6, 0x0

    .line 556
    const/16 v7, 0x2c

    .line 557
    .line 558
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 559
    .line 560
    .line 561
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 562
    .line 563
    const/4 v2, 0x0

    .line 564
    const/4 v3, 0x1

    .line 565
    const/4 v4, 0x2

    .line 566
    const/4 v5, 0x3

    .line 567
    const/4 v6, 0x4

    .line 568
    const/16 v7, 0x2d

    .line 569
    .line 570
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 571
    .line 572
    .line 573
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 574
    .line 575
    const/4 v2, 0x4

    .line 576
    const/4 v3, 0x0

    .line 577
    const/4 v4, 0x1

    .line 578
    const/4 v5, 0x2

    .line 579
    const/4 v6, 0x3

    .line 580
    const/16 v7, 0x2e

    .line 581
    .line 582
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 583
    .line 584
    .line 585
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 586
    .line 587
    const/4 v2, 0x3

    .line 588
    const/4 v3, 0x4

    .line 589
    const/4 v4, 0x0

    .line 590
    const/4 v5, 0x1

    .line 591
    const/4 v6, 0x2

    .line 592
    const/16 v7, 0x2f

    .line 593
    .line 594
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 595
    .line 596
    .line 597
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 598
    .line 599
    const/4 v2, 0x2

    .line 600
    const/4 v3, 0x3

    .line 601
    const/4 v4, 0x4

    .line 602
    const/4 v5, 0x0

    .line 603
    const/4 v6, 0x1

    .line 604
    const/16 v7, 0x30

    .line 605
    .line 606
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 607
    .line 608
    .line 609
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 610
    .line 611
    const/4 v2, 0x1

    .line 612
    const/4 v3, 0x2

    .line 613
    const/4 v4, 0x3

    .line 614
    const/4 v5, 0x4

    .line 615
    const/4 v6, 0x0

    .line 616
    const/16 v7, 0x31

    .line 617
    .line 618
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 619
    .line 620
    .line 621
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 622
    .line 623
    const/4 v2, 0x0

    .line 624
    const/4 v3, 0x1

    .line 625
    const/4 v4, 0x2

    .line 626
    const/4 v5, 0x3

    .line 627
    const/4 v6, 0x4

    .line 628
    const/16 v7, 0x32

    .line 629
    .line 630
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 631
    .line 632
    .line 633
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 634
    .line 635
    const/4 v2, 0x4

    .line 636
    const/4 v3, 0x0

    .line 637
    const/4 v4, 0x1

    .line 638
    const/4 v5, 0x2

    .line 639
    const/4 v6, 0x3

    .line 640
    const/16 v7, 0x33

    .line 641
    .line 642
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 643
    .line 644
    .line 645
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 646
    .line 647
    const/4 v2, 0x3

    .line 648
    const/4 v3, 0x4

    .line 649
    const/4 v4, 0x0

    .line 650
    const/4 v5, 0x1

    .line 651
    const/4 v6, 0x2

    .line 652
    const/16 v7, 0x34

    .line 653
    .line 654
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 655
    .line 656
    .line 657
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 658
    .line 659
    const/4 v2, 0x2

    .line 660
    const/4 v3, 0x3

    .line 661
    const/4 v4, 0x4

    .line 662
    const/4 v5, 0x0

    .line 663
    const/4 v6, 0x1

    .line 664
    const/16 v7, 0x35

    .line 665
    .line 666
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 667
    .line 668
    .line 669
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 670
    .line 671
    const/4 v2, 0x1

    .line 672
    const/4 v3, 0x2

    .line 673
    const/4 v4, 0x3

    .line 674
    const/4 v5, 0x4

    .line 675
    const/4 v6, 0x0

    .line 676
    const/16 v7, 0x36

    .line 677
    .line 678
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 679
    .line 680
    .line 681
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 682
    .line 683
    const/4 v2, 0x0

    .line 684
    const/4 v3, 0x1

    .line 685
    const/4 v4, 0x2

    .line 686
    const/4 v5, 0x3

    .line 687
    const/4 v6, 0x4

    .line 688
    const/16 v7, 0x37

    .line 689
    .line 690
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 691
    .line 692
    .line 693
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 694
    .line 695
    const/4 v2, 0x4

    .line 696
    const/4 v3, 0x0

    .line 697
    const/4 v4, 0x1

    .line 698
    const/4 v5, 0x2

    .line 699
    const/4 v6, 0x3

    .line 700
    const/16 v7, 0x38

    .line 701
    .line 702
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 703
    .line 704
    .line 705
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 706
    .line 707
    const/4 v2, 0x3

    .line 708
    const/4 v3, 0x4

    .line 709
    const/4 v4, 0x0

    .line 710
    const/4 v5, 0x1

    .line 711
    const/4 v6, 0x2

    .line 712
    const/16 v7, 0x39

    .line 713
    .line 714
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 715
    .line 716
    .line 717
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 718
    .line 719
    const/4 v2, 0x2

    .line 720
    const/4 v3, 0x3

    .line 721
    const/4 v4, 0x4

    .line 722
    const/4 v5, 0x0

    .line 723
    const/4 v6, 0x1

    .line 724
    const/16 v7, 0x3a

    .line 725
    .line 726
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 727
    .line 728
    .line 729
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 730
    .line 731
    const/4 v2, 0x1

    .line 732
    const/4 v3, 0x2

    .line 733
    const/4 v4, 0x3

    .line 734
    const/4 v5, 0x4

    .line 735
    const/4 v6, 0x0

    .line 736
    const/16 v7, 0x3b

    .line 737
    .line 738
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R3([IIIIIII)V

    .line 739
    .line 740
    .line 741
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 742
    .line 743
    const/4 v2, 0x0

    .line 744
    const/4 v3, 0x1

    .line 745
    const/4 v4, 0x2

    .line 746
    const/4 v5, 0x3

    .line 747
    const/4 v6, 0x4

    .line 748
    const/16 v7, 0x3c

    .line 749
    .line 750
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 751
    .line 752
    .line 753
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 754
    .line 755
    const/4 v2, 0x4

    .line 756
    const/4 v3, 0x0

    .line 757
    const/4 v4, 0x1

    .line 758
    const/4 v5, 0x2

    .line 759
    const/4 v6, 0x3

    .line 760
    const/16 v7, 0x3d

    .line 761
    .line 762
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 763
    .line 764
    .line 765
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 766
    .line 767
    const/4 v2, 0x3

    .line 768
    const/4 v3, 0x4

    .line 769
    const/4 v4, 0x0

    .line 770
    const/4 v5, 0x1

    .line 771
    const/4 v6, 0x2

    .line 772
    const/16 v7, 0x3e

    .line 773
    .line 774
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 775
    .line 776
    .line 777
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 778
    .line 779
    const/4 v2, 0x2

    .line 780
    const/4 v3, 0x3

    .line 781
    const/4 v4, 0x4

    .line 782
    const/4 v5, 0x0

    .line 783
    const/4 v6, 0x1

    .line 784
    const/16 v7, 0x3f

    .line 785
    .line 786
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 787
    .line 788
    .line 789
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 790
    .line 791
    const/4 v2, 0x1

    .line 792
    const/4 v3, 0x2

    .line 793
    const/4 v4, 0x3

    .line 794
    const/4 v5, 0x4

    .line 795
    const/4 v6, 0x0

    .line 796
    const/16 v7, 0x40

    .line 797
    .line 798
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 799
    .line 800
    .line 801
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 802
    .line 803
    const/4 v2, 0x0

    .line 804
    const/4 v3, 0x1

    .line 805
    const/4 v4, 0x2

    .line 806
    const/4 v5, 0x3

    .line 807
    const/4 v6, 0x4

    .line 808
    const/16 v7, 0x41

    .line 809
    .line 810
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 811
    .line 812
    .line 813
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 814
    .line 815
    const/4 v2, 0x4

    .line 816
    const/4 v3, 0x0

    .line 817
    const/4 v4, 0x1

    .line 818
    const/4 v5, 0x2

    .line 819
    const/4 v6, 0x3

    .line 820
    const/16 v7, 0x42

    .line 821
    .line 822
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 823
    .line 824
    .line 825
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 826
    .line 827
    const/4 v2, 0x3

    .line 828
    const/4 v3, 0x4

    .line 829
    const/4 v4, 0x0

    .line 830
    const/4 v5, 0x1

    .line 831
    const/4 v6, 0x2

    .line 832
    const/16 v7, 0x43

    .line 833
    .line 834
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 835
    .line 836
    .line 837
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 838
    .line 839
    const/4 v2, 0x2

    .line 840
    const/4 v3, 0x3

    .line 841
    const/4 v4, 0x4

    .line 842
    const/4 v5, 0x0

    .line 843
    const/4 v6, 0x1

    .line 844
    const/16 v7, 0x44

    .line 845
    .line 846
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 847
    .line 848
    .line 849
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 850
    .line 851
    const/4 v2, 0x1

    .line 852
    const/4 v3, 0x2

    .line 853
    const/4 v4, 0x3

    .line 854
    const/4 v5, 0x4

    .line 855
    const/4 v6, 0x0

    .line 856
    const/16 v7, 0x45

    .line 857
    .line 858
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 859
    .line 860
    .line 861
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 862
    .line 863
    const/4 v2, 0x0

    .line 864
    const/4 v3, 0x1

    .line 865
    const/4 v4, 0x2

    .line 866
    const/4 v5, 0x3

    .line 867
    const/4 v6, 0x4

    .line 868
    const/16 v7, 0x46

    .line 869
    .line 870
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 871
    .line 872
    .line 873
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 874
    .line 875
    const/4 v2, 0x4

    .line 876
    const/4 v3, 0x0

    .line 877
    const/4 v4, 0x1

    .line 878
    const/4 v5, 0x2

    .line 879
    const/4 v6, 0x3

    .line 880
    const/16 v7, 0x47

    .line 881
    .line 882
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 883
    .line 884
    .line 885
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 886
    .line 887
    const/4 v2, 0x3

    .line 888
    const/4 v3, 0x4

    .line 889
    const/4 v4, 0x0

    .line 890
    const/4 v5, 0x1

    .line 891
    const/4 v6, 0x2

    .line 892
    const/16 v7, 0x48

    .line 893
    .line 894
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 895
    .line 896
    .line 897
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 898
    .line 899
    const/4 v2, 0x2

    .line 900
    const/4 v3, 0x3

    .line 901
    const/4 v4, 0x4

    .line 902
    const/4 v5, 0x0

    .line 903
    const/4 v6, 0x1

    .line 904
    const/16 v7, 0x49

    .line 905
    .line 906
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 907
    .line 908
    .line 909
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 910
    .line 911
    const/4 v2, 0x1

    .line 912
    const/4 v3, 0x2

    .line 913
    const/4 v4, 0x3

    .line 914
    const/4 v5, 0x4

    .line 915
    const/4 v6, 0x0

    .line 916
    const/16 v7, 0x4a

    .line 917
    .line 918
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 919
    .line 920
    .line 921
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 922
    .line 923
    const/4 v2, 0x0

    .line 924
    const/4 v3, 0x1

    .line 925
    const/4 v4, 0x2

    .line 926
    const/4 v5, 0x3

    .line 927
    const/4 v6, 0x4

    .line 928
    const/16 v7, 0x4b

    .line 929
    .line 930
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 931
    .line 932
    .line 933
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 934
    .line 935
    const/4 v2, 0x4

    .line 936
    const/4 v3, 0x0

    .line 937
    const/4 v4, 0x1

    .line 938
    const/4 v5, 0x2

    .line 939
    const/4 v6, 0x3

    .line 940
    const/16 v7, 0x4c

    .line 941
    .line 942
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 943
    .line 944
    .line 945
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 946
    .line 947
    const/4 v2, 0x3

    .line 948
    const/4 v3, 0x4

    .line 949
    const/4 v4, 0x0

    .line 950
    const/4 v5, 0x1

    .line 951
    const/4 v6, 0x2

    .line 952
    const/16 v7, 0x4d

    .line 953
    .line 954
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 955
    .line 956
    .line 957
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 958
    .line 959
    const/4 v2, 0x2

    .line 960
    const/4 v3, 0x3

    .line 961
    const/4 v4, 0x4

    .line 962
    const/4 v5, 0x0

    .line 963
    const/4 v6, 0x1

    .line 964
    const/16 v7, 0x4e

    .line 965
    .line 966
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 967
    .line 968
    .line 969
    iget-object v1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 970
    .line 971
    const/4 v2, 0x1

    .line 972
    const/4 v3, 0x2

    .line 973
    const/4 v4, 0x3

    .line 974
    const/4 v5, 0x4

    .line 975
    const/4 v6, 0x0

    .line 976
    const/16 v7, 0x4f

    .line 977
    .line 978
    invoke-virtual/range {v0 .. v7}, Lcom/tencent/cos/utils/CommonSha1Utils;->R4([IIIIIII)V

    .line 979
    .line 980
    .line 981
    iget-object v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->state:[I

    .line 982
    .line 983
    aget v1, v0, v8

    .line 984
    .line 985
    iget-object v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->dd:[I

    .line 986
    .line 987
    aget v3, v2, v8

    .line 988
    .line 989
    add-int/2addr v1, v3

    .line 990
    aput v1, v0, v8

    .line 991
    .line 992
    aget v1, v0, v9

    .line 993
    .line 994
    aget v3, v2, v9

    .line 995
    .line 996
    add-int/2addr v1, v3

    .line 997
    aput v1, v0, v9

    .line 998
    .line 999
    aget v1, v0, v10

    .line 1000
    .line 1001
    aget v3, v2, v10

    .line 1002
    .line 1003
    add-int/2addr v1, v3

    .line 1004
    aput v1, v0, v10

    .line 1005
    .line 1006
    aget v1, v0, v11

    .line 1007
    .line 1008
    aget v3, v2, v11

    .line 1009
    .line 1010
    add-int/2addr v1, v3

    .line 1011
    aput v1, v0, v11

    .line 1012
    .line 1013
    aget v1, v0, v12

    .line 1014
    .line 1015
    aget v2, v2, v12

    .line 1016
    .line 1017
    add-int/2addr v1, v2

    .line 1018
    aput v1, v0, v12

    .line 1019
    .line 1020
    return-void
.end method

.method public declared-synchronized update(B)V
    .locals 7

    monitor-enter p0

    .line 5
    :try_start_0
    iget v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I

    and-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x8

    .line 6
    iget-wide v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->count:J

    .line 7
    iget-object v2, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->block:[I

    shr-int/lit8 v3, v0, 0x2

    aget v4, v2, v3

    const/16 v5, 0xff

    shl-int v6, v5, v1

    not-int v6, v6

    and-int/2addr v4, v6

    aput v4, v2, v3

    shr-int/lit8 v3, v0, 0x2

    .line 8
    aget v4, v2, v3

    and-int/2addr p1, v5

    shl-int/2addr p1, v1

    or-int/2addr p1, v4

    aput p1, v2, v3

    add-int/lit8 v0, v0, 0x1

    .line 9
    iput v0, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I

    const/16 p1, 0x40

    if-ne v0, p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/cos/utils/CommonSha1Utils;->transform()V

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/tencent/cos/utils/CommonSha1Utils;->blockIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update([B)V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/cos/utils/CommonSha1Utils;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update([BII)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, v0, p2

    .line 1
    :try_start_0
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/cos/utils/CommonSha1Utils;->update(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public updateASCII(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    and-int/lit16 v2, v2, 0xff

    .line 13
    .line 14
    int-to-byte v2, v2

    .line 15
    invoke-virtual {p0, v2}, Lcom/tencent/cos/utils/CommonSha1Utils;->update(B)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
