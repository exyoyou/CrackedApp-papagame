.class public Lcom/byazt/xs/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d4,
        0x48
    }
.end annotation


# direct methods
.method public static a(Lcom/byazt/ete/ic;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/byazt/xs/da;->sp(Lcom/byazt/ete/ic;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    invoke-static {p0}, Lcom/byazt/xs/da;->x(Lcom/byazt/ete/ic;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return v0

    .line 19
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public static c(Lcom/byazt/ete/ic;)I
    .locals 2

    const/4 v0, 0x4

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->os()Lcom/byazt/lo/c;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/lo/c;->ve()Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const-string v1, "pre_request_ad_num"

    .line 4
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_3

    return v0

    :cond_3
    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 29
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->po()Lcom/byazt/ete/zm;

    move-result-object v0

    .line 30
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->la()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, ""

    if-nez p1, :cond_0

    return-object v2

    .line 31
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "icon_url"

    .line 33
    invoke-virtual {v3, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "description"

    .line 36
    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz v1, :cond_3

    const-string p1, "easy_pl_material"

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "ugen_dialog_url"

    .line 38
    invoke-virtual {v0}, Lcom/byazt/ete/zm;->tt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ugen_dialog_md5"

    .line 39
    invoke-virtual {v0}, Lcom/byazt/ete/zm;->ve()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz p0, :cond_6

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    const-string p2, "vertical"

    if-ne p0, p1, :cond_5

    :try_start_1
    const-string p0, "true"

    .line 41
    invoke-virtual {v3, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    const-string p0, "false"

    .line 42
    invoke-virtual {v3, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_6
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static c(Lcom/byazt/ete/ic;Landroid/view/View;Z)Lorg/json/JSONObject;
    .locals 15

    const-string v0, "height"

    const-string v1, "width"

    .line 5
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "voice_control"

    .line 9
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->ab()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 10
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 11
    invoke-static {v6}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    invoke-static {v6}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 15
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    int-to-float v7, v7

    .line 16
    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float v7, v7, v12

    float-to-double v13, v7

    invoke-virtual {v11, v1, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    int-to-float v1, v10

    .line 17
    invoke-static {v6, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-double v6, v1

    invoke-virtual {v11, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "content_size"

    .line 18
    invoke-virtual {v4, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "screen_size"

    .line 19
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "env_info"

    .line 20
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "setting"

    .line 21
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "meta_hashcode"

    .line 22
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->eo()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 23
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->nx()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :cond_2
    const-string v0, "gesture_through_enable"

    .line 24
    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 25
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->tw()Z

    move-result v0

    const-string v1, "is_adapt_two_finger"

    .line 26
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_1
    return-object v2
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;
    .locals 3

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 46
    invoke-interface {p2}, Lcom/byazt/xs/ve;->c()V

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "ugeno_template_kv"

    .line 47
    invoke-static {v0}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 48
    invoke-interface {p2}, Lcom/byazt/xs/ve;->c()V

    :cond_2
    return-object v1

    :cond_3
    :try_start_0
    const-string v2, ""

    .line 49
    invoke-interface {v0, p1, v2}, Lcom/byazt/iy/n;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_4

    .line 51
    invoke-interface {p2, v0}, Lcom/byazt/xs/ve;->c(Ljava/lang/String;)V

    .line 52
    :cond_4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 53
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_6

    .line 54
    invoke-interface {p2}, Lcom/byazt/xs/ve;->c()V

    :cond_6
    return-object v1

    .line 55
    :cond_7
    invoke-static {p0, p1, p2}, Lcom/byazt/xs/da;->tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    if-eqz p2, :cond_8

    .line 56
    invoke-interface {p2}, Lcom/byazt/xs/ve;->c()V

    :cond_8
    :goto_0
    return-object v1
.end method

.method public static synthetic c(ZLjava/lang/String;Lcom/byazt/xs/ve;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/byazt/xs/da;->tt(ZLjava/lang/String;Lcom/byazt/xs/ve;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lcom/byazt/xs/da;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->po()Lcom/byazt/ete/zm;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    const/4 p0, 0x1

    .line 13
    return p0
.end method

.method public static n(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->tx()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->v()Lcom/byazt/seg/c;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/byazt/seg/c;->uj()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v1, 0x2

    .line 24
    if-ne p0, v1, :cond_2

    .line 25
    .line 26
    return v2

    .line 27
    :cond_2
    return v0
.end method

.method public static sp(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->tx()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    invoke-static {p0}, Lcom/byazt/ete/my;->c(Lcom/byazt/ete/ic;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    return v0
.end method

.method public static tt(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->po()Lcom/byazt/ete/zm;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, -0x2

    return p0

    .line 13
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x3

    return p0

    .line 14
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xf

    if-le p2, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p2, 0x1

    if-eqz p0, :cond_4

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq p0, p2, :cond_4

    const/16 p0, 0x9

    return p0

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/ete/zm;->tt()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {p1}, Lcom/byazt/ete/zm;->ve()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, p1, v0}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_6

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x3

    return p0

    :cond_6
    return p2
.end method

.method private static tt(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)V
    .locals 3

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v2, v1, p2}, Lcom/byazt/xs/da;->tt(ZLjava/lang/String;Lcom/byazt/xs/ve;)V

    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 8
    :cond_1
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hy/n;->tt()Lcom/byazt/hm/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/hm/c;->ve()Lcom/byazt/va/ve;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {v2, v1, p2}, Lcom/byazt/xs/da;->tt(ZLjava/lang/String;Lcom/byazt/xs/ve;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {v0, p0}, Lcom/byazt/va/uj;->c(Ljava/lang/String;)V

    .line 11
    new-instance p0, Lcom/byazt/xs/da$2;

    invoke-direct {p0, p1, p2}, Lcom/byazt/xs/da$2;-><init>(Ljava/lang/String;Lcom/byazt/xs/ve;)V

    invoke-virtual {v0, p0}, Lcom/byazt/va/ve;->c(Lcom/byazt/mh/c;)V

    return-void
.end method

.method private static tt(ZLjava/lang/String;Lcom/byazt/xs/ve;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 4
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/xs/da$1;

    const-string v2, "tt_ugen_tpl"

    invoke-direct {v1, v2, p0, p2, p1}, Lcom/byazt/xs/da$1;-><init>(Ljava/lang/String;ZLcom/byazt/xs/ve;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static tt(Lcom/byazt/ete/ic;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->os()Lcom/byazt/lo/c;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/lo/c;->ve()Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const-string v1, "reward_slide_type"

    .line 3
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public static uj(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->tx()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->v()Lcom/byazt/seg/c;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/byazt/seg/c;->uj()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v1, 0x3

    .line 24
    if-ne p0, v1, :cond_2

    .line 25
    .line 26
    return v2

    .line 27
    :cond_2
    return v0
.end method

.method public static ve(Lcom/byazt/ete/ic;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->tx()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->v()Lcom/byazt/seg/c;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/byazt/seg/c;->uj()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    const/4 v1, 0x4

    .line 24
    if-ne p0, v1, :cond_2

    .line 25
    .line 26
    return v2

    .line 27
    :cond_2
    return v0
.end method

.method public static x(Lcom/byazt/ete/ic;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ete/ic;->pu()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-lez p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    return v0
.end method
