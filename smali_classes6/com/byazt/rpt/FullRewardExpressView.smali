.class public Lcom/byazt/rpt/FullRewardExpressView;
.super Lcom/byazt/ouz/NativeExpressView;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ouz/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x137,
        0x2d2
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/rpt/FullRewardExpressView$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ouz/sl;

.field public gr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gu:Landroid/widget/ImageView;

.field public h:Lcom/byazt/qmz/c;

.field public md:Lcom/byazt/msx/FullSwiperItemView$c;

.field public n:Lcom/byazt/xl/yp;

.field public p:Lcom/byazt/nj/c$c;

.field public tt:Lcom/byazt/ouz/FullRewardExpressBackupView;

.field public uj:Lcom/byazt/xl/uj;

.field public ve:Lcom/byazt/zd/c;

.field public yv:Landroid/view/View;

.field public zm:Lcom/byazt/rpt/FullRewardExpressView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/ouz/NativeExpressView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->gr:Ljava/util/HashSet;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/byazt/rpt/FullRewardExpressView;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/rpt/FullRewardExpressView;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/rpt/FullRewardExpressView;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/rpt/FullRewardExpressView;->tt(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private gu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->uj:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    instance-of v0, v0, Lcom/byazt/mt/c;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/zd/c;->lr()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/zd/c;->a()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/byazt/rpt/FullRewardExpressView;->tt(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/zd/c;->x()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/byazt/rpt/FullRewardExpressView;->tt(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic n(Lcom/byazt/rpt/FullRewardExpressView;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/rpt/FullRewardExpressView;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/rpt/FullRewardExpressView;->gr:Ljava/util/HashSet;

    return-object p0
.end method

.method private tt(Landroid/view/ViewGroup;Z)V
    .locals 9

    .line 30
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/xl/yp;->a()D

    move-result-wide v0

    .line 32
    iget-object v2, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v2}, Lcom/byazt/xl/yp;->sp()D

    move-result-wide v2

    .line 33
    iget-object v4, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v4}, Lcom/byazt/xl/yp;->x()D

    move-result-wide v4

    .line 34
    iget-object v6, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v6}, Lcom/byazt/xl/yp;->i()D

    move-result-wide v6

    .line 35
    iget-object v8, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {v8, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    .line 37
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    .line 38
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    double-to-float v4, v6

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    .line 39
    iget-object v4, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v4}, Lcom/byazt/xl/yp;->t()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 40
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v6}, Lcom/byazt/xl/yp;->t()F

    move-result v6

    invoke-static {v4, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 41
    :goto_0
    iget-object v6, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v6}, Lcom/byazt/xl/yp;->u()F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_2

    .line 42
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v7}, Lcom/byazt/xl/yp;->u()F

    move-result v7

    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 43
    :goto_1
    iget-object v7, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v7}, Lcom/byazt/xl/yp;->yp()F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_3

    .line 44
    iget-object v7, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v8}, Lcom/byazt/xl/yp;->yp()F

    move-result v8

    invoke-static {v7, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 45
    :goto_2
    iget-object v8, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v8}, Lcom/byazt/xl/yp;->z()F

    move-result v8

    cmpl-float v8, v8, v5

    if-lez v8, :cond_4

    .line 46
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    invoke-virtual {v8}, Lcom/byazt/xl/yp;->z()F

    move-result v8

    invoke-static {v5, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    :cond_4
    cmpg-float v8, v6, v4

    if-gez v8, :cond_5

    move v4, v6

    :cond_5
    cmpg-float v6, v7, v4

    if-gez v6, :cond_6

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    cmpg-float v4, v5, v7

    if-gez v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, v7

    .line 47
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_8

    .line 48
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49
    :cond_8
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 50
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 51
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 53
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-static {p1, v5}, Lcom/byazt/aas/pf;->tt(Landroid/view/View;F)V

    if-nez p2, :cond_9

    return-void

    .line 55
    :cond_9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_a

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_a
    iget-object p2, p0, Lcom/byazt/rpt/FullRewardExpressView;->uj:Lcom/byazt/xl/uj;

    invoke-interface {p2}, Lcom/byazt/xl/uj;->ve()I

    move-result p2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_b

    iget-object p2, p0, Lcom/byazt/rpt/FullRewardExpressView;->uj:Lcom/byazt/xl/uj;

    invoke-interface {p2}, Lcom/byazt/xl/uj;->ve()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_c

    :cond_b
    iget-object p2, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    instance-of v0, p2, Lcom/byazt/atv/ve;

    if-eqz v0, :cond_c

    .line 59
    check-cast p2, Lcom/byazt/atv/ve;

    invoke-virtual {p2}, Lcom/byazt/atv/ve;->m()Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 61
    :cond_c
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->rl:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->zm:Lcom/byazt/rpt/FullRewardExpressView$c;

    if-eqz p1, :cond_e

    if-eqz v3, :cond_e

    .line 63
    invoke-interface {p1, v3}, Lcom/byazt/rpt/FullRewardExpressView$c;->c(I)V

    :cond_e
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/rpt/FullRewardExpressView;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private uj(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->uj:Lcom/byazt/xl/uj;

    instance-of v0, v0, Lcom/byazt/mt/c;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/byazt/zd/c;->a()V

    return-void

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    invoke-virtual {p0, p1}, Lcom/byazt/rpt/FullRewardExpressView;->c(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/rpt/FullRewardExpressView;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private yp()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/rpt/FullRewardExpressView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/rpt/FullRewardExpressView$1;-><init>(Lcom/byazt/rpt/FullRewardExpressView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->setBackupListener(Lcom/byazt/xl/ve;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->a()V

    .line 3
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->a()V

    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(F)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(F)V

    :cond_0
    return-void
.end method

.method public c(FFFFI)V
    .locals 6

    .line 17
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/byazt/ouz/sl;->c(FFFFI)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(I)V

    :cond_0
    return-void
.end method

.method public c(IIII)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->h:Lcom/byazt/qmz/c;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/qmz/c;->c(IIII)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/byazt/rpt/FullRewardExpressView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/rpt/FullRewardExpressView$3;-><init>(Lcom/byazt/rpt/FullRewardExpressView;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->p:Lcom/byazt/nj/c$c;

    .line 22
    iget-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    if-eqz p1, :cond_0

    const/16 p2, 0x32

    .line 23
    invoke-virtual {p1, p2}, Lcom/byazt/nj/c;->ve(I)V

    .line 24
    iget-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    iget-object p2, p0, Lcom/byazt/rpt/FullRewardExpressView;->p:Lcom/byazt/nj/c$c;

    invoke-virtual {p1, p2}, Lcom/byazt/nj/c;->c(Lcom/byazt/nj/c$c;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->md:Lcom/byazt/msx/FullSwiperItemView$c;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/byazt/msx/FullSwiperItemView$c;->c()V

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/byazt/rpt/FullRewardExpressView;->i()V

    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 30
    iget-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/byazt/rpt/FullRewardExpressView;->c(Z)V

    return-void

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 31
    invoke-direct {p0}, Lcom/byazt/rpt/FullRewardExpressView;->gu()V

    return-void

    .line 32
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/rpt/FullRewardExpressView;->tt(Landroid/view/ViewGroup;Z)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/byazt/rpt/FullRewardExpressView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/rpt/FullRewardExpressView$2;-><init>(Lcom/byazt/rpt/FullRewardExpressView;Landroid/view/ViewGroup;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(Lcom/byazt/ete/ic;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 7
    invoke-super {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->c(Z)V

    .line 8
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 9
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(Z)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->uj:Lcom/byazt/xl/uj;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/byazt/mt/c;

    if-eqz v1, :cond_1

    .line 12
    check-cast v0, Lcom/byazt/mt/c;

    invoke-virtual {v0, p1}, Lcom/byazt/mt/c;->c(Z)V

    :cond_1
    return-void
.end method

.method public da()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->da()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getRenderResult()Lcom/byazt/xl/yp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoController()Lcom/byazt/dh/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->rl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->tt:Lcom/byazt/ouz/FullRewardExpressBackupView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/ouz/FullRewardExpressBackupView;->getVideoContainer()Landroid/widget/FrameLayout;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    return-object v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->i()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->n()V

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->n(I)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/rpt/FullRewardExpressView;->uj(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setEasyPlayableContainer(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->yv:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setExpressVideoListenerProxy(Lcom/byazt/ouz/sl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    .line 2
    .line 3
    return-void
.end method

.method public setInteractListener(Lcom/byazt/msx/FullSwiperItemView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->md:Lcom/byazt/msx/FullSwiperItemView$c;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVideoSizeChangeListener(Lcom/byazt/rpt/FullRewardExpressView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->zm:Lcom/byazt/rpt/FullRewardExpressView$c;

    .line 2
    .line 3
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method

.method public setVideoController(Lcom/byazt/dh/ve;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/zd/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/zd/c;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    .line 8
    .line 9
    const/16 v0, 0x32

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/byazt/nj/c;->ve(I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->ve:Lcom/byazt/zd/c;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->p:Lcom/byazt/nj/c$c;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/byazt/nj/c;->c(Lcom/byazt/nj/c$c;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public sl()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 3
    .line 4
    new-instance v0, Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->sl()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/byazt/rpt/FullRewardExpressView;->yp()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->getJsObject()Lcom/byazt/omf/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->getJsObject()Lcom/byazt/omf/d;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->t(Z)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->sp()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->gr:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public tt()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->tt()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->tt(I)V

    :cond_0
    return-void
.end method

.method public tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->md:Lcom/byazt/msx/FullSwiperItemView$c;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lcom/byazt/msx/FullSwiperItemView$c;->c()V

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/byazt/rpt/FullRewardExpressView;->i()V

    return-void

    .line 71
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressView;->tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    return-void
.end method

.method public tt(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xl/uj<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/xl/yp;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->uj:Lcom/byazt/xl/uj;

    .line 3
    instance-of v0, p1, Lcom/byazt/ouz/z;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/byazt/ouz/z;

    invoke-interface {v0}, Lcom/byazt/ouz/z;->J_()Lcom/byazt/omf/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/byazt/ouz/z;->J_()Lcom/byazt/omf/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/ouz/sl;)Lcom/byazt/omf/d;

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/byazt/ouz/z;->J_()Lcom/byazt/omf/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/byazt/ouz/z;->J_()Lcom/byazt/omf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->da:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/byazt/omf/d;->ve(Ljava/lang/String;)Lcom/byazt/omf/d;

    .line 8
    :cond_1
    instance-of v0, p1, Lcom/byazt/atv/c;

    if-eqz v0, :cond_2

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/byazt/atv/c;

    invoke-interface {v0, p0}, Lcom/byazt/atv/c;->c(Lcom/byazt/ouz/sl;)V

    :cond_2
    if-eqz p2, :cond_7

    .line 10
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->ve()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    iput-object p2, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    .line 12
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->tt()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 13
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->c()Landroid/view/View;

    move-result-object v0

    .line 14
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v2}, Lcom/byazt/rpt/FullRewardExpressView;->c(Landroid/view/ViewGroup;Z)V

    .line 18
    :cond_4
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->tt()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    instance-of v0, p2, Lcom/byazt/atv/ve;

    if-eqz v0, :cond_5

    .line 19
    move-object v0, p2

    check-cast v0, Lcom/byazt/atv/ve;

    .line 20
    invoke-virtual {v0}, Lcom/byazt/atv/ve;->rh()Lcom/byazt/qmz/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->h:Lcom/byazt/qmz/c;

    .line 21
    :cond_5
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->tt()I

    move-result v0

    if-ne v0, v1, :cond_7

    instance-of v0, p2, Lcom/byazt/atv/ve;

    if-eqz v0, :cond_7

    .line 22
    move-object v0, p2

    check-cast v0, Lcom/byazt/atv/ve;

    .line 23
    invoke-virtual {v0}, Lcom/byazt/atv/ve;->nu()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 24
    iget-object v1, p0, Lcom/byazt/rpt/FullRewardExpressView;->yv:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 26
    iget-object v2, p0, Lcom/byazt/rpt/FullRewardExpressView;->yv:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_6
    iget-object v1, p0, Lcom/byazt/rpt/FullRewardExpressView;->yv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->sp(I)V

    return-void
.end method

.method public tt(Z)V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    .line 74
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->sv()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->sv()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    const/16 v2, 0x140

    const-string v3, "tt_new_play_video"

    invoke-static {v0, v3, v1, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 79
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 80
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView;->gu:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public u()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    instance-of v2, v0, Lcom/byazt/atv/ve;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    check-cast v0, Lcom/byazt/atv/ve;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/atv/ve;->m()Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    return v3

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/xl/yp;->x()D

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    const-wide/16 v6, 0x0

    .line 27
    .line 28
    cmpl-double v0, v4, v6

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->n:Lcom/byazt/xl/yp;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/xl/yp;->i()D

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    cmpl-double v0, v4, v6

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    return v1

    .line 43
    :cond_3
    return v3
.end method

.method public uj()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->uj()V

    :cond_0
    return-void
.end method

.method public uj(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->uj(I)V

    :cond_0
    return-void
.end method

.method public ve()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->ve()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->ve(I)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView;->c:Lcom/byazt/ouz/sl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->x()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
