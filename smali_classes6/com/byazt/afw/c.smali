.class public abstract Lcom/byazt/afw/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/afw/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21e,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/jzl/a;


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


# virtual methods
.method public c()Lcom/byazt/jzl/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/afw/c;->c:Lcom/byazt/jzl/a;

    return-object v0
.end method

.method public c(Lcom/byazt/jzl/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/afw/c;->c:Lcom/byazt/jzl/a;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "package"

    const-string v1, "ext_plugin_code"

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/byazt/afw/c;->c:Lcom/byazt/jzl/a;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/byazt/jzl/a;->getPassThroughJson()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pitaya_cache_size"

    .line 5
    iget-object v4, p0, Lcom/byazt/afw/c;->c:Lcom/byazt/jzl/a;

    invoke-virtual {v4}, Lcom/byazt/jzl/a;->getPitayaCacheSize()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "pitaya_code"

    .line 6
    iget-object v4, p0, Lcom/byazt/afw/c;->c:Lcom/byazt/jzl/a;

    invoke-virtual {v4}, Lcom/byazt/jzl/a;->getPitayaCode()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "pitaya_msg"

    .line 7
    iget-object v4, p0, Lcom/byazt/afw/c;->c:Lcom/byazt/jzl/a;

    invoke-virtual {v4}, Lcom/byazt/jzl/a;->getPitayaErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
