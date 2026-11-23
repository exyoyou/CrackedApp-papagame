.class public final Lcom/windmill/kuaishou/j;
.super Lcom/windmill/kuaishou/g;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/windmill/kuaishou/g$a;

.field c:Z


# direct methods
.method public constructor <init>(Lcom/windmill/kuaishou/g$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/kuaishou/g;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/kuaishou/j;->c:Z

    iput-object p1, p0, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/windmill/sdk/custom/WMCustomNativeAdapter;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/windmill/kuaishou/j;->c:Z

    iget-object v1, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/windmill/kuaishou/j;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " loadAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x3fc

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "ad_key_width"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float p3, p3

    mul-float p3, p3, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr p3, v3

    float-to-int p3, p3

    goto :goto_0

    :cond_0
    const/16 p3, 0x3fc

    :goto_0
    const-string v3, "autoPlayMuted"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    const-string v3, "0"

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    iput-boolean v2, p0, Lcom/windmill/kuaishou/j;->c:Z

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/windmill/kuaishou/j;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v1, p3

    goto :goto_2

    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lcom/windmill/kuaishou/j;->c:Z

    :goto_2
    sget-object p3, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string p4, "-------------expressViewWidth-------:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/kwad/sdk/api/KsScene$Builder;

    invoke-static {p2}, Lcom/windmill/sdk/base/WMBidUtil;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p3, v3, v4}, Lcom/kwad/sdk/api/KsScene$Builder;-><init>(J)V

    invoke-virtual {p3, v1}, Lcom/kwad/sdk/api/KsScene$Builder;->width(I)Lcom/kwad/sdk/api/KsScene$Builder;

    move-result-object p3

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p4

    if-nez p4, :cond_2

    invoke-virtual {p3, v2}, Lcom/kwad/sdk/api/KsScene$Builder;->adNum(I)Lcom/kwad/sdk/api/KsScene$Builder;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getHbResponseStr()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/kwad/sdk/api/KsScene$Builder;->setBidResponseV2(Ljava/lang/String;)Lcom/kwad/sdk/api/KsScene$Builder;

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdCount()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/kwad/sdk/api/KsScene$Builder;->adNum(I)Lcom/kwad/sdk/api/KsScene$Builder;

    :goto_3
    new-instance p4, Lcom/kwad/sdk/api/model/NativeAdExtraData;

    invoke-direct {p4}, Lcom/kwad/sdk/api/model/NativeAdExtraData;-><init>()V

    invoke-virtual {p4, v2}, Lcom/kwad/sdk/api/model/NativeAdExtraData;->setEnableShake(Z)Lcom/kwad/sdk/api/model/NativeAdExtraData;

    invoke-virtual {p3, p4}, Lcom/kwad/sdk/api/KsScene$Builder;->setNativeAdExtraData(Lcom/kwad/sdk/api/model/NativeAdExtraData;)Lcom/kwad/sdk/api/KsScene$Builder;

    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getLoadManager()Lcom/kwad/sdk/api/KsLoadManager;

    move-result-object p4

    invoke-virtual {p3}, Lcom/kwad/sdk/api/KsScene$Builder;->build()Lcom/kwad/sdk/api/KsScene;

    move-result-object p3

    new-instance v0, Lcom/windmill/kuaishou/j$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/windmill/kuaishou/j$1;-><init>(Lcom/windmill/kuaishou/j;Ljava/lang/String;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    invoke-interface {p4, p3, v0}, Lcom/kwad/sdk/api/KsLoadManager;->loadConfigFeedAd(Lcom/kwad/sdk/api/KsScene;Lcom/kwad/sdk/api/KsLoadManager$FeedAdListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    if-eqz p2, :cond_3

    new-instance p2, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object p3, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    invoke-interface {p1, p2}, Lcom/windmill/kuaishou/g$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_3
    return-void
.end method

.method public final a(ZLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/kuaishou/a;

    invoke-virtual {v1}, Lcom/windmill/kuaishou/a;->getOriginNativeAdData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsFeedAd;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    const-string v2, "bidEcpm"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "lossBidEcpm"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/windmill/kuaishou/j;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ---notifyBiddingResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/windmill/sdk/base/WMBidUtil;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3}, Lcom/windmill/sdk/base/WMBidUtil;->parseLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v4, v5, v2, v3}, Lcom/kwad/sdk/api/KsFeedAd;->setBidEcpm(JJ)V

    goto :goto_2

    :cond_0
    const-string v2, "adExposureFailedReasonCode"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    const-string v3, "adExposureFailedReason"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/api/model/AdExposureFailedReason;

    invoke-interface {v1, v2, v3}, Lcom/kwad/sdk/api/KsFeedAd;->reportAdExposureFailed(ILcom/kwad/sdk/api/model/AdExposureFailedReason;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/kuaishou/j;->b:Lcom/windmill/kuaishou/g$a;

    iget-object v0, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdData;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMNativeAdData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/j;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/windmill/kuaishou/a;

    iget-object v0, v0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/BaseKSAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouAdapterProxy;->getRequestId(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
