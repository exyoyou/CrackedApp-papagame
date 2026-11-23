.class public final Lcom/windmill/baidu/b;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

.field private b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private c:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/sdk/api/ExpressResponse;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    iput-object p1, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    iput-object p2, p0, Lcom/windmill/baidu/b;->c:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/windmill/baidu/BdExpressAdData$1;

    invoke-direct {v0, p0, p2}, Lcom/windmill/baidu/BdExpressAdData$1;-><init>(Lcom/windmill/baidu/b;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    invoke-interface {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setInteractionListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressInteractionListener;)V

    iget-object p1, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    new-instance p2, Lcom/windmill/baidu/BdExpressAdData$2;

    invoke-direct {p2, p0}, Lcom/windmill/baidu/BdExpressAdData$2;-><init>(Lcom/windmill/baidu/b;)V

    invoke-interface {p1, p2}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setAdPrivacyListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressAdDownloadWindowListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/windmill/baidu/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/baidu/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/baidu/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 3

    iget-object v0, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getStyleType()I

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
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

    iget-object v0, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getExpressAdView()Landroid/view/View;

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

    iget-object v0, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->getAdActionType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNetworkId()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/b;->c:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

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

    const/4 v0, 0x0

    return v0
.end method

.method public final render()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->render()V

    :cond_0
    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->bindInteractionActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    new-instance v0, Lcom/windmill/baidu/BdExpressAdData$3;

    invoke-direct {v0, p0, p2}, Lcom/windmill/baidu/BdExpressAdData$3;-><init>(Lcom/windmill/baidu/b;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V

    invoke-interface {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setAdDislikeListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressDislikeListener;)V

    iget-object p1, p0, Lcom/windmill/baidu/b;->a:Lcom/baidu/mobads/sdk/api/ExpressResponse;

    new-instance v0, Lcom/windmill/baidu/BdExpressAdData$4;

    invoke-direct {v0, p0, p2}, Lcom/windmill/baidu/BdExpressAdData$4;-><init>(Lcom/windmill/baidu/b;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V

    invoke-interface {p1, v0}, Lcom/baidu/mobads/sdk/api/ExpressResponse;->setAdCloseListener(Lcom/baidu/mobads/sdk/api/ExpressResponse$ExpressCloseListener;)V

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

    iput-object p1, p0, Lcom/windmill/baidu/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 0

    return-void
.end method
