.class public Lcom/windmill/sdk/strategy/j;
.super Lcom/czhj/sdk/common/network/SigmobRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/strategy/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/sdk/common/network/SigmobRequest<",
        "Lcom/czhj/volley/NetworkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/windmill/sdk/strategy/j$a;

.field private b:Ljava/lang/String;

.field private c:Lcom/windmill/sdk/WindMillAdRequest;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "url",
            "body",
            "mListener"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, v1, v0}, Lcom/czhj/sdk/common/network/SigmobRequest;-><init>(Ljava/lang/String;ILcom/czhj/volley/Response$ErrorListener;)V

    .line 4
    .line 5
    .line 6
    iput v1, p0, Lcom/windmill/sdk/strategy/j;->d:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/windmill/sdk/strategy/j;->a:Lcom/windmill/sdk/strategy/j$a;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/windmill/sdk/strategy/j;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/czhj/volley/Request;->setShouldRetryServerErrors(Z)Lcom/czhj/volley/Request;

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/czhj/volley/DefaultRetryPolicy;

    .line 16
    .line 17
    const/4 p2, 0x5

    .line 18
    const/4 p3, 0x0

    .line 19
    const/16 v0, 0x1388

    .line 20
    .line 21
    invoke-direct {p1, v0, p2, p3}, Lcom/czhj/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setRetryPolicy(Lcom/czhj/volley/RetryPolicy;)Lcom/czhj/volley/Request;

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lcom/czhj/volley/Request;->setShouldCache(Z)Lcom/czhj/volley/Request;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private a(Lcom/windmill/sdk/strategy/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonRequest"
        }
    .end annotation

    .line 13
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/windmill/sdk/strategy/j;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "loadId"

    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/windmill/sdk/strategy/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "KGpfzbYsn4T9Jyuq"

    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/AESUtil;->Encrypt([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/windmill/sdk/strategy/j;->f:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------getBody Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/strategy/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "body",
            "sendType",
            "requestM",
            "millAdRequest",
            "requestListener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p5, :cond_1

    .line 2
    new-instance v0, Lcom/czhj/volley/VolleyError;

    const-string v1, "body is empty"

    invoke-direct {v0, v1}, Lcom/czhj/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, v0}, Lcom/windmill/sdk/strategy/j$a;->a(Lcom/czhj/volley/VolleyError;)V

    .line 3
    :cond_1
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_2

    .line 4
    new-instance p0, Lcom/czhj/volley/VolleyError;

    const-string p1, "BuriedPointRequestQueue is empty"

    invoke-direct {p0, p1}, Lcom/czhj/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/windmill/sdk/strategy/j$a;->a(Lcom/czhj/volley/VolleyError;)V

    :cond_2
    return-void

    .line 5
    :cond_3
    :try_start_0
    new-instance v0, Lcom/windmill/sdk/strategy/j;

    invoke-direct {v0, p0, p1, p5}, Lcom/windmill/sdk/strategy/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/strategy/j$a;)V

    .line 6
    iput-object p4, v0, Lcom/windmill/sdk/strategy/j;->c:Lcom/windmill/sdk/WindMillAdRequest;

    .line 7
    iput p2, v0, Lcom/windmill/sdk/strategy/j;->d:I

    .line 8
    iput-object p3, v0, Lcom/windmill/sdk/strategy/j;->e:Ljava/lang/String;

    .line 9
    invoke-direct {v0, v0}, Lcom/windmill/sdk/strategy/j;->a(Lcom/windmill/sdk/strategy/j;)V

    .line 10
    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    .line 12
    new-instance p0, Lcom/czhj/volley/VolleyError;

    const-string p1, "network is disconnect "

    invoke-direct {p0, p1}, Lcom/czhj/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p0}, Lcom/windmill/sdk/strategy/j$a;->a(Lcom/czhj/volley/VolleyError;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/czhj/volley/NetworkResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 17
    iget-object p1, p0, Lcom/czhj/volley/Request;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/j;->a:Lcom/windmill/sdk/strategy/j$a;

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/windmill/sdk/strategy/j$a;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public deliverError(Lcom/czhj/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/czhj/volley/Request;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/windmill/sdk/strategy/j;->a:Lcom/windmill/sdk/strategy/j$a;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p1}, Lcom/windmill/sdk/strategy/j$a;->a(Lcom/czhj/volley/VolleyError;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "response"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/czhj/volley/NetworkResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/windmill/sdk/strategy/j;->a(Lcom/czhj/volley/NetworkResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBody()[B
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/j;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "KGpfzbYsn4T9Jyuq"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/czhj/sdk/common/utils/AESUtil;->Encrypt([BLjava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/strategy/j;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/czhj/sdk/common/network/SigmobRequest;->getHeaders()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Lcom/czhj/sdk/common/utils/AESUtil;->generateNonce()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "agn"

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_0
    return-object v0
.end method

.method public parseNetworkResponse(Lcom/czhj/volley/NetworkResponse;)Lcom/czhj/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/czhj/volley/NetworkResponse;",
            ")",
            "Lcom/czhj/volley/Response<",
            "Lcom/czhj/volley/NetworkResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/czhj/volley/Response;->success(Ljava/lang/Object;Lcom/czhj/volley/Cache$Entry;)Lcom/czhj/volley/Response;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
