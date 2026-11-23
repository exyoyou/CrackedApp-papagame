.class public Lcom/byazt/un/uj;
.super Lcom/byazt/nj/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/un/uj$c;
    }
.end annotation


# instance fields
.field public volatile aw:Z

.field public b:Z

.field public bm:I

.field public bx:Z

.field public cu:Z

.field public d:J

.field public eo:Lcom/byazt/dh/ve$c;

.field public h:J

.field public hd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/un/uj$c;",
            ">;"
        }
    .end annotation
.end field

.field public ic:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/dh/ve$uj;",
            ">;"
        }
    .end annotation
.end field

.field public kk:Z

.field public kp:I

.field public l:I

.field public lo:Z

.field public lr:I

.field public lt:J

.field public md:Landroid/view/ViewGroup;

.field public nb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/dh/ve$tt;",
            ">;"
        }
    .end annotation
.end field

.field public or:Ljava/lang/String;

.field public os:I

.field public oz:J

.field public p:Ljava/lang/Runnable;

.field public pf:Z

.field public pu:Z

.field public q:Z

.field public qp:Z

.field public final r:Lcom/byazt/fn/ve;

.field public s:I

.field public sv:Z

.field public tk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public to:I

.field public tx:Z

.field public v:Lcom/byazt/fk/sp$c;

.field public y:Z

.field public final zb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/byazt/nj/c;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/byazt/un/uj;->h:J

    .line 40
    iput-wide v0, p0, Lcom/byazt/un/uj;->d:J

    const-string v0, "embeded_ad"

    .line 41
    iput-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/byazt/un/uj;->cu:Z

    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/byazt/un/uj;->qp:Z

    .line 44
    iput-boolean v0, p0, Lcom/byazt/un/uj;->pf:Z

    .line 45
    iput-boolean v0, p0, Lcom/byazt/un/uj;->bx:Z

    .line 46
    iput-boolean v1, p0, Lcom/byazt/un/uj;->sv:Z

    .line 47
    iput-boolean v0, p0, Lcom/byazt/un/uj;->aw:Z

    .line 48
    iput v0, p0, Lcom/byazt/un/uj;->bm:I

    .line 49
    iput v0, p0, Lcom/byazt/un/uj;->lr:I

    .line 50
    iput v0, p0, Lcom/byazt/un/uj;->l:I

    .line 51
    iput-boolean v0, p0, Lcom/byazt/un/uj;->lo:Z

    .line 52
    iput-boolean v1, p0, Lcom/byazt/un/uj;->pu:Z

    .line 53
    iput-boolean v0, p0, Lcom/byazt/un/uj;->b:Z

    .line 54
    iput-boolean v0, p0, Lcom/byazt/un/uj;->q:Z

    .line 55
    iput-boolean v0, p0, Lcom/byazt/un/uj;->kk:Z

    .line 56
    iput-boolean v0, p0, Lcom/byazt/un/uj;->tx:Z

    .line 57
    new-instance v2, Lcom/byazt/un/uj$1;

    invoke-direct {v2, p0}, Lcom/byazt/un/uj$1;-><init>(Lcom/byazt/un/uj;)V

    iput-object v2, p0, Lcom/byazt/un/uj;->v:Lcom/byazt/fk/sp$c;

    .line 58
    iput v0, p0, Lcom/byazt/un/uj;->os:I

    .line 59
    new-instance v2, Lcom/byazt/un/uj$6;

    invoke-direct {v2, p0}, Lcom/byazt/un/uj$6;-><init>(Lcom/byazt/un/uj;)V

    iput-object v2, p0, Lcom/byazt/un/uj;->p:Ljava/lang/Runnable;

    .line 60
    new-instance v2, Lcom/byazt/un/uj$8;

    invoke-direct {v2, p0}, Lcom/byazt/un/uj$8;-><init>(Lcom/byazt/un/uj;)V

    iput-object v2, p0, Lcom/byazt/un/uj;->r:Lcom/byazt/fn/ve;

    .line 61
    iput v1, p0, Lcom/byazt/un/uj;->s:I

    .line 62
    iput-boolean v0, p0, Lcom/byazt/un/uj;->y:Z

    .line 63
    invoke-static {p1}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/byazt/un/uj;->s:I

    .line 64
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/byazt/un/uj;->bm:I

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/byazt/un/uj;->lr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    iput-object p2, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    .line 67
    iput-object p4, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    .line 68
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    .line 69
    iput-object p3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 70
    invoke-direct {p0, p1}, Lcom/byazt/un/uj;->c(Landroid/content/Context;)V

    .line 71
    iput-boolean v1, p0, Lcom/byazt/un/uj;->zb:Z

    .line 72
    iput-boolean p5, p0, Lcom/byazt/un/uj;->cu:Z

    .line 73
    iput-boolean p6, p0, Lcom/byazt/un/uj;->qp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/nj/c;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/byazt/un/uj;->h:J

    .line 3
    iput-wide v0, p0, Lcom/byazt/un/uj;->d:J

    const-string v0, "embeded_ad"

    .line 4
    iput-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/un/uj;->cu:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/byazt/un/uj;->qp:Z

    .line 7
    iput-boolean v0, p0, Lcom/byazt/un/uj;->pf:Z

    .line 8
    iput-boolean v0, p0, Lcom/byazt/un/uj;->bx:Z

    .line 9
    iput-boolean v1, p0, Lcom/byazt/un/uj;->sv:Z

    .line 10
    iput-boolean v0, p0, Lcom/byazt/un/uj;->aw:Z

    .line 11
    iput v0, p0, Lcom/byazt/un/uj;->bm:I

    .line 12
    iput v0, p0, Lcom/byazt/un/uj;->lr:I

    .line 13
    iput v0, p0, Lcom/byazt/un/uj;->l:I

    .line 14
    iput-boolean v0, p0, Lcom/byazt/un/uj;->lo:Z

    .line 15
    iput-boolean v1, p0, Lcom/byazt/un/uj;->pu:Z

    .line 16
    iput-boolean v0, p0, Lcom/byazt/un/uj;->b:Z

    .line 17
    iput-boolean v0, p0, Lcom/byazt/un/uj;->q:Z

    .line 18
    iput-boolean v0, p0, Lcom/byazt/un/uj;->kk:Z

    .line 19
    iput-boolean v0, p0, Lcom/byazt/un/uj;->tx:Z

    .line 20
    new-instance v2, Lcom/byazt/un/uj$1;

    invoke-direct {v2, p0}, Lcom/byazt/un/uj$1;-><init>(Lcom/byazt/un/uj;)V

    iput-object v2, p0, Lcom/byazt/un/uj;->v:Lcom/byazt/fk/sp$c;

    .line 21
    iput v0, p0, Lcom/byazt/un/uj;->os:I

    .line 22
    new-instance v2, Lcom/byazt/un/uj$6;

    invoke-direct {v2, p0}, Lcom/byazt/un/uj$6;-><init>(Lcom/byazt/un/uj;)V

    iput-object v2, p0, Lcom/byazt/un/uj;->p:Ljava/lang/Runnable;

    .line 23
    new-instance v2, Lcom/byazt/un/uj$8;

    invoke-direct {v2, p0}, Lcom/byazt/un/uj$8;-><init>(Lcom/byazt/un/uj;)V

    iput-object v2, p0, Lcom/byazt/un/uj;->r:Lcom/byazt/fn/ve;

    .line 24
    iput v1, p0, Lcom/byazt/un/uj;->s:I

    .line 25
    iput-boolean v0, p0, Lcom/byazt/un/uj;->y:Z

    .line 26
    invoke-static {p1}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/byazt/un/uj;->s:I

    .line 27
    invoke-virtual {p0, p5}, Lcom/byazt/nj/c;->c(Z)V

    .line 28
    iput-object p4, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    .line 29
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    iput p4, p0, Lcom/byazt/un/uj;->bm:I

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/byazt/un/uj;->lr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :catchall_0
    iput-object p2, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    .line 32
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    .line 33
    iput-object p3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 34
    invoke-direct {p0, p1}, Lcom/byazt/un/uj;->c(Landroid/content/Context;)V

    .line 35
    iput-boolean v1, p0, Lcom/byazt/un/uj;->zb:Z

    .line 36
    iput-boolean p6, p0, Lcom/byazt/un/uj;->cu:Z

    .line 37
    iput-boolean p7, p0, Lcom/byazt/un/uj;->qp:Z

    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/byazt/un/a;->ve(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic a(Lcom/byazt/un/uj;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/uj;->lt()Z

    move-result p0

    return p0
.end method

.method public static synthetic aw(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method public static synthetic az(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/un/uj;->aw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/un/a;->ve()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/byazt/un/uj;->aw:Z

    .line 4
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->ve()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/byazt/un/uj$7;

    invoke-direct {v1, p0}, Lcom/byazt/un/uj$7;-><init>(Lcom/byazt/un/uj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic bm(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private bm()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/un/uj;->os:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic bx(Lcom/byazt/un/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/un/uj;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/un/uj;->kp:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/un/uj;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/un/uj;->lt:J

    return-wide p1
.end method

.method private c(Landroid/view/View;)Lcom/byazt/ga/LottieAnimationView;
    .locals 3

    .line 129
    instance-of v0, p1, Lcom/byazt/ga/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lcom/byazt/ga/LottieAnimationView;

    return-object p1

    .line 131
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 132
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 133
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 135
    instance-of v2, v1, Lcom/byazt/ga/LottieAnimationView;

    if-eqz v2, :cond_1

    .line 136
    check-cast v1, Lcom/byazt/ga/LottieAnimationView;

    return-object v1

    .line 137
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 138
    invoke-direct {p0, v1}, Lcom/byazt/un/uj;->c(Landroid/view/View;)Lcom/byazt/ga/LottieAnimationView;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/un/uj;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/byazt/un/uj;->tx()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(FFFF)V
    .locals 10

    .line 97
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->yp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/byazt/un/uj;->hd:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/un/uj$c;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 99
    :goto_0
    instance-of v2, v0, Lcom/byazt/un/NativeVideoTsView;

    if-eqz v2, :cond_1

    .line 100
    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    .line 101
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->da()Z

    move-result v2

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 103
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 104
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_1
    move-object v9, v1

    if-eqz v2, :cond_3

    .line 105
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;FFFFLandroid/view/View;)V

    :cond_3
    return-void
.end method

.method private c(IIII)V
    .locals 8

    if-eqz p3, :cond_9

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    int-to-float v0, p3

    int-to-float v1, p1

    div-float v2, v0, v1

    int-to-float v3, p4

    int-to-float v4, p2

    div-float v5, v3, v4

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/un/uj;->gu()Lcom/byazt/jr/tt;

    move-result-object v6

    .line 107
    instance-of v7, v6, Landroid/view/TextureView;

    if-eqz v7, :cond_1

    .line 108
    move-object v7, v6

    check-cast v7, Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    goto :goto_0

    .line 109
    :cond_1
    instance-of v7, v6, Lcom/byazt/kft/UpieVideoView;

    if-eqz v7, :cond_2

    .line 110
    move-object v7, v6

    check-cast v7, Lcom/byazt/kft/UpieVideoView;

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    goto :goto_0

    .line 111
    :cond_2
    instance-of v7, v6, Landroid/view/SurfaceView;

    if-eqz v7, :cond_3

    .line 112
    move-object v7, v6

    check-cast v7, Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 113
    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    if-nez v7, :cond_4

    .line 114
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    :goto_1
    sub-int p1, p3, p1

    .line 116
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-int p2, p4, p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {v7, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    div-float/2addr v1, v0

    div-float/2addr v4, v3

    .line 117
    invoke-virtual {v7, v1, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 118
    div-int/lit8 p3, p3, 0x2

    int-to-float p1, p3

    div-int/lit8 p4, p4, 0x2

    int-to-float p2, p4

    invoke-virtual {v7, v2, v2, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 119
    instance-of p1, v6, Landroid/view/TextureView;

    if-eqz p1, :cond_5

    .line 120
    move-object p1, v6

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, v7}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 121
    check-cast v6, Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/View;->postInvalidate()V

    return-void

    .line 122
    :cond_5
    instance-of p1, v6, Lcom/byazt/kft/UpieVideoView;

    if-eqz p1, :cond_7

    .line 123
    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/byazt/un/uj;->c(Landroid/view/View;)Lcom/byazt/ga/LottieAnimationView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 124
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_6
    return-void

    .line 125
    :cond_7
    instance-of p1, v6, Landroid/view/SurfaceView;

    if-eqz p1, :cond_9

    .line 126
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_8

    .line 127
    move-object p1, v6

    check-cast p1, Landroid/view/SurfaceView;

    invoke-static {p1, v7}, Lc2/a;->a(Landroid/view/SurfaceView;Landroid/graphics/Matrix;)V

    .line 128
    :cond_8
    check-cast v6, Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    :goto_2
    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v2, v1, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const-string v1, "draw_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v2, v1, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private c(JZ)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/byazt/un/uj;->q()V

    .line 181
    :cond_1
    iget-object p3, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {p3, p1, p2}, Lcom/byazt/fk/sp;->seekTo(J)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 18
    const-class v0, Lcom/byazt/dh/tt$c;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/byazt/dh/tt$c;->c:Lcom/byazt/dh/tt$c;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v1, Lcom/byazt/dh/tt$c;->n:Lcom/byazt/dh/tt$c;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 21
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/byazt/un/uj;->c(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/byazt/un/a;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1, p0}, Lcom/byazt/un/a;->c(Lcom/byazt/dh/c;)V

    .line 23
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1, p0}, Lcom/byazt/un/a;->c(Lcom/byazt/ua/c$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "NativeVideoController"

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/un/uj;IILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/nj/c;->c(IILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/un/uj;ILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/uj;->c(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/un/uj;JJ)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/nj/c;->c(JJ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/un/uj;Landroid/content/Context;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/uj;->ve(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/un/uj;II)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/uj;->uj(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/byazt/un/uj;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/byazt/un/uj;->b:Z

    return p1
.end method

.method public static synthetic cf(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic cu(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic da(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/uj;->hd:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic dz(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic eo(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/byazt/un/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nj/c;->nu:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/uj;->ic:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method public static synthetic gx(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gy(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic hd(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private hd()V
    .locals 9

    .line 2
    iget v0, p0, Lcom/byazt/un/uj;->os:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/byazt/un/uj;->os:I

    .line 3
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/un/a;->tt()V

    .line 6
    iget-object v0, p0, Lcom/byazt/un/uj;->eo:Lcom/byazt/dh/ve$c;

    if-eqz v0, :cond_2

    .line 7
    iget-wide v2, p0, Lcom/byazt/un/uj;->d:J

    iget-wide v4, p0, Lcom/byazt/nj/c;->sp:J

    iget-wide v6, p0, Lcom/byazt/nj/c;->m:J

    invoke-static {v4, v5, v6, v7}, Lcom/byazt/vv/c;->c(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/byazt/dh/ve$c;->c(JI)V

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/byazt/un/uj;->h:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/byazt/un/uj;->d:J

    .line 9
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0, v1}, Lcom/byazt/un/a;->n(Z)V

    .line 10
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    .line 11
    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->mm()I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_4

    .line 12
    iget v5, p0, Lcom/byazt/un/uj;->os:I

    if-lt v5, v2, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 13
    :goto_1
    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v6}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    if-eqz v0, :cond_6

    .line 14
    :cond_5
    iget-object v5, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    iget-object v7, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    iget-object v8, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5, v7, v8, v1}, Lcom/byazt/un/a;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V

    .line 15
    :cond_6
    iget-object v5, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v7, 0x40

    invoke-virtual {v5, v7}, Lcom/byazt/sw/c;->c(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/byazt/un/uj;->bm()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/byazt/un/uj;->lr()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 16
    :cond_7
    iget-object v5, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v5, v7}, Lcom/byazt/sw/c;->ve(I)V

    .line 17
    iget-wide v7, p0, Lcom/byazt/nj/c;->m:J

    invoke-direct {p0, v7, v8, v7, v8}, Lcom/byazt/un/uj;->tt(JJ)V

    .line 18
    iget-wide v7, p0, Lcom/byazt/nj/c;->m:J

    iput-wide v7, p0, Lcom/byazt/nj/c;->sp:J

    iput-wide v7, p0, Lcom/byazt/nj/c;->x:J

    .line 19
    new-instance v5, Lcom/byazt/afw/nu$c;

    invoke-direct {v5}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 21
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 22
    invoke-virtual {p0}, Lcom/byazt/un/uj;->t()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 23
    invoke-virtual {p0}, Lcom/byazt/un/uj;->u()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/byazt/afw/nu$c;->a(I)V

    .line 24
    iget-object v7, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v7, v5}, Lcom/byazt/sw/uj;->uj(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    .line 25
    :cond_8
    iget-boolean v5, p0, Lcom/byazt/nj/c;->t:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/byazt/nj/c;->gt:Z

    if-eqz v5, :cond_9

    .line 26
    iget-object v5, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/byazt/un/uj;->n(Lcom/byazt/dh/tt;Landroid/view/View;)V

    .line 27
    :cond_9
    iput-boolean v1, p0, Lcom/byazt/nj/c;->my:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    if-eqz v6, :cond_c

    if-nez v4, :cond_b

    .line 28
    iget v0, p0, Lcom/byazt/un/uj;->os:I

    if-ge v0, v2, :cond_c

    .line 29
    :cond_b
    invoke-virtual {p0}, Lcom/byazt/un/uj;->zm()V

    return-void

    .line 30
    :cond_c
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v0, v4, v6

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    .line 31
    :goto_2
    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_f

    .line 32
    iget v0, p0, Lcom/byazt/un/uj;->os:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    .line 33
    invoke-virtual {p0}, Lcom/byazt/un/uj;->zm()V

    :cond_f
    return-void
.end method

.method public static synthetic hj(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic hq(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method public static synthetic ic(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private ic()Z
    .locals 19

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 3
    invoke-static {v1}, Lcom/byazt/ic/c;->tt(Lcom/byazt/ete/ic;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2715

    const v5, 0xea68

    const-string v6, "[video] invoke NativeVideoController#playVideo error: iRenderView\u4e3anull"

    const-string v7, "tag_video_play"

    const-string v8, "assist"

    const-string v9, "ad"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/un/uj;->gu()Lcom/byazt/jr/tt;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 5
    iget-object v2, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v2

    .line 6
    invoke-virtual {v0, v9}, Lcom/byazt/nj/c;->c(Ljava/lang/String;)Lcom/byazt/jzl/tt;

    move-result-object v3

    iput-object v3, v0, Lcom/byazt/nj/c;->zm:Lcom/byazt/jzl/tt;

    .line 7
    new-instance v15, Lcom/byazt/ts/uj;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/byazt/nj/c;->zm:Lcom/byazt/jzl/tt;

    invoke-direct {v15, v2, v3}, Lcom/byazt/ts/uj;-><init>(Ljava/lang/String;Lcom/byazt/jzl/tt;)V

    .line 8
    invoke-static {v1}, Lcom/byazt/ete/xd;->rh(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object v16

    .line 9
    new-instance v2, Lcom/byazt/kft/c;

    invoke-static {v1}, Lcom/byazt/ic/c;->i(Lcom/byazt/ete/ic;)Lcom/byazt/cph/c;

    move-result-object v14

    .line 10
    invoke-virtual {v0, v8}, Lcom/byazt/nj/c;->c(Ljava/lang/String;)Lcom/byazt/jzl/tt;

    move-result-object v17

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Lcom/byazt/kft/c;-><init>(Lcom/byazt/jr/tt;Lcom/byazt/cph/c;Lcom/byazt/fk/sp;Lcom/byazt/jzl/a;Lcom/byazt/jzl/tt;)V

    iput-object v2, v0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/byazt/un/uj;->v:Lcom/byazt/fk/sp$c;

    if-eqz v1, :cond_2

    .line 12
    new-instance v1, Lcom/byazt/jzl/ve;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "\u521b\u5efalottie\u64ad\u653e\u5668\u65f6\uff0ciRenderView\u4e3anull, mediaLayout is null: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v4, v2}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 13
    iget-object v2, v0, Lcom/byazt/un/uj;->v:Lcom/byazt/fk/sp$c;

    invoke-interface {v2, v3, v1}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    .line 14
    :cond_2
    invoke-static {v7, v6}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 15
    :cond_3
    invoke-static {v1}, Lcom/byazt/ic/c;->ve(Lcom/byazt/ete/ic;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/un/uj;->gu()Lcom/byazt/jr/tt;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 17
    iget-object v3, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v3}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v3

    .line 18
    invoke-static {}, Lcom/byazt/omf/p;->n()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    invoke-virtual {v4}, Lcom/byazt/jzl/a;->getPlayerType()I

    move-result v4

    if-ne v4, v11, :cond_4

    .line 19
    invoke-static {}, Lcom/byazt/btt/tt;->c()Lcom/byazt/dna/h;

    move-result-object v4

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lcom/byazt/dna/h;->createTTVideoPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/fk/sp;

    move-result-object v3

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {v0, v9}, Lcom/byazt/nj/c;->c(Ljava/lang/String;)Lcom/byazt/jzl/tt;

    move-result-object v4

    iput-object v4, v0, Lcom/byazt/nj/c;->zm:Lcom/byazt/jzl/tt;

    .line 21
    new-instance v4, Lcom/byazt/ts/uj;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/byazt/nj/c;->zm:Lcom/byazt/jzl/tt;

    invoke-direct {v4, v3, v5}, Lcom/byazt/ts/uj;-><init>(Ljava/lang/String;Lcom/byazt/jzl/tt;)V

    move-object v3, v4

    .line 22
    :goto_1
    new-instance v4, Lcom/byazt/kft/tt;

    invoke-static {v1}, Lcom/byazt/ic/c;->i(Lcom/byazt/ete/ic;)Lcom/byazt/cph/c;

    move-result-object v5

    .line 23
    invoke-virtual {v0, v8}, Lcom/byazt/nj/c;->c(Ljava/lang/String;)Lcom/byazt/jzl/tt;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6, v2}, Lcom/byazt/kft/tt;-><init>(Lcom/byazt/fk/sp;Lcom/byazt/cph/c;Lcom/byazt/jzl/tt;Lcom/byazt/jr/tt;)V

    iput-object v4, v0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v2, 0x2

    goto/16 :goto_3

    .line 24
    :cond_5
    iget-object v1, v0, Lcom/byazt/un/uj;->v:Lcom/byazt/fk/sp$c;

    if-eqz v1, :cond_7

    .line 25
    new-instance v1, Lcom/byazt/jzl/ve;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "\u521b\u5efaUpie\u64ad\u653e\u5668\u65f6\uff0ciRenderView\u4e3anull, mediaLayout is null: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v4, v2}, Lcom/byazt/jzl/ve;-><init>(IILjava/lang/String;)V

    .line 26
    iget-object v2, v0, Lcom/byazt/un/uj;->v:Lcom/byazt/fk/sp$c;

    invoke-interface {v2, v3, v1}, Lcom/byazt/fk/sp$c;->onError(Lcom/byazt/fk/sp;Lcom/byazt/fk/ve;)V

    .line 27
    :cond_7
    invoke-static {v7, v6}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 28
    :cond_8
    iget-object v2, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v2

    .line 29
    iget-object v3, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v3}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 30
    invoke-static {}, Lcom/byazt/btt/tt;->c()Lcom/byazt/dna/h;

    move-result-object v12

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/un/uj;->p()Z

    move-result v14

    iget-object v2, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 31
    invoke-static {v2}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    move-result-wide v2

    double-to-long v2, v2

    .line 32
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/ogz/sl;->gy()Lorg/json/JSONObject;

    move-result-object v17

    const/16 v18, 0x0

    move-wide v15, v2

    .line 33
    invoke-interface/range {v12 .. v18}, Lcom/byazt/dna/h;->createTTLiveVideoPlayer(Landroid/content/Context;ZJLorg/json/JSONObject;Landroid/os/Looper;)Lcom/byazt/fk/sp;

    move-result-object v2

    iput-object v2, v0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v2, 0x3

    goto :goto_3

    .line 34
    :cond_9
    invoke-static {}, Lcom/byazt/omf/p;->n()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    invoke-virtual {v3}, Lcom/byazt/jzl/a;->getPlayerType()I

    move-result v3

    if-ne v3, v11, :cond_a

    .line 35
    invoke-static {}, Lcom/byazt/btt/tt;->c()Lcom/byazt/dna/h;

    move-result-object v3

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/byazt/dna/h;->createTTVideoPlayer(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/fk/sp;

    move-result-object v2

    iput-object v2, v0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v2, 0x4

    goto :goto_3

    .line 36
    :cond_a
    invoke-virtual {v0, v9}, Lcom/byazt/nj/c;->c(Ljava/lang/String;)Lcom/byazt/jzl/tt;

    move-result-object v3

    iput-object v3, v0, Lcom/byazt/nj/c;->zm:Lcom/byazt/jzl/tt;

    .line 37
    new-instance v3, Lcom/byazt/ts/uj;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/byazt/nj/c;->zm:Lcom/byazt/jzl/tt;

    invoke-direct {v3, v2, v4}, Lcom/byazt/ts/uj;-><init>(Ljava/lang/String;Lcom/byazt/jzl/tt;)V

    iput-object v3, v0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v2, 0x5

    :goto_3
    if-eqz v1, :cond_b

    .line 38
    iget-object v3, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v3}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    iget-object v4, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v4}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v4

    .line 40
    iget-object v5, v0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v5}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v2, v5}, Lcom/byazt/rgb/ve;->c(Lcom/byazt/ete/ic;Ljava/lang/String;IILjava/lang/String;)V

    :cond_b
    return v11
.end method

.method public static synthetic ij(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ir(Lcom/byazt/un/uj;)Lcom/byazt/fk/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic is(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic iu(Lcom/byazt/un/uj;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic jt(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private kk()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/byazt/sw/c;->tt(I)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->ve(I)V

    .line 7
    iget-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 9
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v2, v1, v4, v5, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const-string v1, "draw_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 13
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v2, v1, v4, v5, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;JLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic kk(Lcom/byazt/un/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/un/uj;->kk:Z

    return p0
.end method

.method public static synthetic kp(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private kp()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/nj/c;->gt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->i(Z)V

    .line 4
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_2

    .line 6
    iget-object v2, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/byazt/un/a;->tt(Landroid/view/ViewGroup;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byazt/un/a;->ve(Z)V

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lcom/byazt/un/uj;->n(I)V

    .line 9
    iget-object v0, p0, Lcom/byazt/un/uj;->nb:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dh/ve$tt;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 10
    iget-boolean v1, p0, Lcom/byazt/nj/c;->gt:Z

    invoke-interface {v0, v1}, Lcom/byazt/dh/ve$tt;->c(Z)V

    :cond_4
    return-void
.end method

.method public static synthetic kz(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private l()Z
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lo(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private lo()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "resumeVideo:  mIsSurfaceValid = "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    iget-boolean v2, p0, Lcom/byazt/nj/c;->da:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "NativeVideoController"

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v1, :cond_5

    .line 4
    invoke-interface {v1}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/byazt/un/uj;->l()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    iget-boolean v1, p0, Lcom/byazt/nj/c;->da:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->isAudio()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ic/c;->tt(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/byazt/nj/c;->yv:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/byazt/nj/c;->tt(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/nj/c;->eo()V

    :goto_1
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "resumeVideo: isPaused = true , mIsSurfaceValid = "

    aput-object v5, v1, v3

    .line 8
    iget-boolean v3, p0, Lcom/byazt/nj/c;->da:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_3
    invoke-direct {p0}, Lcom/byazt/un/uj;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/byazt/nj/c;->sp:J

    .line 11
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/byazt/omf/x;->c(J)V

    .line 12
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    iget-wide v2, p0, Lcom/byazt/nj/c;->sp:J

    invoke-interface {v1, v2, v3}, Lcom/byazt/fk/sp;->seekTo(J)V

    .line 13
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {v1}, Lcom/byazt/fk/sp;->play()V

    goto :goto_2

    .line 14
    :cond_4
    iput v4, p0, Lcom/byazt/un/uj;->kp:I

    .line 15
    iput-boolean v3, p0, Lcom/byazt/un/uj;->b:Z

    .line 16
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    iget-wide v4, p0, Lcom/byazt/nj/c;->sp:J

    iget-boolean v2, p0, Lcom/byazt/nj/c;->nu:Z

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/byazt/fk/sp;->start(ZJZ)V

    .line 17
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v1, v0}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    new-instance v0, Lcom/byazt/afw/nu$c;

    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 20
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 21
    invoke-virtual {p0}, Lcom/byazt/un/uj;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 22
    invoke-virtual {p0}, Lcom/byazt/nj/c;->zb()Lcom/byazt/un/a;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/byazt/nj/c;->tt(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    :cond_6
    return-void
.end method

.method public static synthetic lr(Lcom/byazt/un/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/uj;->b()V

    return-void
.end method

.method private lr()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/un/uj;->os:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lt(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private lt()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const-string v1, "splash_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const-string v1, "cache_splash_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic m(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ma(Lcom/byazt/un/uj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/un/uj;->kp:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic md(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic mm(Lcom/byazt/un/uj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/un/uj;->bm:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic mq(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/un/uj;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/un/uj;->tx:Z

    return p1
.end method

.method public static synthetic nb(Lcom/byazt/un/uj;)Lcom/byazt/dh/ve$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/uj;->eo:Lcom/byazt/dh/ve$c;

    return-object p0
.end method

.method public static synthetic nt(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ny(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic or(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic os(Lcom/byazt/un/uj;)Lcom/byazt/nj/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->gu:Lcom/byazt/nj/c$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic oz(Lcom/byazt/un/uj;)Lcom/byazt/nj/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->gu:Lcom/byazt/nj/c$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic pf(Lcom/byazt/un/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/un/uj;->d:J

    return-wide v0
.end method

.method public static synthetic pn(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic pu(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private pu()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byazt/un/uj;->bm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    new-instance v0, Lcom/byazt/afw/nu$c;

    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/byazt/un/uj;->lt()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/byazt/un/uj;->sv:Z

    .line 6
    :cond_1
    iget-boolean v2, p0, Lcom/byazt/un/uj;->sv:Z

    invoke-virtual {v0, v2}, Lcom/byazt/afw/nu$c;->tt(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 8
    iget-object v2, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v2, v1}, Lcom/byazt/sw/c;->ve(I)V

    .line 9
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v1, v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    :cond_2
    return-void
.end method

.method public static synthetic q(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private q()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/un/a;->uj(I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0, v1, v1}, Lcom/byazt/un/a;->c(ZZ)V

    .line 5
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0, v1}, Lcom/byazt/un/a;->ve(Z)V

    .line 6
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->n()V

    .line 7
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->sp()V

    :cond_0
    return-void
.end method

.method public static synthetic qp(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method public static synthetic r(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/un/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/un/uj;->zb:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic rl(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method public static synthetic s(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private sp(I)Z
    .locals 6

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/un/uj;->a()V

    .line 6
    iput-boolean v2, p0, Lcom/byazt/nj/c;->z:Z

    .line 7
    iget-object v3, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v3, :cond_0

    .line 8
    iget-object v4, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    iget-object v5, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5, v1}, Lcom/byazt/un/a;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V

    :cond_0
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/byazt/un/a;->c()V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/un/uj;->a()V

    .line 12
    iput-boolean v2, p0, Lcom/byazt/nj/c;->z:Z

    .line 13
    iput-boolean v1, p0, Lcom/byazt/un/uj;->pf:Z

    .line 14
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_3

    .line 15
    invoke-static {v1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v1

    iget-boolean v2, p0, Lcom/byazt/un/uj;->qp:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/un/a;->c(ILcom/byazt/jzl/uj;Z)Z

    move-result p1

    return p1

    :cond_2
    if-ne v0, v3, :cond_3

    .line 16
    iput-boolean v1, p0, Lcom/byazt/nj/c;->z:Z

    .line 17
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/byazt/un/a;->gt()V

    :cond_3
    return v2
.end method

.method public static synthetic sv(Lcom/byazt/un/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nj/c;->m:J

    return-wide v0
.end method

.method public static synthetic t(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method public static synthetic tk(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private tk()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->vi()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "draw_ad"

    iget-object v2, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic to(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private to()Z
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/byazt/un/uj;->lt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ek()Lcom/byazt/ete/j;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/j;->c()I

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static synthetic tt(Lcom/byazt/un/uj;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/un/uj;->h:J

    return-wide p1
.end method

.method private tt(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x7e06ff02

    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    const/high16 v3, -0x1000000

    .line 10
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v6, 0x7e06ffbc    # 4.48611E37f

    .line 13
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    const/4 v6, 0x0

    .line 14
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v7, 0x11

    .line 15
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 16
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v8, 0x7e06fec3

    .line 20
    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    .line 21
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 22
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    new-instance v4, Lcom/byazt/ff/TTProgressBar;

    invoke-direct {v4, v0}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/4 v9, 0x1

    const/high16 v10, 0x42700000    # 60.0f

    invoke-static {v9, v10, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v7, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v8, 0x7e06feaf

    .line 26
    invoke-virtual {v4, v8}, Landroid/view/View;->setId(I)V

    const/16 v8, 0xd

    .line 27
    invoke-virtual {v7, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 28
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v7, Lcom/byazt/un/uj$4;

    move-object/from16 v10, p0

    invoke-direct {v7, v10, v0, v4}, Lcom/byazt/un/uj$4;-><init>(Lcom/byazt/un/uj;Landroid/content/Context;Lcom/byazt/ff/TTProgressBar;)V

    const-string v11, "tt_normalscreen_loading"

    const/16 v12, 0x140

    invoke-static {v0, v11, v7, v12}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 30
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    new-instance v3, Lcom/byazt/wol/uj;

    invoke-direct {v3}, Lcom/byazt/wol/uj;-><init>()V

    invoke-virtual {v3, v0}, Lcom/byazt/wol/uj;->inflate(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7e06fee8

    .line 32
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 33
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v11, 0x7e06feaa

    .line 38
    invoke-virtual {v3, v11}, Landroid/view/View;->setId(I)V

    .line 39
    invoke-virtual {v4, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v11, "tt_new_play_video"

    .line 41
    invoke-static {v0, v11, v3, v12}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    const/16 v11, 0x8

    .line 42
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    new-instance v3, Lcom/byazt/ff/TTProgressBar;

    const v4, 0x103001f

    const/4 v12, 0x0

    invoke-direct {v3, v0, v12, v4}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 47
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v13, 0x3fc00000    # 1.5f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v9, v13, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v4, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x64

    .line 48
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const v1, 0x7e06fec5

    .line 49
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 50
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    invoke-virtual {v3, v12}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v12, "#A5FFFFFF"

    .line 53
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v12, 0x3f800000    # 1.0f

    .line 54
    invoke-static {v0, v12}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    .line 55
    invoke-virtual {v1, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v13, 0x40000000    # 2.0f

    .line 56
    invoke-static {v0, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v13

    .line 57
    invoke-virtual {v1, v5, v13}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 58
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v15, "#FFFFFFFF"

    .line 59
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    invoke-virtual {v14, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 61
    invoke-virtual {v14, v5, v13}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 62
    new-instance v15, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x3

    invoke-direct {v15, v14, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 63
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v14}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v16, "#FFF85959"

    .line 64
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v14, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 65
    invoke-virtual {v14, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 66
    invoke-virtual {v14, v5, v13}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 67
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v7, v14, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v8, v6

    aput-object v15, v8, v9

    const/4 v1, 0x2

    aput-object v7, v8, v1

    .line 68
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0xc

    .line 71
    invoke-virtual {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    new-instance v1, Lcom/byazt/lbn/TTViewStub;

    new-instance v3, Lcom/byazt/wol/a;

    invoke-direct {v3}, Lcom/byazt/wol/a;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    .line 75
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v4, 0x7e06ff20

    .line 76
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 77
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    new-instance v1, Lcom/byazt/lbn/TTViewStub;

    new-instance v3, Lcom/byazt/wol/tt;

    invoke-direct {v3}, Lcom/byazt/wol/tt;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    .line 80
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v4, 0x7e06fed2

    .line 81
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    new-instance v1, Lcom/byazt/lbn/TTViewStub;

    new-instance v3, Lcom/byazt/wol/sp;

    invoke-direct {v3}, Lcom/byazt/wol/sp;-><init>()V

    invoke-direct {v1, v0, v3}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    .line 85
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 86
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v3, 0x7e06ff74

    .line 87
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private tt(JJ)V
    .locals 2

    .line 123
    iput-wide p1, p0, Lcom/byazt/nj/c;->sp:J

    .line 124
    iput-wide p3, p0, Lcom/byazt/nj/c;->m:J

    .line 125
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/un/a;->c(JJ)V

    .line 127
    invoke-static {p1, p2, p3, p4}, Lcom/byazt/vv/c;->c(JJ)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v1, v0}, Lcom/byazt/un/a;->tt(I)V

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/un/uj;->eo:Lcom/byazt/dh/ve$c;

    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/dh/ve$c;->c(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "NativeVideoController"

    const-string p3, "onProgressUpdate error: "

    .line 131
    invoke-static {p2, p3, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private tt(Landroid/content/Context;I)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 148
    :cond_1
    iget p1, p0, Lcom/byazt/un/uj;->s:I

    if-ne p1, p2, :cond_2

    return-void

    .line 149
    :cond_2
    iput p2, p0, Lcom/byazt/un/uj;->s:I

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/byazt/un/uj;->pf:Z

    .line 151
    :cond_3
    iget-boolean p1, p0, Lcom/byazt/un/uj;->pf:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/byazt/nj/c;->gt()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/byazt/un/uj;->cu:Z

    if-eqz p1, :cond_4

    .line 152
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/byazt/un/uj$9;

    invoke-direct {p2, p0}, Lcom/byazt/un/uj$9;-><init>(Lcom/byazt/un/uj;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :cond_4
    iget-object p1, p0, Lcom/byazt/un/uj;->hd:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 154
    iget-object p1, p0, Lcom/byazt/un/uj;->hd:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/un/uj$c;

    iget p2, p0, Lcom/byazt/un/uj;->s:I

    invoke-interface {p1, p2}, Lcom/byazt/un/uj$c;->c(I)V

    :cond_5
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/un/uj;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/un/uj;->hd()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/un/uj;JJ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/un/uj;->tt(JJ)V

    return-void
.end method

.method private tt(IIII)Z
    .locals 0

    if-le p3, p4, :cond_0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/uj;->ve(II)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    if-gtz p3, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/un/uj;I)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/un/uj;->sp(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic tt(Lcom/byazt/un/uj;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/un/uj;->lo:Z

    return p1
.end method

.method private tx()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic tx(Lcom/byazt/un/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/un/uj;->tx:Z

    return p0
.end method

.method public static synthetic u(Lcom/byazt/un/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/uj;->pu()V

    return-void
.end method

.method private uj(II)Z
    .locals 2

    .line 2
    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const v0, 0xea68

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public static synthetic uj(Lcom/byazt/un/uj;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/byazt/un/uj;->b:Z

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/un/uj;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/un/uj;->kk:Z

    return p1
.end method

.method public static synthetic v(Lcom/byazt/un/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/un/uj;)Lcom/byazt/nr/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private ve(Landroid/content/Context;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/uj;->tt(Landroid/content/Context;I)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/byazt/nj/c;->z:Z

    :cond_0
    return-void
.end method

.method private ve(Lcom/byazt/jzl/a;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "model is null"

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_1

    .line 7
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setCodeId(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p1, v1}, Lcom/byazt/jzl/a;->setScene(I)V

    .line 9
    invoke-direct {p0}, Lcom/byazt/un/uj;->tx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/rgb/ve;->tt(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setDataSource(Lcom/byazt/fk/u;)V

    .line 11
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byazt/un/uj;->h:J

    .line 12
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p1, v0}, Lcom/byazt/un/a;->n(I)V

    .line 15
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1, v1}, Lcom/byazt/un/a;->n(I)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 18
    iget-object v0, v0, Lcom/byazt/un/a;->c:Landroid/view/View;

    const/16 v2, 0x32

    const/16 v3, 0x9

    invoke-static {v0, v2, v3}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;II)Z

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 19
    :goto_0
    new-instance v2, Lcom/byazt/un/uj$5;

    invoke-direct {v2, p0}, Lcom/byazt/un/uj$5;-><init>(Lcom/byazt/un/uj;)V

    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    .line 20
    invoke-virtual {p0, v2}, Lcom/byazt/nj/c;->tt(Ljava/lang/Runnable;)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/byazt/nj/c;->x(Z)V

    .line 22
    iget-object p1, p0, Lcom/byazt/un/uj;->hd:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/byazt/un/uj;->hd:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/un/uj$c;

    invoke-interface {p1}, Lcom/byazt/un/uj$c;->i()V

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {p0, v2}, Lcom/byazt/nj/c;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    const-string p1, "url is null"

    .line 25
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    .line 26
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p0}, Lcom/byazt/un/uj;->sv()V

    :cond_8
    return-void
.end method

.method private ve(II)Z
    .locals 0

    if-ge p1, p2, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/byazt/un/uj;->tk()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/un/uj;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/un/uj;->q:Z

    return p1
.end method

.method public static synthetic vi(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic vp(Lcom/byazt/un/uj;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method public static synthetic xd(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic y(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yf(Lcom/byazt/un/uj;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic yo(Lcom/byazt/un/uj;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/un/uj;->lr:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic yp(Lcom/byazt/un/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/uj;->kk()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic yv(Lcom/byazt/un/uj;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/un/uj;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/un/uj;->q:Z

    return p0
.end method

.method public static synthetic zb(Lcom/byazt/un/uj;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zm(Lcom/byazt/un/uj;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/byazt/un/uj;->bm()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/byazt/afw/nu$c;

    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 7
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 8
    invoke-virtual {p0}, Lcom/byazt/un/uj;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 9
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p0, v1, v0}, Lcom/byazt/nj/c;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/byazt/un/a;->c()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/byazt/un/a;->gr()V

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/byazt/un/uj;->lo()V

    return-void
.end method

.method public aw()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/un/uj;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/byazt/un/uj;->y:Z

    :try_start_0
    const-string v0, "device_info_new"

    .line 4
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    iget-object v1, p0, Lcom/byazt/un/uj;->r:Lcom/byazt/fn/ve;

    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->removeNetworkMonitor(Lcom/byazt/fn/ve;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public bx()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/content/Context;Ljava/util/EnumSet;)Lcom/byazt/un/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/byazt/dh/tt$c;",
            ">;)",
            "Lcom/byazt/un/a;"
        }
    .end annotation

    .line 25
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0, p1}, Lcom/byazt/un/uj;->tt(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/byazt/wol/LayoutVideoDetail;

    invoke-direct {v0, p1}, Lcom/byazt/wol/LayoutVideoDetail;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v3, v0

    if-nez v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Lcom/byazt/un/a;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/nj/c;->or()Z

    move-result v8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v9}, Lcom/byazt/un/a;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;ZLcom/byazt/hkv/c;)V

    goto :goto_1

    .line 30
    :cond_2
    new-instance v0, Lcom/byazt/un/n;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/byazt/un/n;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;Z)V

    :goto_1
    return-object v0
.end method

.method public c()V
    .locals 1

    .line 173
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/byazt/un/uj;->aw:Z

    .line 175
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/byazt/un/uj;->da()V

    .line 177
    invoke-direct {p0}, Lcom/byazt/un/uj;->b()V

    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/un/uj;->da()V

    return-void
.end method

.method public c(I)V
    .locals 10

    .line 192
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-wide v0, p0, Lcom/byazt/un/uj;->lt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/un/uj;->lt:J

    .line 195
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/un/uj;->lt:J

    sub-long/2addr v0, v2

    .line 196
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "close_reason"

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v8, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "buffer_count"

    .line 198
    invoke-virtual {p0}, Lcom/byazt/un/uj;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, p1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "buffer_time"

    .line 199
    invoke-virtual {p0}, Lcom/byazt/un/uj;->t()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, p1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 201
    :goto_0
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v2, 0x200

    invoke-virtual {p1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 202
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {p1, v2}, Lcom/byazt/sw/c;->ve(I)V

    .line 203
    iget-object p1, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const-string v2, "embeded_ad"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 204
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {p1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v9

    .line 205
    iget-object v4, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v5, "embeded_ad"

    move-wide v6, v0

    invoke-static/range {v4 .. v9}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_2
    iget-object p1, p0, Lcom/byazt/un/uj;->or:Ljava/lang/String;

    const-string v2, "draw_ad"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 207
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {p1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v9

    .line 208
    iget-object v4, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v5, "draw_ad"

    move-wide v6, v0

    invoke-static/range {v4 .. v9}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/String;)V

    .line 209
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 210
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p1, v2}, Lcom/byazt/apd/tt;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    const-string v2, "tobsdk_livesdk_live_window_duration_v2"

    if-eqz p1, :cond_4

    .line 211
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    iget-object v3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 212
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/byazt/apd/tt;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    return-void

    .line 213
    :cond_4
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v2, p1, v0, v1}, Lcom/byazt/ex/c;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    :cond_5
    return-void
.end method

.method public c(II)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iput p1, p0, Lcom/byazt/un/uj;->bm:I

    .line 17
    iput p2, p0, Lcom/byazt/un/uj;->lr:I

    :cond_1
    :goto_0
    return-void
.end method

.method public c(J)V
    .locals 3

    .line 69
    iput-wide p1, p0, Lcom/byazt/nj/c;->sp:J

    .line 70
    iget-wide v0, p0, Lcom/byazt/nj/c;->x:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/byazt/nj/c;->x:J

    .line 71
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/byazt/un/a;->c()V

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 74
    iput p2, p0, Lcom/byazt/un/uj;->kp:I

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/byazt/un/uj;->b:Z

    .line 76
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    iget-boolean v2, p0, Lcom/byazt/nj/c;->nu:Z

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/byazt/fk/sp;->start(ZJZ)V

    :cond_2
    return-void
.end method

.method public c(Landroid/content/Context;I)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/uj;->tt(Landroid/content/Context;I)V

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 189
    iput-boolean p1, p0, Lcom/byazt/nj/c;->z:Z

    .line 190
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/byazt/un/uj$10;

    invoke-direct {p2, p0}, Lcom/byazt/un/uj$10;-><init>(Lcom/byazt/un/uj;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/dh/tt;I)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-wide v0, p0, Lcom/byazt/un/uj;->oz:J

    invoke-direct {p0, p2}, Lcom/byazt/un/uj;->a(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/byazt/un/uj;->c(JZ)V

    return-void
.end method

.method public c(Lcom/byazt/dh/tt;IZ)V
    .locals 4

    .line 156
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long p1, p2

    .line 157
    iget-wide v0, p0, Lcom/byazt/nj/c;->m:J

    mul-long p1, p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p2, p1

    int-to-long p1, p2

    .line 158
    iput-wide p1, p0, Lcom/byazt/un/uj;->oz:J

    goto :goto_0

    .line 159
    :cond_1
    iput-wide v2, p0, Lcom/byazt/un/uj;->oz:J

    .line 160
    :goto_0
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_2

    .line 161
    iget-wide p2, p0, Lcom/byazt/un/uj;->oz:J

    invoke-virtual {p1, p2, p3}, Lcom/byazt/un/a;->c(J)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 2

    .line 139
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {p1}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/byazt/un/uj;->a()V

    .line 142
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p1, v0, p2}, Lcom/byazt/un/a;->tt(ZZ)V

    .line 144
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->a()V

    return-void

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {p1}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result p1

    if-nez p1, :cond_3

    .line 146
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/byazt/un/a;->ve(Landroid/view/ViewGroup;)V

    .line 148
    :cond_2
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/uj;->c(J)V

    .line 149
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    .line 150
    invoke-virtual {p1, p2, p2}, Lcom/byazt/un/a;->tt(ZZ)V

    return-void

    .line 151
    :cond_3
    invoke-virtual {p0, p2}, Lcom/byazt/un/uj;->a(Z)V

    .line 152
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    .line 153
    invoke-virtual {p1, p2, p2}, Lcom/byazt/un/a;->tt(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/dh/tt;Landroid/view/View;Z)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/byazt/un/uj;->kp()V

    return-void
.end method

.method public c(Lcom/byazt/dh/tt;Landroid/view/View;ZZ)V
    .locals 1

    .line 162
    iget-boolean p1, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/byazt/un/uj;->a()V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 165
    iget-boolean p1, p0, Lcom/byazt/nj/c;->t:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/byazt/un/uj;->gr()Z

    move-result p1

    if-nez p1, :cond_2

    .line 166
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p0}, Lcom/byazt/un/uj;->bx()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/byazt/un/a;->tt(ZZ)V

    .line 167
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1, p4, p3, v0}, Lcom/byazt/un/a;->c(ZZZ)V

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 169
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->a()V

    .line 170
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->n()V

    return-void

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->a()V

    return-void
.end method

.method public c(Lcom/byazt/dh/ve$c;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/byazt/un/uj;->eo:Lcom/byazt/dh/ve$c;

    return-void
.end method

.method public c(Lcom/byazt/dh/ve$tt;)V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/un/uj;->nb:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public c(Lcom/byazt/dh/ve$uj;)V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/un/uj;->ic:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public c(Lcom/byazt/nc/u;)V
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lcom/byazt/un/a;->c(Lcom/byazt/nc/u;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/sgn/z$c;Ljava/lang/String;)V
    .locals 2

    .line 182
    sget-object p2, Lcom/byazt/un/uj$2;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/un/uj;->x()V

    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/byazt/nj/c;->z:Z

    .line 185
    iput-boolean p2, p0, Lcom/byazt/un/uj;->pf:Z

    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/byazt/un/uj;->c(ZI)V

    return-void

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/un/uj;->a()V

    return-void
.end method

.method public c(Lcom/byazt/un/NativeVideoTsView$c;)V
    .locals 2

    .line 12
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Lcom/byazt/un/uj$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/un/uj$3;-><init>(Lcom/byazt/un/uj;Lcom/byazt/un/NativeVideoTsView$c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/un/a;->c(Lcom/byazt/un/NativeVideoTsView$c;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/un/uj$c;)V
    .locals 1

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/un/uj;->hd:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public c(Lcom/byazt/uz/c;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/un/a;->c(Lcom/byazt/uz/c;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/byazt/un/uj;->bm()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    new-instance v0, Lcom/byazt/afw/nu$c;

    invoke-direct {v0}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 65
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 66
    invoke-virtual {p0}, Lcom/byazt/un/uj;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/byazt/afw/nu$c;->tt(J)V

    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {v0, p1}, Lcom/byazt/afw/nu$c;->c(Ljava/util/Map;)V

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p0, p1, v0}, Lcom/byazt/nj/c;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    :cond_3
    return-void
.end method

.method public c(ZI)V
    .locals 6

    .line 77
    iget-boolean v0, p0, Lcom/byazt/nj/c;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/byazt/un/uj;->c(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v2

    .line 80
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/byazt/un/uj;->bm()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    .line 81
    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    if-eqz p1, :cond_2

    .line 82
    new-instance p1, Lcom/byazt/afw/nu$c;

    invoke-direct {p1}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 84
    invoke-virtual {p1, v2, v3}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 85
    invoke-virtual {p0}, Lcom/byazt/un/uj;->t()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 86
    invoke-virtual {p1, p2}, Lcom/byazt/afw/nu$c;->n(I)V

    .line 87
    invoke-virtual {p0}, Lcom/byazt/un/uj;->u()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/afw/nu$c;->a(I)V

    .line 88
    iget-object p2, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lcom/byazt/sw/c;->ve(I)V

    .line 89
    iget-object p2, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/byazt/sw/c;->c(I)Z

    move-result p2

    xor-int/2addr p2, v1

    .line 90
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    iget-object v1, p0, Lcom/byazt/un/uj;->tk:Ljava/util/Map;

    invoke-static {v0, p1, v1, p2}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;Ljava/util/Map;I)V

    goto :goto_0

    .line 91
    :cond_2
    new-instance p1, Lcom/byazt/afw/nu$c;

    invoke-direct {p1}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 93
    invoke-virtual {p1, v2, v3}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 94
    invoke-virtual {p0}, Lcom/byazt/un/uj;->t()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 95
    iget-object p2, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p0, p2, p1}, Lcom/byazt/nj/c;->c(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    .line 96
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/un/uj;->da()V

    return-void
.end method

.method public c(Lcom/byazt/jzl/a;)Z
    .locals 9

    .line 32
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "tag_video_play"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "url is null"

    .line 34
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    const-string p1, "[video] play video stop , because no video info"

    .line 35
    invoke-static {v1, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 37
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->isQuiet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/nj/c;->nu:Z

    .line 38
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getCurrent()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/nj/c;->sp:J

    .line 39
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getCurrent()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getCurrent()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/byazt/nj/c;->sp:J

    .line 41
    iget-wide v7, p0, Lcom/byazt/nj/c;->x:J

    cmp-long v0, v7, v3

    if-lez v0, :cond_1

    move-wide v3, v7

    :cond_1
    iput-wide v3, p0, Lcom/byazt/nj/c;->x:J

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {v0}, Lcom/byazt/un/a;->c()V

    .line 44
    iget v0, p0, Lcom/byazt/un/uj;->os:I

    if-nez v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->sp()V

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/byazt/un/a;->ve(II)V

    .line 47
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    iget-object v3, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lcom/byazt/un/a;->ve(Landroid/view/ViewGroup;)V

    .line 48
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/byazt/un/a;->c(II)V

    .line 49
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-nez v0, :cond_6

    .line 50
    invoke-direct {p0}, Lcom/byazt/un/uj;->ic()Z

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "create video error"

    .line 51
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return v2

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    iget-object v3, p0, Lcom/byazt/un/uj;->v:Lcom/byazt/fk/sp$c;

    invoke-interface {v0, v3}, Lcom/byazt/fk/sp;->addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V

    .line 53
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yv()V

    .line 54
    iput-wide v5, p0, Lcom/byazt/un/uj;->d:J

    .line 55
    invoke-direct {p0, p1}, Lcom/byazt/un/uj;->ve(Lcom/byazt/jzl/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public da()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->tt(I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/byazt/fk/sp;->release()V

    .line 6
    iput-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->mm()I

    move-result v0

    :goto_1
    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 8
    iget v3, p0, Lcom/byazt/un/uj;->os:I

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 9
    :goto_2
    iget-object v3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v3}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_5

    .line 10
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    iget-object v3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v4, v2}, Lcom/byazt/un/a;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "NativeVideoController"

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/byazt/nj/c;->sl:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/byazt/un/uj;->aw()V

    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/un/uj;->tx()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/rgb/ve;->ve(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public gr()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public gu()Lcom/byazt/jr/tt;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 4
    invoke-static {v0}, Lcom/byazt/ic/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/byazt/un/a;->nu()Lcom/byazt/jr/tt;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/uj;->c(ZI)V

    return-void
.end method

.method public n(I)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 6
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 7
    :cond_3
    check-cast v1, Landroid/app/Activity;

    .line 8
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :goto_2
    const/16 p1, 0x400

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 10
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public n(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/un/uj;->c(Lcom/byazt/dh/tt;Landroid/view/View;Z)V

    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/byazt/un/uj;->pu:Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public nb()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/byazt/sw/uj;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/nj/c;->gr:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/byazt/nj/c;->zm:Lcom/byazt/jzl/tt;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/byazt/nj/c;->gr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/byazt/jzl/tt;->tt(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->ve(I)V

    .line 7
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    iget-object v2, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    iget-boolean v3, p0, Lcom/byazt/un/uj;->sv:Z

    iget-object v4, p0, Lcom/byazt/nj/c;->gr:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/byazt/sw/uj;->c(Lcom/byazt/ete/ic;Lcom/byazt/oce/c;Lcom/byazt/jzl/a;ZLjava/lang/String;)V

    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public pf()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/un/uj;->tk:Ljava/util/Map;

    return-object v0
.end method

.method public qy()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/un/uj;->lo:Z

    return v0
.end method

.method public rl()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/un/uj;->sv:Z

    return v0
.end method

.method public sp()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    :cond_0
    return-void
.end method

.method public sv()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/un/uj;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/un/uj;->pu:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/un/uj;->y:Z

    const-string v0, "device_info_new"

    .line 4
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    iget-object v1, p0, Lcom/byazt/un/uj;->r:Lcom/byazt/fn/ve;

    invoke-interface {v0, v1}, Lcom/byazt/dna/u;->registerNetworkMonitor(Lcom/byazt/fn/ve;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t()J
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->getTotalBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public tt()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->ve(Z)V

    const/4 v1, 0x2

    .line 158
    iput v1, p0, Lcom/byazt/un/uj;->kp:I

    .line 159
    iput-boolean v0, p0, Lcom/byazt/un/uj;->b:Z

    .line 160
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {v0}, Lcom/byazt/fk/sp;->restart()V

    :cond_0
    return-void
.end method

.method public tt(II)V
    .locals 8

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/byazt/un/uj;->gu()Lcom/byazt/jr/tt;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-gez p1, :cond_1

    if-gez p2, :cond_1

    .line 92
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getVideoWidth()I

    move-result p1

    .line 93
    iget-object p2, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {p2}, Lcom/byazt/fk/sp;->getVideoHeight()I

    move-result p2

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_f

    if-lez v1, :cond_f

    if-lez p2, :cond_f

    if-gtz p1, :cond_2

    goto/16 :goto_3

    :cond_2
    if-ne p1, p2, :cond_4

    if-le v0, v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    if-le p1, p2, :cond_5

    int-to-float v3, p1

    mul-float v3, v3, v2

    int-to-float v2, p2

    div-float/2addr v3, v2

    float-to-double v2, v3

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v6

    div-double/2addr v4, v2

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    move v2, v0

    goto :goto_1

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/byazt/un/uj;->to()Z

    move-result v3

    if-nez v3, :cond_6

    int-to-float v3, p2

    mul-float v3, v3, v2

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-double v3, v3

    int-to-float v5, v1

    mul-float v5, v5, v2

    float-to-double v5, v5

    div-double/2addr v5, v3

    .line 98
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    move v2, v3

    move v3, v1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    if-gt v3, v1, :cond_7

    if-gtz v3, :cond_8

    :cond_7
    move v3, v1

    .line 99
    :cond_8
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/byazt/un/uj;->tt(IIII)Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v0

    .line 100
    :cond_9
    invoke-direct {p0}, Lcom/byazt/un/uj;->to()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 101
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/byazt/un/uj;->c(IIII)V

    return-void

    .line 102
    :cond_a
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    .line 103
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    invoke-virtual {p0}, Lcom/byazt/un/uj;->gu()Lcom/byazt/jr/tt;

    move-result-object v5

    .line 105
    instance-of v6, v5, Landroid/view/TextureView;

    if-eqz v6, :cond_b

    .line 106
    check-cast v5, Landroid/view/TextureView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 107
    :cond_b
    instance-of v6, v5, Lcom/byazt/kft/UpieVideoView;

    if-eqz v6, :cond_c

    .line 108
    check-cast v5, Lcom/byazt/kft/UpieVideoView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 109
    :cond_c
    instance-of v6, v5, Landroid/view/SurfaceView;

    if-eqz v6, :cond_d

    .line 110
    check-cast v5, Landroid/view/SurfaceView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :cond_d
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/uj;->ve(II)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 112
    iget-object p1, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 113
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    iget-object p2, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object p2, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p2, :cond_e

    .line 117
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v4, p1}, Lcom/byazt/un/a;->c(II)V

    :cond_e
    int-to-float p1, v0

    int-to-float p2, v1

    int-to-float v0, v2

    int-to-float v1, v3

    .line 118
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/byazt/un/uj;->c(FFFF)V

    :cond_f
    :goto_3
    return-void

    .line 119
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    :cond_11
    invoke-virtual {p0}, Lcom/byazt/un/uj;->gu()Lcom/byazt/jr/tt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public tt(Lcom/byazt/dh/tt;I)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/byazt/un/a;->a()V

    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/byazt/un/uj;->tt(Lcom/byazt/dh/tt;Landroid/view/View;ZZ)V

    return-void
.end method

.method public tt(Lcom/byazt/dh/tt;Landroid/view/View;ZZ)V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/nj/c;->gt:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->i(Z)V

    .line 135
    iget-object p1, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    return-void

    .line 136
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/nj/c;->gt:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 137
    :goto_0
    invoke-virtual {p0, p1}, Lcom/byazt/un/uj;->n(I)V

    .line 138
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    .line 139
    iget-object p2, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/byazt/un/a;->c(Landroid/view/ViewGroup;)V

    .line 140
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1, p4}, Lcom/byazt/un/a;->ve(Z)V

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {p0, p2}, Lcom/byazt/un/uj;->n(I)V

    .line 142
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    .line 143
    iget-object p2, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/byazt/un/a;->tt(Landroid/view/ViewGroup;)V

    .line 144
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1, p4}, Lcom/byazt/un/a;->ve(Z)V

    .line 145
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/byazt/un/uj;->nb:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dh/ve$tt;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 146
    iget-boolean p2, p0, Lcom/byazt/nj/c;->gt:Z

    invoke-interface {p1, p2}, Lcom/byazt/dh/ve$tt;->c(Z)V

    :cond_6
    return-void
.end method

.method public tt(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-void
.end method

.method public tt(Lcom/byazt/jzl/a;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    return-void
.end method

.method public tt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/byazt/un/uj;->tk:Ljava/util/Map;

    return-void
.end method

.method public u()I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->getBufferCount()I

    move-result v0

    return v0
.end method

.method public uj(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/un/uj;->to:I

    return-void
.end method

.method public uj(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 1

    .line 6
    iget-boolean p1, p0, Lcom/byazt/nj/c;->gt:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->i(Z)V

    .line 8
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/byazt/un/uj;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/byazt/un/a;->tt(Landroid/view/ViewGroup;)V

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/byazt/un/uj;->n(I)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0, p2}, Lcom/byazt/un/uj;->c(I)V

    const/4 p1, 0x3

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/byazt/un/uj;->c(ZI)V

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/byazt/un/uj;->sv:Z

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public ve(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/byazt/un/a;->i()V

    :cond_0
    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lcom/byazt/un/uj;->c(I)V

    const/4 p2, 0x3

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/byazt/un/uj;->c(ZI)V

    return-void
.end method

.method public ve()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public x()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/un/a;->c()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/byazt/un/a;->gr()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/byazt/un/uj;->lo()V

    return-void
.end method

.method public z()I
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/byazt/nj/c;->x:J

    iget-wide v2, p0, Lcom/byazt/nj/c;->m:J

    invoke-static {v0, v1, v2, v3}, Lcom/byazt/vv/c;->c(JJ)I

    move-result v0

    return v0
.end method

.method public zm()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/byazt/un/a;->c()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->ve(Z)V

    .line 6
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v1}, Lcom/byazt/sw/c;->c()V

    .line 8
    invoke-virtual {p0}, Lcom/byazt/un/uj;->nb()V

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/byazt/un/uj;->kp:I

    .line 10
    iput-boolean v0, p0, Lcom/byazt/un/uj;->b:Z

    .line 11
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {v0}, Lcom/byazt/fk/sp;->restart()V

    .line 12
    invoke-direct {p0}, Lcom/byazt/un/uj;->pu()V

    :cond_2
    return-void
.end method
