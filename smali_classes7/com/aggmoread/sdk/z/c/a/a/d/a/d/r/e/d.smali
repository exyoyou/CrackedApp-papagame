.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;
.source "SourceFile"


# static fields
.field protected static C:Ljava/lang/String; = "AMUTAGBD"


# instance fields
.field public A:Lcom/baidu/mobads/sdk/api/NativeResponse;

.field private B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/mobads/sdk/api/XNativeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobads/sdk/api/NativeResponse;Lcom/baidu/mobads/sdk/api/BaiduNativeManager;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobads/sdk/api/NativeResponse;",
            "Lcom/baidu/mobads/sdk/api/BaiduNativeManager;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4, p5}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    iget-object p2, p3, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->t:Lcom/aggmoread/sdk/z/c/a/a/d/a/c;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->t:Ljava/util/Map;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p2, p1, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->b(Ljava/util/Map;ILcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->c(I)I

    move-result p0

    return p0
.end method

.method private a(Lcom/baidu/mobads/sdk/api/NativeResponse;)I
    .locals 3

    .line 2
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$d;->a:[I

    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x5

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Lcom/aggmoread/sdk/z/c/a/a/d/b/m;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->a(Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    return-void
.end method

.method private c(I)I
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    const/16 p1, 0x8

    return p1

    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    const/16 p1, 0x20

    return p1

    :cond_2
    const/16 v0, 0x67

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/16 v0, 0x68

    if-ne p1, v0, :cond_4

    const/16 p1, 0x10

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private i()Lcom/aggmoread/sdk/z/c/a/a/c/c;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getBrandName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getPublisher()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppSize()J

    move-result-wide v3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPermissionLink()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPrivacyLink()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aggmoread/sdk/z/c/a/a/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v1}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAppFunctionLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/c/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private j()Lcom/baidu/mobads/sdk/api/XNativeView;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/sdk/api/XNativeView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3
    move-object v8, p0

    move-object v0, p2

    move-object/from16 v1, p7

    sget-object v2, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const-string v3, "enter"

    invoke-static {v2, v3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const-string v5, "ovov + true"

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const-string v5, "ovov + false"

    :goto_2
    invoke-static {v3, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {v3}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    const-string v5, "ovov "

    invoke-static {v3, v5}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v7, p8

    iput-object v7, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of v2, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    if-eqz v2, :cond_4

    iget-boolean v2, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->x:Z

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->y:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    sget-object v5, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "f n "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    move-object v3, v2

    :goto_3
    if-eqz v2, :cond_6

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    move-object v9, v2

    move-object v2, v3

    goto :goto_5

    :cond_6
    :goto_4
    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-virtual {p0, p2, v1, v2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;

    move-result-object v0

    move-object v9, v0

    :goto_5
    iget-object v6, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->p:Ljava/lang/ref/WeakReference;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    const/4 v0, 0x0

    if-eqz p5, :cond_7

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    aput-object p5, v1, v0

    goto :goto_6

    :cond_7
    new-array v1, v0, [Landroid/view/View;

    :goto_6
    iget-object v0, v8, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->a(Landroid/view/View;[Landroid/view/View;)V

    return-object v9
.end method

.method protected a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .line 4
    new-instance v0, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    invoke-direct {v0, p1}, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/o/a;",
            ">;",
            "Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;",
            ")V"
        }
    .end annotation

    .line 6
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p3, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;

    invoke-direct {p3, p0, p6, p7, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$a;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;Landroid/view/ViewGroup;)V

    invoke-interface {p1, p2, p4, p5, p3}, Lcom/baidu/mobads/sdk/api/NativeResponse;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/baidu/mobads/sdk/api/NativeResponse$AdInteractionListener;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;[Landroid/view/View;)V
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v1, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    sget-object v3, Lcom/aggmoread/sdk/z/c/a/a/c/j;->g:Lcom/aggmoread/sdk/z/c/a/a/c/j;

    iget-object v6, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->w:Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->u:Ljava/lang/ref/WeakReference;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/c/j;Landroid/view/View;[Landroid/view/View;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->e()Z

    move-result p2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/f;->b()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->b(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->r:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->b()[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object p2, p2, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->b:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;[B)V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Ljava/lang/Object;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)V

    return-void
.end method

.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/a/c;)V
    .locals 0

    .line 8
    return-void
.end method

.method protected a(Landroid/view/View;)Z
    .locals 3

    .line 10
    sget-object v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkCustomMediaView bd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p1, p1, Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method protected b(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/api/XNativeView;

    invoke-direct {v0, p1}, Lcom/baidu/mobads/sdk/api/XNativeView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "win "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(IILjava/lang/String;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    const-string p2, "203"

    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
    .locals 1

    .line 4
    instance-of v0, p1, Lcom/baidu/mobads/sdk/api/XNativeView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/baidu/mobads/sdk/api/XNativeView;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->B:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->i:Lcom/aggmoread/sdk/z/c/a/a/d/b/e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/c/a/a/d/b/e;->s:Lcom/aggmoread/sdk/z/c/a/a/c/u/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/c/a/a/c/u/b;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeItem(Lcom/baidu/mobads/sdk/api/NativeResponse;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$b;

    invoke-direct {v0, p0, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$b;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeViewClickListener(Lcom/baidu/mobads/sdk/api/XNativeView$INativeViewClickListener;)V

    new-instance v0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$c;

    invoke-direct {v0, p0, p2}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$c;-><init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V

    invoke-virtual {p1, v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->setNativeVideoListener(Lcom/baidu/mobads/sdk/api/INativeVideoListener;)V

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/XNativeView;->render()V

    :cond_1
    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDuration()I

    move-result v0

    return v0
.end method

.method public g()Lcom/aggmoread/sdk/z/c/a/a/c/c;
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->i()Lcom/aggmoread/sdk/z/c/a/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->a(Lcom/baidu/mobads/sdk/api/NativeResponse;)I

    move-result v0

    return v0
.end method

.method public getAppStatus()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDownloadStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->c(I)I

    move-result v0

    return v0
.end method

.method public getCTAText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getActButtonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->getImageUrlList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMultiPicUrls()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPictureHeight()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicHeight()I

    move-result v0

    return v0
.end method

.method public getPictureWidth()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMainPicWidth()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getDownloadStatus()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAppAd()Z
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getAdActionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoAd()Z
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->A:Lcom/baidu/mobads/sdk/api/NativeResponse;

    invoke-interface {v0}, Lcom/baidu/mobads/sdk/api/NativeResponse;->getMaterialType()Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;->VIDEO:Lcom/baidu/mobads/sdk/api/NativeResponse$MaterialType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pauseVideo()V
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->j()Lcom/baidu/mobads/sdk/api/XNativeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->pause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->j()Lcom/baidu/mobads/sdk/api/XNativeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->resume()V

    :cond_0
    return-void
.end method

.method public resumeVideo()V
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->j()Lcom/baidu/mobads/sdk/api/XNativeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->resume()V

    :cond_0
    return-void
.end method

.method public setVideoMute(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->j()Lcom/baidu/mobads/sdk/api/XNativeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/api/XNativeView;->setVideoMute(Z)V

    :cond_0
    return-void
.end method

.method public startVideo()V
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->j()Lcom/baidu/mobads/sdk/api/XNativeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->render()V

    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 1

    invoke-direct {p0}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->j()Lcom/baidu/mobads/sdk/api/XNativeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/api/XNativeView;->stop()V

    :cond_0
    return-void
.end method
