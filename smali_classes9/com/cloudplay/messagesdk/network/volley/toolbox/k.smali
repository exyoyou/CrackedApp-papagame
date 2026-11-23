.class final Lcom/cloudplay/messagesdk/network/volley/toolbox/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;
    }
.end annotation


# direct methods
.method static a(Lcom/cloudplay/messagesdk/network/volley/Request;JLjava/util/List;)Lcom/cloudplay/messagesdk/network/volley/f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;J",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/network/volley/d;",
            ">;)",
            "Lcom/cloudplay/messagesdk/network/volley/f;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->d()Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    move-result-object p0

    if-nez p0, :cond_0

    .line 8
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/f;

    const/16 v1, 0x130

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/cloudplay/messagesdk/network/volley/f;-><init>(I[BZJLjava/util/List;)V

    return-object p0

    .line 9
    :cond_0
    invoke-static {p3, p0}, Lcom/cloudplay/messagesdk/network/volley/toolbox/f;->a(Ljava/util/List;Lcom/cloudplay/messagesdk/network/volley/Cache$a;)Ljava/util/List;

    move-result-object v10

    .line 10
    new-instance p3, Lcom/cloudplay/messagesdk/network/volley/f;

    iget-object v6, p0, Lcom/cloudplay/messagesdk/network/volley/Cache$a;->a:[B

    const/16 v5, 0x130

    const/4 v7, 0x1

    move-object v4, p3

    move-wide v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/cloudplay/messagesdk/network/volley/f;-><init>(I[BZJLjava/util/List;)V

    return-object p3
.end method

.method static a(Lcom/cloudplay/messagesdk/network/volley/Request;Ljava/io/IOException;JLcom/cloudplay/messagesdk/network/volley/toolbox/g;[B)Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/cloudplay/messagesdk/network/volley/toolbox/g;",
            "[B)",
            "Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/network/volley/VolleyError;
        }
    .end annotation

    .line 33
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;

    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/TimeoutError;

    invoke-direct {p1}, Lcom/cloudplay/messagesdk/network/volley/TimeoutError;-><init>()V

    const-string p2, "socket"

    invoke-direct {p0, p2, p1, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/VolleyError;Lcom/cloudplay/messagesdk/network/volley/toolbox/k$a;)V

    return-object p0

    .line 35
    :cond_0
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-nez v0, :cond_9

    if-eqz p4, :cond_7

    .line 36
    invoke-virtual {p4}, Lcom/cloudplay/messagesdk/network/volley/toolbox/g;->d()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->s()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Unexpected response code %d for %s"

    invoke-static {v2, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_6

    .line 38
    invoke-virtual {p4}, Lcom/cloudplay/messagesdk/network/volley/toolbox/g;->c()Ljava/util/List;

    move-result-object v8

    .line 39
    new-instance p4, Lcom/cloudplay/messagesdk/network/volley/f;

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v6, v2, p2

    const/4 v5, 0x0

    move-object v2, p4

    move v3, p1

    move-object v4, p5

    invoke-direct/range {v2 .. v8}, Lcom/cloudplay/messagesdk/network/volley/f;-><init>(I[BZJLjava/util/List;)V

    const/16 p2, 0x191

    if-eq p1, p2, :cond_5

    const/16 p2, 0x193

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x190

    if-lt p1, p2, :cond_3

    const/16 p2, 0x1f3

    if-le p1, p2, :cond_2

    goto :goto_0

    .line 41
    :cond_2
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/ClientError;

    invoke-direct {p0, p4}, Lcom/cloudplay/messagesdk/network/volley/ClientError;-><init>(Lcom/cloudplay/messagesdk/network/volley/f;)V

    throw p0

    :cond_3
    :goto_0
    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_4

    const/16 p2, 0x257

    if-gt p1, p2, :cond_4

    .line 42
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->z()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 43
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;

    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/ServerError;

    invoke-direct {p1, p4}, Lcom/cloudplay/messagesdk/network/volley/ServerError;-><init>(Lcom/cloudplay/messagesdk/network/volley/f;)V

    const-string p2, "server"

    invoke-direct {p0, p2, p1, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/VolleyError;Lcom/cloudplay/messagesdk/network/volley/toolbox/k$a;)V

    return-object p0

    .line 44
    :cond_4
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/ServerError;

    invoke-direct {p0, p4}, Lcom/cloudplay/messagesdk/network/volley/ServerError;-><init>(Lcom/cloudplay/messagesdk/network/volley/f;)V

    throw p0

    .line 45
    :cond_5
    :goto_1
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;

    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;

    invoke-direct {p1, p4}, Lcom/cloudplay/messagesdk/network/volley/AuthFailureError;-><init>(Lcom/cloudplay/messagesdk/network/volley/f;)V

    const-string p2, "auth"

    invoke-direct {p0, p2, p1, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/VolleyError;Lcom/cloudplay/messagesdk/network/volley/toolbox/k$a;)V

    return-object p0

    .line 46
    :cond_6
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;

    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/NetworkError;

    invoke-direct {p1}, Lcom/cloudplay/messagesdk/network/volley/NetworkError;-><init>()V

    const-string p2, "network"

    invoke-direct {p0, p2, p1, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/VolleyError;Lcom/cloudplay/messagesdk/network/volley/toolbox/k$a;)V

    return-object p0

    .line 47
    :cond_7
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->y()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 48
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;

    new-instance p1, Lcom/cloudplay/messagesdk/network/volley/NoConnectionError;

    invoke-direct {p1}, Lcom/cloudplay/messagesdk/network/volley/NoConnectionError;-><init>()V

    const-string p2, "connection"

    invoke-direct {p0, p2, p1, v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;-><init>(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/VolleyError;Lcom/cloudplay/messagesdk/network/volley/toolbox/k$a;)V

    return-object p0

    .line 49
    :cond_8
    new-instance p0, Lcom/cloudplay/messagesdk/network/volley/NoConnectionError;

    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 50
    :cond_9
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad URL "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->s()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static a(JLcom/cloudplay/messagesdk/network/volley/Request;[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/cloudplay/messagesdk/network/volley/g;->b:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0xbb8

    cmp-long v2, p0, v0

    if-lez v2, :cond_2

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    if-eqz p3, :cond_1

    array-length p0, p3

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "null"

    :goto_0
    const/4 p1, 0x2

    aput-object p0, v0, p1

    .line 4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    .line 5
    invoke-virtual {p2}, Lcom/cloudplay/messagesdk/network/volley/Request;->o()Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    const-string p0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 6
    invoke-static {p0, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static a(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/network/volley/VolleyError;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->o()Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->q()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 27
    :try_start_0
    invoke-static {p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;->a(Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;)Lcom/cloudplay/messagesdk/network/volley/VolleyError;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/cloudplay/messagesdk/network/volley/RetryPolicy;->retry(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/cloudplay/messagesdk/network/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v4, [Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;->b(Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%s-retry [timeout=%s]"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    invoke-static {p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;->b(Lcom/cloudplay/messagesdk/network/volley/toolbox/k$b;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "%s-timeout-giveup [timeout=%s]"

    .line 30
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    .line 32
    throw v0
.end method

.method static a(Ljava/io/InputStream;ILcom/cloudplay/messagesdk/network/volley/toolbox/d;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error occurred when closing InputStream"

    .line 11
    new-instance v1, Lcom/cloudplay/messagesdk/network/volley/toolbox/l;

    invoke-direct {v1, p2, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/l;-><init>(Lcom/cloudplay/messagesdk/network/volley/toolbox/d;I)V

    const/16 p1, 0x400

    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/d;->a(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 14
    invoke-virtual {v1, p1, v2, v3}, Lcom/cloudplay/messagesdk/network/volley/toolbox/l;->write([BII)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {v0, p0}, Lcom/cloudplay/messagesdk/network/volley/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :goto_1
    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/d;->a([B)V

    .line 19
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/l;->close()V

    return-object v3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    const/4 p1, 0x0

    :goto_2
    if-eqz p0, :cond_1

    .line 20
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    new-array p0, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, p0}, Lcom/cloudplay/messagesdk/network/volley/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_1
    :goto_3
    invoke-virtual {p2, p1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/d;->a([B)V

    .line 23
    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/network/volley/toolbox/l;->close()V

    .line 24
    throw v3
.end method
