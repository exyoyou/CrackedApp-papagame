.class public Lcom/byazt/un/NativeVideoTsView$ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/gr;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x5a2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/un/NativeVideoTsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ve"
.end annotation


# instance fields
.field public a:I

.field public c:Lcom/byazt/ete/z;

.field public n:Ljava/lang/String;

.field public sp:I

.field public tt:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Lcom/byazt/ete/ic;

.field public ve:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/oq/GifView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/ete/z;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$ve;->c:Lcom/byazt/ete/z;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$ve;->tt:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$ve;->ve:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/byazt/un/NativeVideoTsView$ve;->uj:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/byazt/un/NativeVideoTsView$ve;->n:Ljava/lang/String;

    .line 24
    .line 25
    iput p5, p0, Lcom/byazt/un/NativeVideoTsView$ve;->a:I

    .line 26
    .line 27
    iput p6, p0, Lcom/byazt/un/NativeVideoTsView$ve;->sp:I

    .line 28
    .line 29
    return-void
.end method

.method private c()I
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$ve;->c:Lcom/byazt/ete/z;

    invoke-virtual {v0}, Lcom/byazt/ete/z;->a()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget v0, p0, Lcom/byazt/un/NativeVideoTsView$ve;->sp:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView$ve;->c:Lcom/byazt/ete/z;

    invoke-virtual {v2}, Lcom/byazt/ete/z;->a()D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0

    .line 5
    :cond_0
    iget v0, p0, Lcom/byazt/un/NativeVideoTsView$ve;->sp:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static synthetic c(Lcom/byazt/un/NativeVideoTsView$ve;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/NativeVideoTsView$ve;->tt:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private c(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$ve;->c:Lcom/byazt/ete/z;

    invoke-virtual {v0}, Lcom/byazt/ete/z;->ve()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const p1, 0x800055

    .line 7
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 9
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    return-void

    :cond_0
    const v0, 0x800033

    .line 10
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 p3, 0x41980000    # 19.0f

    .line 12
    invoke-static {p1, p3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/byazt/ete/z;Lcom/byazt/yj/m;Landroid/view/ViewGroup;)V
    .locals 9

    .line 21
    new-instance v0, Lcom/byazt/oq/GifView;

    invoke-direct {v0, p1}, Lcom/byazt/oq/GifView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 24
    invoke-static {p1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    .line 25
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/byazt/un/NativeVideoTsView$ve;->a:I

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/byazt/un/NativeVideoTsView$ve;->a:I

    .line 26
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/byazt/un/NativeVideoTsView$ve;->sp:I

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_1
    iput v3, p0, Lcom/byazt/un/NativeVideoTsView$ve;->sp:I

    .line 27
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView$ve;->c()I

    move-result v3

    .line 28
    invoke-virtual {p2}, Lcom/byazt/ete/z;->c()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const/high16 v4, 0x42b00000    # 88.0f

    .line 29
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    if-le v3, v5, :cond_3

    .line 30
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/ete/z;->c()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/high16 v4, 0x43320000    # 178.0f

    .line 32
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    if-le v3, v5, :cond_3

    .line 33
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    .line 34
    :cond_3
    :goto_2
    iget v4, p0, Lcom/byazt/un/NativeVideoTsView$ve;->a:I

    sub-int/2addr v4, v2

    int-to-double v5, v3

    .line 35
    invoke-virtual {p2}, Lcom/byazt/ete/z;->sp()D

    move-result-wide v7

    mul-double v5, v5, v7

    double-to-int p2, v5

    const/4 v5, -0x2

    if-le p2, v4, :cond_4

    if-lez p2, :cond_4

    if-lez v4, :cond_4

    .line 36
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    .line 37
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 38
    :goto_3
    invoke-direct {p0, p1, p2, v2}, Lcom/byazt/un/NativeVideoTsView$ve;->c(Landroid/content/Context;Landroid/widget/FrameLayout$LayoutParams;I)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-interface {p3}, Lcom/byazt/yj/m;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 41
    invoke-direct {p0, p1, p3, v0}, Lcom/byazt/un/NativeVideoTsView$ve;->c(Ljava/lang/Object;Lcom/byazt/yj/m;Lcom/byazt/oq/GifView;)V

    .line 42
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView$ve;->ve:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/oq/GifView;

    .line 43
    invoke-direct {p0, p1}, Lcom/byazt/un/NativeVideoTsView$ve;->c(Lcom/byazt/oq/GifView;)V

    .line 44
    invoke-virtual {p4, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView$ve;->ve:Ljava/lang/ref/WeakReference;

    .line 46
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView$ve;->uj:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView$ve;->n:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    return-void
.end method

.method private c(Lcom/byazt/oq/GifView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/un/NativeVideoTsView$ve;Landroid/content/Context;Lcom/byazt/ete/z;Lcom/byazt/yj/m;Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/un/NativeVideoTsView$ve;->c(Landroid/content/Context;Lcom/byazt/ete/z;Lcom/byazt/yj/m;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private c(Ljava/lang/Object;Lcom/byazt/yj/m;Lcom/byazt/oq/GifView;)V
    .locals 1

    .line 13
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p2}, Lcom/byazt/yj/m;->isGif()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 15
    check-cast p1, [B

    invoke-virtual {p3, p1, v0}, Lcom/byazt/oq/GifView;->c([BZ)V

    .line 16
    invoke-virtual {p3, v0}, Lcom/byazt/oq/GifView;->setRepeatConfig(Z)V

    return-void

    .line 17
    :cond_0
    check-cast p1, [B

    invoke-static {p1, v0}, Lcom/byazt/aas/m;->c([BI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 18
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/un/NativeVideoTsView$ve;)Lcom/byazt/ete/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/NativeVideoTsView$ve;->c:Lcom/byazt/ete/z;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "fail: "

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "copflg"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView$ve;->ve:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/byazt/oq/GifView;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/16 p2, 0x8

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView$ve;->uj:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView$ve;->n:Ljava/lang/String;

    .line 34
    .line 35
    const/4 p3, 0x2

    .line 36
    invoke-static {p1, p2, p3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onSuccess(Lcom/byazt/yj/m;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView$ve;->tt:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Lcom/byazt/un/NativeVideoTsView$ve$1;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/byazt/un/NativeVideoTsView$ve$1;-><init>(Lcom/byazt/un/NativeVideoTsView$ve;Lcom/byazt/yj/m;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x64

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p1

    .line 24
    const/16 v0, 0x3ea

    .line 25
    .line 26
    const-string v1, ""

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1, p1}, Lcom/byazt/un/NativeVideoTsView$ve;->onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
