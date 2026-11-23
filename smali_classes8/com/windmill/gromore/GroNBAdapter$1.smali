.class final Lcom/windmill/gromore/GroNBAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/gromore/GroNBAdapter;->loadAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/windmill/gromore/GroNBAdapter;


# direct methods
.method constructor <init>(Lcom/windmill/gromore/GroNBAdapter;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    iput-object p2, p0, Lcom/windmill/gromore/GroNBAdapter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/gromore/GroNBAdapter$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/windmill/gromore/GroNBAdapter$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

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

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/gromore/GroAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method

.method public final onFeedAdLoad(Ljava/util/List;)V
    .locals 10
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

    const-class v1, Lcom/windmill/gromore/GroNBAdapter$1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onFeedAdLoad()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-static {v0, p1}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;Lcom/bytedance/sdk/openadsdk/TTFeedAd;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    :try_start_0
    iget-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationNativeManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "isExpress"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ads is not match rendering method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/gromore/GroNBAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void

    :cond_2
    new-instance v7, Lcom/windmill/gromore/h;

    iget-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {p1}, Lcom/windmill/gromore/GroNBAdapter;->a(Lcom/windmill/gromore/GroNBAdapter;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    invoke-direct {v7, p1, v0}, Lcom/windmill/gromore/h;-><init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd;I)V

    new-instance p1, Lcom/windmill/sdk/widget/BannerViewManager;

    iget-object v4, p0, Lcom/windmill/gromore/GroNBAdapter$1;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->b(Lcom/windmill/gromore/GroNBAdapter;)I

    move-result v5

    iget-object v0, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    invoke-static {v0}, Lcom/windmill/gromore/GroNBAdapter;->c(Lcom/windmill/gromore/GroNBAdapter;)I

    move-result v6

    iget-object v8, p0, Lcom/windmill/gromore/GroNBAdapter$1;->c:Ljava/util/Map;

    new-instance v9, Lcom/windmill/gromore/GroNBAdapter$1$1;

    invoke-direct {v9, p0}, Lcom/windmill/gromore/GroNBAdapter$1$1;-><init>(Lcom/windmill/gromore/GroNBAdapter$1;)V

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/windmill/sdk/widget/BannerViewManager;-><init>(Landroid/content/Context;IILcom/windmill/sdk/natives/WMNativeAdData;Ljava/util/Map;Lcom/windmill/sdk/widget/ViewInteractionListener;)V

    invoke-virtual {p1}, Lcom/windmill/sdk/widget/BannerViewManager;->render()V

    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/windmill/gromore/GroNBAdapter$1;->d:Lcom/windmill/gromore/GroNBAdapter;

    new-instance v0, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ads is null or size be 0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/windmill/gromore/GroNBAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/custom/WMCustomBannerAdapter;->callLoadFail(Lcom/windmill/sdk/base/WMAdapterError;)V

    return-void
.end method
