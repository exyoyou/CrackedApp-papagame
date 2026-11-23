.class public final Lcom/windmill/gromore/e;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field public a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

.field private b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/windmill/gromore/e;->c:I

    iput-object p1, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result p1

    iput p1, p0, Lcom/windmill/gromore/e;->c:I

    :cond_0
    iget-object p1, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;->setCanInterruptVideoPlay(Z)V

    iget-object p1, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    new-instance v0, Lcom/windmill/gromore/e$1;

    invoke-direct {v0, p0}, Lcom/windmill/gromore/e$1;-><init>(Lcom/windmill/gromore/e;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;->setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V

    iget-object p1, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    new-instance v0, Lcom/windmill/gromore/e$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/windmill/gromore/e$2;-><init>(Lcom/windmill/gromore/e;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/windmill/gromore/q;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setExpressRenderListener(Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/windmill/gromore/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gromore/e;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method


# virtual methods
.method public final bindImageViews(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public final bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public final bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/gromore/e;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 5

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v1
.end method

.method public final getCTAText()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getExpressAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMImage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInteractionType()I
    .locals 3

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/windmill/gromore/e;->c:I

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final isExpressAd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isNativeDrawAd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final render()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->render()V

    :cond_0
    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/gromore/e$4;

    invoke-direct {v1, p0, p2}, Lcom/windmill/gromore/e$4;-><init>(Lcom/windmill/gromore/e;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public final setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 0

    return-void
.end method

.method public final setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/gromore/e;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gromore/e;->a:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/gromore/e$3;

    invoke-direct {v1, p0, p1}, Lcom/windmill/gromore/e$3;-><init>(Lcom/windmill/gromore/e;Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    :cond_0
    return-void
.end method
