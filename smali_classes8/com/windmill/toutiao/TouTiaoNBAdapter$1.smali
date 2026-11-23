.class final Lcom/windmill/toutiao/TouTiaoNBAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/TouTiaoNBAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/windmill/toutiao/TouTiaoNBAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/TouTiaoNBAdapter;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    iput-object p2, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

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

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

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

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-static {v0, v1}, Lcom/windmill/toutiao/TouTiaoNBAdapter;->a(Lcom/windmill/toutiao/TouTiaoNBAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    new-instance v6, Lcom/windmill/toutiao/e;

    iget-object v0, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-static {v0}, Lcom/windmill/toutiao/TouTiaoNBAdapter;->a(Lcom/windmill/toutiao/TouTiaoNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-virtual {v1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/windmill/toutiao/e;-><init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd;I)V

    new-instance v0, Lcom/windmill/sdk/widget/BannerViewManager;

    iget-object v3, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoNBAdapter;->b(Lcom/windmill/toutiao/TouTiaoNBAdapter;)I

    move-result v4

    iget-object v1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    invoke-static {v1}, Lcom/windmill/toutiao/TouTiaoNBAdapter;->c(Lcom/windmill/toutiao/TouTiaoNBAdapter;)I

    move-result v5

    iget-object v7, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->c:Ljava/util/Map;

    new-instance v8, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;

    invoke-direct {v8, p0, p1}, Lcom/windmill/toutiao/TouTiaoNBAdapter$1$1;-><init>(Lcom/windmill/toutiao/TouTiaoNBAdapter$1;Ljava/util/List;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/windmill/sdk/widget/BannerViewManager;-><init>(Landroid/content/Context;IILcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    invoke-virtual {v0}, Lcom/windmill/sdk/widget/BannerViewManager;->render()V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->d:Lcom/windmill/toutiao/TouTiaoNBAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ads is null or size be 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/toutiao/TouTiaoNBAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
