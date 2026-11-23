.class public Lcom/byazt/vx/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3c2,
        0x42
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/pp/c;Ljava/util/List;)Lcom/byazt/pp/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ll/tt;",
            "Lcom/byazt/pp/c;",
            "Ljava/util/List<",
            "Lcom/byazt/pp/tt;",
            ">;)",
            "Lcom/byazt/pp/c;"
        }
    .end annotation

    if-eqz p1, :cond_6

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_6

    .line 74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/vx/t;->c(Ljava/util/Map;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    .line 76
    :cond_2
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/pp/tt;

    if-eqz v0, :cond_3

    .line 78
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "adn_name"

    .line 79
    invoke-virtual {v0}, Lcom/byazt/pp/tt;->ve()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/byazt/pp/tt;->uj()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/byazt/pp/tt;->ve()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mediation_rit"

    .line 80
    invoke-virtual {v0}, Lcom/byazt/pp/tt;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_type"

    .line 81
    invoke-virtual {v0}, Lcom/byazt/pp/tt;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "error_code"

    .line 82
    invoke-virtual {v0}, Lcom/byazt/pp/tt;->n()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "error_msg"

    .line 83
    invoke-virtual {v0}, Lcom/byazt/pp/tt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 86
    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/byazt/pp/c;->tt:Ljava/lang/String;

    :cond_6
    :goto_2
    return-object p1
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/yl/ve;Z)Lcom/byazt/pp/ve;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-nez p0, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    new-instance v1, Lcom/byazt/pp/ve;

    invoke-direct {v1}, Lcom/byazt/pp/ve;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/pp/ve;->c(I)V

    .line 3
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/pp/ve;->x(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getCustomAdNetWorkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/pp/ve;->i(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/pp/ve;->da(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getLevelTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/pp/ve;->u(Ljava/lang/String;)V

    const-string v2, "-3"

    if-eqz p2, :cond_3

    .line 7
    invoke-static {}, Lcom/byazt/vx/t;->c()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isServerBiddingAd()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isClientBiddingAd()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isMultiBiddingAd()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    :cond_1
    invoke-virtual {v1, v2}, Lcom/byazt/pp/ve;->sl(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getNetWorkPlatFormCpm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->sl(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lcom/byazt/vx/t;->tt()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isServerBiddingAd()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {v1, v2}, Lcom/byazt/pp/ve;->sl(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getMultiCpm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->sl(Ljava/lang/String;)V

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getReqId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->z(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotType()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->tt(I)V

    .line 15
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->yp(Ljava/lang/String;)V

    .line 16
    invoke-static {p0}, Lcom/byazt/vx/t;->tt(Lcom/byazt/ll/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->c(Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/byazt/vx/t;->c(Lcom/byazt/yl/ve;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->tt(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->rl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->sp(Ljava/lang/String;)V

    .line 19
    invoke-static {p0}, Lcom/byazt/vx/t;->c(Lcom/byazt/ll/tt;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->a(Ljava/lang/String;)V

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/byazt/ll/tt;->lo()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->ve(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/byazt/bp/c;->t()Lcom/byazt/bp/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/bp/c;->rl()Lcom/byazt/yf/a;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 22
    invoke-virtual {p2}, Lcom/byazt/yf/a;->ve()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/byazt/pp/ve;->uj(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 23
    invoke-virtual {p2}, Lcom/byazt/yf/a;->uj()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    move-object p2, v0

    :goto_2
    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->n(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 25
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 26
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 27
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_7

    move-object v3, v0

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 30
    :cond_8
    invoke-virtual {v1, p2}, Lcom/byazt/pp/ve;->c(Ljava/util/Map;)V

    .line 31
    :cond_9
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getDiscount()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/byazt/pp/ve;->t(Ljava/lang/String;)V

    return-object v1

    :cond_a
    :goto_5
    return-object v0
.end method

.method private static c(Lcom/byazt/ll/tt;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/byazt/ck/tt;->c()Lcom/byazt/ck/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ck/tt;->x()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-object v0

    .line 33
    :cond_1
    invoke-static {}, Lcom/byazt/ck/uj;->c()Lcom/byazt/ck/uj;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    move-result v4

    const/16 v5, 0x66

    .line 35
    invoke-virtual {v1, v3, v4, v5}, Lcom/byazt/ck/uj;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 36
    :cond_2
    invoke-virtual {v1}, Lcom/byazt/nbs/tt;->ve()I

    move-result v1

    if-ne v1, v2, :cond_3

    return-object v0

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->l()Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 39
    :cond_4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "experiment_detail_id"

    .line 40
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 41
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static c(Lcom/byazt/yl/ve;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->getSubAdType()I

    move-result v1

    const-string v2, "rewardVideo"

    const-string v3, "feed"

    const-string v4, "banner"

    packed-switch v1, :pswitch_data_0

    .line 43
    invoke-virtual {p0}, Lcom/byazt/yl/ve;->getAdType()I

    move-result p0

    goto :goto_0

    :pswitch_0
    return-object v2

    :pswitch_1
    const-string p0, "draw"

    return-object p0

    :pswitch_2
    return-object v3

    :pswitch_3
    return-object v4

    :pswitch_4
    const-string p0, "fullVideo"

    return-object p0

    :pswitch_5
    const-string p0, "interstitial"

    return-object p0

    :goto_0
    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    return-object v0

    :cond_1
    return-object v2

    :cond_2
    return-object v3

    :cond_3
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static c()Z
    .locals 1

    .line 44
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->zb()Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/ll/tt;ZLjava/lang/String;ILjava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Ljava/util/List<",
            "Lcom/byazt/yl/ve;",
            ">;",
            "Lcom/byazt/ll/tt;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/byazt/nbs/da;",
            ">;)Z"
        }
    .end annotation

    .line 45
    invoke-static {p5}, Lcom/byazt/hz/tt;->tt(Ljava/lang/String;)I

    move-result v0

    .line 46
    invoke-static {p0, p1, p2, p3, v0}, Lcom/byazt/ng/a;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/ll/tt;I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    return v1

    .line 47
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    const-string v0, "isReady-\u300b\u5e7f\u544a\u7c7b\u578b\uff1a"

    const-string v2, ",\u662f\u5426\u5df2\u51c6\u5907\u597d\uff1fisReady()\uff1a"

    const-string v3, "TTMediationSDK"

    const/4 v4, 0x1

    if-lez p4, :cond_3

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/byazt/yl/ve;

    if-eqz p4, :cond_2

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p5, v6}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p4}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v6

    invoke-static {v6}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-static {v3, v5}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p4, p5}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p4}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result p4

    if-nez p4, :cond_2

    return v4

    :cond_3
    if-eqz p2, :cond_5

    .line 53
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    .line 54
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/yl/ve;

    if-eqz p2, :cond_4

    .line 55
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p5, v5}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result v5

    invoke-static {v5}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 57
    invoke-static {v3, p4}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2, p5}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p2}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result p2

    if-nez p2, :cond_4

    return v4

    :cond_5
    if-eqz p1, :cond_7

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/yl/ve;

    if-eqz p1, :cond_6

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkSlotId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Lcom/byazt/eu/uj;->tt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "isReady--->biding-->\u5e7f\u544a\u7c7b\u578b\uff1a"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Lcom/byazt/yl/ve;->getAdNetworkPlatformId()I

    move-result p4

    invoke-static {p4}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {v3, p2}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, p5}, Lcom/byazt/yl/ve;->isReady(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/byazt/yl/ve;->isHasShown()Z

    move-result p1

    if-nez p1, :cond_6

    return v4

    :cond_7
    if-eqz p7, :cond_9

    .line 65
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_9

    .line 66
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/nbs/da;

    .line 67
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->rh()Ljava/lang/String;

    move-result-object p2

    .line 68
    invoke-virtual {p1}, Lcom/byazt/nbs/da;->gt()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 69
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p1

    invoke-virtual {p1, p5, p2, p6}, Lcom/byazt/hk/c;->uj(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 70
    invoke-static {}, Lcom/byazt/hk/c;->c()Lcom/byazt/hk/c;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v1}, Lcom/byazt/hk/c;->c(Ljava/lang/String;Lcom/byazt/ll/tt;Z)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    return v4

    :cond_9
    return v1
.end method

.method public static c(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "show_adn_load_error_detail"

    .line 71
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 72
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 73
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private static tt(Lcom/byazt/ll/tt;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->my()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    :pswitch_1
    const-string p0, "interstitialFull"

    return-object p0

    :pswitch_2
    const-string p0, "draw"

    return-object p0

    :pswitch_3
    const-string p0, "fullVideo"

    return-object p0

    :pswitch_4
    const-string p0, "rewardVideo"

    return-object p0

    :pswitch_5
    const-string p0, "feed"

    return-object p0

    :pswitch_6
    const-string p0, "splash"

    return-object p0

    :pswitch_7
    const-string p0, "interstitial"

    return-object p0

    :pswitch_8
    const-string p0, "banner"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static tt()Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->cu()Z

    move-result v0

    return v0
.end method
