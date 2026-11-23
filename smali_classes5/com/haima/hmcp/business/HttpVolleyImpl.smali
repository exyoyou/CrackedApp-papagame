.class public Lcom/haima/hmcp/business/HttpVolleyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/IHttp;


# static fields
.field public static final ERROR_CODE_IO:I = 0x3eb

.field public static final ERROR_CODE_NETWORK:I = 0x3ec

.field public static final ERROR_CODE_OTHER:I = 0x3ee

.field public static final ERROR_DATA_EMPTY_CODE:I = -0x3e9

.field public static final ERROR_JSON_CODE:I = -0x3e8

.field public static final ERROR_NETWORK_UNAVAILABLE_CODE:I = -0x3ea

.field public static final ERROR_SERVER_CODE:I = -0x3ec

.field public static final ERROR_TIMEOUT_CODE:I = -0x3eb

.field private static final REQUEST_TAG:Ljava/lang/String; = "VolleyManager"


# instance fields
.field private final mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

.field private final mRequestTagMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/business/CharsetJsonRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/business/HttpVolleyImpl;-><init>(Landroid/content/Context;ILjavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/HurlStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Lcom/haima/hmcp/volley/toolbox/HurlStack;-><init>(Lcom/haima/hmcp/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/haima/hmcp/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/haima/hmcp/volley/toolbox/BaseHttpStack;I)Lcom/haima/hmcp/volley/RequestQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/HttpVolleyImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/HttpVolleyImpl;)Lcom/haima/hmcp/volley/RequestQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$OnResponseListener;Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/HttpVolleyImpl;->parseError(Lcom/haima/hmcp/business/IHttp$OnResponseListener;Lcom/haima/hmcp/volley/VolleyError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private callJsonRequest(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Ljava/lang/String;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .locals 8

    .line 1
    new-instance v7, Lcom/haima/hmcp/business/HttpVolleyImpl$3;

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getParams()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    move-object v4, v0

    .line 9
    check-cast v4, Lorg/json/JSONObject;

    .line 10
    .line 11
    new-instance v5, Lcom/haima/hmcp/business/HttpVolleyImpl$1;

    .line 12
    .line 13
    invoke-direct {v5, p0, p1, p3}, Lcom/haima/hmcp/business/HttpVolleyImpl$1;-><init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 14
    .line 15
    .line 16
    new-instance v6, Lcom/haima/hmcp/business/HttpVolleyImpl$2;

    .line 17
    .line 18
    invoke-direct {v6, p0, p1, p3}, Lcom/haima/hmcp/business/HttpVolleyImpl$2;-><init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v7

    .line 22
    move-object v1, p0

    .line 23
    move-object v3, p2

    .line 24
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/business/HttpVolleyImpl$3;-><init>(Lcom/haima/hmcp/business/HttpVolleyImpl;ILjava/lang/String;Lorg/json/JSONObject;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    .line 25
    .line 26
    .line 27
    const-string p2, "VolleyManager"

    .line 28
    .line 29
    invoke-virtual {v7, p2}, Lcom/haima/hmcp/volley/Request;->setTag(Ljava/lang/Object;)Lcom/haima/hmcp/volley/Request;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRetryPolicy()Lcom/haima/hmcp/business/IRetryPolicy;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRetryPolicy()Lcom/haima/hmcp/business/IRetryPolicy;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    check-cast p2, Lcom/haima/hmcp/volley/RetryPolicy;

    .line 43
    .line 44
    invoke-virtual {v7, p2}, Lcom/haima/hmcp/volley/Request;->setRetryPolicy(Lcom/haima/hmcp/volley/RetryPolicy;)Lcom/haima/hmcp/volley/Request;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestPolicy()Lcom/haima/hmcp/business/IRequestPolicy;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestPolicy()Lcom/haima/hmcp/business/IRequestPolicy;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p3, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getRequestTag()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p2, p3, v0, v7, p1}, Lcom/haima/hmcp/business/IRequestPolicy;->onPostRequest(Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/volley/RequestQueue;Lcom/haima/hmcp/business/CharsetJsonRequest;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1, v7}, Lcom/haima/hmcp/volley/RequestQueue;->add(Lcom/haima/hmcp/volley/Request;)Lcom/haima/hmcp/volley/Request;

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method private callStringRequest(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Ljava/lang/String;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/haima/hmcp/business/CustomStringRequest;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getParams()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    move-object v3, p1

    .line 9
    check-cast v3, Ljava/lang/String;

    .line 10
    .line 11
    new-instance v4, Lcom/haima/hmcp/business/HttpVolleyImpl$4;

    .line 12
    .line 13
    invoke-direct {v4, p0, p3}, Lcom/haima/hmcp/business/HttpVolleyImpl$4;-><init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Lcom/haima/hmcp/business/HttpVolleyImpl$5;

    .line 17
    .line 18
    invoke-direct {v5, p0, p3}, Lcom/haima/hmcp/business/HttpVolleyImpl$5;-><init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v6

    .line 22
    move-object v2, p2

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/haima/hmcp/business/CustomStringRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "VolleyManager"

    .line 27
    .line 28
    invoke-virtual {v6, p1}, Lcom/haima/hmcp/volley/Request;->setTag(Ljava/lang/Object;)Lcom/haima/hmcp/volley/Request;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, v6}, Lcom/haima/hmcp/volley/RequestQueue;->add(Lcom/haima/hmcp/volley/Request;)Lcom/haima/hmcp/volley/Request;

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private parseError(Lcom/haima/hmcp/business/IHttp$OnResponseListener;Lcom/haima/hmcp/volley/VolleyError;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_4

    .line 6
    :cond_0
    iget-object v0, p2, Lcom/haima/hmcp/volley/VolleyError;->networkResponse:Lcom/haima/hmcp/volley/NetworkResponse;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, v0, Lcom/haima/hmcp/volley/NetworkResponse;->statusCode:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, -0x1

    .line 18
    :goto_0
    const/16 v2, -0x3ec

    .line 19
    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " responseCode = "

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    goto :goto_3

    .line 43
    :cond_2
    instance-of v3, p2, Lcom/haima/hmcp/volley/ParseError;

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    const/16 v2, -0x3e8

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_3
    instance-of v3, p2, Lcom/haima/hmcp/volley/TimeoutError;

    .line 51
    .line 52
    const/16 v4, -0x3eb

    .line 53
    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    :goto_1
    const/16 v2, -0x3eb

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_4
    instance-of p2, p2, Lcom/haima/hmcp/volley/ServerError;

    .line 60
    .line 61
    if-eqz p2, :cond_5

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_5
    const-string p2, "UnknownHostException"

    .line 65
    .line 66
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_8

    .line 71
    .line 72
    const-string p2, "SSLHandshakeException"

    .line 73
    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_6
    const-string p2, "ServerError"

    .line 82
    .line 83
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_7

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_7
    const-string p2, "TimeoutError"

    .line 91
    .line 92
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_9

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_8
    :goto_2
    const/16 v2, -0x3ea

    .line 100
    .line 101
    :cond_9
    :goto_3
    invoke-interface {p1, v0, v2, v1}, Lcom/haima/hmcp/business/IHttp$OnResponseListener;->onError(IILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "VolleyManager"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestTagMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public download(Lcom/haima/hmcp/business/DownloadFileInfo;Lcom/haima/hmcp/business/DownloadResponseListener;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/business/DownloadFileInfo;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/haima/hmcp/business/DownloadRequest;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/business/DownloadFileInfo;->getUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/haima/hmcp/business/HttpVolleyImpl$6;

    .line 23
    .line 24
    invoke-direct {v2, p0, p2}, Lcom/haima/hmcp/business/HttpVolleyImpl$6;-><init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/DownloadResponseListener;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p1, v1, v2}, Lcom/haima/hmcp/business/DownloadRequest;-><init>(Lcom/haima/hmcp/business/DownloadFileInfo;Ljava/lang/String;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lcom/haima/hmcp/business/DownloadRequest;->setListener(Lcom/haima/hmcp/business/DownloadResponseListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/haima/hmcp/business/DownloadFileInfo;->getContentTypeList()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/business/DownloadRequest;->setConfig(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "VolleyManager"

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/Request;->setTag(Ljava/lang/Object;)Lcom/haima/hmcp/volley/Request;

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/Request;->setShouldCache(Z)Lcom/haima/hmcp/volley/Request;

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/RequestQueue;->add(Lcom/haima/hmcp/volley/Request;)Lcom/haima/hmcp/volley/Request;

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public get(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/haima/hmcp/volley/toolbox/StringRequest;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getUrl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v1, Lcom/haima/hmcp/business/HttpVolleyImpl$7;

    .line 19
    .line 20
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/business/HttpVolleyImpl$7;-><init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/haima/hmcp/business/HttpVolleyImpl$8;

    .line 24
    .line 25
    invoke-direct {v2, p0, p2}, Lcom/haima/hmcp/business/HttpVolleyImpl$8;-><init>(Lcom/haima/hmcp/business/HttpVolleyImpl;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-direct {v0, p2, p1, v1, v2}, Lcom/haima/hmcp/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "VolleyManager"

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/Request;->setTag(Ljava/lang/Object;)Lcom/haima/hmcp/volley/Request;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/haima/hmcp/business/HttpVolleyImpl;->mRequestQueue:Lcom/haima/hmcp/volley/RequestQueue;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/RequestQueue;->add(Lcom/haima/hmcp/volley/Request;)Lcom/haima/hmcp/volley/Request;

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public post(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getParams()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getParams()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v0, v0, Lorg/json/JSONObject;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, p1, v0, p2}, Lcom/haima/hmcp/business/HttpVolleyImpl;->callJsonRequest(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Ljava/lang/String;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/business/IHttp$RequestWrapper;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p0, p1, v0, p2}, Lcom/haima/hmcp/business/HttpVolleyImpl;->callStringRequest(Lcom/haima/hmcp/business/IHttp$RequestWrapper;Ljava/lang/String;Lcom/haima/hmcp/business/IHttp$OnResponseListener;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method
