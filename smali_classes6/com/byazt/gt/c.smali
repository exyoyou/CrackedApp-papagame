.class public Lcom/byazt/gt/c;
.super Lcom/byazt/xj/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc3,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/gt/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xj/c<",
        "Lcom/byazt/gt/YogaLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public cf:Lcom/byazt/bj/da;

.field public kz:Lcom/byazt/bj/a;

.field public mq:Lcom/byazt/bj/c;

.field public vi:Lcom/byazt/bj/c;

.field public vp:Lcom/byazt/bj/yp;

.field public yo:Lcom/byazt/bj/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xj/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/byazt/bj/n;->ve:Lcom/byazt/bj/n;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/byazt/gt/c;->yo:Lcom/byazt/bj/n;

    .line 7
    .line 8
    sget-object p1, Lcom/byazt/bj/yp;->c:Lcom/byazt/bj/yp;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/byazt/gt/c;->vp:Lcom/byazt/bj/yp;

    .line 11
    .line 12
    sget-object p1, Lcom/byazt/bj/a;->c:Lcom/byazt/bj/a;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/gt/c;->kz:Lcom/byazt/bj/a;

    .line 15
    .line 16
    sget-object p1, Lcom/byazt/bj/c;->n:Lcom/byazt/bj/c;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/byazt/gt/c;->vi:Lcom/byazt/bj/c;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/gt/c;->mq:Lcom/byazt/bj/c;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method private c(Lcom/byazt/vn/RoundImageView;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/byazt/gt/c$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/gt/c$3;-><init>(Lcom/byazt/gt/c;Lcom/byazt/vn/RoundImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic da(Lcom/byazt/gt/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->pf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/gt/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/gt/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/gt/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/xj/ve;->hd:F

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/byazt/gt/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->pf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/gt/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/gt/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/gt/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/gt/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/gt/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->pf:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/gt/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->pf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/gt/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/xj/ve;->sv:F

    return p0
.end method

.method public static synthetic yp(Lcom/byazt/gt/c;)Lcom/byazt/sz/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/gt/c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()Lcom/byazt/gt/YogaLayout;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/gt/YogaLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/gt/YogaLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/gt/YogaLayout;->c(Lcom/byazt/xj/ve;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/gt/YogaLayout;->getYogaNode()Lcom/byazt/bj/da;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    .line 16
    .line 17
    return-object v0
.end method

.method public synthetic c()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/gt/c;->b()Lcom/byazt/gt/YogaLayout;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 3
    new-instance v0, Lcom/byazt/vn/RoundImageView;

    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/vn/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/byazt/vn/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-boolean p1, p0, Lcom/byazt/xj/ve;->ic:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/xj/ve;->bx:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/vn/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lcom/byazt/vn/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    :goto_1
    iget p1, p0, Lcom/byazt/xj/ve;->hd:F

    invoke-virtual {v0, p1}, Lcom/byazt/vn/RoundImageView;->setCornerRadius(F)V

    .line 9
    new-instance p1, Lcom/byazt/gt/YogaLayout$c;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Lcom/byazt/gt/YogaLayout$c;-><init>(II)V

    .line 10
    sget-object v1, Lcom/byazt/bj/u;->ve:Lcom/byazt/bj/u;

    invoke-virtual {v1}, Lcom/byazt/bj/u;->c()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/byazt/gt/YogaLayout$c;->a(F)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Lcom/byazt/gt/YogaLayout$c;->sp(F)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/byazt/gt/YogaLayout$c;->x(F)V

    .line 13
    iget-object v1, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    instance-of v2, v1, Lcom/byazt/gt/YogaLayout;

    if-eqz v2, :cond_2

    .line 14
    check-cast v1, Lcom/byazt/gt/YogaLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/byazt/gt/YogaLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-direct {p0, v0}, Lcom/byazt/gt/c;->c(Lcom/byazt/vn/RoundImageView;)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/byazt/xj/c;->c(Lcom/byazt/xj/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/xj/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 20
    iget-object v0, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    check-cast v0, Lcom/byazt/gt/YogaLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-super {p0, p1, p2}, Lcom/byazt/xj/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "justifyContent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "flexWrap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "alignContent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "flexDirection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "alignItems"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 23
    :pswitch_0
    invoke-static {p2}, Lcom/byazt/bj/a;->c(Ljava/lang/String;)Lcom/byazt/bj/a;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gt/c;->kz:Lcom/byazt/bj/a;

    return-void

    .line 24
    :pswitch_1
    invoke-static {p2}, Lcom/byazt/bj/yp;->c(Ljava/lang/String;)Lcom/byazt/bj/yp;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gt/c;->vp:Lcom/byazt/bj/yp;

    return-void

    .line 25
    :pswitch_2
    invoke-static {p2}, Lcom/byazt/bj/c;->c(Ljava/lang/String;)Lcom/byazt/bj/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gt/c;->mq:Lcom/byazt/bj/c;

    :goto_1
    return-void

    .line 26
    :pswitch_3
    invoke-static {p2}, Lcom/byazt/bj/n;->c(Ljava/lang/String;)Lcom/byazt/bj/n;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gt/c;->yo:Lcom/byazt/bj/n;

    return-void

    .line 27
    :pswitch_4
    invoke-static {p2}, Lcom/byazt/bj/c;->c(Ljava/lang/String;)Lcom/byazt/bj/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/gt/c;->vi:Lcom/byazt/bj/c;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f600445 -> :sswitch_4
        -0x3a1ff07a -> :sswitch_3
        -0x2cdbca4c -> :sswitch_2
        0x67f69fe3 -> :sswitch_1
        0x6ee75fc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public kk()Lcom/byazt/bj/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gt/c;->yo:Lcom/byazt/bj/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lcom/byazt/gt/c$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/gt/c$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/gt/c$c;-><init>(Lcom/byazt/xj/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public t()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/byazt/xj/ve;->eo:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    sget-object v1, Lcom/byazt/bj/uj;->i:Lcom/byazt/bj/uj;

    iget v2, p0, Lcom/byazt/xj/ve;->yv:F

    invoke-virtual {v0, v1, v2}, Lcom/byazt/bj/da;->tt(Lcom/byazt/bj/uj;F)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/xj/ve;->zb:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    sget-object v1, Lcom/byazt/bj/uj;->c:Lcom/byazt/bj/uj;

    iget v2, p0, Lcom/byazt/xj/ve;->p:F

    invoke-virtual {v0, v1, v2}, Lcom/byazt/bj/da;->tt(Lcom/byazt/bj/uj;F)V

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/xj/ve;->or:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    sget-object v1, Lcom/byazt/bj/uj;->ve:Lcom/byazt/bj/uj;

    iget v2, p0, Lcom/byazt/xj/ve;->md:F

    invoke-virtual {v0, v1, v2}, Lcom/byazt/bj/da;->tt(Lcom/byazt/bj/uj;F)V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/byazt/xj/ve;->cu:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    sget-object v1, Lcom/byazt/bj/uj;->tt:Lcom/byazt/bj/uj;

    iget v2, p0, Lcom/byazt/xj/ve;->h:F

    invoke-virtual {v0, v1, v2}, Lcom/byazt/bj/da;->tt(Lcom/byazt/bj/uj;F)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/byazt/xj/ve;->qp:Z

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    sget-object v1, Lcom/byazt/bj/uj;->uj:Lcom/byazt/bj/uj;

    iget v2, p0, Lcom/byazt/xj/ve;->d:F

    invoke-virtual {v0, v1, v2}, Lcom/byazt/bj/da;->tt(Lcom/byazt/bj/uj;F)V

    :cond_4
    return-void
.end method

.method public tt()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/byazt/xj/c;->tt()V

    .line 3
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    iget-object v1, p0, Lcom/byazt/gt/c;->yo:Lcom/byazt/bj/n;

    invoke-virtual {v0, v1}, Lcom/byazt/bj/da;->c(Lcom/byazt/bj/n;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    iget-object v1, p0, Lcom/byazt/gt/c;->vp:Lcom/byazt/bj/yp;

    invoke-virtual {v0, v1}, Lcom/byazt/bj/da;->c(Lcom/byazt/bj/yp;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    iget-object v1, p0, Lcom/byazt/gt/c;->kz:Lcom/byazt/bj/a;

    invoke-virtual {v0, v1}, Lcom/byazt/bj/da;->c(Lcom/byazt/bj/a;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    iget-object v1, p0, Lcom/byazt/gt/c;->vi:Lcom/byazt/bj/c;

    invoke-virtual {v0, v1}, Lcom/byazt/bj/da;->c(Lcom/byazt/bj/c;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    iget-object v1, p0, Lcom/byazt/gt/c;->mq:Lcom/byazt/bj/c;

    invoke-virtual {v0, v1}, Lcom/byazt/bj/da;->ve(Lcom/byazt/bj/c;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/gt/c;->cf:Lcom/byazt/bj/da;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/bj/da;->c(Z)V

    return-void
.end method

.method public synthetic x()Lcom/byazt/xj/c$c;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/gt/c;->q()Lcom/byazt/gt/c$c;

    move-result-object v0

    return-object v0
.end method

.method public yv()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/byazt/xj/ve;->aw:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/sz/sp;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/byazt/xj/ve;->pf:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v3, Lcom/byazt/gt/c$1;

    .line 25
    .line 26
    invoke-direct {v3, p0}, Lcom/byazt/gt/c$1;-><init>(Lcom/byazt/gt/c;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Lcom/byazt/sa/c$c;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/byazt/xj/ve;->nt:Lcom/byazt/sz/sp;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Lcom/byazt/sz/sp;->c()V

    .line 38
    .line 39
    .line 40
    :cond_2
    new-instance v0, Lcom/byazt/vn/RoundImageView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/xj/ve;->tt:Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/byazt/vn/RoundImageView;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/byazt/sa/n;->c()Lcom/byazt/sa/n;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/byazt/sa/n;->tt()Lcom/byazt/sa/c;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/byazt/xj/ve;->i:Lcom/byazt/sz/yp;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/byazt/xj/ve;->pf:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget-object v4, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    new-instance v7, Lcom/byazt/gt/c$2;

    .line 72
    .line 73
    invoke-direct {v7, p0}, Lcom/byazt/gt/c$2;-><init>(Lcom/byazt/gt/c;)V

    .line 74
    .line 75
    .line 76
    move-object v4, v0

    .line 77
    invoke-interface/range {v1 .. v7}, Lcom/byazt/sa/c;->c(Lcom/byazt/sz/yp;Ljava/lang/String;Landroid/widget/ImageView;IILcom/byazt/sa/c$c;)V

    .line 78
    .line 79
    .line 80
    iget-boolean v1, p0, Lcom/byazt/xj/ve;->ic:Z

    .line 81
    .line 82
    if-eqz v1, :cond_4

    .line 83
    .line 84
    iget-object v1, p0, Lcom/byazt/xj/ve;->bx:Landroid/widget/ImageView$ScaleType;

    .line 85
    .line 86
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 87
    .line 88
    if-ne v1, v2, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    :goto_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    iget v1, p0, Lcom/byazt/xj/ve;->hd:F

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/byazt/vn/RoundImageView;->setCornerRadius(F)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lcom/byazt/gt/YogaLayout$c;

    .line 106
    .line 107
    const/4 v2, -0x1

    .line 108
    invoke-direct {v1, v2, v2}, Lcom/byazt/gt/YogaLayout$c;-><init>(II)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Lcom/byazt/bj/u;->ve:Lcom/byazt/bj/u;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/byazt/bj/u;->c()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    int-to-float v2, v2

    .line 118
    invoke-virtual {v1, v2}, Lcom/byazt/gt/YogaLayout$c;->a(F)V

    .line 119
    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-virtual {v1, v2}, Lcom/byazt/gt/YogaLayout$c;->sp(F)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/byazt/gt/YogaLayout$c;->x(F)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/byazt/xj/ve;->n:Landroid/view/View;

    .line 129
    .line 130
    instance-of v3, v2, Lcom/byazt/gt/YogaLayout;

    .line 131
    .line 132
    if-eqz v3, :cond_5

    .line 133
    .line 134
    check-cast v2, Lcom/byazt/gt/YogaLayout;

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    invoke-virtual {v2, v0, v3, v1}, Lcom/byazt/gt/YogaLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, v0}, Lcom/byazt/gt/c;->c(Lcom/byazt/vn/RoundImageView;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    return-void
.end method
