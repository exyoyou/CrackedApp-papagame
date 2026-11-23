.class public final Lcom/windmill/kuaishou/h;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field public a:Lcom/kwad/sdk/api/KsNativeAd;

.field b:Z

.field private c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            "Lcom/kwad/sdk/api/KsAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

.field private f:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

.field private g:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

.field private h:Landroid/graphics/Bitmap;

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsNativeAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            "Lcom/windmill/sdk/custom/WMCustomNativeAdapter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/windmill/kuaishou/h;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/windmill/kuaishou/h;->b:Z

    iput-boolean v0, p0, Lcom/windmill/kuaishou/h;->j:Z

    iput-object p1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result v1

    iput v1, p0, Lcom/windmill/kuaishou/h;->k:I

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_2

    :try_start_0
    const-string v2, "autoPlayMuted"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/windmill/kuaishou/h;->b:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/windmill/kuaishou/h;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    const-string v2, "showDownloadDialog"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string v2, "1"

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iput-boolean v1, p0, Lcom/windmill/kuaishou/h;->j:Z

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/windmill/kuaishou/h;->j:Z

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/windmill/sdk/WindMillAd;->sharedAds()Lcom/windmill/sdk/WindMillAd;

    move-result-object p3

    invoke-virtual {p3}, Lcom/windmill/sdk/WindMillAd;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object p3

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdSourceLogoUrl(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/windmill/kuaishou/h$1;

    invoke-direct {v0, p0}, Lcom/windmill/kuaishou/h$1;-><init>(Lcom/windmill/kuaishou/h;)V

    invoke-virtual {p3, p1, v0}, Lcom/czhj/sdk/common/utils/ImageManager;->getBitmap(Ljava/lang/String;Lcom/czhj/sdk/common/utils/ImageManager$BitmapLoadedListener;)V

    :cond_5
    new-instance p1, Lcom/windmill/kuaishou/h$2;

    invoke-direct {p1, p0, p2}, Lcom/windmill/kuaishou/h$2;-><init>(Lcom/windmill/kuaishou/h;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    iput-object p1, p0, Lcom/windmill/kuaishou/h;->g:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/windmill/kuaishou/h;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/windmill/kuaishou/h;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/windmill/kuaishou/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/kuaishou/h;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/kuaishou/h;)Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/h;->f:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/kuaishou/h;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/h;->e:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/kuaishou/h;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/windmill/kuaishou/h;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final bindImageViews(Landroid/content/Context;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/api/KsImage;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object p1

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v0

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

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/api/KsImage;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsImage;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v3

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/czhj/sdk/common/utils/ImageManager;->load(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->placeholder(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->error(I)Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;

    move-result-object v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/czhj/sdk/common/utils/ImageManager$RequestCreatorRunnable;->into(Landroid/widget/ImageView;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    iget-object p1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/windmill/kuaishou/h$5;

    invoke-direct {v0, p0}, Lcom/windmill/kuaishou/h$5;-><init>(Lcom/windmill/kuaishou/h;)V

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsNativeAd;->setVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/windmill/kuaishou/h;->i:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final bindViewForInteraction(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 7
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

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-boolean v5, p0, Lcom/windmill/kuaishou/h;->j:Z

    if-eqz v5, :cond_0

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-boolean v5, p0, Lcom/windmill/kuaishou/h;->j:Z

    if-eqz v5, :cond_2

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_2
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_3
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p4, p0, Lcom/windmill/kuaishou/h;->l:Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/windmill/kuaishou/h;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/Activity;

    goto :goto_4

    :cond_4
    instance-of p4, p1, Landroid/app/Activity;

    if-eqz p4, :cond_5

    move-object p4, p1

    check-cast p4, Landroid/app/Activity;

    goto :goto_4

    :cond_5
    const/4 p4, 0x0

    :goto_4
    new-instance v1, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    invoke-direct {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;-><init>()V

    iget-boolean v5, p0, Lcom/windmill/kuaishou/h;->b:Z

    invoke-virtual {v1, v5}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->videoSoundEnable(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->dataFlowAutoStart(Z)Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsAdVideoPlayConfig$Builder;->build()Lcom/kwad/sdk/api/KsAdVideoPlayConfig;

    move-result-object v1

    iget-object v3, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v3, p1, v1}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoView(Landroid/content/Context;Lcom/kwad/sdk/api/KsAdVideoPlayConfig;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/windmill/kuaishou/h;->i:Ljava/lang/ref/WeakReference;

    :cond_6
    if-eqz p4, :cond_9

    if-eqz p1, :cond_8

    iget-boolean p3, p0, Lcom/windmill/kuaishou/h;->j:Z

    if-eqz p3, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_5

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_5
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object p1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/windmill/kuaishou/h;->g:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    invoke-interface {p1, p4, p2, v0, p3}, Lcom/kwad/sdk/api/KsNativeAd;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/Map;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    goto :goto_6

    :cond_9
    if-eqz p1, :cond_a

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p4, p0, Lcom/windmill/kuaishou/h;->g:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    invoke-interface {p1, p2, p3, p4}, Lcom/kwad/sdk/api/KsNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V

    :goto_6
    if-eqz p5, :cond_b

    new-instance p1, Lcom/windmill/kuaishou/h$3;

    invoke-direct {p1, p0}, Lcom/windmill/kuaishou/h$3;-><init>(Lcom/windmill/kuaishou/h;)V

    invoke-virtual {p5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public final connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/kuaishou/h;->l:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/windmill/kuaishou/h;->getAdPatternType()I

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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    iget-object v1, p0, Lcom/windmill/kuaishou/h;->h:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/windmill/kuaishou/h;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v0, p0, Lcom/windmill/kuaishou/h;->h:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/windmill/kuaishou/h;->e:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    iput-object v0, p0, Lcom/windmill/kuaishou/h;->g:Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;

    iput-object v0, p0, Lcom/windmill/kuaishou/h;->f:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 3

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getMaterialType()I

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

.method public final getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;
    .locals 13

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    new-instance v12, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppPackageSize()J

    move-result-wide v4

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getCorporationName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppPrivacyUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getPermissionInfo()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getPermissionInfoUrl()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getIntroductionInfoUrl()Ljava/lang/String;

    move-result-object v11

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCTAText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getActionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getActionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    return-object v0

    :cond_1
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public final getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/windmill/kuaishou/h$8;

    invoke-direct {v0, p0}, Lcom/windmill/kuaishou/h$8;-><init>(Lcom/windmill/kuaishou/h;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;

    move-result-object v0

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAdDescription()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

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

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v1}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/api/KsImage;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/windmill/kuaishou/h$4;

    invoke-direct {v4, p0, v3}, Lcom/windmill/kuaishou/h$4;-><init>(Lcom/windmill/kuaishou/h;Lcom/kwad/sdk/api/KsImage;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
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

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kwad/sdk/api/KsImage;

    invoke-interface {v3}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInteractionType()I
    .locals 2

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/windmill/kuaishou/h;->k:I

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getProductName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final getVideoCoverImage()Lcom/windmill/sdk/natives/WMImage;
    .locals 7

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoCoverImage()Lcom/kwad/sdk/api/KsImage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getHeight()I

    move-result v3

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getWidth()I

    move-result v4

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsImage;->isValid()Z

    move-result v6

    new-instance v0, Lcom/windmill/kuaishou/h$7;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/windmill/kuaishou/h$7;-><init>(Lcom/windmill/kuaishou/h;IILjava/lang/String;Z)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getVideoCoverImage()Lcom/windmill/sdk/natives/WMImage;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoDuration()J
    .locals 4

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getVideoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getVideoWidth()I

    move-result v0

    return v0
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

.method public final render()V
    .locals 0

    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/windmill/kuaishou/h;->f:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    :cond_0
    return-void
.end method

.method public final setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/windmill/kuaishou/h$6;

    invoke-direct {v0, p0, p1}, Lcom/windmill/kuaishou/h$6;-><init>(Lcom/windmill/kuaishou/h;Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsNativeAd;->setDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    iget-object p1, p0, Lcom/windmill/kuaishou/h;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/windmill/kuaishou/h;->a:Lcom/kwad/sdk/api/KsNativeAd;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/kuaishou/h;->c:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/kuaishou/h;->e:Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;

    :cond_0
    return-void
.end method
