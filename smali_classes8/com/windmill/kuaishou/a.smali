.class public final Lcom/windmill/kuaishou/a;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field public a:Lcom/kwad/sdk/api/KsFeedAd;

.field private b:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

.field private c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private d:Lcom/windmill/sdk/models/AdInfo;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    const-string v0, "KuaiShouExpressAdData"

    iput-object v0, p0, Lcom/windmill/kuaishou/a;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getAdInFo(Lcom/windmill/sdk/natives/WMNativeAdData;)Lcom/windmill/sdk/models/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/windmill/kuaishou/a;->d:Lcom/windmill/sdk/models/AdInfo;

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result p1

    iput p1, p0, Lcom/windmill/kuaishou/a;->e:I

    :cond_0
    iget-object p1, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/windmill/kuaishou/a$1;

    invoke-direct {v0, p0, p2}, Lcom/windmill/kuaishou/a$1;-><init>(Lcom/windmill/kuaishou/a;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsFeedAd;->setAdInteractionListener(Lcom/kwad/sdk/api/KsFeedAd$AdInteractionListener;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/windmill/kuaishou/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/a;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/a;->b:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/kuaishou/a;)Lcom/windmill/sdk/models/AdInfo;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/a;->d:Lcom/windmill/sdk/models/AdInfo;

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

    iput-object v0, p0, Lcom/windmill/kuaishou/a;->b:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    iput-object v0, p0, Lcom/windmill/kuaishou/a;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 3

    iget-object v0, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsFeedAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsFeedAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsFeedAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsFeedAd;->getMaterialType()I

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

    iget-object v0, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsFeedAd;->getFeedView(Landroid/content/Context;)Landroid/view/View;

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

    iget-object v0, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsFeedAd;->getInteractionType()I

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

    iget v0, p0, Lcom/windmill/kuaishou/a;->e:I

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

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
    .locals 2

    iget-object v0, p0, Lcom/windmill/kuaishou/a;->a:Lcom/kwad/sdk/api/KsFeedAd;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/kuaishou/a$2;

    invoke-direct {v1, p0}, Lcom/windmill/kuaishou/a$2;-><init>(Lcom/windmill/kuaishou/a;)V

    invoke-interface {v0, v1}, Lcom/kwad/sdk/api/KsFeedAd;->render(Lcom/kwad/sdk/api/KsFeedAd$AdRenderListener;)V

    :cond_0
    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/windmill/kuaishou/a;->b:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

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

    iput-object p1, p0, Lcom/windmill/kuaishou/a;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 0

    return-void
.end method
