.class public Lcom/byazt/qx/sp;
.super Lcom/byazt/pct/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa3,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/pct/uj<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/omf/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/omf/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/pct/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/qx/sp;->c:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method public static c(Lcom/byazt/pct/nu;Lcom/byazt/omf/d;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/qx/sp$1;

    invoke-direct {v0, p1}, Lcom/byazt/qx/sp$1;-><init>(Lcom/byazt/omf/d;)V

    const-string p1, "commonConvert"

    invoke-virtual {p0, p1, v0}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/uj$tt;)Lcom/byazt/pct/nu;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Lcom/byazt/pct/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/qx/sp;->c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;Lcom/byazt/pct/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "js"

    const-string v0, "commonConvert"

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->hd()Z

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/byazt/qx/sp;->c:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 6
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v5, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 7
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/byazt/apd/tt;->uj(Lcom/byazt/ete/ic;)V

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/omf/d;

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/byazt/pct/uj;->ve()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 11
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/byazt/apd/tt;->uj(Lcom/byazt/ete/ic;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 12
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 13
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/byazt/apd/tt;->uj(Lcom/byazt/ete/ic;)V

    return-void

    .line 14
    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/byazt/omf/c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/ic;

    move-result-object v3

    const-string v6, "j_live_saas_param_interaction_type"

    const/4 v7, -0x1

    .line 15
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "j_download_adapter_mode"

    .line 16
    invoke-virtual {p1, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "j_common_convert_source"

    .line 17
    invoke-virtual {p1, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_3

    .line 18
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 19
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/byazt/apd/tt;->uj(Lcom/byazt/ete/ic;)V

    return-void

    .line 20
    :cond_3
    :try_start_3
    invoke-virtual {v3, v5}, Lcom/byazt/ete/ic;->c(Z)V

    const-string v5, "live_interaction_type"

    .line 21
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->n()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ext"

    .line 22
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->my()Lcom/byazt/ete/yp;

    move-result-object v5

    if-nez v5, :cond_4

    .line 24
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->os()Lcom/byazt/lo/c;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 25
    invoke-virtual {v5}, Lcom/byazt/lo/c;->tt()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 26
    invoke-static {v5}, Lcom/byazt/ete/yp;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/yp;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/byazt/ete/ic;->c(Lcom/byazt/ete/yp;)V

    .line 27
    :cond_4
    invoke-virtual {v4, p1, v3, v6, v7}, Lcom/byazt/omf/d;->c(ILcom/byazt/ete/ic;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    :try_start_4
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 30
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/byazt/apd/tt;->uj(Lcom/byazt/ete/ic;)V

    .line 31
    :try_start_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "code"

    const/16 v0, 0xc8

    .line 32
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {p0, p1}, Lcom/byazt/pct/uj;->c(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "xeasy"

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :goto_1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v4

    invoke-virtual {v4, v0, p2, v2, v1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 36
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/byazt/apd/tt;->uj(Lcom/byazt/ete/ic;)V

    .line 37
    throw p1
.end method

.method public uj()V
    .locals 0

    return-void
.end method
