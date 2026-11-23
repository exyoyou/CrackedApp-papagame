.class Lcom/windmill/baidu/BdNativeAdData2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/baidu/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/baidu/i;


# virtual methods
.method public adActReward(I)V
    .locals 0

    return-void
.end method

.method public adActRewardSuccess()V
    .locals 0

    return-void
.end method

.method public onADExposed()V
    .locals 3

    invoke-static {}, Lcom/windmill/baidu/i;->a()Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/windmill/baidu/i;->b()Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/windmill/baidu/i;->a()Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    invoke-static {}, Lcom/windmill/baidu/i;->b()Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/baidu/BdNativeAdData2$1;->a:Lcom/windmill/baidu/i;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onADExposed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/baidu/i;->c()Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/baidu/i;->b()Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/windmill/baidu/i;->b()Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdNativeAdData2$1;->a:Lcom/windmill/baidu/i;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdShow(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public onADExposureFailed(I)V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADExposureFailed:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onADStatusChanged()V
    .locals 10

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADStatusChanged()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/baidu/i;->c()Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/windmill/baidu/i;->d()Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/windmill/baidu/i;->c()Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDownloadStatus()I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/windmill/baidu/i;->d()Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v2

    const-wide/16 v3, 0x64

    int-to-long v5, v0

    const-string v7, ""

    const-string v8, ""

    invoke-interface/range {v2 .. v8}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0x65

    const-string v2, ""

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/windmill/baidu/i;->d()Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    const-wide/16 v3, 0x64

    invoke-interface {v0, v3, v4, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/windmill/baidu/i;->d()Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v3

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x32

    const-string v8, ""

    const-string v9, ""

    invoke-interface/range {v3 .. v9}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v1, 0x67

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/windmill/baidu/i;->d()Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v1, 0x68

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/windmill/baidu/i;->d()Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v2

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x1

    const-string v7, ""

    const-string v8, ""

    invoke-interface/range {v2 .. v8}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/windmill/baidu/i;->d()Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onIdle()V

    :cond_5
    return-void
.end method

.method public onAdClick()V
    .locals 3

    invoke-static {}, Lcom/windmill/baidu/i;->a()Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/windmill/baidu/i;->b()Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/windmill/baidu/i;->a()Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    invoke-static {}, Lcom/windmill/baidu/i;->b()Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/baidu/BdNativeAdData2$1;->a:Lcom/windmill/baidu/i;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/baidu/i;->c()Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/windmill/baidu/i;->b()Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/windmill/baidu/i;->b()Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdNativeAdData2$1;->a:Lcom/windmill/baidu/i;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callNativeAdClick(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public onAdUnionClick()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onAdUnionClick()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
