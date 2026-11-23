.class public Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/a;
.super Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/api/KsNativeAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/api/KsNativeAd;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/e;",
            "Lcom/aggmoread/sdk/z/c/a/a/d/b/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;-><init>(Lcom/kwad/sdk/api/KsNativeAd;Lcom/aggmoread/sdk/z/c/a/a/d/b/e;Lcom/aggmoread/sdk/z/c/a/a/d/b/f;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Landroid/view/View;Ljava/util/List;Landroid/view/View;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)Landroid/view/View;
    .locals 7
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

    sget-object p6, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "esp enter v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    move-object v4, p4

    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    move-object p7, p2

    :goto_0
    invoke-interface {v4, p7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->B:Ljava/lang/String;

    const-string p6, "ovov + true"

    goto :goto_1

    :cond_2
    sget-object p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->B:Ljava/lang/String;

    const-string p6, "ovov + false"

    :goto_1
    invoke-static {p4, p6}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->j:Lcom/aggmoread/sdk/z/c/a/a/d/b/f;

    invoke-static {p4}, Lcom/aggmoread/sdk/z/c/a/a/e/p;->a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {v4, p7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    sget-object p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->B:Ljava/lang/String;

    const-string p6, "ovov "

    invoke-static {p4, p6}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-object p8, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->h:Lcom/aggmoread/sdk/z/c/a/a/c/g;

    instance-of p4, p2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    if-eqz p4, :cond_5

    sget-object p4, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->B:Ljava/lang/String;

    const-string p6, "esp nativ"

    invoke-static {p4, p6}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/a;->o:[Ljava/lang/Object;

    invoke-static {p2, p4}, Lcom/aggmoread/sdk/z/c/a/a/d/b/n;->a(Landroid/view/View;[Ljava/lang/Object;)V

    move-object v2, p2

    check-cast v2, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/lang/ref/WeakReference;Lcom/aggmoread/sdk/z/c/a/a/c/p/f$a;)V

    const/4 p1, 0x0

    if-eqz p5, :cond_4

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/view/View;

    aput-object p5, p3, p1

    goto :goto_2

    :cond_4
    new-array p3, p1, [Landroid/view/View;

    :goto_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/d;->w:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p2, p3}, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->a(Landroid/view/View;[Landroid/view/View;)V

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/w/f/d;->B:Ljava/lang/String;

    const-string p3, "exit"

    invoke-static {p1, p3}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
