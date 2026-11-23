.class public Lcom/haima/hmcp/business/CharsetJsonRequest;
.super Lcom/haima/hmcp/volley/toolbox/JsonObjectRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/haima/hmcp/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/haima/hmcp/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/haima/hmcp/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/haima/hmcp/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/haima/hmcp/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/haima/hmcp/volley/Response$Listener;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/haima/hmcp/volley/NetworkResponse;)Lcom/haima/hmcp/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/NetworkResponse;",
            ")",
            "Lcom/haima/hmcp/volley/Response<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/haima/hmcp/volley/NetworkResponse;->data:[B

    .line 4
    .line 5
    const-string v2, "UTF-8"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/haima/hmcp/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/haima/hmcp/volley/NetworkResponse;)Lcom/haima/hmcp/volley/Cache$Entry;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v1, p1}, Lcom/haima/hmcp/volley/Response;->success(Ljava/lang/Object;Lcom/haima/hmcp/volley/Cache$Entry;)Lcom/haima/hmcp/volley/Response;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Lcom/haima/hmcp/volley/ParseError;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/haima/hmcp/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/haima/hmcp/volley/Response;->error(Lcom/haima/hmcp/volley/VolleyError;)Lcom/haima/hmcp/volley/Response;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :catch_1
    move-exception p1

    .line 36
    new-instance v0, Lcom/haima/hmcp/volley/ParseError;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/haima/hmcp/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/haima/hmcp/volley/Response;->error(Lcom/haima/hmcp/volley/VolleyError;)Lcom/haima/hmcp/volley/Response;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method
