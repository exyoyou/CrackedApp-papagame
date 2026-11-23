.class public final Lcom/windmill/sigmob/c;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field private final a:Lcom/sigmob/windad/natives/WindNativeAdData;

.field private final b:I

.field private c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private d:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/natives/WindNativeAdData;I)V
    .locals 0

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    iput p2, p0, Lcom/windmill/sigmob/c;->b:I

    iput-object p1, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-void
.end method

.method static synthetic a(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/c;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/sigmob/c;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/c;->d:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

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

    iget-object p1, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    invoke-interface {p1, p2, p3}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindImageViews(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object p1, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/windmill/sigmob/c$3;

    invoke-direct {v0, p0}, Lcom/windmill/sigmob/c$3;-><init>(Lcom/windmill/sigmob/c;)V

    invoke-interface {p1, p2, v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindMediaViewWithoutAppInfo(Landroid/view/ViewGroup;Lcom/sigmob/windad/natives/WindNativeAdData$NativeADMediaListener;)V

    return-void
.end method

.method public final bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 6
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

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v5, Lcom/windmill/sigmob/c$1;

    invoke-direct {v5, p0}, Lcom/windmill/sigmob/c$1;-><init>(Lcom/windmill/sigmob/c;)V

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/sigmob/windad/natives/NativeADEventListener;)V

    return-void
.end method

.method public final connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/windmill/sigmob/c;->getAdPatternType()I

    move-result v0

    invoke-interface {p3, p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdRender;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/windmill/sdk/natives/WMNativeAdRender;->renderAdView(Landroid/view/View;Lcom/windmill/sdk/natives/WMNativeAdData;)V

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/c;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/windmill/sigmob/c;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_1
    iput-object v1, p0, Lcom/windmill/sigmob/c;->d:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 3

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdPatternType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method public final getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;
    .locals 13

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getAdAppInfo()Lcom/sigmob/windad/natives/AdAppInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getAppSize()I

    move-result v2

    int-to-long v5, v2

    const-string v7, ""

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getAuthorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getPrivacyAgreementUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getPermissions()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getPermissionsUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/sigmob/windad/natives/AdAppInfo;->getDescriptionUrl()Ljava/lang/String;

    move-result-object v12

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getCTAText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    const-string v1, "\u83b7\u53d6\u8be6\u60c5"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getCTAText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExpressAdView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImageList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/SigImage;

    if-eqz v3, :cond_2

    new-instance v4, Lcom/windmill/sigmob/c$2;

    invoke-direct {v4, p0, v3}, Lcom/windmill/sigmob/c$2;-><init>(Lcom/windmill/sigmob/c;Lcom/sigmob/sdk/base/models/SigImage;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getImageUrlList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/SigImage;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/SigImage;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public final getMediaExtraOption()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getSaasOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getSaasOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/windmill/sigmob/c;->b:I

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isExpressAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isNativeDrawAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->pauseVideo()V

    return-void
.end method

.method public final render()V
    .locals 0

    return-void
.end method

.method public final resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->resumeVideo()V

    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/windmill/sigmob/c$4;

    invoke-direct {v1, p0, p2}, Lcom/windmill/sigmob/c$4;-><init>(Lcom/windmill/sigmob/c;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/sigmob/windad/natives/WindNativeAdData;->setDislikeInteractionCallback(Landroid/app/Activity;Lcom/sigmob/windad/natives/WindNativeAdData$DislikeInteractionCallback;)V

    return-void
.end method

.method public final setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 0

    return-void
.end method

.method public final setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/windmill/sigmob/c;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/windmill/sigmob/c;->d:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    return-void
.end method

.method public final startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->startVideo()V

    return-void
.end method

.method public final stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/c;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->stopVideo()V

    return-void
.end method
