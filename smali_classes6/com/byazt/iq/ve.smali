.class public final Lcom/byazt/iq/ve;
.super Lcom/byazt/jb/sp$tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eg/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb3,
        0x36
    }
.end annotation


# instance fields
.field public c:Z

.field public da:Ljava/net/Socket;

.field public i:Ljava/net/Socket;

.field public n:J

.field public sl:Lcom/byazt/eg/nu;

.field public final sp:Lcom/byazt/eg/da;

.field public t:Lcom/byazt/eg/gr;

.field public tt:I

.field public u:Lcom/byazt/jb/sp;

.field public final uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lcom/byazt/iq/sp;",
            ">;>;"
        }
    .end annotation
.end field

.field public ve:I

.field public final x:Lcom/byazt/eg/eo;

.field public yp:Lcom/byazt/mk/n;

.field public z:Lcom/byazt/mk/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/da;Lcom/byazt/eg/eo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/jb/sp$tt;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/byazt/iq/ve;->ve:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    .line 13
    .line 14
    const-wide v0, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    iput-wide v0, p0, Lcom/byazt/iq/ve;->n:J

    .line 20
    .line 21
    iput-object p1, p0, Lcom/byazt/iq/ve;->sp:Lcom/byazt/eg/da;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    .line 24
    .line 25
    return-void
.end method

.method private a()Lcom/byazt/eg/yv;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/eg/yv$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/eg/yv$c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/eg/yv$c;->c(Lcom/byazt/eg/my;)Lcom/byazt/eg/yv$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-static {v1, v2}, Lcom/byazt/kh/ve;->c(Lcom/byazt/eg/my;Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "Host"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "Proxy-Connection"

    .line 42
    .line 43
    const-string v2, "Keep-Alive"

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "User-Agent"

    .line 50
    .line 51
    invoke-static {}, Lcom/byazt/kh/uj;->c()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/byazt/eg/yv$c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/eg/yv$c;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/byazt/eg/yv$c;->c()Lcom/byazt/eg/yv;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

.method private c(IILcom/byazt/eg/yv;Lcom/byazt/eg/my;)Lcom/byazt/eg/yv;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONNECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lcom/byazt/kh/ve;->c(Lcom/byazt/eg/my;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 104
    :goto_0
    new-instance v0, Lcom/byazt/hx/c;

    iget-object v1, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    iget-object v2, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/byazt/hx/c;-><init>(Lcom/byazt/eg/gu;Lcom/byazt/iq/sp;Lcom/byazt/mk/n;Lcom/byazt/mk/uj;)V

    .line 105
    iget-object v1, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    invoke-interface {v1}, Lcom/byazt/mk/my;->c()Lcom/byazt/mk/gt;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lcom/byazt/mk/gt;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;

    .line 106
    iget-object v1, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    invoke-interface {v1}, Lcom/byazt/mk/rh;->c()Lcom/byazt/mk/gt;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Lcom/byazt/mk/gt;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;

    .line 107
    invoke-virtual {p3}, Lcom/byazt/eg/yv;->ve()Lcom/byazt/eg/rh;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/byazt/hx/c;->c(Lcom/byazt/eg/rh;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/byazt/hx/c;->tt()V

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Lcom/byazt/hx/c;->c(Z)Lcom/byazt/eg/h$c;

    move-result-object v1

    .line 110
    invoke-virtual {v1, p3}, Lcom/byazt/eg/h$c;->c(Lcom/byazt/eg/yv;)Lcom/byazt/eg/h$c;

    move-result-object p3

    .line 111
    invoke-virtual {p3}, Lcom/byazt/eg/h$c;->c()Lcom/byazt/eg/h;

    move-result-object p3

    .line 112
    invoke-static {p3}, Lcom/byazt/yx/n;->c(Lcom/byazt/eg/h;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    .line 113
    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/byazt/hx/c;->tt(J)Lcom/byazt/mk/my;

    move-result-object v0

    const v1, 0x7fffffff

    .line 114
    invoke-static {v0, v1, v2}, Lcom/byazt/kh/ve;->tt(Lcom/byazt/mk/my;ILjava/util/concurrent/TimeUnit;)Z

    .line 115
    invoke-interface {v0}, Lcom/byazt/mk/my;->close()V

    .line 116
    invoke-virtual {p3}, Lcom/byazt/eg/h;->ve()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 117
    iget-object v0, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/c;->uj()Lcom/byazt/eg/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-interface {v0, v1, p3}, Lcom/byazt/eg/tt;->c(Lcom/byazt/eg/eo;Lcom/byazt/eg/h;)Lcom/byazt/eg/yv;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    .line 118
    invoke-virtual {p3, v1}, Lcom/byazt/eg/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto :goto_0

    .line 119
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Lcom/byazt/eg/h;->ve()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_4
    iget-object p1, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    invoke-interface {p1}, Lcom/byazt/mk/n;->ve()Lcom/byazt/mk/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/mk/ve;->n()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    invoke-interface {p1}, Lcom/byazt/mk/uj;->ve()Lcom/byazt/mk/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/mk/ve;->n()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 123
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(IIILcom/byazt/eg/n;Lcom/byazt/eg/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/byazt/iq/ve;->a()Lcom/byazt/eg/yv;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 39
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/byazt/iq/ve;->c(IILcom/byazt/eg/n;Lcom/byazt/eg/m;)V

    .line 40
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/byazt/iq/ve;->c(IILcom/byazt/eg/yv;Lcom/byazt/eg/my;)Lcom/byazt/eg/yv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v3, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    invoke-static {v3}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 42
    iput-object v3, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    .line 43
    iput-object v3, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    .line 44
    iput-object v3, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(IILcom/byazt/eg/n;Lcom/byazt/eg/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object p3, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {p3}, Lcom/byazt/eg/eo;->tt()Ljava/net/Proxy;

    move-result-object p3

    .line 46
    iget-object p4, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {p4}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object p4

    .line 47
    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p4, Ljava/net/Socket;

    invoke-direct {p4, p3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p4}, Lcom/byazt/eg/c;->ve()Ljavax/net/SocketFactory;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p4

    :goto_1
    iput-object p4, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    .line 49
    invoke-virtual {p4, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 50
    :try_start_0
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    iget-object p4, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {p4}, Lcom/byazt/eg/eo;->ve()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lcom/byazt/xb/n;->c(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :try_start_1
    iget-object p1, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    invoke-static {p1}, Lcom/byazt/mk/t;->tt(Ljava/net/Socket;)Lcom/byazt/mk/my;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    .line 52
    iget-object p1, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Ljava/net/Socket;)Lcom/byazt/mk/rh;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/rh;)Lcom/byazt/mk/uj;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "throw with null exception"

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 54
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 55
    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to connect to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {p4}, Lcom/byazt/eg/eo;->ve()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 57
    throw p2
.end method

.method private c(Lcom/byazt/iq/tt;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/byazt/eg/c;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    .line 72
    invoke-virtual {v0}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/eg/my;->x()I

    move-result v5

    const/4 v6, 0x1

    .line 73
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 74
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/byazt/iq/tt;->c(Ljavax/net/ssl/SSLSocket;)Lcom/byazt/eg/sl;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/byazt/eg/sl;->uj()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    move-result-object v3

    .line 77
    invoke-virtual {v0}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/byazt/eg/c;->n()Ljava/util/List;

    move-result-object v5

    .line 78
    invoke-virtual {v3, v1, v4, v5}, Lcom/byazt/xb/n;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :catchall_0
    :try_start_3
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/eg/nu;->c(Ljavax/net/ssl/SSLSession;)Lcom/byazt/eg/nu;

    move-result-object v3

    .line 81
    invoke-virtual {v0}, Lcom/byazt/eg/c;->da()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v0}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {v0}, Lcom/byazt/eg/c;->sl()Lcom/byazt/eg/sp;

    move-result-object v4

    invoke-virtual {v0}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v3}, Lcom/byazt/eg/nu;->ve()Ljava/util/List;

    move-result-object v5

    .line 84
    invoke-virtual {v4, v0, v5}, Lcom/byazt/eg/sp;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 85
    invoke-virtual {p1}, Lcom/byazt/eg/sl;->uj()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/xb/n;->c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 87
    :cond_1
    iput-object v1, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    .line 88
    invoke-static {v1}, Lcom/byazt/mk/t;->tt(Ljava/net/Socket;)Lcom/byazt/mk/my;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    .line 89
    iget-object p1, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Ljava/net/Socket;)Lcom/byazt/mk/rh;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/mk/t;->c(Lcom/byazt/mk/rh;)Lcom/byazt/mk/uj;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    .line 90
    iput-object v3, p0, Lcom/byazt/iq/ve;->sl:Lcom/byazt/eg/nu;

    if-eqz v2, :cond_2

    .line 91
    invoke-static {v2}, Lcom/byazt/eg/gr;->c(Ljava/lang/String;)Lcom/byazt/eg/gr;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/byazt/eg/gr;->tt:Lcom/byazt/eg/gr;

    :goto_0
    iput-object p1, p0, Lcom/byazt/iq/ve;->t:Lcom/byazt/eg/gr;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/byazt/xb/n;->tt(Ljavax/net/ssl/SSLSocket;)V

    return-void

    .line 93
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Lcom/byazt/eg/nu;->ve()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 94
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hostname "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {p1}, Lcom/byazt/eg/sp;->c(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {p1}, Lcom/byazt/wt/n;->c(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 98
    :goto_1
    :try_start_5
    invoke-static {p1}, Lcom/byazt/kh/ve;->c(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 99
    :cond_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    if-eqz v2, :cond_5

    .line 100
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/byazt/xb/n;->tt(Ljavax/net/ssl/SSLSocket;)V

    .line 101
    :cond_5
    invoke-static {v2}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    .line 102
    throw p1
.end method

.method private c(Lcom/byazt/iq/tt;Lcom/byazt/eg/n;Lcom/byazt/eg/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object p2, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {p2}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/eg/c;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    if-nez p2, :cond_0

    .line 59
    sget-object p1, Lcom/byazt/eg/gr;->tt:Lcom/byazt/eg/gr;

    iput-object p1, p0, Lcom/byazt/iq/ve;->t:Lcom/byazt/eg/gr;

    .line 60
    iget-object p1, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    iput-object p1, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    return-void

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/iq/ve;->c(Lcom/byazt/iq/tt;)V

    .line 62
    :try_start_0
    iget-object p1, p0, Lcom/byazt/iq/ve;->t:Lcom/byazt/eg/gr;

    sget-object p2, Lcom/byazt/eg/gr;->uj:Lcom/byazt/eg/gr;

    if-ne p1, p2, :cond_1

    .line 63
    iget-object p1, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 64
    new-instance p1, Lcom/byazt/jb/sp$c;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/byazt/jb/sp$c;-><init>(Z)V

    iget-object p2, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    iget-object p3, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    .line 65
    invoke-virtual {p3}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    iget-object v1, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/byazt/jb/sp$c;->c(Ljava/net/Socket;Ljava/lang/String;Lcom/byazt/mk/n;Lcom/byazt/mk/uj;)Lcom/byazt/jb/sp$c;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p0}, Lcom/byazt/jb/sp$c;->c(Lcom/byazt/jb/sp$tt;)Lcom/byazt/jb/sp$c;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/byazt/jb/sp$c;->c()Lcom/byazt/jb/sp;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    .line 68
    invoke-virtual {p1}, Lcom/byazt/jb/sp;->ve()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/eg/eo;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    return-object v0
.end method

.method public c(Lcom/byazt/eg/gu;Lcom/byazt/eg/gt$c;Lcom/byazt/iq/sp;)Lcom/byazt/yx/ve;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/byazt/jb/a;

    iget-object v1, p0, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/byazt/jb/a;-><init>(Lcom/byazt/eg/gu;Lcom/byazt/eg/gt$c;Lcom/byazt/iq/sp;Lcom/byazt/jb/sp;)V

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-interface {p2}, Lcom/byazt/eg/gt$c;->ve()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 142
    iget-object v0, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    invoke-interface {v0}, Lcom/byazt/mk/my;->c()Lcom/byazt/mk/gt;

    move-result-object v0

    invoke-interface {p2}, Lcom/byazt/eg/gt$c;->ve()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/mk/gt;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;

    .line 143
    iget-object v0, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    invoke-interface {v0}, Lcom/byazt/mk/rh;->c()Lcom/byazt/mk/gt;

    move-result-object v0

    invoke-interface {p2}, Lcom/byazt/eg/gt$c;->uj()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/mk/gt;->c(JLjava/util/concurrent/TimeUnit;)Lcom/byazt/mk/gt;

    .line 144
    new-instance p2, Lcom/byazt/hx/c;

    iget-object v0, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    iget-object v1, p0, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/byazt/hx/c;-><init>(Lcom/byazt/eg/gu;Lcom/byazt/iq/sp;Lcom/byazt/mk/n;Lcom/byazt/mk/uj;)V

    return-object p2
.end method

.method public c(IIIZLcom/byazt/eg/n;Lcom/byazt/eg/m;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1
    iget-object v0, v7, Lcom/byazt/iq/ve;->t:Lcom/byazt/eg/gr;

    if-nez v0, :cond_a

    .line 2
    iget-object v0, v7, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/c;->a()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v10, Lcom/byazt/iq/tt;

    invoke-direct {v10, v0}, Lcom/byazt/iq/tt;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v1, v7, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/c;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 5
    sget-object v1, Lcom/byazt/eg/sl;->ve:Lcom/byazt/eg/sl;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v7, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/byazt/xb/n;->tt()Lcom/byazt/xb/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/xb/n;->tt(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/byazt/iq/n;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEARTEXT communication to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/byazt/iq/n;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 9
    :cond_1
    new-instance v0, Lcom/byazt/iq/n;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/byazt/iq/n;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    .line 10
    :goto_1
    :try_start_0
    iget-object v0, v7, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->uj()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/byazt/iq/ve;->c(IIILcom/byazt/eg/n;Lcom/byazt/eg/m;)V

    .line 12
    iget-object v0, v7, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    .line 13
    :try_start_1
    invoke-direct {p0, v13, v14, v8, v9}, Lcom/byazt/iq/ve;->c(IILcom/byazt/eg/n;Lcom/byazt/eg/m;)V

    .line 14
    :goto_2
    invoke-direct {p0, v10, v8, v9}, Lcom/byazt/iq/ve;->c(Lcom/byazt/iq/tt;Lcom/byazt/eg/n;Lcom/byazt/eg/m;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    :goto_3
    iget-object v0, v7, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->uj()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 16
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lcom/byazt/iq/n;

    invoke-direct {v1, v0}, Lcom/byazt/iq/n;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 18
    :cond_6
    :goto_4
    iget-object v0, v7, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    if-eqz v0, :cond_7

    .line 19
    iget-object v1, v7, Lcom/byazt/iq/ve;->sp:Lcom/byazt/eg/da;

    monitor-enter v1

    .line 20
    :try_start_2
    iget-object v0, v7, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    invoke-virtual {v0}, Lcom/byazt/jb/sp;->c()I

    move-result v0

    iput v0, v7, Lcom/byazt/iq/ve;->ve:I

    .line 21
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    .line 22
    :goto_5
    iget-object v1, v7, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-static {v1}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    .line 23
    iget-object v1, v7, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    invoke-static {v1}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    .line 24
    iput-object v11, v7, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    .line 25
    iput-object v11, v7, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    .line 26
    iput-object v11, v7, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    .line 27
    iput-object v11, v7, Lcom/byazt/iq/ve;->z:Lcom/byazt/mk/uj;

    .line 28
    iput-object v11, v7, Lcom/byazt/iq/ve;->sl:Lcom/byazt/eg/nu;

    .line 29
    iput-object v11, v7, Lcom/byazt/iq/ve;->t:Lcom/byazt/eg/gr;

    .line 30
    iput-object v11, v7, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    .line 31
    iget-object v1, v7, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v1}, Lcom/byazt/eg/eo;->ve()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v1}, Lcom/byazt/eg/eo;->tt()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/eg/m;->c(Lcom/byazt/eg/n;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/byazt/eg/gr;Ljava/io/IOException;)V

    if-nez v12, :cond_8

    .line 32
    new-instance v12, Lcom/byazt/iq/n;

    invoke-direct {v12, v0}, Lcom/byazt/iq/n;-><init>(Ljava/io/IOException;)V

    goto :goto_6

    .line 33
    :cond_8
    invoke-virtual {v12, v0}, Lcom/byazt/iq/n;->c(Ljava/io/IOException;)V

    :goto_6
    if-eqz p4, :cond_9

    .line 34
    invoke-virtual {v10, v0}, Lcom/byazt/iq/tt;->c(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 35
    :cond_9
    throw v12

    .line 36
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/byazt/jb/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/byazt/jb/tt;->n:Lcom/byazt/jb/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/jb/i;->c(Lcom/byazt/jb/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/jb/sp;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/byazt/iq/ve;->sp:Lcom/byazt/eg/da;

    monitor-enter v0

    .line 156
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/jb/sp;->c()I

    move-result p1

    iput p1, p0, Lcom/byazt/iq/ve;->ve:I

    .line 157
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/eg/c;Lcom/byazt/eg/eo;)Z
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/byazt/iq/ve;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/byazt/iq/ve;->ve:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/byazt/iq/ve;->c:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 125
    :cond_0
    sget-object v0, Lcom/byazt/kh/c;->c:Lcom/byazt/kh/c;

    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/kh/c;->c(Lcom/byazt/eg/c;Lcom/byazt/eg/c;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/iq/ve;->c()Lcom/byazt/eg/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 128
    :cond_4
    invoke-virtual {p2}, Lcom/byazt/eg/eo;->tt()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->tt()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v0}, Lcom/byazt/eg/eo;->ve()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lcom/byazt/eg/eo;->ve()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 131
    :cond_7
    invoke-virtual {p2}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/eg/c;->da()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lcom/byazt/wt/n;->c:Lcom/byazt/wt/n;

    if-eq p2, v0, :cond_8

    return v2

    .line 132
    :cond_8
    invoke-virtual {p1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/byazt/iq/ve;->c(Lcom/byazt/eg/my;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    .line 133
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/eg/c;->sl()Lcom/byazt/eg/sp;

    move-result-object p2

    invoke-virtual {p1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/iq/ve;->uj()Lcom/byazt/eg/nu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/eg/nu;->ve()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/byazt/eg/sp;->c(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public c(Lcom/byazt/eg/my;)Z
    .locals 4

    .line 134
    invoke-virtual {p1}, Lcom/byazt/eg/my;->x()I

    move-result v0

    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/my;->x()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/byazt/iq/ve;->sl:Lcom/byazt/eg/nu;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/byazt/wt/n;->c:Lcom/byazt/wt/n;

    .line 137
    invoke-virtual {p1}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/byazt/iq/ve;->sl:Lcom/byazt/eg/nu;

    invoke-virtual {v3}, Lcom/byazt/eg/nu;->ve()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 138
    invoke-virtual {v0, p1, v3}, Lcom/byazt/wt/n;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public c(Z)Z
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/byazt/jb/sp;->uj()Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    if-eqz p1, :cond_4

    .line 149
    :try_start_0
    iget-object p1, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 151
    iget-object v0, p0, Lcom/byazt/iq/ve;->yp:Lcom/byazt/mk/n;

    invoke-interface {v0}, Lcom/byazt/mk/n;->n()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 152
    :try_start_2
    iget-object v0, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 153
    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iq/ve;->u:Lcom/byazt/jb/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Connection{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/byazt/eg/my;->sp()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ":"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/byazt/eg/eo;->c()Lcom/byazt/eg/c;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/byazt/eg/c;->c()Lcom/byazt/eg/my;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/byazt/eg/my;->x()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", proxy="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/byazt/eg/eo;->tt()Ljava/net/Proxy;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, " hostAddress="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/byazt/iq/ve;->x:Lcom/byazt/eg/eo;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/byazt/eg/eo;->ve()Ljava/net/InetSocketAddress;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " cipherSuite="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/byazt/iq/ve;->sl:Lcom/byazt/eg/nu;

    .line 81
    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/byazt/eg/nu;->tt()Lcom/byazt/eg/x;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const-string v1, "none"

    .line 90
    .line 91
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " protocol="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/byazt/iq/ve;->t:Lcom/byazt/eg/gr;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const/16 v1, 0x7d

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iq/ve;->i:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kh/ve;->c(Ljava/net/Socket;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public uj()Lcom/byazt/eg/nu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iq/ve;->sl:Lcom/byazt/eg/nu;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iq/ve;->da:Ljava/net/Socket;

    .line 2
    .line 3
    return-object v0
.end method
