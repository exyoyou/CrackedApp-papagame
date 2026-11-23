.class public final Lcom/windmill/baidu/f;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/mobads/sdk/api/NativeResponse;

.field private b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

.field private d:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

.field private g:Lcom/baidu/mobads/sdk/api/XNativeView;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/api/NativeResponse;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    iput-object p2, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    iput p3, p0, Lcom/windmill/baidu/f;->i:I

    iput-object p4, p0, Lcom/windmill/baidu/f;->h:Ljava/util/Map;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBaiduLogoUrl()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/windmill/baidu/f$1;

    invoke-direct {p3, p0}, Lcom/windmill/baidu/f$1;-><init>(Lcom/windmill/baidu/f;)V

    invoke-virtual {p1, p2, p3}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/windmill/baidu/f;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/baidu/f;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/windmill/sdk/natives/WMImage;
    .locals 1

    .line 2
    new-instance v0, Lcom/windmill/baidu/f$3;

    invoke-direct {v0, p0, p1}, Lcom/windmill/baidu/f$3;-><init>(Lcom/windmill/baidu/f;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/windmill/baidu/f;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/windmill/baidu/f;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/baidu/f;)Lcom/baidu/mobads/sdk/api/NativeResponse;
    .locals 0

    iget-object p0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/baidu/f;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/baidu/f;->f:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/baidu/f;)Lcom/baidu/mobads/sdk/api/XNativeView;
    .locals 0

    iget-object p0, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    return-object p0
.end method

.method static synthetic e(Lcom/windmill/baidu/f;)Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;
    .locals 0

    iget-object p0, p0, Lcom/windmill/baidu/f;->d:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    return-object p0
.end method

.method static synthetic f(Lcom/windmill/baidu/f;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/baidu/f;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    return-object p0
.end method


# virtual methods
.method public final bindImageViews(Landroid/content/Context;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/utils/ImageManager;->load(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->placeholder(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->error(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object p1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->into(Landroid/widget/ImageView;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/czhj/sdk/common/utils/ImageManager;->load(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->placeholder(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->error(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->into(Landroid/widget/ImageView;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_5

    const/high16 v0, -0x1000000

    if-eqz p2, :cond_1

    new-instance v1, Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-direct {v1, p1}, Lcom/baidu/mobads/sdk/api/XNativeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/XNativeView;->setShowProgress(Z)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    const v1, -0x777778

    invoke-virtual {p1, v1}, Lcom/baidu/mobads/sdk/api/XNativeView;->setProgressBarColor(I)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setProgressBackgroundColor(I)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/XNativeView;->setProgressHeightInDp(I)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeItem(Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->h:Ljava/util/Map;

    if-eqz p1, :cond_4

    const-string v0, "autoPlayMuted"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/windmill/baidu/f;->h:Ljava/util/Map;

    const-string v1, "showDownloadDialog"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p1, v1}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    :goto_0
    if-eqz v0, :cond_3

    const-string p1, "1"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/XNativeView;->setUseDownloadFrame(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p1, v1}, Lcom/baidu/mobads/sdk/api/XNativeView;->setUseDownloadFrame(Z)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    new-instance p2, Lcom/windmill/baidu/BdNSIAdData$7;

    invoke-direct {p2, p0}, Lcom/windmill/baidu/BdNSIAdData$7;-><init>(Lcom/windmill/baidu/f;)V

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeViewClickListener(Lcom/baidu/mobads/sdk/api/XNativeView$INativeViewClickListener;)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    new-instance p2, Lcom/windmill/baidu/BdNSIAdData$8;

    invoke-direct {p2, p0}, Lcom/windmill/baidu/BdNSIAdData$8;-><init>(Lcom/windmill/baidu/f;)V

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeVideoListener(Lcom/baidu/mobads/sdk/api/INativeVideoListener;)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/XNativeView;->render()V

    :cond_5
    return-void
.end method

.method public final bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 1
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

    iget-object p1, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/windmill/baidu/BdNSIAdData$2;

    invoke-direct {v0, p0}, Lcom/windmill/baidu/BdNSIAdData$2;-><init>(Lcom/windmill/baidu/f;)V

    invoke-interface {p1, p2, p3, p4, v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;)V

    iget-object p1, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    new-instance p2, Lcom/windmill/baidu/BdNSIAdData$3;

    invoke-direct {p2, p0}, Lcom/windmill/baidu/BdNSIAdData$3;-><init>(Lcom/windmill/baidu/f;)V

    invoke-interface {p1, p2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->setAdPrivacyListener(Lcom/baidu/mobads/sdk/api/NativeResponse$AdPrivacyListener;)V

    if-eqz p5, :cond_0

    new-instance p1, Lcom/windmill/baidu/f$2;

    invoke-direct {p1, p0}, Lcom/windmill/baidu/f$2;-><init>(Lcom/windmill/baidu/f;)V

    invoke-virtual {p5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/windmill/baidu/f;->getAdPatternType()I

    move-result v0

    invoke-interface {p3, p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdRender;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/windmill/sdk/natives/WMNativeAdRender;->renderAdView(Landroid/view/View;Lcom/windmill/sdk/natives/WMNativeAdData;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/baidu/f;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/windmill/baidu/f;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    iput-object v1, p0, Lcom/windmill/baidu/f;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    iput-object v1, p0, Lcom/windmill/baidu/f;->d:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 2

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;
    .locals 13

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_0

    new-instance v12, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBrandName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppSize()J

    move-result-wide v4

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPackage()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPublisher()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPrivacyLink()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPermissionLink()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppFunctionLink()Ljava/lang/String;

    move-result-object v11

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCTAText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getActButtonString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDownloadStatus()I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u4e2d\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x65

    if-ne v1, v2, :cond_1

    const-string v0, "\u70b9\u51fb\u5b89\u88c5"

    return-object v0

    :cond_1
    const/16 v2, 0x66

    if-ne v1, v2, :cond_2

    const-string v0, "\u7ee7\u7eed\u4e0b\u8f7d"

    return-object v0

    :cond_2
    const/16 v2, 0x67

    if-ne v1, v2, :cond_3

    const-string v0, "\u70b9\u51fb\u542f\u52a8"

    return-object v0

    :cond_3
    const/16 v2, 0x68

    if-ne v1, v2, :cond_4

    const-string v0, "\u91cd\u65b0\u4e0b\u8f7d"

    return-object v0

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "\u70b9\u51fb\u4e0b\u8f7d"

    return-object v0

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "\u83b7\u53d6\u8be6\u60c5"

    return-object v0
.end method

.method public final getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
    .locals 2

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getCustomizeMediaPlayer()Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/baidu/f$4;

    invoke-direct {v1, p0, v0}, Lcom/windmill/baidu/f$4;-><init>(Lcom/windmill/baidu/f;Lcom/baidu/mobads/sdk/api/NativeResponse$CustomizeMediaPlayer;)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;

    move-result-object v0

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getExpressAdView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getImageList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/windmill/sdk/natives/WMImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/windmill/baidu/f;->a(Ljava/lang/String;)Lcom/windmill/sdk/natives/WMImage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v2}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/windmill/baidu/f;->a(Ljava/lang/String;)Lcom/windmill/sdk/natives/WMImage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getImageUrlList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInteractionType()I
    .locals 3

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

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

    iget v0, p0, Lcom/windmill/baidu/f;->i:I

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

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

    iget-object v0, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->pause()V

    :cond_0
    return-void
.end method

.method public final render()V
    .locals 0

    return-void
.end method

.method public final renderShakeView(IILcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/windmill/baidu/f;->a:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/baidu/BdNSIAdData$6;

    invoke-direct {v1, p0, p3}, Lcom/windmill/baidu/BdNSIAdData$6;-><init>(Lcom/windmill/baidu/f;Lcom/windmill/sdk/natives/WMNativeAdData$AdShakeViewListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->renderShakeView(IILcom/baidu/mobads/sdk/api/NativeResponse$AdShakeViewListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->resume()V

    :cond_0
    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/windmill/baidu/f;->d:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    :cond_0
    return-void
.end method

.method public final setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/baidu/f;->f:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    :cond_0
    return-void
.end method

.method public final setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/baidu/f;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/baidu/f;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    :cond_0
    return-void
.end method

.method public final setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    :cond_0
    return-void
.end method

.method public final startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->render()V

    :cond_0
    return-void
.end method

.method public final stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/baidu/f;->g:Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->stop()V

    :cond_0
    return-void
.end method
