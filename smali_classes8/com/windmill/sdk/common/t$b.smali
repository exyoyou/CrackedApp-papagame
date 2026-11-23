.class public interface abstract Lcom/windmill/sdk/common/t$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/common/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract onVideoAdClicked(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onVideoAdClosed(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onVideoAdPlayEnd(Lcom/windmill/sdk/models/AdInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adInfo"
        }
    .end annotation
.end method

.method public abstract onVideoAdPlayError(Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
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
.end method

.method public abstract onVideoAdPlayStart(Lcom/windmill/sdk/models/AdInfo;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "hasAdShow"
        }
    .end annotation
.end method

.method public abstract onVideoAdReward(Lcom/windmill/sdk/models/AdInfo;Lcom/windmill/sdk/reward/WMRewardInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adInfo",
            "rewardInfo"
        }
    .end annotation
.end method
