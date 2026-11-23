.class public Lcom/byazt/xf/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x324,
        0xd
    }
.end annotation


# direct methods
.method public static c(Ljava/lang/Object;)D
    .locals 2

    .line 19
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    return-wide v0

    .line 21
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 22
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 23
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 24
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 25
    :cond_2
    :try_start_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 26
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c(Ljava/util/Map;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    const-string v0, "creative_id"

    if-eqz p0, :cond_0

    .line 27
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    .line 29
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Z)Lcom/byazt/dj/tt$c;
    .locals 6

    .line 83
    invoke-virtual {p1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->nu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->zm()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/dj/tt$c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/byazt/ll/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/dj/tt$c;
    .locals 3

    .line 84
    new-instance v0, Lcom/byazt/dj/tt$c;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->t()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v2}, Lcom/byazt/dj/tt$c;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p1}, Lcom/byazt/dj/tt$c;->uj(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object p1

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Lcom/byazt/dj/tt$c;->ve(I)Lcom/byazt/dj/tt$c;

    move-result-object p1

    if-eqz p0, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->tt()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/dj/tt$c;->a(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->sp(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->zm()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->tt(Z)Lcom/byazt/dj/tt$c;

    .line 91
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->rh()Lcom/byazt/ch/c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->yp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/dj/tt$c;->a(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 93
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->n()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->c(Z)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 94
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->yv()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->uj(Z)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 95
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->c(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 96
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->tt(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 97
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->z()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->uj(I)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 98
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->gu()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->c(Ljava/lang/Object;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 99
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->n(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 100
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->ve()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/dj/tt$c;->ve(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    .line 101
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->my()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {p1, v0}, Lcom/byazt/dj/tt$c;->sp(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    .line 104
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->rh()I

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->rh()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/dj/tt$c;->a(I)Lcom/byazt/dj/tt$c;

    .line 106
    :cond_2
    invoke-static {p0, v1}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;Lcom/byazt/ch/c;)[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    array-length v2, v0

    if-lez v2, :cond_3

    .line 108
    invoke-virtual {p1, v0}, Lcom/byazt/dj/tt$c;->c([I)Lcom/byazt/dj/tt$c;

    :cond_3
    const/4 v0, 0x5

    .line 109
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    if-eq v0, v2, :cond_4

    const/16 v0, 0x9

    .line 110
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->gr()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/byazt/dj/tt$c;->ve(I)Lcom/byazt/dj/tt$c;

    .line 112
    :cond_5
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 113
    invoke-virtual {p1, p4}, Lcom/byazt/dj/tt$c;->x(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    .line 114
    :cond_6
    invoke-static {p1, p2, p3, p5, v1}, Lcom/byazt/xf/tt;->c(Lcom/byazt/dj/tt$c;Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/ch/c;)V

    return-object p1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {}, Lcom/byazt/yf/da;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    .line 6
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "value"

    const-string v5, "name"

    if-ge v2, v3, :cond_3

    .line 10
    :try_start_3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object p0
.end method

.method public static c(Lcom/byazt/ch/c;)Lorg/json/JSONArray;
    .locals 7

    .line 31
    invoke-static {}, Lcom/byazt/xf/tt;->c()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/byazt/xf/tt;->ve(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    :try_start_0
    invoke-static {}, Lcom/byazt/xf/tt;->tt()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "name"

    if-eqz v1, :cond_1

    .line 34
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 35
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 36
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 37
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 39
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 40
    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "value"

    .line 41
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/byazt/xf/tt;->tt(Lcom/byazt/ch/c;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    .line 44
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "personal_ads_type"

    .line 46
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 47
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 48
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method public static c(Lcom/byazt/dj/tt$c;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/byazt/yf/da;->x()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v0, "tt_pangle_preview_ad_id"

    .line 73
    invoke-static {v0}, Lcom/byazt/yf/da;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tt_pangle_preview_creative_id"

    .line 74
    invoke-static {v1}, Lcom/byazt/yf/da;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tt_pangle_preview_ext"

    .line 75
    invoke-static {v2}, Lcom/byazt/yf/da;->ve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTMediationSDK"

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pangle preview adId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " creativeId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ext"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    invoke-virtual {p0, v0}, Lcom/byazt/dj/tt$c;->c(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->tt(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    .line 80
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    invoke-virtual {p0, v2}, Lcom/byazt/dj/tt$c;->ve(Ljava/lang/String;)Lcom/byazt/dj/tt$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 82
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Lcom/byazt/dj/tt$c;Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/ch/c;)V
    .locals 6

    const-string v0, "value"

    const-string v1, "name"

    .line 49
    invoke-static {p4}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ch/c;)Lorg/json/JSONArray;

    move-result-object p4

    .line 50
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "mediation_sdk_version"

    .line 51
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-static {}, Lcom/byazt/yl/tt;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "mediation_req_type"

    .line 54
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "1"

    .line 55
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "waterfall_abtest"

    .line 58
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 60
    :goto_0
    invoke-virtual {p4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    invoke-virtual {p4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    .line 62
    invoke-virtual {p4, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 63
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 64
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "m_req_id"

    .line 65
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-virtual {p4, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 68
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    if-nez p3, :cond_3

    .line 69
    invoke-static {p0}, Lcom/byazt/xf/tt;->c(Lcom/byazt/dj/tt$c;)V

    .line 70
    :cond_3
    invoke-static {}, Lcom/byazt/yf/da;->n()Z

    move-result p1

    invoke-static {p1}, Lcom/byazt/tjo/tt;->c(Z)V

    if-eqz p0, :cond_4

    .line 71
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dj/tt$c;->i(Ljava/lang/String;)Lcom/byazt/dj/tt$c;

    :cond_4
    return-void
.end method

.method public static c(Lcom/byazt/ll/tt;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object p0

    const-string v1, "banner_native_exp_auto_height"

    .line 122
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 123
    :try_start_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 124
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/xf/tt;->ve()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method private static c(Lcom/byazt/ll/tt;Lcom/byazt/ch/c;)[I
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->nu()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->nu()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->nu()[I

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "pangle_vid"

    .line 118
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 119
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tt(Ljava/util/Map;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    const-string v0, "ad_id"

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static tt()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/byazt/yf/da;->sp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static tt(Lcom/byazt/ch/c;)Lorg/json/JSONArray;
    .locals 1

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/byazt/dj/tt;->qy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/byazt/dj/tt;->qy()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/byazt/yf/da;->tt(Ljava/lang/String;)V

    return-void
.end method

.method private static ve()Ljava/lang/String;
    .locals 1

    .line 8
    :try_start_0
    invoke-static {}, Lcom/byazt/tjo/tt;->ve()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string v0, "0.0"

    return-object v0
.end method

.method public static ve(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "request_id"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ve(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 7
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    return-object p0
.end method
