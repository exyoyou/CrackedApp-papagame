.class public Lcom/byazt/gu/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gu/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0xd
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Lcom/byazt/gqp/tt;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/gu/tt;->tt(Lcom/byazt/gqp/tt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private tt(Lcom/byazt/gqp/tt;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/byazt/gqp/tt;->c()Lcom/byazt/gqp/yp;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/gqp/yp;->tt()Lcom/byazt/gqp/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/byazt/gqp/sp;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V
    .locals 2

    :try_start_0
    const-string v0, "event"

    .line 4
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/z;

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/gu/tt;->c(Lcom/byazt/gqp/tt;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "okhttp_callFailed"

    .line 6
    invoke-interface {v0, v1, p1, p2}, Lcom/byazt/dna/z;->onExceptionEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(Lcom/byazt/gqp/tt;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/byazt/gqp/u;Ljava/io/IOException;)V
    .locals 0

    :try_start_0
    const-string p2, "event"

    .line 1
    invoke-static {p2}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/dna/z;

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/gu/tt;->c(Lcom/byazt/gqp/tt;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "okhttp_connectFailed"

    .line 3
    invoke-interface {p2, p3, p1, p5}, Lcom/byazt/dna/z;->onExceptionEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
