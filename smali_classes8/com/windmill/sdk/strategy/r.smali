.class public abstract Lcom/windmill/sdk/strategy/r;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "wmFilter"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->ac()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/windmill/sdk/strategy/i;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-------------dayList--------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 17
    sget-object p0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FRE_FILTER:Lcom/windmill/sdk/WindMillError;

    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->ad()I

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/windmill/sdk/strategy/i;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-------------hourList--------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 22
    sget-object p0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FRE_FILTER:Lcom/windmill/sdk/WindMillError;

    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->ae()I

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/windmill/sdk/strategy/i;->c(Ljava/lang/String;I)Lcom/windmill/sdk/models/FreEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/windmill/sdk/models/FreEntity;->getTameStamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-------------freEntity--------------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 27
    sget-object p0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FRE_FILTER:Lcom/windmill/sdk/WindMillError;

    return-object p0

    .line 28
    :cond_2
    invoke-static {p0, p1}, Lcom/windmill/sdk/strategy/r;->b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/models/StrategyWaterFall;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adRequest",
            "waterFall"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_day:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/windmill/sdk/strategy/i;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "---------WaterfallStrategyFilter----dayList--------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_hour:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/windmill/sdk/strategy/i;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "--------WaterfallStrategyFilter-----hourList--------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object p1, p1, Lcom/windmill/sdk/models/StrategyWaterFall;->frequency_secs:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lcom/windmill/sdk/strategy/i;->a()Lcom/windmill/sdk/strategy/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/windmill/sdk/strategy/i;->c(Ljava/lang/String;I)Lcom/windmill/sdk/models/FreEntity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/windmill/sdk/models/FreEntity;->getTameStamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---------WaterfallStrategyFilter----freEntity--------------"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    int-to-long p0, p1

    cmp-long v0, v2, p0

    if-gez v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/WMFilter;)Lcom/windmill/sdk/WindMillError;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adStrategy",
            "wmFilter"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "c2s"

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "s2s"

    goto :goto_0

    :cond_2
    const-string v1, "normal"

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->aL()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->aN()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->aW()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->X()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->s()I

    move-result v6

    .line 8
    invoke-virtual {p0}, Lcom/windmill/sdk/strategy/a;->r()I

    move-result p0

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    .line 9
    new-instance v8, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    invoke-direct {v8}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;-><init>()V

    .line 10
    invoke-virtual {v8, v7}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->filterIndex(I)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v8

    .line 11
    invoke-virtual {v8, v2}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->placementId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v8

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->channelId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v8

    .line 13
    invoke-virtual {v8, v4}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->adnPlacementId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v8

    .line 14
    invoke-virtual {v8, v5}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->price(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v8

    .line 15
    invoke-virtual {v8, v1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->bidType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v8

    .line 16
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->subType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v8

    .line 17
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->renderType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->build()Lcom/windmill/sdk/models/WaterfallFilterData;

    move-result-object v8

    .line 19
    invoke-virtual {p1, v8}, Lcom/windmill/sdk/models/WMFilter;->doFilter(Lcom/windmill/sdk/models/WaterfallFilterData;)Lcom/windmill/sdk/WindMillError;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 20
    :cond_3
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/d;->e()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 21
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/d;->e()Ljava/util/Map;

    move-result-object p1

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 23
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    const/4 v8, 0x0

    .line 25
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 26
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 27
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 28
    sget-object p0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_FILTER:Lcom/windmill/sdk/WindMillError;

    return-object p0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 29
    :cond_5
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/d;->f()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 30
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/windmill/sdk/strategy/d;->f()Ljava/util/List;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 32
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 33
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/windmill/sdk/models/WMFilter;

    if-eqz v8, :cond_6

    .line 34
    new-instance v9, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    invoke-direct {v9}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;-><init>()V

    .line 35
    invoke-virtual {v9, v7}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->filterIndex(I)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v9

    .line 36
    invoke-virtual {v9, v2}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->placementId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v9

    .line 37
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->channelId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v9

    .line 38
    invoke-virtual {v9, v4}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->adnPlacementId(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v9

    .line 39
    invoke-virtual {v9, v5}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->price(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v9

    .line 40
    invoke-virtual {v9, v1}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->bidType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v9

    .line 41
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->subType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v9

    .line 42
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->renderType(Ljava/lang/String;)Lcom/windmill/sdk/models/WaterfallFilterData$Builder;

    move-result-object v9

    .line 43
    invoke-virtual {v9}, Lcom/windmill/sdk/models/WaterfallFilterData$Builder;->build()Lcom/windmill/sdk/models/WaterfallFilterData;

    move-result-object v9

    .line 44
    invoke-virtual {v8, v9}, Lcom/windmill/sdk/models/WMFilter;->doFilter(Lcom/windmill/sdk/models/WaterfallFilterData;)Lcom/windmill/sdk/WindMillError;

    move-result-object v8

    if-eqz v8, :cond_6

    return-object v8

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/windmill/sdk/strategy/a;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStrategy"
        }
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/strategy/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()V
.end method
