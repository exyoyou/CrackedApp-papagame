.class public Lcom/byazt/dn/UgenBanner;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x23,
        0x690
    }
.end annotation


# instance fields
.field public a:I

.field public c:Lcom/byazt/sz/z;

.field public n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Landroid/view/View;

.field public final uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/dn/UgenBanner;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic c(Lcom/byazt/dn/UgenBanner;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dn/UgenBanner;->tt:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/dn/UgenBanner;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/dn/UgenBanner;->tt:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/dn/UgenBanner;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/sz/rh;)Landroid/view/View;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/dn/UgenBanner;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/sz/rh;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/byazt/sz/rh;)Landroid/view/View;
    .locals 2

    .line 21
    new-instance v0, Lcom/byazt/sz/z;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/byazt/sz/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/dn/UgenBanner;->c:Lcom/byazt/sz/z;

    .line 22
    invoke-virtual {v0, p1}, Lcom/byazt/sz/z;->c(Lorg/json/JSONObject;)Lcom/byazt/xj/ve;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/byazt/dn/UgenBanner;->c:Lcom/byazt/sz/z;

    invoke-virtual {v0, p3}, Lcom/byazt/sz/z;->c(Lcom/byazt/sz/rh;)V

    .line 24
    iget-object p3, p0, Lcom/byazt/dn/UgenBanner;->c:Lcom/byazt/sz/z;

    invoke-virtual {p3, p2}, Lcom/byazt/sz/z;->tt(Lorg/json/JSONObject;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 26
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->or()I

    move-result v0

    invoke-virtual {p1}, Lcom/byazt/xj/ve;->cu()I

    move-result p1

    invoke-direct {p3, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 29
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p2
.end method


# virtual methods
.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/byazt/dn/UgenBanner;->ve:Z

    .line 16
    iget-object v0, p0, Lcom/byazt/dn/UgenBanner;->tt:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/dn/UgenBanner;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;)V
    .locals 9

    .line 4
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/byazt/ete/my;->yp(Lcom/byazt/ete/ic;)Lcom/byazt/seg/c;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u7acb\u5373\u4e0b\u8f7d"

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 10
    invoke-virtual/range {v1 .. v8}, Lcom/byazt/dn/UgenBanner;->c(Lcom/byazt/seg/c;Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lcom/byazt/seg/c;Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    move-object v8, p0

    move-object v9, p1

    if-nez v9, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, v8, Lcom/byazt/dn/UgenBanner;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    new-instance v10, Lcom/byazt/dn/UgenBanner$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p3

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/byazt/dn/UgenBanner$1;-><init>(Lcom/byazt/dn/UgenBanner;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hkv/tt;Z)V

    invoke-static {p1, v10}, Lcom/byazt/ux/n;->c(Lcom/byazt/seg/c;Lcom/byazt/ux/n$c;)V

    .line 14
    new-instance v0, Lcom/byazt/dn/UgenBanner$2;

    invoke-direct {v0, p0}, Lcom/byazt/dn/UgenBanner$2;-><init>(Lcom/byazt/dn/UgenBanner;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public setTopMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/dn/UgenBanner;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public tt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dn/UgenBanner;->tt:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/byazt/dn/UgenBanner;->ve:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_2
    iget v1, p0, Lcom/byazt/dn/UgenBanner;->a:I

    .line 24
    .line 25
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/dn/UgenBanner;->tt:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/dn/UgenBanner;->tt:Landroid/view/View;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [F

    .line 36
    .line 37
    fill-array-data v1, :array_0

    .line 38
    .line 39
    .line 40
    const-string v2, "translationY"

    .line 41
    .line 42
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-wide/16 v1, 0x258

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/byazt/dn/UgenBanner;->n:Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        -0x3c380000    # -400.0f
        0x0
    .end array-data
.end method
