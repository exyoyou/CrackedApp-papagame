.class Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/videoAd/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;-><init>(Lcom/sigmob/windad/rewardVideo/WindRewardAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd$1;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd$1;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    iget-object v0, v0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdLoadError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd$1;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    iget-object v0, v0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdLoadSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onAdPreLoadFail(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "placementId"
        }
    .end annotation

    iget-object p1, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd$1;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    iget-object p1, p1, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdPreLoadFail(Ljava/lang/String;)V

    return-void
.end method

.method public onAdPreLoadSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementId"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd$1;->a:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;

    iget-object v0, v0, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAd;->m:Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/rewardVideo/WindRewardVideoAdListener;->onRewardAdPreLoadSuccess(Ljava/lang/String;)V

    return-void
.end method
