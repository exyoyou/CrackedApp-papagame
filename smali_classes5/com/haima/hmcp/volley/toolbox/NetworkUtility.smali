.class public final Lcom/haima/hmcp/volley/toolbox/NetworkUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;
    }
.end annotation


# static fields
.field private static final SLOW_REQUEST_THRESHOLD_MS:I = 0xbb8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static attemptRetryOnException(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/VolleyError;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/Request;->getRetryPolicy()Lcom/haima/hmcp/volley/RetryPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/Request;->getTimeoutMs()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x2

    .line 12
    :try_start_0
    invoke-static {p1}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;->access$000(Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;)Lcom/haima/hmcp/volley/VolleyError;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-interface {v0, v5}, Lcom/haima/hmcp/volley/RetryPolicy;->retry(Lcom/haima/hmcp/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/haima/hmcp/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    new-array v0, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;->access$100(Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v0, v3

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v0, v2

    .line 32
    .line 33
    const-string p1, "%s-retry [timeout=%s]"

    .line 34
    .line 35
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-array v4, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;->access$100(Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    aput-object p1, v4, v3

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    aput-object p1, v4, v2

    .line 57
    .line 58
    const-string p1, "%s-timeout-giveup [timeout=%s]"

    .line 59
    .line 60
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method static getNotModifiedNetworkResponse(Lcom/haima/hmcp/volley/Request;JLjava/util/List;)Lcom/haima/hmcp/volley/NetworkResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;J",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/volley/Header;",
            ">;)",
            "Lcom/haima/hmcp/volley/NetworkResponse;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/Request;->getCacheEntry()Lcom/haima/hmcp/volley/Cache$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/haima/hmcp/volley/NetworkResponse;

    .line 8
    .line 9
    const/16 v1, 0x130

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    move-object v0, p0

    .line 14
    move-wide v4, p1

    .line 15
    move-object v6, p3

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-static {p3, p0}, Lcom/haima/hmcp/volley/toolbox/HttpHeaderParser;->combineHeaders(Ljava/util/List;Lcom/haima/hmcp/volley/Cache$Entry;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    new-instance p3, Lcom/haima/hmcp/volley/NetworkResponse;

    .line 25
    .line 26
    const/16 v5, 0x130

    .line 27
    .line 28
    iget-object v6, p0, Lcom/haima/hmcp/volley/Cache$Entry;->data:[B

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    move-object v4, p3

    .line 32
    move-wide v8, p1

    .line 33
    invoke-direct/range {v4 .. v10}, Lcom/haima/hmcp/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-object p3
.end method

.method static inputStreamToBytes(Ljava/io/InputStream;ILcom/haima/hmcp/volley/toolbox/ByteArrayPool;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "Error occurred when closing InputStream"

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;I)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0x400

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v3, v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, p1, v2, v3}, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 27
    .line 28
    .line 29
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v0, p0}, Lcom/haima/hmcp/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 43
    .line 44
    .line 45
    return-object v3

    .line 46
    :catchall_0
    move-exception v3

    .line 47
    goto :goto_2

    .line 48
    :catchall_1
    move-exception v3

    .line 49
    const/4 p1, 0x0

    .line 50
    :goto_2
    if-eqz p0, :cond_1

    .line 51
    .line 52
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catch_1
    new-array p0, v2, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v0, p0}, Lcom/haima/hmcp/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_3
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 65
    .line 66
    .line 67
    throw v3
.end method

.method static logSlowRequests(JLcom/haima/hmcp/volley/Request;[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;[BI)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/volley/VolleyLog;->DEBUG:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0xbb8

    .line 6
    .line 7
    cmp-long v2, p0, v0

    .line 8
    .line 9
    if-lez v2, :cond_2

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput-object p2, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    aput-object p0, v0, v1

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    array-length p0, p3

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p0, "null"

    .line 33
    .line 34
    :goto_0
    const/4 p1, 0x2

    .line 35
    aput-object p0, v0, p1

    .line 36
    .line 37
    const/4 p0, 0x3

    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    aput-object p1, v0, p0

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/haima/hmcp/volley/Request;->getRetryPolicy()Lcom/haima/hmcp/volley/RetryPolicy;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Lcom/haima/hmcp/volley/RetryPolicy;->getCurrentRetryCount()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const/4 p1, 0x4

    .line 57
    aput-object p0, v0, p1

    .line 58
    .line 59
    const-string p0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 60
    .line 61
    invoke-static {p0, v0}, Lcom/haima/hmcp/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public static responseToBytes(Lcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/haima/hmcp/volley/ServerError;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getContentLength()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, p1, v1}, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x400

    .line 18
    .line 19
    :try_start_1
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, -0x1

    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v1, v3, v2}, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 36
    .line 37
    .line 38
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :catchall_0
    move-exception v2

    .line 55
    move-object v4, v1

    .line 56
    move-object v1, p0

    .line 57
    move-object p0, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :try_start_3
    new-instance v2, Lcom/haima/hmcp/volley/ServerError;

    .line 60
    .line 61
    invoke-direct {v2}, Lcom/haima/hmcp/volley/ServerError;-><init>()V

    .line 62
    .line 63
    .line 64
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    :catchall_1
    move-exception v2

    .line 66
    move-object p0, v1

    .line 67
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :catch_1
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-virtual {p1, p0}, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/haima/hmcp/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    .line 79
    .line 80
    .line 81
    throw v2
.end method

.method static shouldRetryException(Lcom/haima/hmcp/volley/Request;Ljava/io/IOException;JLcom/haima/hmcp/volley/toolbox/HttpResponse;[B)Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;
    .locals 9
    .param p4    # Lcom/haima/hmcp/volley/toolbox/HttpResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/haima/hmcp/volley/toolbox/HttpResponse;",
            "[B)",
            "Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/VolleyError;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;

    .line 7
    .line 8
    new-instance p1, Lcom/haima/hmcp/volley/TimeoutError;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/haima/hmcp/volley/TimeoutError;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p2, "socket"

    .line 14
    .line 15
    invoke-direct {p0, p2, p1, v1}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/haima/hmcp/volley/VolleyError;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$1;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    instance-of v0, p1, Ljava/net/MalformedURLException;

    .line 20
    .line 21
    if-nez v0, :cond_9

    .line 22
    .line 23
    if-eqz p4, :cond_7

    .line 24
    .line 25
    invoke-virtual {p4}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getStatusCode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    aput-object v3, v0, v2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/Request;->getUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x1

    .line 44
    aput-object v2, v0, v3

    .line 45
    .line 46
    const-string v2, "Unexpected response code %d for %s"

    .line 47
    .line 48
    invoke-static {v2, v0}, Lcom/haima/hmcp/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    if-eqz p5, :cond_6

    .line 52
    .line 53
    invoke-virtual {p4}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    new-instance p4, Lcom/haima/hmcp/volley/NetworkResponse;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    sub-long v6, v2, p2

    .line 65
    .line 66
    move-object v2, p4

    .line 67
    move v3, p1

    .line 68
    move-object v4, p5

    .line 69
    invoke-direct/range {v2 .. v8}, Lcom/haima/hmcp/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 70
    .line 71
    .line 72
    const/16 p2, 0x191

    .line 73
    .line 74
    if-eq p1, p2, :cond_5

    .line 75
    .line 76
    const/16 p2, 0x193

    .line 77
    .line 78
    if-ne p1, p2, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/16 p2, 0x190

    .line 82
    .line 83
    if-lt p1, p2, :cond_3

    .line 84
    .line 85
    const/16 p2, 0x1f3

    .line 86
    .line 87
    if-le p1, p2, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-instance p0, Lcom/haima/hmcp/volley/ClientError;

    .line 91
    .line 92
    invoke-direct {p0, p4}, Lcom/haima/hmcp/volley/ClientError;-><init>(Lcom/haima/hmcp/volley/NetworkResponse;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_3
    :goto_0
    const/16 p2, 0x1f4

    .line 97
    .line 98
    if-lt p1, p2, :cond_4

    .line 99
    .line 100
    const/16 p2, 0x257

    .line 101
    .line 102
    if-gt p1, p2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/Request;->shouldRetryServerErrors()Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_4

    .line 109
    .line 110
    new-instance p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;

    .line 111
    .line 112
    new-instance p1, Lcom/haima/hmcp/volley/ServerError;

    .line 113
    .line 114
    invoke-direct {p1, p4}, Lcom/haima/hmcp/volley/ServerError;-><init>(Lcom/haima/hmcp/volley/NetworkResponse;)V

    .line 115
    .line 116
    .line 117
    const-string p2, "server"

    .line 118
    .line 119
    invoke-direct {p0, p2, p1, v1}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/haima/hmcp/volley/VolleyError;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$1;)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_4
    new-instance p0, Lcom/haima/hmcp/volley/ServerError;

    .line 124
    .line 125
    invoke-direct {p0, p4}, Lcom/haima/hmcp/volley/ServerError;-><init>(Lcom/haima/hmcp/volley/NetworkResponse;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_5
    :goto_1
    new-instance p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;

    .line 130
    .line 131
    new-instance p1, Lcom/haima/hmcp/volley/AuthFailureError;

    .line 132
    .line 133
    invoke-direct {p1, p4}, Lcom/haima/hmcp/volley/AuthFailureError;-><init>(Lcom/haima/hmcp/volley/NetworkResponse;)V

    .line 134
    .line 135
    .line 136
    const-string p2, "auth"

    .line 137
    .line 138
    invoke-direct {p0, p2, p1, v1}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/haima/hmcp/volley/VolleyError;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$1;)V

    .line 139
    .line 140
    .line 141
    return-object p0

    .line 142
    :cond_6
    new-instance p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;

    .line 143
    .line 144
    new-instance p1, Lcom/haima/hmcp/volley/NetworkError;

    .line 145
    .line 146
    invoke-direct {p1}, Lcom/haima/hmcp/volley/NetworkError;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string p2, "network"

    .line 150
    .line 151
    invoke-direct {p0, p2, p1, v1}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/haima/hmcp/volley/VolleyError;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$1;)V

    .line 152
    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_7
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/Request;->shouldRetryConnectionErrors()Z

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-eqz p0, :cond_8

    .line 160
    .line 161
    new-instance p0, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;

    .line 162
    .line 163
    new-instance p1, Lcom/haima/hmcp/volley/NoConnectionError;

    .line 164
    .line 165
    invoke-direct {p1}, Lcom/haima/hmcp/volley/NoConnectionError;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string p2, "connection"

    .line 169
    .line 170
    invoke-direct {p0, p2, p1, v1}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;-><init>(Ljava/lang/String;Lcom/haima/hmcp/volley/VolleyError;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$1;)V

    .line 171
    .line 172
    .line 173
    return-object p0

    .line 174
    :cond_8
    new-instance p0, Lcom/haima/hmcp/volley/NoConnectionError;

    .line 175
    .line 176
    invoke-direct {p0, p1}, Lcom/haima/hmcp/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_9
    new-instance p2, Ljava/lang/RuntimeException;

    .line 181
    .line 182
    new-instance p3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string p4, "Bad URL "

    .line 188
    .line 189
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/Request;->getUrl()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw p2
.end method
