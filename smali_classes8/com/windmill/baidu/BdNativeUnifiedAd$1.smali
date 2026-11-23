.class Lcom/windmill/baidu/BdNativeUnifiedAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/BaiduNativeManager$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/baidu/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/windmill/baidu/l;


# direct methods
.method constructor <init>(Lcom/windmill/baidu/l;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iput-object p2, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLpClosed()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "-----------onLpClosed---------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNativeFail(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onNativeFail---------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object v0, v0, Lcom/windmill/baidu/l;->b:Lcom/windmill/baidu/g$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " codeId "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object p1, p1, Lcom/windmill/baidu/l;->b:Lcom/windmill/baidu/g$a;

    invoke-interface {p1, v0}, Lcom/windmill/baidu/g$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public onNativeFail(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->onNativeFail(ILjava/lang/String;)V

    return-void
.end method

.method public onNativeLoad(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------------onNativeLoad-----------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobads/sdk/api/NativeResponse;

    new-instance v3, Lcom/windmill/baidu/h;

    iget-object v4, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object v5, v5, Lcom/windmill/baidu/l;->c:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v6, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->c:Ljava/util/Map;

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/windmill/baidu/h;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/util/Map;)V

    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPECPM()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object v5, v5, Lcom/windmill/baidu/l;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getECPMLevel()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object v3, v2, Lcom/windmill/baidu/l;->b:Lcom/windmill/baidu/g$a;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/windmill/baidu/l;->a:Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v0, v1}, Lcom/windmill/baidu/g$a;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object v0, v0, Lcom/windmill/baidu/l;->c:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object p1, p1, Lcom/windmill/baidu/l;->b:Lcom/windmill/baidu/g$a;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ads is null or size be 0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object v0, v0, Lcom/windmill/baidu/l;->b:Lcom/windmill/baidu/g$a;

    invoke-interface {v0, p1}, Lcom/windmill/baidu/g$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_6
    return-void
.end method

.method public onNoAd(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----------onNoAd---------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object v0, v0, Lcom/windmill/baidu/l;->b:Lcom/windmill/baidu/g$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " codeId "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->d:Lcom/windmill/baidu/l;

    iget-object p1, p1, Lcom/windmill/baidu/l;->b:Lcom/windmill/baidu/g$a;

    invoke-interface {p1, v0}, Lcom/windmill/baidu/g$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method

.method public onNoAd(ILjava/lang/String;Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/windmill/baidu/BdNativeUnifiedAd$1;->onNoAd(ILjava/lang/String;)V

    return-void
.end method

.method public onVideoDownloadFailed()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "-----------onVideoDownloadFailed---------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDownloadSuccess()V
    .locals 2

    sget-object v0, Lcom/windmill/sdk/base/WMLogUtil;->TAG:Ljava/lang/String;

    const-string v1, "-----------onVideoDownloadSuccess---------"

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
