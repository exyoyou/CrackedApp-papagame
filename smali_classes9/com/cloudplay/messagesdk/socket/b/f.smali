.class Lcom/cloudplay/messagesdk/socket/b/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/socket/b/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

.field private final b:Lcom/cloudplay/messagesdk/socket/b/h/b;

.field private c:Ljava/io/BufferedInputStream;

.field private d:Ljava/net/Socket;

.field private e:I

.field private f:[B

.field private g:Ljava/io/ByteArrayOutputStream;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:I

.field private l:Lcom/cloudplay/messagesdk/socket/b/f$b;

.field private m:Lcom/cloudplay/messagesdk/socket/b/i/b;


# direct methods
.method public constructor <init>(Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;Ljava/net/Socket;Lcom/cloudplay/messagesdk/socket/b/h/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p4, 0x0

    .line 5
    iput-boolean p4, p0, Lcom/cloudplay/messagesdk/socket/b/f;->h:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/cloudplay/messagesdk/socket/b/f;->j:Z

    .line 8
    .line 9
    new-instance p4, Lcom/cloudplay/messagesdk/socket/b/i/b;

    .line 10
    .line 11
    invoke-direct {p4}, Lcom/cloudplay/messagesdk/socket/b/i/b;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/cloudplay/messagesdk/socket/b/f;->m:Lcom/cloudplay/messagesdk/socket/b/i/b;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/cloudplay/messagesdk/socket/b/f;->d:Ljava/net/Socket;

    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->e()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/lit8 p1, p1, 0xe

    .line 27
    .line 28
    new-array p1, p1, [B

    .line 29
    .line 30
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->f:[B

    .line 31
    .line 32
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 33
    .line 34
    iget-object p2, p0, Lcom/cloudplay/messagesdk/socket/b/f;->d:Ljava/net/Socket;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->e()I

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    add-int/lit8 p4, p4, 0xe

    .line 45
    .line 46
    invoke-direct {p1, p2, p4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->c:Ljava/io/BufferedInputStream;

    .line 50
    .line 51
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 52
    .line 53
    invoke-virtual {p3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->f()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-direct {p1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->g:Ljava/io/ByteArrayOutputStream;

    .line 61
    .line 62
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    .line 67
    .line 68
    const-string p1, "WebSocketReader"

    .line 69
    .line 70
    const-string p2, "WebSocketReader() created"

    .line 71
    .line 72
    invoke-static {p1, p2}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private a([Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ": "

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 11
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 12
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v8, v4, v7

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseHttpHeaders() "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v8, v4, v2

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    aget-object v4, v4, v7

    aput-object v4, v6, v7

    const-string v4, "\'%s\'=\'%s\'"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WebSocketReader"

    invoke-static {v5, v4}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/m;

    invoke-direct {v1, p1}, Lcom/cloudplay/messagesdk/socket/b/g/m;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->h:Z

    return-void
.end method

.method private b()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/f;->d()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 7
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/f;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    const-string v2, "logic error"

    const/16 v3, 0x9

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v7, 0x8

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_20

    .line 2
    iget v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    if-lt v1, v8, :cond_1f

    .line 3
    iget-object v11, v0, Lcom/cloudplay/messagesdk/socket/b/f;->f:[B

    aget-byte v12, v11, v10

    and-int/lit16 v13, v12, 0x80

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    and-int/lit8 v14, v12, 0x70

    const/4 v15, 0x4

    shr-int/2addr v14, v15

    and-int/lit8 v12, v12, 0xf

    .line 4
    aget-byte v10, v11, v9

    and-int/lit16 v6, v10, 0x80

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const/16 v15, 0x7f

    and-int/2addr v10, v15

    if-nez v14, :cond_1e

    if-nez v6, :cond_1d

    if-le v12, v4, :cond_7

    if-eqz v13, :cond_6

    const/16 v4, 0x7d

    if-gt v10, v4, :cond_5

    if-eq v12, v7, :cond_3

    if-eq v12, v3, :cond_3

    if-ne v12, v5, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "control frame using reserved opcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_2
    if-ne v12, v7, :cond_d

    if-eq v10, v9, :cond_4

    goto :goto_5

    .line 6
    :cond_4
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "received close control frame with payload len 1"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_5
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "control frame with payload length > 125 octets"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_6
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "fragmented control frame"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-eqz v12, :cond_9

    if-eq v12, v9, :cond_9

    if-ne v12, v8, :cond_8

    goto :goto_3

    .line 9
    :cond_8
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data frame using reserved opcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_9
    :goto_3
    iget-boolean v4, v0, Lcom/cloudplay/messagesdk/socket/b/f;->j:Z

    if-nez v4, :cond_b

    if-eqz v12, :cond_a

    goto :goto_4

    .line 11
    :cond_a
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "received continuation data frame outside fragmented message"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_4
    if-eqz v4, :cond_d

    if-nez v12, :cond_c

    goto :goto_5

    .line 12
    :cond_c
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "received non-continuation data frame while inside fragmented message"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_5
    if-eqz v6, :cond_e

    const/4 v4, 0x4

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    const/16 v9, 0x7e

    if-ge v10, v9, :cond_f

    add-int/2addr v4, v8

    goto :goto_7

    :cond_f
    if-ne v10, v9, :cond_10

    const/16 v16, 0x4

    add-int/lit8 v4, v4, 0x4

    goto :goto_7

    :cond_10
    if-ne v10, v15, :cond_1c

    add-int/2addr v4, v5

    :goto_7
    if-lt v1, v4, :cond_1b

    const-string v1, "invalid data frame length (not using minimal length encoding)"

    const/4 v2, 0x3

    if-ne v10, v9, :cond_12

    .line 13
    aget-byte v3, v11, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v7, 0x7e

    cmp-long v5, v2, v7

    if-ltz v5, :cond_11

    move/from16 v17, v6

    const/4 v5, 0x4

    goto :goto_8

    .line 14
    :cond_11
    new-instance v2, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    invoke-direct {v2, v1}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    if-ne v10, v15, :cond_15

    .line 15
    aget-byte v8, v11, v8

    and-int/lit16 v9, v8, 0x80

    if-nez v9, :cond_14

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    .line 16
    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    move/from16 v17, v6

    int-to-long v5, v2

    const/16 v2, 0x30

    shl-long/2addr v5, v2

    or-long/2addr v5, v8

    const/4 v2, 0x4

    aget-byte v8, v11, v2

    and-int/lit16 v2, v8, 0xff

    int-to-long v8, v2

    const/16 v2, 0x28

    shl-long/2addr v8, v2

    or-long/2addr v5, v8

    const/4 v2, 0x5

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v8, v2

    const/16 v2, 0x20

    shl-long/2addr v8, v2

    or-long/2addr v5, v8

    const/4 v2, 0x6

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v8, v2

    const/16 v2, 0x18

    shl-long/2addr v8, v2

    or-long/2addr v5, v8

    const/4 v2, 0x7

    aget-byte v2, v11, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v8, v2

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v5, v8

    aget-byte v2, v11, v7

    and-int/lit16 v2, v2, 0xff

    int-to-long v8, v2

    shl-long v7, v8, v7

    or-long/2addr v5, v7

    aget-byte v2, v11, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v2, v5

    const-wide/32 v5, 0x10000

    cmp-long v7, v2, v5

    if-ltz v7, :cond_13

    const/16 v5, 0xa

    goto :goto_8

    .line 17
    :cond_13
    new-instance v2, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    invoke-direct {v2, v1}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_14
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "invalid data frame length (> 2^63)"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move/from16 v17, v6

    int-to-long v2, v10

    const/4 v5, 0x2

    .line 19
    :goto_8
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->e()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1a

    .line 20
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/f$b;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/cloudplay/messagesdk/socket/b/f$b;-><init>(Lcom/cloudplay/messagesdk/socket/b/f$a;)V

    iput-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    .line 21
    iput v12, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->a:I

    .line 22
    iput-boolean v13, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->b:Z

    .line 23
    iput v14, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->c:I

    long-to-int v3, v2

    .line 24
    iput v3, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->e:I

    .line 25
    iput v4, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->d:I

    add-int/2addr v4, v3

    .line 26
    iput v4, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->f:I

    if-eqz v17, :cond_16

    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 27
    iput-object v3, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->g:[B

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_17

    .line 28
    iget-object v3, v0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    iget-object v3, v3, Lcom/cloudplay/messagesdk/socket/b/f$b;->g:[B

    iget-object v4, v0, Lcom/cloudplay/messagesdk/socket/b/f;->f:[B

    add-int v6, v5, v1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_16
    const/4 v2, 0x0

    .line 29
    iput-object v2, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->g:[B

    .line 30
    :cond_17
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    iget v2, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->e:I

    if-eqz v2, :cond_19

    iget v2, v0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    iget v1, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->f:I

    if-lt v2, v1, :cond_18

    goto :goto_a

    :cond_18
    const/4 v9, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v9, 0x1

    :goto_b
    return v9

    .line 31
    :cond_1a
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "frame payload too large"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const/4 v1, 0x0

    return v1

    .line 32
    :cond_1c
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_1d
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "masked server frame"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_1e
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "RSV != 0 and no extension negotiated"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    const/4 v4, 0x0

    return v4

    :cond_20
    const/4 v4, 0x0

    .line 35
    iget v5, v0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    iget v6, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->f:I

    if-lt v5, v6, :cond_37

    .line 36
    iget v5, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->e:I

    if-lez v5, :cond_21

    .line 37
    new-array v6, v5, [B

    .line 38
    iget-object v9, v0, Lcom/cloudplay/messagesdk/socket/b/f;->f:[B

    iget v1, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->d:I

    invoke-static {v9, v1, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    :cond_21
    const/4 v6, 0x0

    .line 39
    :goto_c
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->f:[B

    iget-object v5, v0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    iget v5, v5, Lcom/cloudplay/messagesdk/socket/b/f$b;->f:I

    array-length v9, v1

    sub-int/2addr v9, v5

    invoke-static {v1, v5, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    iget-object v4, v0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    iget v5, v4, Lcom/cloudplay/messagesdk/socket/b/f$b;->f:I

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    .line 41
    iget v1, v4, Lcom/cloudplay/messagesdk/socket/b/f$b;->a:I

    const-string v5, "UTF-8"

    const/4 v9, 0x7

    if-le v1, v9, :cond_2a

    if-ne v1, v7, :cond_27

    .line 42
    iget v1, v4, Lcom/cloudplay/messagesdk/socket/b/f$b;->e:I

    if-lt v1, v8, :cond_25

    const/4 v2, 0x0

    .line 43
    aget-byte v3, v6, v2

    and-int/lit16 v2, v3, 0xff

    mul-int/lit16 v2, v2, 0x100

    const/4 v3, 0x1

    aget-byte v4, v6, v3

    and-int/lit16 v3, v4, 0xff

    add-int/2addr v2, v3

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_24

    if-lt v2, v3, :cond_22

    const/16 v4, 0xbb7

    if-gt v2, v4, :cond_22

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3ea

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3eb

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3ef

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3f0

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3f1

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3f2

    if-eq v2, v3, :cond_22

    const/16 v3, 0x3f3

    if-ne v2, v3, :cond_24

    :cond_22
    const/16 v3, 0x1388

    if-ge v2, v3, :cond_24

    if-le v1, v8, :cond_26

    sub-int/2addr v1, v8

    .line 44
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 45
    invoke-static {v6, v8, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/i/b;

    invoke-direct {v1}, Lcom/cloudplay/messagesdk/socket/b/i/b;-><init>()V

    .line 47
    invoke-virtual {v1, v3}, Lcom/cloudplay/messagesdk/socket/b/i/b;->a([B)Z

    .line 48
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/i/b;->a()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 49
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_d

    .line 50
    :cond_23
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "invalid close reasons (not UTF-8)"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_24
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid close code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    const/16 v2, 0x3ed

    :cond_26
    const/4 v6, 0x0

    .line 52
    :goto_d
    invoke-virtual {v0, v2, v6}, Lcom/cloudplay/messagesdk/socket/b/f;->a(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 53
    iput v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    goto :goto_e

    :cond_27
    if-ne v1, v3, :cond_28

    .line 54
    invoke-virtual {v0, v6}, Lcom/cloudplay/messagesdk/socket/b/f;->b([B)V

    :goto_e
    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_14

    :cond_28
    const/16 v3, 0xa

    if-ne v1, v3, :cond_29

    .line 55
    invoke-virtual {v0, v6}, Lcom/cloudplay/messagesdk/socket/b/f;->c([B)V

    goto :goto_e

    .line 56
    :cond_29
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_2a
    iget-boolean v3, v0, Lcom/cloudplay/messagesdk/socket/b/f;->j:Z

    if-nez v3, :cond_2b

    const/4 v3, 0x1

    .line 58
    iput-boolean v3, v0, Lcom/cloudplay/messagesdk/socket/b/f;->j:Z

    .line 59
    iput v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->k:I

    if-ne v1, v3, :cond_2b

    .line 60
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->o()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 61
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->m:Lcom/cloudplay/messagesdk/socket/b/i/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/i/b;->b()V

    :cond_2b
    if-eqz v6, :cond_2f

    .line 62
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    array-length v3, v6

    add-int/2addr v1, v3

    iget-object v3, v0, Lcom/cloudplay/messagesdk/socket/b/f;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v3}, Lcom/cloudplay/messagesdk/socket/b/h/b;->f()I

    move-result v3

    if-gt v1, v3, :cond_2e

    .line 63
    iget v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->k:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2d

    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->o()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->m:Lcom/cloudplay/messagesdk/socket/b/i/b;

    invoke-virtual {v1, v6}, Lcom/cloudplay/messagesdk/socket/b/i/b;->a([B)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_f

    .line 64
    :cond_2c
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "invalid UTF-8 in text message payload"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_2d
    :goto_f
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    goto :goto_10

    .line 66
    :cond_2e
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "message payload too large"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_2f
    :goto_10
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    iget-boolean v1, v1, Lcom/cloudplay/messagesdk/socket/b/f$b;->b:Z

    if-eqz v1, :cond_35

    .line 68
    iget v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->k:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_33

    .line 69
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->o()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->m:Lcom/cloudplay/messagesdk/socket/b/i/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/i/b;->a()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_11

    .line 70
    :cond_30
    new-instance v1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;

    const-string v2, "UTF-8 text message payload ended within Unicode code point"

    invoke-direct {v1, v2}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_31
    :goto_11
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->g()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 72
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/f;->d([B)V

    goto :goto_12

    .line 73
    :cond_32
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/cloudplay/messagesdk/socket/b/f;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/f;->a(Ljava/lang/String;)V

    goto :goto_12

    :cond_33
    if-ne v1, v8, :cond_34

    .line 75
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/socket/b/f;->a([B)V

    :goto_12
    const/4 v1, 0x0

    .line 76
    iput-boolean v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->j:Z

    .line 77
    iget-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_13

    .line 78
    :cond_34
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    const/4 v3, 0x1

    :goto_13
    const/4 v1, 0x0

    .line 79
    :goto_14
    iput-object v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->l:Lcom/cloudplay/messagesdk/socket/b/f$b;

    .line 80
    iget v1, v0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    if-lez v1, :cond_36

    const/4 v9, 0x1

    goto :goto_15

    :cond_36
    const/4 v9, 0x0

    :goto_15
    return v9

    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method private d()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    add-int/lit8 v0, v0, -0x4

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_11

    .line 3
    iget-object v2, p0, Lcom/cloudplay/messagesdk/socket/b/f;->f:[B

    aget-byte v3, v2, v0

    const/16 v4, 0xd

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v2, v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_10

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v2, v3

    if-ne v3, v4, :cond_10

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v2, v3

    if-ne v3, v5, :cond_10

    .line 4
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v2, "\r\n"

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6
    aget-object v3, v2, v1

    const-string v4, " "

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 8
    array-length v6, v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-lt v6, v7, :cond_f

    aget-object v6, v5, v1

    const-string v9, "HTTP"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_6

    .line 9
    :cond_0
    aget-object v3, v5, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, "HTTP/1.1"

    .line 10
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v2, "Unsupported HTTP version %s"

    .line 11
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 13
    :cond_1
    :try_start_0
    aget-object v3, v5, v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x65

    if-eq v3, v6, :cond_5

    .line 14
    array-length v0, v5

    if-le v0, v7, :cond_4

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    .line 16
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 17
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    array-length v6, v5

    sub-int/2addr v6, v8

    if-eq v2, v6, :cond_2

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    .line 21
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    aput-object v0, v4, v8

    const-string v0, "WebSocket connection upgrade failed (%d %s)"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 23
    :cond_5
    array-length v3, v2

    invoke-static {v2, v8, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/cloudplay/messagesdk/socket/b/f;->a([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "upgrade"

    .line 24
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v0, "HTTP Upgrade header missing"

    .line 25
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 26
    :cond_6
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const-string v4, "connection"

    .line 28
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v0, "HTTP Connection header missing"

    .line 29
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 30
    :cond_8
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 31
    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_a

    aget-object v9, v5, v7

    .line 32
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_b

    new-array v0, v8, [Ljava/lang/Object;

    .line 33
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "HTTP Connection header does not include \'upgrade\' value (case-insensitive) : %s"

    .line 34
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    const-string v3, "sec-websocket-accept"

    .line 36
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v0, "HTTP Sec-WebSocket-Accept header missing in opening handshake reply"

    .line 37
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto :goto_7

    .line 38
    :cond_c
    iget-object v3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->f:[B

    array-length v4, v3

    sub-int/2addr v4, v0

    invoke-static {v3, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    if-lez v3, :cond_d

    const/4 v1, 0x1

    :cond_d
    const/4 v0, 0x3

    .line 40
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    .line 41
    invoke-virtual {p0, v2}, Lcom/cloudplay/messagesdk/socket/b/f;->a(Ljava/util/Map;)V

    goto :goto_7

    :cond_e
    :goto_5
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v4, v0, v1

    const-string v2, "HTTP Upgrade header different from \'websocket\' (case-insensitive) : %s"

    .line 42
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto :goto_7

    :catch_0
    new-array v0, v8, [Ljava/lang/Object;

    .line 44
    aget-object v2, v5, v8

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "Bad HTTP status code (\'%s\')"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    :goto_6
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v2, "Bad HTTP response status line %s"

    .line 46
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/socket/b/f;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_11
    :goto_7
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quit() mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketReader"

    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/d;

    invoke-direct {v1, p1, p2}, Lcom/cloudplay/messagesdk/socket/b/g/d;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/o;

    invoke-direct {v1, p1}, Lcom/cloudplay/messagesdk/socket/b/g/o;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/n;

    invoke-direct {v1, p1}, Lcom/cloudplay/messagesdk/socket/b/g/n;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method protected a([B)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/a;

    invoke-direct {v1, p1}, Lcom/cloudplay/messagesdk/socket/b/g/a;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method protected b([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/h;

    invoke-direct {v1, p1}, Lcom/cloudplay/messagesdk/socket/b/g/h;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method protected c([B)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/j;

    invoke-direct {v1, p1}, Lcom/cloudplay/messagesdk/socket/b/g/j;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method protected d([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    new-instance v1, Lcom/cloudplay/messagesdk/socket/b/g/l;

    invoke-direct {v1, p1}, Lcom/cloudplay/messagesdk/socket/b/g/l;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    const-string v1, "run()"

    .line 4
    .line 5
    const-string v2, "WebSocketReader"

    .line 6
    .line 7
    invoke-static {v2, v1}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/cloudplay/messagesdk/socket/b/f;->c:Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/cloudplay/messagesdk/socket/b/f;->f:[B

    .line 15
    .line 16
    iget v6, p0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    .line 17
    .line 18
    array-length v7, v5

    .line 19
    sub-int/2addr v7, v6

    .line 20
    invoke-virtual {v4, v5, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iget v5, p0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    .line 25
    .line 26
    add-int/2addr v5, v4

    .line 27
    iput v5, p0, Lcom/cloudplay/messagesdk/socket/b/f;->e:I

    .line 28
    .line 29
    if-lez v4, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/socket/b/f;->b()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v5, p0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    .line 42
    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    iput-boolean v3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->h:Z

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    if-gez v4, :cond_3

    .line 49
    .line 50
    const-string v4, "run() ConnectionLost"

    .line 51
    .line 52
    invoke-static {v2, v4}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 56
    .line 57
    new-instance v5, Lcom/cloudplay/messagesdk/socket/b/g/e;

    .line 58
    .line 59
    invoke-direct {v5, v1}, Lcom/cloudplay/messagesdk/socket/b/g/e;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v4, v5}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-boolean v3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->h:Z

    .line 66
    .line 67
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/cloudplay/messagesdk/socket/b/f;->h:Z
    :try_end_0
    .catch Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :catch_0
    move-exception v1

    .line 76
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v5, "run() Exception ("

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 104
    .line 105
    new-instance v4, Ljava/lang/Error;

    .line 106
    .line 107
    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v4}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_1
    move-exception v4

    .line 115
    iget v5, p0, Lcom/cloudplay/messagesdk/socket/b/f;->i:I

    .line 116
    .line 117
    if-eqz v5, :cond_4

    .line 118
    .line 119
    iget-object v5, p0, Lcom/cloudplay/messagesdk/socket/b/f;->d:Ljava/net/Socket;

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_4

    .line 126
    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v6, "run() SocketException ("

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 155
    .line 156
    new-instance v4, Lcom/cloudplay/messagesdk/socket/b/g/e;

    .line 157
    .line 158
    invoke-direct {v4, v1}, Lcom/cloudplay/messagesdk/socket/b/g/e;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v0, v4}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_2
    iput-boolean v3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->h:Z

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :catch_2
    move-exception v1

    .line 168
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v5, "run() WebSocketException ("

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/f;->a:Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;

    .line 196
    .line 197
    new-instance v4, Lcom/cloudplay/messagesdk/socket/b/g/k;

    .line 198
    .line 199
    invoke-direct {v4, v1}, Lcom/cloudplay/messagesdk/socket/b/g/k;-><init>(Lcom/cloudplay/messagesdk/socket/websocket/exceptions/WebSocketException;)V

    .line 200
    .line 201
    .line 202
    invoke-interface {v0, v4}, Lcom/cloudplay/messagesdk/socket/websocket/interfaces/IThreadMessenger;->notify(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    :goto_3
    iput-boolean v3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->h:Z

    .line 206
    .line 207
    :goto_4
    const-string v0, "run() Ended"

    .line 208
    .line 209
    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :goto_5
    iput-boolean v3, p0, Lcom/cloudplay/messagesdk/socket/b/f;->h:Z

    .line 214
    .line 215
    throw v0
.end method
