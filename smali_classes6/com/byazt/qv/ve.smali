.class public Lcom/byazt/qv/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1cb,
        0x36
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-static {p1, p0}, Lcom/byazt/qv/ve;->c(Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/byazt/dv/tt;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/dv/tt;->tt(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/byazt/dv/tt;->da()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/byazt/dv/tt;->sl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0, p2}, Lcom/byazt/sp/uj;->c(Lcom/byazt/dv/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object p0

    invoke-static {p0}, Lcom/byazt/oi/ve;->c(Lcom/byazt/nbs/da;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 7
    new-instance v0, Lcom/byazt/sp/ve;

    invoke-direct {v0, p2}, Lcom/byazt/sp/ve;-><init>(Lcom/byazt/db/tt;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/byazt/sx/tt;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/px/c;->c(Ljava/lang/String;)Lcom/byazt/id/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Lcom/byazt/ck/ve;->c()Lcom/byazt/ck/ve;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/ck/ve;->c(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/byazt/nbs/c;->uj()Lcom/byazt/ih/tt;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/byazt/nbs/c;->uj()Lcom/byazt/ih/tt;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/dv/tt;->yv()I

    move-result v1

    invoke-virtual {p0}, Lcom/byazt/dv/tt;->z()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/byazt/ih/tt;->c(II)Lcom/byazt/ih/c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {p1}, Lcom/byazt/qv/ve;->c(Lcom/byazt/ih/c;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/byazt/ih/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/byazt/sp/uj;->c(Ljava/lang/String;Lcom/byazt/dv/tt;Lcom/byazt/db/tt;)Lcom/byazt/db/c;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static c(Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object v0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static c(Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dv/tt;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 31
    :cond_0
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {p0}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;)Lcom/byazt/nbs/c;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "tt_ad_network_config_appid"

    .line 32
    invoke-virtual {v1}, Lcom/byazt/nbs/c;->tt()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tt_ad_network_config_appKey"

    .line 33
    invoke-virtual {v1}, Lcom/byazt/nbs/c;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/dv/tt;->yp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tt_ad_origin_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p0}, Lcom/byazt/dv/tt;->z()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "tt_ad_sub_type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->cu()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 37
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 38
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->qy()I

    move-result p0

    .line 42
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->gu()I

    move-result v1

    const/4 v2, 0x0

    if-gez p0, :cond_4

    const/4 p0, 0x0

    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    const-string v2, "ad_height"

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_width"

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "ad_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    .line 46
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_7

    .line 47
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static c(Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Lcom/byazt/nbs/i;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_c

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->my()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/byazt/dv/tt;->my()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 51
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->md()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    .line 52
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->md()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 53
    :cond_3
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->gu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->h()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/yl/ve;->setServerBiddingShowCpm(D)V

    .line 55
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->d()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/yl/ve;->setServerBiddingLoadCpm(D)V

    .line 56
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nbs/x;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setAid(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nbs/x;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setAdExtra(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nbs/x;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setWinCallback(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nbs/x;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setFailCallback(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/nbs/x;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setPricingType(I)V

    .line 62
    :cond_4
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->my()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setAdNetworkSlotType(I)V

    .line 63
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->gt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setLoadSort(I)V

    .line 64
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->rl()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setShowSort(I)V

    const-string v0, ""

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    move-object p4, v0

    .line 65
    :goto_0
    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setSdkVersion(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setAdNetWorkName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-virtual {p2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object p4

    invoke-virtual {p4}, Lcom/byazt/nbs/da;->m()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setCustomAdNetWorkName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->zb()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setExchangeRate(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {p2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object p4

    invoke-virtual {p4}, Lcom/byazt/nbs/da;->gu()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_7
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setDiscount(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/yl/ve;->setFillTime(J)V

    .line 71
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setAdNetworkSlotId(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->tt()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setRit(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->u()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/byazt/yl/c;->tt(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setSdkNum(I)V

    .line 74
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->sp()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setMediationRitReqTypeFromRealReq(I)V

    .line 75
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->a()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setMediationRitReqTypeSrcFromRealReq(I)V

    .line 76
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setLinkIdFromRealReq(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->sp()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setMediationRitReqType(I)V

    .line 78
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->a()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setMediationRitReqTypeSrc(I)V

    .line 79
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->yp()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setOriginType(I)V

    .line 80
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->z()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setSubAdType(I)V

    .line 81
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->my()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setAdType(I)V

    .line 82
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->or()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setIfReuseAds(I)V

    .line 83
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->p()I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/byazt/yl/ve;->setIsRefresh(I)V

    .line 84
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->x()Lcom/byazt/nbs/da;

    move-result-object p4

    const/4 v0, 0x0

    invoke-static {p0, p4, p1, v0}, Lcom/byazt/vx/md;->c(Lcom/byazt/yl/ve;Lcom/byazt/nbs/da;Lcom/byazt/ll/tt;Z)V

    if-eqz p3, :cond_a

    .line 85
    iget p4, p3, Lcom/byazt/nbs/i;->tt:I

    const/4 v1, 0x1

    if-eq p4, v1, :cond_8

    goto :goto_2

    :cond_8
    move v0, p4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "if_test"

    invoke-virtual {p0, v0, p4}, Lcom/byazt/yl/ve;->putEventParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "server_bidding_extra"

    .line 86
    iget-object v0, p3, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    invoke-virtual {p0, p4, v0}, Lcom/byazt/yl/ve;->putEventParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Lcom/byazt/ll/tt;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->getMediationRitReqType(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_9

    const/4 p4, 0x2

    if-ne p1, p4, :cond_a

    .line 88
    :cond_9
    iget-boolean p1, p3, Lcom/byazt/nbs/i;->n:Z

    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->setTimeoutFill(Z)V

    .line 89
    :cond_a
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 90
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->eo()Lcom/byazt/nbs/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/nbs/x;->tt()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "extra_data_and_no_parse"

    invoke-virtual {p0, p3, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_b
    invoke-virtual {p2}, Lcom/byazt/dv/tt;->pf()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->setLoadByDexPl(Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method public static c(Lcom/byazt/ih/c;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 20
    :cond_0
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/vq/c;->a()Ljava/util/function/Function;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/byazt/ih/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "TMe"

    if-nez v2, :cond_1

    .line 22
    invoke-static {}, Lcom/byazt/rl/c;->c()Lcom/byazt/rl/c;

    move-result-object v0

    const/16 v2, 0x1f4a

    .line 23
    invoke-virtual {p0}, Lcom/byazt/ih/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/byazt/rl/c;->c(ILjava/lang/String;)Lcom/byazt/rl/c;

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "custom className is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/byazt/ih/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x5f5e0f3

    const/16 v2, 0x2025

    .line 25
    invoke-virtual {v0, p0, v2}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    const p0, -0x5f5e0f1

    .line 26
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v2}, Lcom/byazt/rl/c;->c(ILjava/lang/Object;)Lcom/byazt/rl/c;

    .line 27
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    move-result-object p0

    invoke-interface {p0}, Lcom/bykv/vk/openvk/api/proto/PluginValueSet;->sparseArray()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {v1, p0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "custom className is empty"

    .line 28
    invoke-static {v3, p0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "TTMediationSDK"

    const-string v1, "load ad check custom name class loader is null "

    .line 29
    invoke-static {p0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method
