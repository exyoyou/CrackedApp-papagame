.class public Lcom/byazt/qt/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdd,
        0xd
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public tt:Ljava/lang/String;

.field public uj:Lorg/json/JSONObject;

.field public ve:Ljava/lang/String;


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

.method public static c()Lcom/byazt/qt/tt;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/qt/tt;

    invoke-direct {v0}, Lcom/byazt/qt/tt;-><init>()V

    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/byazt/qt/tt;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "tag"

    .line 2
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "label"

    .line 3
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "extra"

    .line 4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v4, "material_meta"

    .line 5
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_0
    move-object v3, v0

    goto :goto_1

    :catch_1
    move-object v2, v0

    goto :goto_0

    :catch_2
    move-object v1, v0

    move-object v2, v1

    :goto_0
    move-object v3, v2

    .line 7
    :catch_3
    :goto_1
    invoke-static {}, Lcom/byazt/qt/tt;->c()Lcom/byazt/qt/tt;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/byazt/qt/tt;->c(Ljava/lang/String;)Lcom/byazt/qt/tt;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/byazt/qt/tt;->tt(Ljava/lang/String;)Lcom/byazt/qt/tt;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/byazt/qt/tt;->tt(Lorg/json/JSONObject;)Lcom/byazt/qt/tt;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/byazt/qt/tt;->c(Lcom/byazt/ete/ic;)Lcom/byazt/qt/tt;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/ete/ic;)Lcom/byazt/qt/tt;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/qt/tt;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/qt/tt;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/qt/tt;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/qt/tt;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qt/tt;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public tt(Lorg/json/JSONObject;)Lcom/byazt/qt/tt;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/qt/tt;->uj:Lorg/json/JSONObject;

    return-object p0
.end method

.method public tt()Lorg/json/JSONObject;
    .locals 3

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tag"

    .line 4
    iget-object v2, p0, Lcom/byazt/qt/tt;->tt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    .line 5
    iget-object v2, p0, Lcom/byazt/qt/tt;->ve:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/byazt/qt/tt;->uj:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v2, "extra"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/byazt/qt/tt;->c:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_1

    const-string v2, "material_meta"

    .line 9
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
