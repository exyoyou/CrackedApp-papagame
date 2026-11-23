.class public Lcom/googlecode/mp4parser/util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a([B)Ljava/util/UUID;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/UUID;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static b(Ljava/util/UUID;)[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const/16 p0, 0x10

    .line 10
    .line 11
    new-array v4, p0, [B

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    :goto_0
    const/16 v6, 0x8

    .line 15
    .line 16
    if-lt v5, v6, :cond_1

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    :goto_1
    if-lt v0, p0, :cond_0

    .line 21
    .line 22
    return-object v4

    .line 23
    :cond_0
    rsub-int/lit8 v1, v0, 0x7

    .line 24
    .line 25
    mul-int/lit8 v1, v1, 0x8

    .line 26
    .line 27
    ushr-long v7, v2, v1

    .line 28
    .line 29
    long-to-int v1, v7

    .line 30
    int-to-byte v1, v1

    .line 31
    aput-byte v1, v4, v0

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    rsub-int/lit8 v7, v5, 0x7

    .line 37
    .line 38
    mul-int/lit8 v7, v7, 0x8

    .line 39
    .line 40
    ushr-long v6, v0, v7

    .line 41
    .line 42
    long-to-int v7, v6

    .line 43
    int-to-byte v6, v7

    .line 44
    aput-byte v6, v4, v5

    .line 45
    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0
.end method
