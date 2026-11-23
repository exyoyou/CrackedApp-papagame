.class final Lcom/windmill/toutiao/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/toutiao/j;->a(Landroid/content/Context;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field final synthetic c:Lcom/windmill/toutiao/j;


# direct methods
.method constructor <init>(Lcom/windmill/toutiao/j;Ljava/lang/String;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/toutiao/j$1;->c:Lcom/windmill/toutiao/j;

    iput-object p2, p0, Lcom/windmill/toutiao/j$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/toutiao/j$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawFeedAdLoad(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;",
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

    const-string v2, "-------------onFeedAdLoad-----------"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    new-instance v3, Lcom/windmill/toutiao/h;

    iget-object v4, p0, Lcom/windmill/toutiao/j$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    invoke-direct {v3, v2, v4}, Lcom/windmill/toutiao/h;-><init>(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    iget-object v4, p0, Lcom/windmill/toutiao/j$1;->c:Lcom/windmill/toutiao/j;

    iget-object v4, v4, Lcom/windmill/toutiao/j;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_1

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getMediaExtraInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "price"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/windmill/toutiao/j$1;->c:Lcom/windmill/toutiao/j;

    iget-object v2, v1, Lcom/windmill/toutiao/j;->b:Lcom/windmill/toutiao/f$a;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/windmill/toutiao/j;->a:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Lcom/windmill/toutiao/f$a;->onNativeAdLoadSuccess(Ljava/util/List;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/windmill/toutiao/j$1;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->callLoadSuccess(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/windmill/toutiao/j$1;->c:Lcom/windmill/toutiao/j;

    iget-object p1, p1, Lcom/windmill/toutiao/j;->b:Lcom/windmill/toutiao/f$a;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/windmill/sdk/base/WMAdapterError;

    sget-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ads is null or size be 0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/windmill/toutiao/j$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/windmill/toutiao/j$1;->c:Lcom/windmill/toutiao/j;

    iget-object v0, v0, Lcom/windmill/toutiao/j;->b:Lcom/windmill/toutiao/f$a;

    invoke-interface {v0, p1}, Lcom/windmill/toutiao/f$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_6
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/windmill/toutiao/j$1;->c:Lcom/windmill/toutiao/j;

    iget-object v0, v0, Lcom/windmill/toutiao/j;->b:Lcom/windmill/toutiao/f$a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/sdk/base/WMAdapterError;

    invoke-static {p2}, Lcom/windmill/toutiao/TouTiaoAdapterProxy;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " codeId "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/windmill/toutiao/j$1;->a:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, v2, p2}, Lcom/windmill/sdk/base/WMAdapterError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/windmill/toutiao/f$a;->onNativeAdFailToLoad(Lcom/windmill/sdk/base/WMAdapterError;)V

    :cond_0
    return-void
.end method
