.class public final Lcom/windmill/sigmob/e;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field private final a:Lcom/sigmob/windad/natives/WindNativeAdData;

.field private final b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field private c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

.field private e:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;


# direct methods
.method public constructor <init>(Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Lcom/sigmob/windad/natives/WindNativeAdData;)V
    .locals 1

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    new-instance v0, Lcom/windmill/sigmob/e$1;

    invoke-direct {v0, p0}, Lcom/windmill/sigmob/e$1;-><init>(Lcom/windmill/sigmob/e;)V

    iput-object v0, p0, Lcom/windmill/sigmob/e;->e:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    iput-object p1, p0, Lcom/windmill/sigmob/e;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iput-object p2, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    new-instance p1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {p1, p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    iput-object p1, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    iget-object p2, p0, Lcom/windmill/sigmob/e;->e:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    invoke-virtual {p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setVideoInfoFormChannel(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;)V

    return-void
.end method

.method static synthetic a(Lcom/windmill/sigmob/e;)Lcom/sigmob/windad/natives/WindNativeAdData;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/e;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/e;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/sigmob/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

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

    iget-object p1, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    invoke-interface {p1, p2, p3}, Lcom/sigmob/windad/natives/WindNativeAdData;->bindImageViews(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object p1, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/windmill/sigmob/e$4;

    invoke-direct {v0, p0}, Lcom/windmill/sigmob/e$4;-><init>(Lcom/windmill/sigmob/e;)V

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v5, Lcom/windmill/sigmob/e$2;

    invoke-direct {v5, p0}, Lcom/windmill/sigmob/e$2;-><init>(Lcom/windmill/sigmob/e;)V

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
    invoke-virtual {p0}, Lcom/windmill/sigmob/e;->getAdPatternType()I

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/sigmob/e;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    iget-object v1, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->destroy()V

    iput-object v0, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    :cond_1
    iput-object v0, p0, Lcom/windmill/sigmob/e;->e:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    const-string v1, ""

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    new-instance v4, Lcom/windmill/sigmob/e$3;

    invoke-direct {v4, p0, v3}, Lcom/windmill/sigmob/e$3;-><init>(Lcom/windmill/sigmob/e;Lcom/sigmob/sdk/base/models/SigImage;)V

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public final getInteractionWidgetView(IIILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getSaasOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkId()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->b:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v0

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoDuration()J
    .locals 4

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getVideoDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

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

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->resumeVideo()V

    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/windmill/sigmob/e$5;

    invoke-direct {v1, p0, p2}, Lcom/windmill/sigmob/e$5;-><init>(Lcom/windmill/sigmob/e;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V

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
    iput-object p1, p0, Lcom/windmill/sigmob/e;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    iput-object v0, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setNativeADMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    :goto_0
    iget-object p1, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    iget-object v0, p0, Lcom/windmill/sigmob/e;->e:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setVideoInfoFormChannel(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;)V

    :cond_1
    return-void
.end method

.method public final setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/windad/natives/WindNativeAdData;->setVideoMute(Z)V

    return-void
.end method

.method public final setVideoProgressUpdateInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {v0, p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    iput-object v0, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    :cond_0
    iget-object v0, p0, Lcom/windmill/sigmob/e;->d:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setVideoProgressUpdateInterval(I)V

    return-void
.end method

.method public final startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->startVideo()V

    return-void
.end method

.method public final stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/sigmob/e;->a:Lcom/sigmob/windad/natives/WindNativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/windad/natives/WindNativeAdData;->stopVideo()V

    return-void
.end method
