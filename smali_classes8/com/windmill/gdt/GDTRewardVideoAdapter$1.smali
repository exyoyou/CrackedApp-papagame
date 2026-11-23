.class final Lcom/windmill/gdt/GDTRewardVideoAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gdt/GDTRewardVideoAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/gdt/GDTRewardVideoAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gdt/GDTRewardVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClick()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClick()V

    return-void
.end method

.method public final onADClose()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADClose()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->d(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->e(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onADExpose()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADExpose()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdShow()V

    return-void
.end method

.method public final onADLoad()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADLoad()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->a(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->c(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    move-result-object v0

    sget-object v1, Lcom/windmill/gdt/GDTAdapterProxy;->DOWNLOAD_CONFIRM_LISTENER:Lcom/qq/e/comm/compliance/DownloadConfirmListener;

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/LiteAbstractAD;->setDownloadConfirmListener(Lcom/qq/e/comm/compliance/DownloadConfirmListener;)V

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/ads/LiteAbstractAD;->getECPM()I

    move-result v0

    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    new-instance v2, Lcom/windmill/sdk/models/BidPrice;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->b(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public final onADShow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onADShow()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/windmill/gdt/GDTAdapterProxy;->getDetailCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {p1}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->f(Lcom/windmill/gdt/GDTRewardVideoAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayError(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onReward(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onReward:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-static {v0, p1}, Lcom/windmill/gdt/GDTRewardVideoAdapter;->a(Lcom/windmill/gdt/GDTRewardVideoAdapter;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdRewardWithData(ZLjava/util/Map;)V

    return-void
.end method

.method public final onVideoCached()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onVideoCached()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final onVideoComplete()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/GDTRewardVideoAdapter$1;->a:Lcom/windmill/gdt/GDTRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomRewardAdapter;->callVideoAdPlayComplete()V

    return-void
.end method
