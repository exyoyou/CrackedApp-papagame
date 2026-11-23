.class public final Lcom/windmill/gdt/e;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field public a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/windmill/sdk/natives/WMVideoOption;

.field private d:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private e:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

.field private f:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

.field private g:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

.field private h:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

.field private l:Landroid/widget/FrameLayout$LayoutParams;

.field private m:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;


# direct methods
.method public constructor <init>(Lcom/qq/e/ads/nativ/NativeUnifiedADData;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            "Lcom/windmill/sdk/custom/WMCustomNativeAdapter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    new-instance v0, Lcom/windmill/gdt/e$4;

    invoke-direct {v0, p0}, Lcom/windmill/gdt/e$4;-><init>(Lcom/windmill/gdt/e;)V

    iput-object v0, p0, Lcom/windmill/gdt/e;->m:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {v0, p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    iput-object v0, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    iget-object v1, p0, Lcom/windmill/gdt/e;->m:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    invoke-virtual {v0, v1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setVideoInfoFormChannel(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;)V

    iput-object p1, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    iput-object p2, p0, Lcom/windmill/gdt/e;->h:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iput-object p3, p0, Lcom/windmill/gdt/e;->i:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/windmill/gdt/e;->j:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/windmill/sdk/natives/WMImage;
    .locals 1

    .line 1
    new-instance v0, Lcom/windmill/gdt/e$3;

    invoke-direct {v0, p0, p1}, Lcom/windmill/gdt/e$3;-><init>(Lcom/windmill/gdt/e;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/gdt/e;->d:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method

.method static synthetic b(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/custom/WMCustomNativeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/e;->h:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/e;->g:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/e;->f:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    return-object p0
.end method

.method static synthetic e(Lcom/windmill/gdt/e;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

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

    iget-object p1, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {p1, p2, p3}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindImageViews(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public final bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_2

    new-instance v0, Lcom/qq/e/ads/nativ/MediaView;

    invoke-direct {v0, p1}, Lcom/qq/e/ads/nativ/MediaView;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/windmill/gdt/e;->j:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance p1, Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;-><init>()V

    iget-object p2, p0, Lcom/windmill/gdt/e;->c:Lcom/windmill/sdk/natives/WMVideoOption;

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMVideoOption;->isNeedCoverImage()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedCoverImage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    iget-object p2, p0, Lcom/windmill/gdt/e;->c:Lcom/windmill/sdk/natives/WMVideoOption;

    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMVideoOption;->isNeedProgressBar()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedProgressBar(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    iget-object p2, p0, Lcom/windmill/gdt/e;->c:Lcom/windmill/sdk/natives/WMVideoOption;

    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMVideoOption;->isEnableDetailPage()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    iget-object p2, p0, Lcom/windmill/gdt/e;->c:Lcom/windmill/sdk/natives/WMVideoOption;

    invoke-virtual {p2}, Lcom/windmill/sdk/natives/WMVideoOption;->isEnableUserControl()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedCoverImage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setNeedProgressBar(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableDetailPage(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setEnableUserControl(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    :goto_2
    iget-object p2, p0, Lcom/windmill/gdt/e;->i:Ljava/util/Map;

    if-eqz p2, :cond_a

    const-string v2, "autoPlayPolicy"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lcom/windmill/gdt/e;->i:Ljava/util/Map;

    const-string v3, "autoPlayMuted"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/windmill/gdt/e;->i:Ljava/util/Map;

    const-string v4, "detailPageMuted"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    const-string v4, "WIFI"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    goto :goto_3

    :cond_4
    const-string v4, "ALWAYS"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    goto :goto_3

    :cond_5
    const-string v4, "NEVER"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayPolicy(I)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    :cond_6
    :goto_3
    move-object p2, v2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v4, "0"

    const-string v6, "1"

    if-nez p2, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p1, v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setAutoPlayMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    :cond_8
    :goto_4
    move-object p2, v3

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, v1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    goto :goto_5

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1, v5}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->setDetailPageMuted(Z)Lcom/qq/e/ads/cfg/VideoOption$Builder;

    :cond_a
    :goto_5
    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->build()Lcom/qq/e/ads/cfg/VideoOption;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    new-instance v1, Lcom/windmill/gdt/e$5;

    invoke-direct {v1, p0}, Lcom/windmill/gdt/e$5;-><init>(Lcom/windmill/gdt/e;)V

    invoke-interface {p2, v0, p1, v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindMediaView(Lcom/qq/e/ads/nativ/MediaView;Lcom/qq/e/ads/cfg/VideoOption;Lcom/qq/e/ads/nativ/NativeADMediaListener;)V

    :cond_b
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

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/windmill/gdt/e;->e:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/windmill/gdt/e;->l:Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->bindAdToView(Landroid/content/Context;Lcom/qq/e/ads/nativ/widget/NativeAdContainer;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    new-instance p2, Lcom/windmill/gdt/e$1;

    invoke-direct {p2, p0}, Lcom/windmill/gdt/e$1;-><init>(Lcom/windmill/gdt/e;)V

    invoke-interface {p1, p2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setNativeAdEventListener(Lcom/qq/e/ads/nativ/NativeADEventListener;)V

    :cond_0
    if-eqz p5, :cond_1

    new-instance p1, Lcom/windmill/gdt/e$2;

    invoke-direct {p1, p0}, Lcom/windmill/gdt/e$2;-><init>(Lcom/windmill/gdt/e;)V

    invoke-virtual {p5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    .locals 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/gdt/e;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    new-instance v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-direct {v2, p1}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/windmill/gdt/e;->e:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/windmill/gdt/e;->e:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/windmill/gdt/e;->getAdPatternType()I

    move-result p2

    invoke-interface {p3, p1, p2}, Lcom/windmill/sdk/natives/WMNativeAdRender;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/windmill/gdt/e;->e:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/windmill/gdt/e;->e:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p3, p1, p0}, Lcom/windmill/sdk/natives/WMNativeAdRender;->renderAdView(Landroid/view/View;Lcom/windmill/sdk/natives/WMNativeAdData;)V

    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 2

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/gdt/e;->d:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    iget-object v1, p0, Lcom/windmill/gdt/e;->e:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/windmill/sdk/utils/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    iput-object v0, p0, Lcom/windmill/gdt/e;->e:Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    :cond_1
    iput-object v0, p0, Lcom/windmill/gdt/e;->f:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    iput-object v0, p0, Lcom/windmill/gdt/e;->g:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    iput-object v0, p0, Lcom/windmill/gdt/e;->h:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    iget-object v1, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->destroy()V

    iput-object v0, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    :cond_2
    iput-object v0, p0, Lcom/windmill/gdt/e;->m:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 5

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAdPatternType()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    return v4

    :cond_1
    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2

    :cond_4
    return v1
.end method

.method public final getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;
    .locals 13

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppMiitInfo()Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v12, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPackageSizeBytes()J

    move-result-wide v4

    const-string v6, ""

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getAuthorName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPrivacyAgreement()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getPermissionsUrl()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADAppMiitInfo;->getDescriptionUrl()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isWeChatCanvasAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u53bb\u5fae\u4fe1\u770b\u770b"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u6d4f\u89c8"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getAppStatus()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_2
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25,\u91cd\u65b0\u4e0b\u8f7d"

    return-object v0

    :cond_3
    const-string v0, "\u5b89\u88c5"

    return-object v0

    :cond_4
    const-string v0, "\u4e0b\u8f7d\u4e2d..."

    return-object v0

    :cond_5
    const-string v0, "\u542f\u52a8"

    return-object v0

    :cond_6
    const-string v0, "\u4e0b\u8f7d"

    return-object v0

    :cond_7
    :goto_0
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    return-object v0
.end method

.method public final getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
    .locals 2

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getCustomizeVideo()Lcom/qq/e/ads/nativ/CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/gdt/e$6;

    invoke-direct {v1, p0, v0}, Lcom/windmill/gdt/e$6;-><init>(Lcom/windmill/gdt/e;Lcom/qq/e/ads/nativ/CustomizeVideo;)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;

    move-result-object v0

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getDesc()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getIconUrl()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/windmill/gdt/e;->a(Ljava/lang/String;)Lcom/windmill/sdk/natives/WMImage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v2}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/windmill/gdt/e;->a(Ljava/lang/String;)Lcom/windmill/sdk/natives/WMImage;

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

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getImgList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->isAppAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getNetworkId()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->h:Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

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

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getVideoDuration()J
    .locals 2

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->getVideoDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getVideoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isExpressAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isNativeDrawAd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/windmill/gdt/e;->j:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/LADI;->isValid()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final pauseVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->pauseVideo()V

    :cond_0
    return-void
.end method

.method public final render()V
    .locals 0

    return-void
.end method

.method public final resumeVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->resumeVideo()V

    :cond_0
    return-void
.end method

.method public final setAdLogoParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/e;->l:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public final setDislikeInteractionCallback(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/windmill/gdt/e;->f:Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;

    :cond_0
    return-void
.end method

.method public final setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/gdt/e;->g:Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;

    :cond_0
    return-void
.end method

.method public final setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/gdt/e;->d:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    iput-object v0, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setNativeADMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    :goto_0
    iget-object p1, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    iget-object v0, p0, Lcom/windmill/gdt/e;->m:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;

    invoke-virtual {p1, v0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setVideoInfoFormChannel(Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper$IVideoInfoFormChannel;)V

    :cond_1
    return-void
.end method

.method public final setMediaViewOption(Lcom/windmill/sdk/natives/WMVideoOption;)V
    .locals 0

    iput-object p1, p0, Lcom/windmill/gdt/e;->c:Lcom/windmill/sdk/natives/WMVideoOption;

    return-void
.end method

.method public final setVideoMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->setVideoMute(Z)V

    :cond_0
    return-void
.end method

.method public final setVideoProgressUpdateInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {v0, p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    iput-object v0, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    :cond_0
    iget-object v0, p0, Lcom/windmill/gdt/e;->k:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setVideoProgressUpdateInterval(I)V

    return-void
.end method

.method public final startVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->startVideo()V

    :cond_0
    return-void
.end method

.method public final stopVideo()V
    .locals 1

    iget-object v0, p0, Lcom/windmill/gdt/e;->a:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/qq/e/ads/nativ/NativeUnifiedADData;->stopVideo()V

    :cond_0
    return-void
.end method
