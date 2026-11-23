.class public Lcom/haima/hmcp/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/volley/Network;


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x1000


# instance fields
.field private final mBaseHttpStack:Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;

.field protected final mHttpStack:Lcom/haima/hmcp/volley/toolbox/HttpStack;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final mPool:Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;-><init>(Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;

    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/haima/hmcp/volley/toolbox/HttpStack;

    .line 10
    iput-object p2, p0, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mPool:Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/volley/toolbox/HttpStack;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;-><init>(Lcom/haima/hmcp/volley/toolbox/HttpStack;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/volley/toolbox/HttpStack;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/haima/hmcp/volley/toolbox/HttpStack;

    .line 4
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/AdaptedHttpStack;

    invoke-direct {v0, p1}, Lcom/haima/hmcp/volley/toolbox/AdaptedHttpStack;-><init>(Lcom/haima/hmcp/volley/toolbox/HttpStack;)V

    iput-object v0, p0, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;

    .line 5
    iput-object p2, p0, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mPool:Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method protected static convertHeaders([Lcom/haima/hmcp/volley/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/haima/hmcp/volley/Header;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    aget-object v2, p0, v1

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/haima/hmcp/volley/Header;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    aget-object v3, p0, v1

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/haima/hmcp/volley/Header;->getValue()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-object v0
.end method


# virtual methods
.method public performRequest(Lcom/haima/hmcp/volley/Request;)Lcom/haima/hmcp/volley/NetworkResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;)",
            "Lcom/haima/hmcp/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/VolleyError;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v9

    .line 9
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/haima/hmcp/volley/Request;->getCacheEntry()Lcom/haima/hmcp/volley/Cache$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/haima/hmcp/volley/toolbox/HttpHeaderParser;->getCacheHeaders(Lcom/haima/hmcp/volley/Cache$Entry;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v3, v1, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mBaseHttpStack:Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;

    .line 22
    .line 23
    invoke-virtual {v3, v8, v0}, Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;->executeRequest(Lcom/haima/hmcp/volley/Request;Ljava/util/Map;)Lcom/haima/hmcp/volley/toolbox/HttpResponse;

    .line 24
    .line 25
    .line 26
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    invoke-virtual {v3}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getStatusCode()I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    invoke-virtual {v3}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/haima/hmcp/volley/Request;->isDownloadRequest()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    iget-object v4, v1, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mPool:Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;

    .line 42
    .line 43
    invoke-virtual {v8, v3, v4}, Lcom/haima/hmcp/volley/Request;->handleResponse(Lcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/16 v4, 0x130

    .line 49
    .line 50
    if-ne v12, v4, :cond_1

    .line 51
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    sub-long/2addr v4, v9

    .line 57
    invoke-static {v8, v4, v5, v0}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->getNotModifiedNetworkResponse(Lcom/haima/hmcp/volley/Request;JLjava/util/List;)Lcom/haima/hmcp/volley/NetworkResponse;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {v3}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getContentLength()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    iget-object v6, v1, Lcom/haima/hmcp/volley/toolbox/BasicNetwork;->mPool:Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;

    .line 73
    .line 74
    invoke-static {v4, v5, v6}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->inputStreamToBytes(Ljava/io/InputStream;ILcom/haima/hmcp/volley/toolbox/ByteArrayPool;)[B

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const/4 v4, 0x0

    .line 80
    new-array v2, v4, [B

    .line 81
    .line 82
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    sub-long/2addr v4, v9

    .line 87
    invoke-static {v4, v5, v8, v2, v12}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->logSlowRequests(JLcom/haima/hmcp/volley/Request;[BI)V

    .line 88
    .line 89
    .line 90
    const/16 v4, 0xc8

    .line 91
    .line 92
    if-lt v12, v4, :cond_3

    .line 93
    .line 94
    const/16 v4, 0x12b

    .line 95
    .line 96
    if-gt v12, v4, :cond_3

    .line 97
    .line 98
    new-instance v4, Lcom/haima/hmcp/volley/NetworkResponse;

    .line 99
    .line 100
    const/4 v14, 0x0

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 102
    .line 103
    .line 104
    move-result-wide v5

    .line 105
    sub-long v15, v5, v9

    .line 106
    .line 107
    move-object v11, v4

    .line 108
    move-object v13, v2

    .line 109
    move-object/from16 v17, v0

    .line 110
    .line 111
    invoke-direct/range {v11 .. v17}, Lcom/haima/hmcp/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 112
    .line 113
    .line 114
    return-object v4

    .line 115
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    move-object v7, v2

    .line 123
    move-object v6, v3

    .line 124
    move-object v3, v0

    .line 125
    goto :goto_2

    .line 126
    :catch_1
    move-exception v0

    .line 127
    move-object v3, v0

    .line 128
    move-object v6, v2

    .line 129
    move-object v7, v6

    .line 130
    :goto_2
    move-object/from16 v2, p1

    .line 131
    .line 132
    move-wide v4, v9

    .line 133
    invoke-static/range {v2 .. v7}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->shouldRetryException(Lcom/haima/hmcp/volley/Request;Ljava/io/IOException;JLcom/haima/hmcp/volley/toolbox/HttpResponse;[B)Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v8, v0}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->attemptRetryOnException(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0
.end method
