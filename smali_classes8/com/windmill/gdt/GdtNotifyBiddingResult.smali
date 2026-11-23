.class public Lcom/windmill/gdt/GdtNotifyBiddingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyBiddingResult(ZLjava/util/Map;Lcom/qq/e/ads/LiteAbstractAD;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/qq/e/ads/LiteAbstractAD;",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            ")V"
        }
    .end annotation

    const-string v0, "noAdUrl"

    :try_start_0
    sget-boolean v1, Lcom/windmill/sdk/base/WMLogUtil;->isEnableLog:Z

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-----notifyBiddingResult id:1  isReady:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isWin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v1, "---notifyBiddingResult:2 map "

    const-string v2, "placementId"

    if-eqz p0, :cond_1

    :try_start_1
    invoke-static {p0, p1, p3}, Lcom/windmill/gdt/GdtNotifyBiddingResult;->notifyMap(ZLjava/util/Map;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/HashMap;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(Ljava/util/Map;)V

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, p1, p3}, Lcom/windmill/gdt/GdtNotifyBiddingResult;->notifyMap(ZLjava/util/Map;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/LiteAbstractAD;->sendWinNotification(Ljava/util/Map;)V

    return-void

    :cond_2
    invoke-virtual {p2, p1}, Lcom/qq/e/ads/LiteAbstractAD;->sendLossNotification(Ljava/util/Map;)V

    return-void

    :cond_3
    const-string p0, "---------notifyBiddingResult NoAd "

    invoke-static {p0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0, p1, p3}, Lcom/windmill/gdt/GdtNotifyBiddingResult;->notifyMap(ZLjava/util/Map;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p2, Lcom/windmill/sdk/base/WMBidUtil;->IS_WIN:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "loadId"

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getLoadId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "---------notifyBiddingResult  noAdUrl 000"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/windmill/gdt/GdtUtil;->noAdReplace(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_5
    const-string p0, "---------notifyBiddingResult Map noAdUrl "

    invoke-static {p0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public static notifyMap(ZLjava/util/Map;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoToOut(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result p2

    invoke-static {p2, p0, p1, v0}, Lcom/windmill/sdk/base/WMBidUtil;->getBidInfoWithChannel(IZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/windmill/gdt/GDTAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/windmill/gdt/GDTAdapterProxy;->castBiddingInfo(ZLjava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public static notifyNativeBiddingResult(ZLjava/util/Map;Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            "Lcom/windmill/sdk/custom/WMAdBaseAdapter;",
            ")V"
        }
    .end annotation

    const-string v0, "noAdUrl"

    :try_start_0
    sget-boolean v1, Lcom/windmill/sdk/base/WMLogUtil;->isEnableLog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "placementId"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, ""

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "---notifyNativeResult:1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isReady:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWin:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->isReady()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0, p1, p3}, Lcom/windmill/gdt/GdtNotifyBiddingResult;->notifyMap(ZLjava/util/Map;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "---notifyNativeResult: 2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    if-nez p2, :cond_3

    :try_start_2
    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getNativeAdDataList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/windmill/sdk/natives/WMNativeAdData;

    invoke-virtual {p3}, Lcom/windmill/sdk/natives/WMNativeAdData;->getOriginNativeAdData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qq/e/ads/nativ/NativeUnifiedADData;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p2, p3

    goto :goto_0

    :catchall_0
    nop

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    :try_start_3
    const-string p0, "--------notifyNativeResult  NativeUnifiedADData is null"

    invoke-static {p0}, Lcom/windmill/sdk/base/WMLogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz p0, :cond_5

    invoke-interface {p2, p1}, Lcom/qq/e/comm/pi/IBidding;->sendWinNotification(Ljava/util/Map;)V

    return-void

    :cond_5
    invoke-interface {p2, p1}, Lcom/qq/e/comm/pi/IBiddingLoss;->sendLossNotification(Ljava/util/Map;)V

    return-void

    :cond_6
    invoke-static {p0, p1, p3}, Lcom/windmill/gdt/GdtNotifyBiddingResult;->notifyMap(ZLjava/util/Map;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object p2, Lcom/windmill/sdk/base/WMBidUtil;->IS_WIN:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "--------notifyNativeResult noad  "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V

    const-string p2, "loadId"

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/windmill/gdt/GdtUtil;->noAdReplace(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "--------notifyNativeResult noAdUrl  "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getServerExtra()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/windmill/sdk/base/WMLogUtil;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-void
.end method
