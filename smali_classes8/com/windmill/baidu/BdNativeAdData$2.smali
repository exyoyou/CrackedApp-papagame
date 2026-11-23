.class Lcom/windmill/baidu/BdNativeAdData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/h;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/baidu/h;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/h;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


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

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->a(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->b(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->a(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v1}, Lcom/windmill/baidu/h;->b(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADExposed(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onADExposed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v2}, Lcom/windmill/baidu/h;->c(Lcom/windmill/baidu/h;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->b(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->b(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

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
    .locals 9

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADStatusChanged()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->c(Lcom/windmill/baidu/h;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->d(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->c(Lcom/windmill/baidu/h;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDownloadStatus()I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v1}, Lcom/windmill/baidu/h;->d(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

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

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->d(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    const-wide/16 v3, 0x64

    invoke-interface {v0, v3, v4, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->d(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v1

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x32

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v1, 0x67

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->d(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v1, 0x68

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->d(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v1

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x1

    const-string v6, ""

    const-string v7, ""

    invoke-interface/range {v1 .. v7}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->d(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;->onIdle()V

    :cond_5
    return-void
.end method

.method public onAdClick()V
    .locals 3

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->a(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->b(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->a(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v1}, Lcom/windmill/baidu/h;->b(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADClicked(Lcom/windmill/sdk/models/AdInfo;)V

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdClick:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v2}, Lcom/windmill/baidu/h;->c(Lcom/windmill/baidu/h;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->b(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->b(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/BdNativeAdData$2;->a:Lcom/windmill/baidu/h;

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
