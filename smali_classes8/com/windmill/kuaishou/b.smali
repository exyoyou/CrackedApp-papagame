.class public final Lcom/windmill/kuaishou/b;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field public a:Lcom/kwad/sdk/api/KsDrawAd;

.field private b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

.field private d:Lcom/windmill/sdk/models/AdInfo;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsDrawAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    iput-object p1, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/kuaishou/b;->d:Lcom/windmill/sdk/models/AdInfo;

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result p1

    iput p1, p0, Lcom/windmill/kuaishou/b;->e:I

    :cond_0
    iget-object p1, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/windmill/kuaishou/b$1;

    invoke-direct {v0, p0, p2}, Lcom/windmill/kuaishou/b$1;-><init>(Lcom/windmill/kuaishou/b;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsDrawAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/kuaishou/b;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/b;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

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

    iput-object v0, p0, Lcom/windmill/kuaishou/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    iput-object v0, p0, Lcom/windmill/kuaishou/b;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 3

    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd;->getMaterialType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x4

    return v0

    :cond_4
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
    .locals 2

    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsDrawAd;->getDrawView(Landroid/content/Context;)Landroid/view/View;

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
    .locals 2

    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/windmill/kuaishou/b;->e:I

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

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
    .locals 5

    iget-object v0, p0, Lcom/windmill/kuaishou/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsDrawAd;->getDrawView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/windmill/kuaishou/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    iget-object v2, p0, Lcom/windmill/kuaishou/b;->d:Lcom/windmill/sdk/models/AdInfo;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    iget-object v1, p0, Lcom/windmill/kuaishou/b;->d:Lcom/windmill/sdk/models/AdInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;->onADRenderSuccess(Lcom/windmill/sdk/models/AdInfo;Landroid/view/View;FF)V

    :cond_1
    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    return-void
.end method

.method public final setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 0

    return-void
.end method

.method public final setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/kuaishou/b;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/kuaishou/b;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    :cond_0
    return-void
.end method

.method public final setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/b;->a:Lcom/kwad/sdk/api/KsDrawAd;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/kwad/sdk/api/KsDrawAd;->setVideoSoundEnable(Z)V

    :cond_0
    return-void
.end method
