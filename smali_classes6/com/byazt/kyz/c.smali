.class public Lcom/byazt/kyz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/ete/u;

.field public c:Lcom/byazt/lsp/tt;

.field public n:Lcom/byazt/ete/ic;

.field public tt:Lorg/json/JSONObject;

.field public final uj:Landroid/content/Context;

.field public ve:Lcom/byazt/kyz/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/kyz/c;->uj:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/kyz/c;->n:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/byazt/kyz/c;->a:Lcom/byazt/ete/u;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ete/ic;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kyz/c;->n:Lcom/byazt/ete/ic;

    return-object v0
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/kyz/c;->c:Lcom/byazt/lsp/tt;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "style_category"

    .line 6
    invoke-static {p1}, Lcom/byazt/ete/p;->uj(Lcom/byazt/ete/ic;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/byazt/kyz/c;->c:Lcom/byazt/lsp/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/lsp/tt;->c(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;FFI)V
    .locals 4

    .line 20
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "convert"

    .line 21
    invoke-virtual {p4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "down_x"

    float-to-double v2, p2

    .line 22
    invoke-virtual {p4, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "down_y"

    float-to-double v1, p3

    .line 23
    invoke-virtual {p4, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "xeasy"

    invoke-static {p3, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    iget-object p2, p0, Lcom/byazt/kyz/c;->a:Lcom/byazt/ete/u;

    invoke-static {p1, p2, v0, p4}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public c(Lcom/byazt/kyz/tt;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/kyz/c;->ve:Lcom/byazt/kyz/tt;

    return-void
.end method

.method public c(Lcom/byazt/lsp/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/c;->c:Lcom/byazt/lsp/tt;

    return-void
.end method

.method public c(ZLorg/json/JSONObject;)V
    .locals 4

    .line 9
    invoke-static {}, Lcom/byazt/ete/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "er:"

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xeasy"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/kyz/c;->c:Lcom/byazt/lsp/tt;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {v0, p2}, Lcom/byazt/lsp/tt;->tt(Lorg/json/JSONObject;)V

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "estimatedArea"

    .line 14
    iget-object v1, p0, Lcom/byazt/kyz/c;->tt:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/byazt/kyz/c;->ve:Lcom/byazt/kyz/tt;

    invoke-interface {v0}, Lcom/byazt/kyz/tt;->getMaxRectJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "realArea"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/byazt/kyz/c;->ve:Lcom/byazt/kyz/tt;

    invoke-interface {v0}, Lcom/byazt/kyz/tt;->getExceedAreaRate()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "exceedAreaRate"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/byazt/kyz/c;->ve:Lcom/byazt/kyz/tt;

    invoke-interface {v0}, Lcom/byazt/kyz/tt;->getActualRectJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "widgetArea"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/byazt/kyz/c;->n:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/kyz/c;->a:Lcom/byazt/ete/u;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x0

    const/16 v3, 0x64

    invoke-static {v0, v1, p1, v3, v2}, Lcom/byazt/sy/ve;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;ZILorg/json/JSONObject;)V

    .line 19
    iget-object p1, p0, Lcom/byazt/kyz/c;->c:Lcom/byazt/lsp/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/lsp/tt;->ve(Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/c;->uj:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/byazt/ete/p;->c()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/byazt/kyz/c;->c:Lcom/byazt/lsp/tt;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/byazt/lsp/tt;->c()Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/byazt/kyz/c;->tt:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    return-object v1

    .line 24
    :catch_0
    move-exception v1

    .line 25
    const-string v2, "xeasy"

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-object v0
.end method

.method public ve()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ete/p;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "xeasy"

    .line 9
    .line 10
    const-string v1, "oc"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/kyz/c;->c:Lcom/byazt/lsp/tt;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/lsp/tt;->tt()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
