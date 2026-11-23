.class Lcom/windmill/baidu/BdNativeDrawAdData$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/NativeResponse$AdDownloadWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/BdNativeDrawAdData;->bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/baidu/BdNativeDrawAdData;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/BdNativeDrawAdData;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdNativeDrawAdData$3;->a:Lcom/windmill/baidu/BdNativeDrawAdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDownloadWindowClose()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "adDownloadWindowClose"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeDrawAdData$3;->a:Lcom/windmill/baidu/BdNativeDrawAdData;

    invoke-static {v0}, Lcom/windmill/baidu/BdNativeDrawAdData;->e(Lcom/windmill/baidu/BdNativeDrawAdData;)Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeDrawAdData$3;->a:Lcom/windmill/baidu/BdNativeDrawAdData;

    invoke-static {v0}, Lcom/windmill/baidu/BdNativeDrawAdData;->e(Lcom/windmill/baidu/BdNativeDrawAdData;)Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->resume()V

    :cond_0
    return-void
.end method

.method public adDownloadWindowShow()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "AdDownloadWindowShow"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeDrawAdData$3;->a:Lcom/windmill/baidu/BdNativeDrawAdData;

    invoke-static {v0}, Lcom/windmill/baidu/BdNativeDrawAdData;->e(Lcom/windmill/baidu/BdNativeDrawAdData;)Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeDrawAdData$3;->a:Lcom/windmill/baidu/BdNativeDrawAdData;

    invoke-static {v0}, Lcom/windmill/baidu/BdNativeDrawAdData;->e(Lcom/windmill/baidu/BdNativeDrawAdData;)Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/FeedPortraitVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public onADFunctionClick()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADFunctionClick"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onADPermissionClose()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADPermissionClose"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onADPermissionShow()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADPermissionShow"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onADPrivacyClick()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "onADPrivacyClick"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
