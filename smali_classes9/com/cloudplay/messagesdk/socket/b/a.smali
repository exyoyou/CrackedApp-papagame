.class public Lcom/cloudplay/messagesdk/socket/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/cloudplay/messagesdk/socket/b/b;

.field private b:Lcom/cloudplay/messagesdk/socket/b/h/b;


# direct methods
.method public constructor <init>(Lcom/cloudplay/messagesdk/socket/b/h/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/a;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    .line 5
    .line 6
    new-instance p1, Lcom/cloudplay/messagesdk/socket/b/b;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/cloudplay/messagesdk/socket/b/b;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloudplay/messagesdk/socket/b/a;->a:Lcom/cloudplay/messagesdk/socket/b/b;

    .line 12
    .line 13
    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/socket/b/a;->a([B)[B

    move-result-object p1

    return-object p1

    .line 3
    :catch_0
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;

    const-string v0, "payload is an invalid utf-8 string"

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 4
    array-length v0, p1

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/a;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->f()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/a;->a:Lcom/cloudplay/messagesdk/socket/b/b;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/b;->d([B)[B

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;

    const-string v0, "message payload exceeds payload limit"

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/socket/b/g/g;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;
        }
    .end annotation

    .line 7
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/o;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/o;

    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/o;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/socket/b/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/l;

    if-eqz v0, :cond_1

    .line 10
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/l;

    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/l;->a:[B

    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/socket/b/a;->a([B)[B

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/a;

    if-eqz v0, :cond_3

    .line 12
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/a;

    iget-object v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/a;->a:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/cloudplay/messagesdk/socket/b/a;->b:Lcom/cloudplay/messagesdk/socket/b/h/b;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/socket/b/h/b;->f()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/a;->a:Lcom/cloudplay/messagesdk/socket/b/b;

    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/a;->a:[B

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/b;->c([B)[B

    move-result-object p1

    return-object p1

    .line 14
    :cond_2
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;

    const-string v0, "message payload exceeds payload limit"

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/h;

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/a;->a:Lcom/cloudplay/messagesdk/socket/b/b;

    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/h;

    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/h;->a:[B

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/b;->a([B)[B

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/j;

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/a;->a:Lcom/cloudplay/messagesdk/socket/b/b;

    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/j;

    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/j;->a:[B

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/socket/b/b;->b([B)[B

    move-result-object p1

    return-object p1

    .line 19
    :cond_5
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/cloudplay/messagesdk/socket/b/a;->a:Lcom/cloudplay/messagesdk/socket/b/b;

    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/d;

    iget v1, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->a:I

    iget-object p1, p1, Lcom/cloudplay/messagesdk/socket/b/g/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/cloudplay/messagesdk/socket/b/b;->a(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 21
    :cond_6
    instance-of v0, p1, Lcom/cloudplay/messagesdk/socket/b/g/c;

    if-eqz v0, :cond_7

    .line 22
    check-cast p1, Lcom/cloudplay/messagesdk/socket/b/g/c;

    invoke-static {p1}, Lcom/cloudplay/messagesdk/socket/b/c;->a(Lcom/cloudplay/messagesdk/socket/b/g/c;)[B

    move-result-object p1

    return-object p1

    .line 23
    :cond_7
    new-instance p1, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;

    const-string v0, "unknown message received by WebSocketWriter"

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/socket/websocket/exceptions/ParseFailed;-><init>(Ljava/lang/String;)V

    throw p1
.end method
