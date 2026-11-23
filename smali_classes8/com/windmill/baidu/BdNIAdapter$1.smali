.class Lcom/windmill/baidu/BdNIAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/BdNIAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/windmill/baidu/BdNIAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/BdNIAdapter;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    iput-object p2, p0, Lcom/windmill/baidu/BdNIAdapter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/baidu/BdNIAdapter$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/windmill/baidu/BdNIAdapter$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLpClosed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onLpClosed()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onNativeFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v1, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/windmill/baidu/BdNIAdapter$1;->onNativeFail(ILjava/lang/String;)V

    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "----onNativeLoad()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-static {v0}, Lcom/windmill/baidu/BdNIAdapter;->a(Lcom/windmill/baidu/BdNIAdapter;)Z

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-static {v0, v1}, Lcom/windmill/baidu/BdNIAdapter;->a(Lcom/windmill/baidu/BdNIAdapter;Lcom/baidu/mobads/sdk/api/NativeResponse;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    new-instance v1, Lcom/windmill/baidu/f;

    iget-object v2, p0, Lcom/windmill/baidu/BdNIAdapter$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/windmill/baidu/BdNIAdapter;->b(Lcom/windmill/baidu/BdNIAdapter;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v3

    iget-object v4, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-virtual {v4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v4

    iget-object v5, p0, Lcom/windmill/baidu/BdNIAdapter$1;->c:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/windmill/baidu/f;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;ILjava/util/Map;)V

    invoke-static {v0, v1}, Lcom/windmill/baidu/BdNIAdapter;->a(Lcom/windmill/baidu/BdNIAdapter;Lcom/windmill/baidu/f;)Lcom/windmill/baidu/f;

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-static {v0}, Lcom/windmill/baidu/BdNIAdapter;->b(Lcom/windmill/baidu/BdNIAdapter;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-static {v0}, Lcom/windmill/baidu/BdNIAdapter;->b(Lcom/windmill/baidu/BdNIAdapter;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    new-instance v1, Lcom/windmill/sdk/models/BidPrice;

    invoke-direct {v1, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-static {v0}, Lcom/windmill/baidu/BdNIAdapter;->b(Lcom/windmill/baidu/BdNIAdapter;)Lcom/baidu/mobads/sdk/api/NativeResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPECPM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/windmill/sdk/models/BidPrice;->pecpm:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_2
    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list is null or size be 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/baidu/BdNIAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onNoAd(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onNoAd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNIAdapter$1;->d:Lcom/windmill/baidu/BdNIAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v1, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public onNoAd(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/windmill/baidu/BdNIAdapter$1;->onNoAd(ILjava/lang/String;)V

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onVideoDownloadFailed()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "---onVideoDownloadSuccess()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method
