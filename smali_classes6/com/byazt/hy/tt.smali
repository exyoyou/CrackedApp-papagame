.class public Lcom/byazt/hy/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x25c,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hy/tt$tt;,
        Lcom/byazt/hy/tt$c;
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lcom/byazt/at/uj;Lcom/byazt/dj/tt;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_6

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, v1

    .line 11
    :goto_0
    new-instance v1, Lcom/byazt/ete/bm;

    invoke-direct {v1}, Lcom/byazt/ete/bm;-><init>()V

    const/4 v2, 0x2

    .line 12
    iput v2, v1, Lcom/byazt/ete/bm;->n:I

    .line 13
    invoke-static {p0}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 14
    iput v2, v1, Lcom/byazt/ete/bm;->sp:I

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->jm()Lorg/json/JSONObject;

    move-result-object p0

    .line 16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_4

    .line 17
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 18
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 21
    :try_start_2
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 23
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 26
    :cond_5
    iput-object v2, v1, Lcom/byazt/ete/bm;->u:Lorg/json/JSONObject;

    .line 27
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object p0

    new-instance p1, Lcom/byazt/hy/tt$2;

    invoke-direct {p1, p2}, Lcom/byazt/hy/tt$2;-><init>(Lcom/byazt/at/uj;)V

    invoke-interface {p0, p3, v1, v0, p1}, Lcom/byazt/omf/gu;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V

    return-void

    :cond_6
    :goto_3
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 28
    invoke-interface {p2, p1, p0, p1}, Lcom/byazt/at/uj;->c(ZLjava/util/List;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "PageNetUtils"

    const-string p2, "get ads error"

    .line 29
    invoke-static {p1, p2, p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Lcom/byazt/seg/c;Lcom/byazt/hy/tt$tt;)V
    .locals 2

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/byazt/hy/tt$tt;->c()V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/seg/c;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/seg/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/seg/c;->tt()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0, p1}, Lcom/byazt/hy/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hy/tt$tt;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/byazt/hy/tt$c;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hm/c;->ve()Lcom/byazt/va/ve;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 32
    new-instance p0, Lcom/byazt/hy/tt$3;

    invoke-direct {p0, p1}, Lcom/byazt/hy/tt$3;-><init>(Lcom/byazt/hy/tt$c;)V

    invoke-virtual {v0, p0}, Lcom/byazt/va/ve;->c(Lcom/byazt/mh/c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hy/tt$tt;)V
    .locals 1

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3}, Lcom/byazt/hy/tt$tt;->c()V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hm/c;->ve()Lcom/byazt/va/ve;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/byazt/hy/tt$1;

    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/hy/tt$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hy/tt$tt;)V

    invoke-virtual {v0, p0}, Lcom/byazt/va/ve;->c(Lcom/byazt/mh/c;)V

    return-void
.end method
