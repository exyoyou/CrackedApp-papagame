.class public Lcom/byazt/msx/FullSwiperView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x155,
        0x2c0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Lcom/byazt/nw/BaseSwiper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/nw/BaseSwiper<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public da:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public n:F

.field public sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/msx/FullSwiperItemView;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Z

.field public t:I

.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/msx/c;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field public uj:F

.field public ve:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Z

.field public z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/msx/FullSwiperView;->sp:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/byazt/msx/FullSwiperView;->u:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/byazt/msx/FullSwiperView;->yp:Z

    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/byazt/msx/FullSwiperView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/msx/FullSwiperView;->ve:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/msx/FullSwiperView;->x:Ljava/util/List;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/byazt/msx/FullSwiperView;->i:Ljava/util/List;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/byazt/msx/FullSwiperView;->da:Ljava/util/List;

    .line 41
    .line 42
    new-instance v0, Lcom/byazt/msx/SwiperView;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Lcom/byazt/msx/SwiperView;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/byazt/msx/FullSwiperView;->sl:Ljava/util/List;

    .line 55
    .line 56
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 57
    .line 58
    const/4 v0, -0x1

    .line 59
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    const/16 v0, 0x11

    .line 63
    .line 64
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    .line 67
    .line 68
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static synthetic a(Lcom/byazt/msx/FullSwiperView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/msx/FullSwiperView;->sl:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/msx/FullSwiperView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/msx/FullSwiperView;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/msx/FullSwiperView;->yp:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/msx/FullSwiperView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/msx/FullSwiperView;->yp:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/msx/FullSwiperView;)Lcom/byazt/nw/BaseSwiper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/msx/FullSwiperView;)Lcom/byazt/lcf/TTBaseVideoActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/msx/FullSwiperView;->ve:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/msx/FullSwiperView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/msx/FullSwiperView;->x:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/msx/FullSwiperView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/msx/FullSwiperView;->da:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/msx/FullSwiperView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/msx/FullSwiperView;I)Lcom/byazt/msx/FullSwiperItemView;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/msx/FullSwiperView;->ve(I)Lcom/byazt/msx/FullSwiperItemView;

    move-result-object p0

    return-object p0
.end method

.method private tt(I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/msx/FullSwiperView;->ve(I)Lcom/byazt/msx/FullSwiperItemView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/byazt/msx/FullSwiperItemView;->u()V

    :cond_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/msx/FullSwiperView;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/msx/FullSwiperView;->sp:Z

    return p1
.end method

.method public static synthetic uj(Lcom/byazt/msx/FullSwiperView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/msx/FullSwiperView;->a:Ljava/lang/String;

    return-object p0
.end method

.method private ve(I)Lcom/byazt/msx/FullSwiperItemView;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->sl:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->sl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/msx/FullSwiperItemView;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/msx/FullSwiperView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/msx/FullSwiperView;->tt(I)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/msx/FullSwiperView;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/msx/FullSwiperView;->sp:Z

    return p0
.end method

.method public static synthetic x(Lcom/byazt/msx/FullSwiperView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/msx/FullSwiperView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/nw/BaseSwiper;->sp()V

    :cond_0
    return-void
.end method

.method public c(F)Lcom/byazt/msx/FullSwiperView;
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/msx/FullSwiperView;->uj:F

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/msx/FullSwiperView;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/msx/FullSwiperView;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/byazt/msx/FullSwiperView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/msx/c;",
            ">;)",
            "Lcom/byazt/msx/FullSwiperView;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/byazt/msx/FullSwiperView;->tt:Ljava/util/List;

    return-object p0
.end method

.method public c()V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->tt:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->c(Z)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    const-string v2, "dot"

    .line 9
    invoke-virtual {v0, v2}, Lcom/byazt/nw/BaseSwiper;->c(Ljava/lang/String;)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->uj(Z)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->ve(Z)Lcom/byazt/nw/BaseSwiper;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->tt(Z)Lcom/byazt/nw/BaseSwiper;

    .line 13
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    new-instance v2, Lcom/byazt/msx/FullSwiperView$1;

    invoke-direct {v2, p0}, Lcom/byazt/msx/FullSwiperView$1;-><init>(Lcom/byazt/msx/FullSwiperView;)V

    invoke-virtual {v0, v2}, Lcom/byazt/nw/BaseSwiper;->setOnPageChangeListener(Lcom/byazt/nw/c;)V

    .line 14
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/msx/c;

    .line 15
    invoke-virtual {v2}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->zo()Lcom/byazt/ete/h;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v3}, Lcom/byazt/ete/h;->tt()J

    move-result-wide v3

    long-to-int v4, v3

    .line 18
    iget-object v3, p0, Lcom/byazt/msx/FullSwiperView;->x:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v3, p0, Lcom/byazt/msx/FullSwiperView;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v3, p0, Lcom/byazt/msx/FullSwiperView;->da:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v3, Lcom/byazt/msx/FullSwiperItemView;

    iget-object v4, p0, Lcom/byazt/msx/FullSwiperView;->ve:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget v5, p0, Lcom/byazt/msx/FullSwiperView;->uj:F

    iget v6, p0, Lcom/byazt/msx/FullSwiperView;->n:F

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/byazt/msx/FullSwiperItemView;-><init>(Landroid/content/Context;Lcom/byazt/msx/c;FF)V

    .line 22
    new-instance v2, Lcom/byazt/msx/FullSwiperView$2;

    invoke-direct {v2, p0}, Lcom/byazt/msx/FullSwiperView$2;-><init>(Lcom/byazt/msx/FullSwiperView;)V

    invoke-virtual {v3, v2}, Lcom/byazt/msx/FullSwiperItemView;->setOnSwiperItemInteractListener(Lcom/byazt/msx/FullSwiperItemView$c;)V

    .line 23
    iget-object v2, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    invoke-virtual {v2, v3}, Lcom/byazt/nw/BaseSwiper;->c(Ljava/lang/Object;)Lcom/byazt/nw/BaseSwiper;

    .line 24
    iget-object v2, p0, Lcom/byazt/msx/FullSwiperView;->sl:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->sl:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/msx/FullSwiperItemView;

    .line 26
    new-instance v1, Lcom/byazt/msx/FullSwiperView$3;

    invoke-direct {v1, p0, v0}, Lcom/byazt/msx/FullSwiperView$3;-><init>(Lcom/byazt/msx/FullSwiperView;Lcom/byazt/msx/FullSwiperItemView;)V

    invoke-virtual {v0, v1}, Lcom/byazt/msx/FullSwiperItemView;->setOnSwiperItemRenderResultListener(Lcom/byazt/msx/FullSwiperItemView$tt;)V

    .line 27
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperItemView;->u()V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Lcom/byazt/ete/or;->tt(Z)I

    move-result v0

    div-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0, p1}, Lcom/byazt/nw/BaseSwiper;->z(I)V

    :cond_1
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public n()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->sl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/msx/FullSwiperItemView;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/byazt/msx/FullSwiperItemView;->rh()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sp()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->yp(I)V

    :cond_0
    return-void
.end method

.method public tt(F)Lcom/byazt/msx/FullSwiperView;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/msx/FullSwiperView;->n:F

    return-object p0
.end method

.method public tt()V
    .locals 4

    .line 7
    iget v0, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-direct {p0, v0}, Lcom/byazt/msx/FullSwiperView;->ve(I)Lcom/byazt/msx/FullSwiperItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperItemView;->z()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->da:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/byazt/msx/FullSwiperView;->da:Ljava/util/List;

    iget v3, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 11
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->x:Ljava/util/List;

    iget v2, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    .line 12
    iget-object v1, p0, Lcom/byazt/msx/FullSwiperView;->i:Ljava/util/List;

    iget v2, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/msx/FullSwiperView;->a()V

    return-void
.end method

.method public uj()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/msx/FullSwiperView;->a()V

    return-void
.end method

.method public ve()V
    .locals 3

    .line 3
    iget v0, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-direct {p0, v0}, Lcom/byazt/msx/FullSwiperView;->ve(I)Lcom/byazt/msx/FullSwiperItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/msx/FullSwiperItemView;->m()V

    .line 5
    :cond_0
    iget v0, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    iget-object v1, p0, Lcom/byazt/msx/FullSwiperView;->sl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->c:Lcom/byazt/nw/BaseSwiper;

    iget v1, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-virtual {v0, v1}, Lcom/byazt/nw/BaseSwiper;->yp(I)V

    .line 7
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->i:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 8
    iget-boolean v0, p0, Lcom/byazt/msx/FullSwiperView;->u:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/byazt/ete/or;->yp()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/byazt/msx/FullSwiperView;->i:Ljava/util/List;

    iget v1, p0, Lcom/byazt/msx/FullSwiperView;->t:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/msx/FullSwiperView;->c(I)V

    :cond_3
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/byazt/msx/FullSwiperView;->u:Z

    :cond_4
    return-void
.end method
