.class final Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/sdk/api/KsLoadManager$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/kuaishou/KuaiShouNSAdapter;->loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/kuaishou/KuaiShouNSAdapter;Lcom/windmill/sdk/custom/WMCustomSplashAdapter;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    iput-object p2, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->a:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    iput-object p3, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->a:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-direct {v1, p1, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onNativeAdLoad(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->a:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onNativeAdLoad()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouNSAdapter;->a(Lcom/windmill/kuaishou/KuaiShouNSAdapter;)Z

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsNativeAd;

    invoke-static {v0, v1}, Lcom/windmill/kuaishou/KuaiShouNSAdapter;->a(Lcom/windmill/kuaishou/KuaiShouNSAdapter;Lcom/kwad/sdk/api/KsNativeAd;)Lcom/kwad/sdk/api/KsNativeAd;

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    new-instance v1, Lcom/windmill/kuaishou/f;

    iget-object v2, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouNSAdapter;->b(Lcom/windmill/kuaishou/KuaiShouNSAdapter;)Lcom/kwad/sdk/api/KsNativeAd;

    move-result-object v3

    iget-object v4, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->a:Lcom/windmill/sdk/custom/WMCustomSplashAdapter;

    invoke-virtual {v4}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v4

    iget-object v5, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->d:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/windmill/kuaishou/f;-><init>(Landroid/content/Context;Lcom/kwad/sdk/api/KsNativeAd;ILjava/util/Map;)V

    invoke-static {v0, v1}, Lcom/windmill/kuaishou/KuaiShouNSAdapter;->a(Lcom/windmill/kuaishou/KuaiShouNSAdapter;Lcom/windmill/kuaishou/f;)Lcom/windmill/kuaishou/f;

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    invoke-static {v0}, Lcom/windmill/kuaishou/KuaiShouNSAdapter;->b(Lcom/windmill/kuaishou/KuaiShouNSAdapter;)Lcom/kwad/sdk/api/KsNativeAd;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getECPM()I

    move-result v0

    iget-object v1, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    new-instance v2, Lcom/windmill/sdk/models/BidPrice;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_1
    iget-object v0, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->e:Lcom/windmill/kuaishou/KuaiShouNSAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list is null or size be 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/kuaishou/KuaiShouNSAdapter$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomSplashAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
