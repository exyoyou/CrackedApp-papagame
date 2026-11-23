.class public interface abstract Lcom/windmill/adscope/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/adscope/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract onInterstitialAdClick()V
.end method

.method public abstract onInterstitialAdClose()V
.end method

.method public abstract onInterstitialAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V
.end method

.method public abstract onInterstitialAdFailToPlaying(Lcom/windmill/sdk/base/WMAdapterError;)V
.end method

.method public abstract onInterstitialAdLoadSuccess(I)V
.end method

.method public abstract onInterstitialAdStartPlaying()V
.end method
