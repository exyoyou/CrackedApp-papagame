.class public final Lcom/windmill/toutiao/g;
.super Lcom/windmill/sdk/natives/WMNativeAdData;
.source "SourceFile"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

.field private b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/openadsdk/TTFeedAd;",
            "Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

.field private e:I

.field private f:Landroid/view/View$OnClickListener;

.field private g:J

.field private h:J

.field private i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTFeedAd;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V
    .locals 2

    invoke-direct {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/windmill/toutiao/g;->c:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/windmill/toutiao/g;->g:J

    iput-wide v0, p0, Lcom/windmill/toutiao/g;->h:J

    iput-object p1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelId()I

    move-result p1

    iput p1, p0, Lcom/windmill/toutiao/g;->e:I

    :cond_0
    new-instance p1, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {p1, p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    iput-object p1, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    new-instance p1, Lcom/windmill/toutiao/g$1;

    invoke-direct {p1, p0, p2}, Lcom/windmill/toutiao/g$1;-><init>(Lcom/windmill/toutiao/g;Lcom/windmill/sdk/custom/WMCustomNativeAdapter;)V

    iput-object p1, p0, Lcom/windmill/toutiao/g;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/windmill/toutiao/g;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/windmill/toutiao/g;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/windmill/toutiao/g;)Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/toutiao/g;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    return-object p0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;II)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/windmill/toutiao/g;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/windmill/toutiao/g;->h:J

    return-wide p1
.end method

.method static synthetic b(Lcom/windmill/toutiao/g;)Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    return-object p0
.end method

.method static synthetic c(Lcom/windmill/toutiao/g;)Lcom/bytedance/sdk/openadsdk/TTFeedAd;
    .locals 0

    iget-object p0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    return-object p0
.end method

.method static synthetic d(Lcom/windmill/toutiao/g;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/windmill/toutiao/g;->c:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTImage;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

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

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTImage;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ImageManager;->with(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/ImageManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

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

    :cond_3
    return-void
.end method

.method public final bindMediaView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object p1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/windmill/toutiao/g$3;

    invoke-direct {v0, p0}, Lcom/windmill/toutiao/g$3;-><init>(Lcom/windmill/toutiao/g;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    if-eqz p2, :cond_0

    new-instance p1, Lcom/windmill/toutiao/g$4;

    invoke-direct {p1, p0, p2}, Lcom/windmill/toutiao/g$4;-><init>(Lcom/windmill/toutiao/g;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
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

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_1

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/windmill/toutiao/g;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    iget-object p1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/g;->j:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iget-object p2, p0, Lcom/windmill/toutiao/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    :cond_0
    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/windmill/toutiao/g;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final connectAdToView(Landroid/app/Activity;Lcom/windmill/sdk/natives/WMNativeAdContainer;Lcom/windmill/sdk/natives/WMNativeAdRender;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/windmill/toutiao/g;->j:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/windmill/toutiao/g;->getAdPatternType()I

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

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/windmill/toutiao/g;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    iput-object v0, p0, Lcom/windmill/toutiao/g;->f:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/windmill/toutiao/g;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    iget-object v1, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->destroy()V

    iput-object v0, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    :cond_1
    return-void
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdPatternType()I
    .locals 5

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageMode()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

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

.method public final getAppInfo()Lcom/windmill/sdk/natives/WMNativeAdData$AppInfo;
    .locals 13

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getComplianceInfo()Lcom/bytedance/sdk/openadsdk/ComplianceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v12, Lcom/windmill/sdk/natives/WMNativePrivacyInfo;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getAppSize()I

    move-result v1

    int-to-long v4, v1

    const-string v6, ""

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getDeveloperName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPermissionsMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/windmill/toutiao/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getPermissionUrl()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/ComplianceInfo;->getFunctionDescUrl()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\u7acb\u5373\u62e8\u6253"

    return-object v0

    :cond_1
    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    return-object v0

    :cond_2
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public final getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;
    .locals 2

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getCustomVideo()Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/windmill/toutiao/g$8;

    invoke-direct {v1, p0, v0}, Lcom/windmill/toutiao/g$8;-><init>(Lcom/windmill/toutiao/g;Lcom/bytedance/sdk/openadsdk/TTFeedAd$CustomizeVideo;)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getCustomizeVideo()Lcom/windmill/sdk/natives/WMNativeAdData$CustomizeVideo;

    move-result-object v0

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDescription()Ljava/lang/String;

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
    .locals 2

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getIcon()Lcom/bytedance/sdk/openadsdk/TTImage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

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

    check-cast v3, Lcom/bytedance/sdk/openadsdk/TTImage;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/windmill/toutiao/g$2;

    invoke-direct {v4, p0, v3}, Lcom/windmill/toutiao/g$2;-><init>(Lcom/windmill/toutiao/g;Lcom/bytedance/sdk/openadsdk/TTImage;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

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

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getImageList()Ljava/util/List;

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

    check-cast v3, Lcom/bytedance/sdk/openadsdk/TTImage;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/TTImage;->getImageUrl()Ljava/lang/String;

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
    .locals 3

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

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

    iget v0, p0, Lcom/windmill/toutiao/g;->e:I

    return v0
.end method

.method public final getOriginNativeAdData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getVideoDuration()J
    .locals 5

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getVideoDuration()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/windmill/toutiao/g;->h:J

    long-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    :goto_0
    double-to-long v0, v0

    return-wide v0

    :cond_1
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getVideoDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/windmill/sdk/natives/WMNativeAdData;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFeedAd;->getAdViewWidth()I

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
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getDislikeDialog(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/windmill/toutiao/g$5;

    invoke-direct {v0, p0, p2}, Lcom/windmill/toutiao/g$5;-><init>(Lcom/windmill/toutiao/g;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V

    :cond_0
    new-instance v0, Lcom/windmill/toutiao/g$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/windmill/toutiao/g$6;-><init>(Lcom/windmill/toutiao/g;Lcom/bytedance/sdk/openadsdk/TTAdDislike;Lcom/windmill/sdk/natives/WMNativeAdData$DislikeInteractionCallback;)V

    iput-object v0, p0, Lcom/windmill/toutiao/g;->f:Landroid/view/View$OnClickListener;

    :cond_1
    return-void
.end method

.method public final setDownloadListener(Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V
    .locals 2

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->getInteractionType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    iget-object v1, p0, Lcom/windmill/toutiao/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setActivityForDownloadApp(Landroid/app/Activity;)V

    :cond_0
    new-instance v0, Lcom/windmill/toutiao/g$7;

    invoke-direct {v0, p0, p1}, Lcom/windmill/toutiao/g$7;-><init>(Lcom/windmill/toutiao/g;Lcom/windmill/sdk/natives/WMNativeAdData$AppDownloadListener;)V

    iget-object p1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    iget-object p1, p0, Lcom/windmill/toutiao/g;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/windmill/toutiao/g;->a:Lcom/bytedance/sdk/openadsdk/TTFeedAd;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final setInteractionListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/windmill/toutiao/g;->b:Lcom/windmill/sdk/natives/WMNativeAdData$NativeAdInteractionListener;

    :cond_0
    return-void
.end method

.method public final setMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    iput-object v0, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setNativeADMediaListener(Lcom/windmill/sdk/natives/WMNativeAdData$NativeADMediaListener;)V

    :cond_1
    return-void
.end method

.method public final setVideoProgressUpdateInterval(I)V
    .locals 1

    iget-object v0, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-direct {v0, p0}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;-><init>(Lcom/windmill/sdk/natives/WMNativeAdData;)V

    iput-object v0, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    :cond_0
    iget-object v0, p0, Lcom/windmill/toutiao/g;->i:Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/windmill/sdk/natives/WMNativeAdMediaListenerWrapper;->setVideoProgressUpdateInterval(I)V

    return-void
.end method
