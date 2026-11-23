.class public Lcom/cloudplay/messagesdk/socket/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/b;->a:Ljava/util/Random;

    .line 10
    .line 11
    return-void
.end method

.method private a()[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 29
    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/b;->a:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

.method private a(I[BZZ)[B
    .locals 17

    move-object/from16 v0, p2

    .line 13
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, -0x80

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    int-to-byte v4, v2

    move/from16 v5, p1

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    const/4 v4, 0x0

    :goto_0
    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 14
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    .line 15
    array-length v6, v0

    int-to-long v6, v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    const-wide/16 v8, 0x7d

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    cmp-long v13, v6, v8

    if-gtz v13, :cond_3

    long-to-int v8, v6

    int-to-byte v8, v8

    or-int/2addr v2, v8

    int-to-byte v2, v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_3
    const-wide/32 v8, 0xffff

    const/16 v13, 0x8

    const-wide/16 v14, 0xff

    cmp-long v16, v6, v8

    if-gtz v16, :cond_4

    or-int/lit8 v2, v2, 0x7e

    int-to-byte v2, v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-array v2, v11, [B

    shr-long v8, v6, v13

    and-long/2addr v8, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v2, v3

    and-long v8, v6, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v2, v12

    .line 18
    invoke-virtual {v1, v2, v3, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_4
    or-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-array v2, v13, [B

    const/16 v8, 0x38

    shr-long v8, v6, v8

    and-long/2addr v8, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v2, v3

    const/16 v8, 0x30

    shr-long v8, v6, v8

    and-long/2addr v8, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v2, v12

    const/16 v8, 0x28

    shr-long v8, v6, v8

    and-long/2addr v8, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v2, v11

    const/16 v8, 0x20

    shr-long v8, v6, v8

    and-long/2addr v8, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v2, v10

    const/16 v8, 0x18

    shr-long v8, v6, v8

    and-long/2addr v8, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    const/4 v9, 0x4

    aput-byte v8, v2, v9

    const/16 v8, 0x10

    shr-long v8, v6, v8

    and-long/2addr v8, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    const/4 v9, 0x5

    aput-byte v8, v2, v9

    shr-long v8, v6, v13

    and-long/2addr v8, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    const/4 v9, 0x6

    aput-byte v8, v2, v9

    and-long v8, v6, v14

    long-to-int v9, v8

    int-to-byte v8, v9

    const/4 v9, 0x7

    aput-byte v8, v2, v9

    .line 20
    invoke-virtual {v1, v2, v3, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_3
    if-eqz p4, :cond_5

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/cloudplay/messagesdk/socket/b/b;->a()[B

    move-result-object v2

    .line 22
    aget-byte v8, v2, v3

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 23
    aget-byte v8, v2, v12

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 24
    aget-byte v8, v2, v11

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 25
    aget-byte v8, v2, v10

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    cmp-long v8, v6, v4

    if-lez v8, :cond_7

    if-eqz p4, :cond_6

    const/4 v4, 0x0

    :goto_5
    int-to-long v8, v4

    cmp-long v5, v8, v6

    if-gez v5, :cond_6

    .line 26
    aget-byte v5, v0, v4

    rem-int/lit8 v8, v4, 0x4

    aget-byte v8, v2, v8

    xor-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 27
    :cond_6
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 28
    :cond_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-lez p1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    const-string v4, ""

    .line 4
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    const-string v4, "UTF-8"

    .line 5
    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 6
    array-length v4, p2

    add-int/2addr v4, v3

    new-array v4, v4, [B

    .line 7
    array-length v5, p2

    invoke-static {p2, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;

    const-string p2, "reason is an invalid utf-8 string"

    invoke-direct {p1, p2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-array v4, v3, [B

    :goto_0
    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 9
    aput-byte p2, v4, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 10
    aput-byte p1, v4, v1

    .line 11
    invoke-direct {p0, v0, v4, v1, v1}, Lcom/cloudplay/messagesdk/socket/b/b;->a(I[BZZ)[B

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/cloudplay/messagesdk/socket/b/b;->a(I[BZZ)[B

    move-result-object p1

    return-object p1
.end method

.method public a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;

    const-string v0, "ping payload exceeds 125 octets"

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/cloudplay/messagesdk/socket/b/b;->a(I[BZZ)[B

    move-result-object p1

    return-object p1
.end method

.method public b([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/16 v1, 0x7d

    .line 5
    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;

    .line 10
    .line 11
    const-string v0, "ping payload exceeds 125 octets"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    const/16 v0, 0xa

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/cloudplay/messagesdk/socket/b/b;->a(I[BZZ)[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public c([B)[B
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, p1, v1, v1}, Lcom/cloudplay/messagesdk/socket/b/b;->a(I[BZZ)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d([B)[B
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1, v0, v0}, Lcom/cloudplay/messagesdk/socket/b/b;->a(I[BZZ)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
