.class Lcom/windmill/baidu/BdNativeAdData$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/INativeVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/h;->bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
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

    iput-object p1, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onError()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    iget-object v1, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v1}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoError(Lcom/windmill/sdk/WindMillError;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public onRenderingStart()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onRenderingStart()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeAdData$9;->a:Lcom/windmill/baidu/h;

    invoke-static {v0}, Lcom/windmill/baidu/h;->g(Lcom/windmill/baidu/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;->onVideoResume()V

    :cond_0
    return-void
.end method
