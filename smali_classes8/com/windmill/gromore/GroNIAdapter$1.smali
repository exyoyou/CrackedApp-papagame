.class final Lcom/windmill/gromore/GroNIAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/GroNIAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/gromore/GroNIAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/GroNIAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    iput-object p2, p0, Lcom/windmill/gromore/GroNIAdapter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

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

    iget-object v0, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/gromore/GroAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onFeedAdLoad(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onFeedAdLoad()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;->isExpress()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {p1, v2}, Lcom/windmill/gromore/GroNIAdapter;->a(Lcom/windmill/gromore/GroNIAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroNIAdapter;->a(Lcom/windmill/gromore/GroNIAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroNIAdapter;->b(Lcom/windmill/gromore/GroNIAdapter;)Z

    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    new-instance v1, Lcom/windmill/gromore/h;

    invoke-static {p1}, Lcom/windmill/gromore/GroNIAdapter;->a(Lcom/windmill/gromore/GroNIAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-virtual {v3}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/windmill/gromore/h;-><init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd;I)V

    invoke-static {p1, v1}, Lcom/windmill/gromore/GroNIAdapter;->a(Lcom/windmill/gromore/GroNIAdapter;Lcom/windmill/gromore/h;)Lcom/windmill/gromore/h;

    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getBiddingType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroNIAdapter;->a(Lcom/windmill/gromore/GroNIAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v1

    iget-object v2, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {v2}, Lcom/windmill/gromore/GroNIAdapter;->c(Lcom/windmill/gromore/GroNIAdapter;)I

    move-result v2

    iget-object v3, p0, Lcom/windmill/gromore/GroNIAdapter$1;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/windmill/gromore/n;->a(Ljava/lang/Object;ILjava/lang/String;I)Lcom/windmill/gromore/q;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/windmill/gromore/GroNIAdapter;->a(Lcom/windmill/gromore/GroNIAdapter;Lcom/windmill/gromore/q;)Lcom/windmill/gromore/q;

    new-instance p1, Lcom/windmill/sdk/models/BidPrice;

    iget-object v0, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNIAdapter;->d(Lcom/windmill/gromore/GroNIAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-wide v0, v0, Lcom/windmill/gromore/q;->a:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/windmill/sdk/models/BidPrice;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {v1}, Lcom/windmill/gromore/GroNIAdapter;->d(Lcom/windmill/gromore/GroNIAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-wide v2, v0, Lcom/windmill/gromore/q;->a:D

    iget-object v0, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNIAdapter;->d(Lcom/windmill/gromore/GroNIAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v4, v0, Lcom/windmill/gromore/q;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNIAdapter;->d(Lcom/windmill/gromore/GroNIAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v5, v0, Lcom/windmill/gromore/q;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNIAdapter;->d(Lcom/windmill/gromore/GroNIAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v6, v0, Lcom/windmill/gromore/q;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNIAdapter;->d(Lcom/windmill/gromore/GroNIAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v7, v0, Lcom/windmill/gromore/q;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNIAdapter;->d(Lcom/windmill/gromore/GroNIAdapter;)Lcom/windmill/gromore/q;

    move-result-object v0

    iget-object v8, v0, Lcom/windmill/gromore/q;->i:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->setGroC2sPriceInfo(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadBiddingSuccess(Lcom/windmill/sdk/models/BidPrice;)V

    :cond_3
    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    invoke-virtual {p1}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadSuccess()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ads is not null but all isExpress "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/gromore/GroNIAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/windmill/gromore/GroNIAdapter$1;->b:Lcom/windmill/gromore/GroNIAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ads is null or size be 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/gromore/GroNIAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomInterstitialAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
