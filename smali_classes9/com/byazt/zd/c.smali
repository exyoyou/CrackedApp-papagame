.class public abstract Lcom/byazt/zd/c;
.super Lcom/byazt/nj/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x647,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/zd/c$c;
    }
.end annotation


# instance fields
.field public final aw:Ljava/lang/Runnable;

.field public b:I

.field public bm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/dh/ve$tt;",
            ">;"
        }
    .end annotation
.end field

.field public bx:J

.field public cu:Lcom/byazt/fk/sp$c;

.field public d:Z

.field public eo:Z

.field public h:J

.field public hd:Z

.field public ic:Lcom/byazt/zd/c$c;

.field public kk:Z

.field public kp:I

.field public l:Z

.field public lo:Z

.field public final lr:I

.field public final lt:Ljava/lang/String;

.field public md:Landroid/view/ViewGroup;

.field public final nb:Ljava/util/concurrent/atomic/AtomicInteger;

.field public or:Lcom/byazt/hkv/c;

.field public os:J

.field public oz:I

.field public p:J

.field public pf:J

.field public pu:J

.field public q:Z

.field public final qp:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final r:Lcom/byazt/fn/ve;

.field public s:Z

.field public sv:Lcom/byazt/dh/ve$c;

.field public tk:I

.field public to:Z

.field public tx:Z

.field public v:Z

.field public zb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Lcom/byazt/hkv/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/nj/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/zd/c;->h:J

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lcom/byazt/zd/c;->d:Z

    .line 10
    .line 11
    iput-boolean v2, p0, Lcom/byazt/zd/c;->eo:Z

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput-object v3, p0, Lcom/byazt/zd/c;->zb:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v3, p0, Lcom/byazt/zd/c;->qp:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v3, p0, Lcom/byazt/zd/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/byazt/zd/c;->pf:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/byazt/zd/c;->bx:J

    .line 33
    .line 34
    new-instance v0, Lcom/byazt/zd/c$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/byazt/zd/c$1;-><init>(Lcom/byazt/zd/c;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/zd/c;->aw:Ljava/lang/Runnable;

    .line 40
    .line 41
    iput-boolean v2, p0, Lcom/byazt/zd/c;->hd:Z

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/byazt/zd/c;->l:Z

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/byazt/zd/c;->lo:Z

    .line 47
    .line 48
    iput-boolean v2, p0, Lcom/byazt/zd/c;->to:Z

    .line 49
    .line 50
    iput-boolean v2, p0, Lcom/byazt/zd/c;->q:Z

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/byazt/zd/c;->kk:Z

    .line 53
    .line 54
    iput-boolean v2, p0, Lcom/byazt/zd/c;->tx:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/byazt/zd/c;->v:Z

    .line 57
    .line 58
    new-instance v1, Lcom/byazt/zd/c$2;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/byazt/zd/c$2;-><init>(Lcom/byazt/zd/c;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/byazt/zd/c;->cu:Lcom/byazt/fk/sp$c;

    .line 64
    .line 65
    iput v0, p0, Lcom/byazt/zd/c;->oz:I

    .line 66
    .line 67
    new-instance v0, Lcom/byazt/zd/c$3;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/byazt/zd/c$3;-><init>(Lcom/byazt/zd/c;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/byazt/zd/c;->r:Lcom/byazt/fn/ve;

    .line 73
    .line 74
    iput-boolean v2, p0, Lcom/byazt/zd/c;->s:Z

    .line 75
    .line 76
    invoke-static {p1}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/byazt/zd/c;->oz:I

    .line 81
    .line 82
    iput-object p2, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    iput-object p3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 92
    .line 93
    iput-object p4, p0, Lcom/byazt/zd/c;->or:Lcom/byazt/hkv/c;

    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/byazt/zd/c;->c(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    iput p1, p0, Lcom/byazt/zd/c;->lr:I

    .line 105
    .line 106
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/byazt/zd/c;->lt:Ljava/lang/String;

    .line 113
    .line 114
    return-void
.end method

.method public static synthetic a(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private a(I)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0, p1}, Lcom/byazt/un/a;->ve(I)Z

    move-result p1

    return p1
.end method

.method public static synthetic a(Lcom/byazt/zd/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nj/c;->yp:Z

    return p1
.end method

.method public static synthetic aw(Lcom/byazt/zd/c;)Lcom/byazt/nj/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->gu:Lcom/byazt/nj/c$c;

    return-object p0
.end method

.method public static synthetic b(Lcom/byazt/zd/c;)Lcom/byazt/fk/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    return-object p0
.end method

.method private b()Ljava/lang/String;
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

.method public static synthetic bm(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic bx(Lcom/byazt/zd/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/zd/c;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/zd/c;->tk:I

    return p1
.end method

.method public static synthetic c(Lcom/byazt/zd/c;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/zd/c;->pu:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/zd/c;)Lcom/byazt/dh/ve$c;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/byazt/zd/c;->sv:Lcom/byazt/dh/ve$c;

    return-object p0
.end method

.method private c(FFFFZ)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_0

    cmpg-float v1, p4, v0

    if-gtz v1, :cond_1

    .line 78
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p3}, Lcom/byazt/ete/xd;->uj(Lcom/byazt/ete/ic;)I

    move-result p3

    int-to-float p3, p3

    .line 79
    iget-object p4, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p4}, Lcom/byazt/ete/xd;->ve(Lcom/byazt/ete/ic;)I

    move-result p4

    int-to-float p4, p4

    :cond_1
    cmpg-float v1, p4, v0

    if-lez v1, :cond_8

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_4

    cmpg-float p2, p3, p4

    if-gez p2, :cond_3

    return-void

    :cond_3
    mul-float p4, p4, p1

    div-float/2addr p4, p3

    .line 80
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p1, p1

    float-to-int p3, p4

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_4
    cmpl-float p1, p3, p4

    if-lez p1, :cond_5

    return-void

    :cond_5
    mul-float p3, p3, p2

    div-float/2addr p3, p4

    .line 81
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p3

    float-to-int p2, p2

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object p2, p1

    :goto_0
    const/16 p1, 0xd

    .line 82
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    invoke-direct {p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

    move-result-object p1

    .line 84
    instance-of p3, p1, Landroid/view/TextureView;

    if-eqz p3, :cond_6

    .line 85
    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 86
    :cond_6
    instance-of p3, p1, Lcom/byazt/kft/UpieVideoView;

    if-eqz p3, :cond_7

    .line 87
    check-cast p1, Lcom/byazt/kft/UpieVideoView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_1
    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/byazt/zd/c;->to:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_8
    :goto_2
    return-void
.end method

.method private c(II)V
    .locals 5

    .line 67
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    div-float v3, p1, v3

    int-to-float v1, v1

    mul-float v4, v1, v2

    div-float v4, p2, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    mul-float p2, p2, v2

    div-float p2, v1, p2

    mul-float v0, p1, p2

    goto :goto_0

    :cond_1
    mul-float p1, p1, v2

    div-float p1, v0, p1

    mul-float v1, p2, p1

    .line 70
    :goto_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v0

    float-to-int v0, v1

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    invoke-direct {p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

    move-result-object p2

    .line 73
    instance-of v0, p2, Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 74
    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 75
    :cond_2
    instance-of v0, p2, Lcom/byazt/kft/UpieVideoView;

    if-eqz v0, :cond_3

    .line 76
    check-cast p2, Lcom/byazt/kft/UpieVideoView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "changeVideoSize"

    const-string v0, "changeVideoSizeSupportInteraction error"

    .line 77
    invoke-static {p2, v0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/zd/c;->gu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v2, "rewarded_video"

    invoke-static {v1, v2, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v0}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v2, "fullscreen_interstitial_ad"

    invoke-static {v1, v2, p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 12
    const-class v0, Lcom/byazt/dh/tt$c;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 13
    sget-object v0, Lcom/byazt/dh/tt$c;->c:Lcom/byazt/dh/tt$c;

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v0, Lcom/byazt/dh/tt$c;->n:Lcom/byazt/dh/tt$c;

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v0, Lcom/byazt/un/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/byazt/wol/LayoutVideoPlayLayoutForLive;

    invoke-direct {v3, p1}, Lcom/byazt/wol/LayoutVideoPlayLayoutForLive;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    iget-object v8, p0, Lcom/byazt/zd/c;->or:Lcom/byazt/hkv/c;

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/byazt/un/a;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;Lcom/byazt/hkv/c;)V

    iput-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 16
    invoke-virtual {v0, p0}, Lcom/byazt/un/a;->c(Lcom/byazt/dh/c;)V

    return-void
.end method

.method private c(Landroid/content/Context;I)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget p1, p0, Lcom/byazt/zd/c;->oz:I

    if-ne p1, p2, :cond_1

    return-void

    .line 134
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/zd/c;->hd:Z

    if-nez p1, :cond_2

    .line 135
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/byazt/zd/c$6;

    invoke-direct {v0, p0}, Lcom/byazt/zd/c$6;-><init>(Lcom/byazt/zd/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_2
    iput p2, p0, Lcom/byazt/zd/c;->oz:I

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zd/c;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/zd/c;->c(II)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zd/c;IILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/nj/c;->c(IILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zd/c;ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/zd/c;->c(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zd/c;JJ)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/zd/c;->tt(JJ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zd/c;Landroid/content/Context;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/byazt/zd/c;->c(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zd/c;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zd/c;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/byazt/zd/c;->q:Z

    return p1
.end method

.method public static synthetic cu(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic da(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method public static synthetic dz(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic eo(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private gr()Z
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

    const-string v7, "BaseVideoController"

    const-string v8, "assist"

    const-string v9, "ad"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_3

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

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
    iget-object v1, v0, Lcom/byazt/zd/c;->cu:Lcom/byazt/fk/sp$c;

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
    iget-object v2, v0, Lcom/byazt/zd/c;->cu:Lcom/byazt/fk/sp$c;

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
    invoke-direct/range {p0 .. p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

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
    iget-object v1, v0, Lcom/byazt/zd/c;->cu:Lcom/byazt/fk/sp$c;

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
    iget-object v2, v0, Lcom/byazt/zd/c;->cu:Lcom/byazt/fk/sp$c;

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

    invoke-virtual/range {p0 .. p0}, Lcom/byazt/zd/c;->p()Z

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

.method public static synthetic gt(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/zd/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    return-wide v0
.end method

.method public static synthetic h(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic hd(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method public static synthetic ic(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic iu(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic kk(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic kp(Lcom/byazt/zd/c;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    return-object p0
.end method

.method private kp()V
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

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p0, v0}, Lcom/byazt/zd/c;->n(I)V

    .line 8
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->sp()V

    :cond_0
    return-void
.end method

.method public static synthetic l(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method public static synthetic lo(Lcom/byazt/zd/c;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic lr(Lcom/byazt/zd/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nj/c;->yp:Z

    return p0
.end method

.method public static synthetic lt(Lcom/byazt/zd/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zd/c;->lt:Ljava/lang/String;

    return-object p0
.end method

.method private lt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/zd/c;->ic:Lcom/byazt/zd/c$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/zd/c$c;->c()V

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ma(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic md(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/zd/c;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/zd/c;->q:Z

    return p0
.end method

.method public static synthetic n(Lcom/byazt/zd/c;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/zd/c;->v:Z

    return p1
.end method

.method public static synthetic nb(Lcom/byazt/zd/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/zd/c;->tx:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic nu(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic or(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic os(Lcom/byazt/zd/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nj/c;->nu:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic oz(Lcom/byazt/zd/c;)Lcom/byazt/fk/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method public static synthetic pf(Lcom/byazt/zd/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/zd/c;->v:Z

    return p0
.end method

.method public static synthetic pu(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private pu()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/zd/c;->ve()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/zd/c;->uj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->ve(I)V

    .line 4
    iget-wide v0, p0, Lcom/byazt/zd/c;->p:J

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/byazt/zd/c;->tt(JJ)V

    .line 5
    iget-wide v0, p0, Lcom/byazt/zd/c;->p:J

    iput-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    iput-wide v0, p0, Lcom/byazt/nj/c;->x:J

    .line 6
    invoke-virtual {p0}, Lcom/byazt/nj/c;->cu()V

    :cond_1
    return-void
.end method

.method public static synthetic q(Lcom/byazt/zd/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nb()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic qp(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/zd/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/zd/c;->bx:J

    return-wide v0
.end method

.method public static synthetic r(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/zd/c;)Lcom/byazt/fk/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method public static synthetic s(Lcom/byazt/zd/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/zd/c;->tk:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sl(Lcom/byazt/zd/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/zd/c;->kk:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sp(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method private sp(I)Z
    .locals 4

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/zd/c;->a()V

    .line 6
    iput-boolean v2, p0, Lcom/byazt/nj/c;->z:Z

    .line 7
    iput-boolean v1, p0, Lcom/byazt/zd/c;->hd:Z

    .line 8
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_1

    .line 9
    invoke-static {v1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/byazt/un/a;->c(ILcom/byazt/jzl/uj;Z)Z

    move-result p1

    return p1

    :cond_0
    if-ne v0, v3, :cond_1

    .line 10
    iput-boolean v1, p0, Lcom/byazt/nj/c;->z:Z

    .line 11
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/byazt/un/a;->gt()V

    :cond_1
    return v2
.end method

.method public static synthetic sv(Lcom/byazt/zd/c;)Lcom/byazt/nj/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->gu:Lcom/byazt/nj/c$c;

    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method private tk()Lcom/byazt/jr/tt;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/un/a;->nu()Lcom/byazt/jr/tt;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic tk(Lcom/byazt/zd/c;)Lcom/byazt/jzl/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    return-object p0
.end method

.method public static synthetic to(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private to()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 4
    invoke-static {v0}, Lcom/byazt/ete/pu;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ma;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->cf()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic tt(Lcom/byazt/zd/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/zd/c;->kp:I

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/zd/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/zd/c;->pf:J

    return-wide p1
.end method

.method public static synthetic tt(Lcom/byazt/zd/c;)Lcom/byazt/zd/c$c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/zd/c;->ic:Lcom/byazt/zd/c$c;

    return-object p0
.end method

.method private tt(II)V
    .locals 10

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto :goto_2

    .line 22
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/pf;->tt(Landroid/content/Context;)[I

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->by()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    aget v2, v0, v2

    int-to-float v5, v2

    .line 25
    aget v0, v0, v3

    int-to-float v6, v0

    int-to-float v7, p1

    int-to-float v8, p2

    if-eqz v1, :cond_3

    cmpl-float p1, v7, v8

    if-lez p1, :cond_2

    const/4 v9, 0x1

    move-object v4, p0

    .line 26
    invoke-direct/range {v4 .. v9}, Lcom/byazt/zd/c;->c(FFFFZ)V

    return-void

    :cond_2
    mul-float v8, v8, v5

    div-float v6, v8, v7

    goto :goto_1

    :cond_3
    cmpg-float p1, v7, v8

    if-gez p1, :cond_4

    const/4 v9, 0x0

    move-object v4, p0

    .line 27
    invoke-direct/range {v4 .. v9}, Lcom/byazt/zd/c;->c(FFFFZ)V

    return-void

    :cond_4
    mul-float v7, v7, v6

    div-float v5, v7, v8

    .line 28
    :goto_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v5

    float-to-int v0, v6

    invoke-direct {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    iget-object p2, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    if-eqz p2, :cond_6

    .line 31
    invoke-direct {p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

    move-result-object p2

    .line 32
    instance-of v0, p2, Landroid/view/TextureView;

    if-eqz v0, :cond_5

    .line 33
    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 34
    :cond_5
    instance-of v0, p2, Lcom/byazt/kft/UpieVideoView;

    if-eqz v0, :cond_6

    .line 35
    check-cast p2, Lcom/byazt/kft/UpieVideoView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "changeVideoSize"

    const-string v0, "changeVideoSizeByWidth error"

    .line 36
    invoke-static {p2, v0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private tt(JJ)V
    .locals 2

    .line 39
    iput-wide p1, p0, Lcom/byazt/nj/c;->sp:J

    .line 40
    iput-wide p3, p0, Lcom/byazt/zd/c;->p:J

    .line 41
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/un/a;->c(JJ)V

    .line 42
    invoke-static {p1, p2, p3, p4}, Lcom/byazt/vv/c;->c(JJ)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Lcom/byazt/zd/c;->ve()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/byazt/zd/c;->uj()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v1, v0}, Lcom/byazt/un/a;->tt(I)V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/byazt/un/a;->tt(I)V

    .line 46
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/zd/c;->sv:Lcom/byazt/dh/ve$c;

    if-eqz v0, :cond_2

    .line 47
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/dh/ve$c;->c(JJ)V

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/byazt/zd/c;->ic:Lcom/byazt/zd/c$c;

    if-eqz v0, :cond_3

    .line 49
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zd/c$c;->c(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BaseVideoController"

    const-string p3, "onProgressUpdate error: "

    .line 50
    invoke-static {p2, p3, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private tt(JZ)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/byazt/zd/c;->kp()V

    .line 68
    :cond_1
    iget-object p3, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {p3, p1, p2}, Lcom/byazt/fk/sp;->seekTo(J)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zd/c;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/zd/c;->uj(II)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zd/c;JJ)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/nj/c;->c(JJ)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zd/c;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/zd/c;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/zd/c;->l:Z

    return p1
.end method

.method public static synthetic tx(Lcom/byazt/zd/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/zd/c;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic u(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private uj(II)V
    .locals 9

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->by()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 12
    :goto_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/pf;->tt(Landroid/content/Context;)[I

    move-result-object v0

    .line 13
    aget v1, v0, v1

    int-to-float v4, v1

    .line 14
    aget v0, v0, v2

    int-to-float v5, v0

    int-to-float v6, p1

    int-to-float v7, p2

    move-object v3, p0

    .line 15
    invoke-direct/range {v3 .. v8}, Lcom/byazt/zd/c;->c(FFFFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/zd/c;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/zd/c;->ve(II)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/zd/c;I)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/zd/c;->sp(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/zd/c;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/zd/c;->tx:Z

    return p1
.end method

.method public static synthetic v(Lcom/byazt/zd/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic ve(Lcom/byazt/zd/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/zd/c;->b:I

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/zd/c;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/zd/c;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ve(II)V
    .locals 12

    const-string v0, "changeVideoSize"

    .line 20
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeVideoSize start.......mMaterialMeta.getAdSlot()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/byazt/zd/c;->to()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "changeVideoSize start check condition complete ... go .."

    .line 22
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/byazt/aas/pf;->tt(Landroid/content/Context;)[I

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->by()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    aget v5, v1, v3

    int-to-float v7, v5

    .line 26
    aget v1, v1, v4

    int-to-float v8, v1

    int-to-float v9, p1

    int-to-float v10, p2

    if-eqz v2, :cond_2

    cmpl-float p1, v9, v10

    if-lez p1, :cond_3

    const/4 v11, 0x1

    move-object v6, p0

    .line 27
    invoke-direct/range {v6 .. v11}, Lcom/byazt/zd/c;->c(FFFFZ)V

    return-void

    :cond_2
    cmpg-float p1, v9, v10

    if-gez p1, :cond_3

    const/4 v11, 0x0

    move-object v6, p0

    .line 28
    invoke-direct/range {v6 .. v11}, Lcom/byazt/zd/c;->c(FFFFZ)V

    return-void

    :cond_3
    div-float p1, v9, v10

    div-float p2, v7, v8

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v5, 0x41100000    # 9.0f

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f100000    # 0.5625f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_5

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5

    mul-float v5, v5, v8

    div-float v9, v5, v1

    move v10, v8

    goto :goto_1

    :cond_4
    const v2, 0x3fe38e39

    cmpl-float p2, p2, v2

    if-lez p2, :cond_5

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5

    mul-float v5, v5, v7

    div-float v10, v5, v1

    move v9, v7

    :goto_1
    const/4 v3, 0x1

    .line 29
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u9002\u914d\u540e\u5bbd\u9ad8\uff1avideoHeight="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",videoWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_6

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " \u5c4f\u5e55\u6bd4\u4f8b\u548c\u89c6\u9891\u6bd4\u4f8b\u76f8\u540c\uff0c\u4ee5\u53ca\u5176\u4ed6\u60c5\u51b5\u90fd\u6309\u7167\u5c4f\u5e55\u5bbd\u9ad8\u64ad\u653e\uff0cvideoHeight="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "\uff0cvideoWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v7, v9

    move v8, v10

    .line 31
    :goto_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p2, v7

    float-to-int v1, v8

    invoke-direct {p1, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 32
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    invoke-direct {p0}, Lcom/byazt/zd/c;->tk()Lcom/byazt/jr/tt;

    move-result-object v2

    .line 34
    instance-of v3, v2, Landroid/view/TextureView;

    if-nez v3, :cond_7

    instance-of v3, v2, Lcom/byazt/kft/UpieVideoView;

    if-eqz v3, :cond_9

    .line 35
    :cond_7
    instance-of v3, v2, Landroid/view/TextureView;

    if-eqz v3, :cond_8

    .line 36
    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 37
    :cond_8
    check-cast v2, Lcom/byazt/kft/UpieVideoView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :goto_3
    iget-object p1, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 39
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    iget-object p2, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "changeSize error"

    .line 42
    invoke-static {v0, p2, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private ve(Lcom/byazt/jzl/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "model is null"

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 8
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_1

    .line 10
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setCodeId(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setScene(I)V

    .line 12
    invoke-direct {p0}, Lcom/byazt/zd/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/rgb/ve;->tt(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {v0, p1}, Lcom/byazt/fk/sp;->setDataSource(Lcom/byazt/fk/u;)V

    .line 14
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/zd/c;->pf:J

    .line 15
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/byazt/un/a;->n(I)V

    .line 17
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/byazt/un/a;->n(I)V

    .line 18
    new-instance p1, Lcom/byazt/zd/c$5;

    invoke-direct {p1, p0}, Lcom/byazt/zd/c$5;-><init>(Lcom/byazt/zd/c;)V

    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const-string p1, "url is null"

    .line 19
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/zd/c;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/zd/c;->tt(II)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/zd/c;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/zd/c;->kk:Z

    return p1
.end method

.method public static synthetic x(Lcom/byazt/zd/c;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zd/c;->aw:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic y(Lcom/byazt/zd/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/zd/c;->kp:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic yf(Lcom/byazt/zd/c;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yv(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    return-object p0
.end method

.method public static synthetic zb(Lcom/byazt/zd/c;)Lcom/byazt/un/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zm(Lcom/byazt/zd/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/zd/c;->ve()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/zd/c;->uj()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->ve(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 7

    .line 3
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    iget-object v0, p0, Lcom/byazt/zd/c;->aw:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/zd/c;->n(I)V

    .line 7
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->tt()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/zd/c;->pf:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byazt/zd/c;->bx:J

    .line 9
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/un/a;->n(Z)V

    .line 10
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/nb;->x(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v1, v2, v0}, Lcom/byazt/un/a;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->yv()V

    .line 13
    :goto_0
    invoke-direct {p0}, Lcom/byazt/zd/c;->pu()V

    .line 14
    iget-object p1, p0, Lcom/byazt/zd/c;->sv:Lcom/byazt/dh/ve$c;

    if-eqz p1, :cond_3

    .line 15
    iget-wide v1, p0, Lcom/byazt/zd/c;->bx:J

    iget-wide v3, p0, Lcom/byazt/nj/c;->sp:J

    iget-wide v5, p0, Lcom/byazt/zd/c;->p:J

    invoke-static {v3, v4, v5, v6}, Lcom/byazt/vv/c;->c(JJ)I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lcom/byazt/dh/ve$c;->c(JI)V

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/byazt/zd/c;->lt()V

    .line 17
    iput-boolean v0, p0, Lcom/byazt/nj/c;->my:Z

    return-void
.end method

.method public aw()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/byazt/zd/c;->gu()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    iget v1, p0, Lcom/byazt/zd/c;->lr:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ogz/sl;->x(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->tj()I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    iget-object v2, p0, Lcom/byazt/zd/c;->aw:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    iget-object v2, p0, Lcom/byazt/zd/c;->aw:Ljava/lang/Runnable;

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bm()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public bx()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/byazt/ddx/c$c;

    invoke-direct {v1}, Lcom/byazt/ddx/c$c;-><init>()V

    const-string v2, "auto_replay"

    invoke-virtual {v1, v2}, Lcom/byazt/ddx/c$c;->tt(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/byazt/ddx/c$c;->c(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->n(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->uj(Ljava/lang/String;)Lcom/byazt/ddx/c$c;

    move-result-object v0

    new-instance v1, Lcom/byazt/zd/c$4;

    invoke-direct {v1, p0}, Lcom/byazt/zd/c$4;-><init>(Lcom/byazt/zd/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/ddx/c$c;->c(Lcom/byazt/ya/c;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/byazt/un/a;->n()V

    .line 122
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->c()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/byazt/un/a;->gr()V

    :cond_1
    const-wide/16 v0, -0x1

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/byazt/zd/c;->c(J)V

    return-void
.end method

.method public c(I)V
    .locals 11

    .line 137
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/zd/c;->gu()I

    move-result v0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/byazt/zd/c;->pu:J

    sub-long/2addr v1, v3

    .line 140
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "close_reason"

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v9, v3, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "buffer_count"

    .line 142
    invoke-virtual {p0}, Lcom/byazt/zd/c;->u()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, p1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "buffer_time"

    .line 143
    invoke-virtual {p0}, Lcom/byazt/nj/c;->t()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, p1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 145
    :goto_0
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Lcom/byazt/sw/c;->c(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 146
    iget-object p1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {p1, v3}, Lcom/byazt/sw/c;->ve(I)V

    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {p1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v10

    .line 148
    iget-object v5, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v6, "rewarded_video"

    move-wide v7, v1

    invoke-static/range {v5 .. v10}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {p1}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v10

    .line 150
    iget-object v5, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v6, "fullscreen_interstitial_ad"

    move-wide v7, v1

    invoke-static/range {v5 .. v10}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/String;)V

    .line 151
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 152
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p1, v0}, Lcom/byazt/apd/tt;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    const-string v0, "tobsdk_livesdk_live_window_duration_v2"

    if-eqz p1, :cond_3

    .line 153
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object p1

    iget-object v3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    .line 154
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/byazt/apd/tt;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    return-void

    .line 155
    :cond_3
    iget-object p1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0, p1, v1, v2}, Lcom/byazt/ex/c;->c(Ljava/lang/String;Lcom/byazt/ete/ic;J)V

    :cond_4
    return-void
.end method

.method public c(J)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->getCurrentPosition()J

    move-result-wide v0

    .line 56
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/nj/c;->sp:J

    .line 57
    iget-wide p1, p0, Lcom/byazt/nj/c;->x:J

    invoke-virtual {p0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/nj/c;->x:J

    .line 58
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/byazt/un/a;->c()V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 61
    iput p2, p0, Lcom/byazt/zd/c;->b:I

    const/4 p2, 0x0

    .line 62
    iput-boolean p2, p0, Lcom/byazt/zd/c;->q:Z

    .line 63
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    iget-boolean v2, p0, Lcom/byazt/nj/c;->nu:Z

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/byazt/fk/sp;->start(ZJZ)V

    .line 64
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    invoke-interface {p1, v0, v1}, Lcom/byazt/fk/sp;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public c(JZ)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/byazt/zd/c;->h:J

    .line 19
    invoke-virtual {p0, p3}, Lcom/byazt/nj/c;->da(Z)V

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/byazt/zd/c;->eo:Z

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/dh/tt;I)V
    .locals 2

    .line 103
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-wide v0, p0, Lcom/byazt/zd/c;->os:J

    invoke-direct {p0, p2}, Lcom/byazt/zd/c;->a(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/byazt/zd/c;->tt(JZ)V

    return-void
.end method

.method public c(Lcom/byazt/dh/tt;IZ)V
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long p1, p2

    .line 106
    iget-wide v0, p0, Lcom/byazt/zd/c;->p:J

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

    .line 107
    iput-wide p1, p0, Lcom/byazt/zd/c;->os:J

    goto :goto_0

    .line 108
    :cond_1
    iput-wide v2, p0, Lcom/byazt/zd/c;->os:J

    .line 109
    :goto_0
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_2

    .line 110
    iget-wide p2, p0, Lcom/byazt/zd/c;->os:J

    invoke-virtual {p1, p2, p3}, Lcom/byazt/un/a;->c(J)V

    :cond_2
    return-void
.end method

.method public c(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {p1}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/byazt/zd/c;->a()V

    .line 92
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/byazt/un/a;->tt(ZZ)V

    .line 93
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->a()V

    return-void

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {p1}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result p1

    if-nez p1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/byazt/un/a;->ve(Landroid/view/ViewGroup;)V

    .line 97
    :cond_2
    iget-wide v0, p0, Lcom/byazt/nj/c;->sp:J

    invoke-virtual {p0, v0, v1}, Lcom/byazt/zd/c;->c(J)V

    .line 98
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    .line 99
    invoke-virtual {p1, p2, p2}, Lcom/byazt/un/a;->tt(ZZ)V

    return-void

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/zd/c;->x()V

    .line 101
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    .line 102
    invoke-virtual {p1, p2, p2}, Lcom/byazt/un/a;->tt(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/dh/tt;Landroid/view/View;ZZ)V
    .locals 1

    .line 111
    iget-boolean p1, p0, Lcom/byazt/nj/c;->t:Z

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/byazt/zd/c;->a()V

    :cond_0
    if-eqz p3, :cond_1

    .line 113
    iget-boolean p1, p0, Lcom/byazt/nj/c;->t:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/byazt/zd/c;->bm()Z

    move-result p1

    if-nez p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p0}, Lcom/byazt/zd/c;->lr()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/byazt/un/a;->tt(ZZ)V

    .line 115
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1, p4, p3, v0}, Lcom/byazt/un/a;->c(ZZZ)V

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->a()V

    .line 118
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->n()V

    return-void

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/un/a;->a()V

    return-void
.end method

.method public c(Lcom/byazt/dh/ve$c;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/byazt/zd/c;->sv:Lcom/byazt/dh/ve$c;

    return-void
.end method

.method public c(Lcom/byazt/dh/ve$tt;)V
    .locals 1

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/zd/c;->bm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public c(Lcom/byazt/dh/ve$uj;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/sgn/z$c;Ljava/lang/String;)V
    .locals 2

    .line 126
    sget-object p2, Lcom/byazt/zd/c$8;->c:[I

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

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/zd/c;->x()V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/byazt/nj/c;->z:Z

    .line 129
    iput-boolean p2, p0, Lcom/byazt/zd/c;->hd:Z

    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/byazt/zd/c;->c(ZI)V

    return-void

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/zd/c;->a()V

    return-void
.end method

.method public c(Lcom/byazt/zd/c$c;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/byazt/zd/c;->ic:Lcom/byazt/zd/c$c;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/byazt/fk/sp;->pause()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/zd/c;->ve()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/zd/c;->uj()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->ve(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public c(ZI)V
    .locals 0

    .line 65
    invoke-virtual {p0, p2}, Lcom/byazt/nj/c;->tt(I)V

    .line 66
    invoke-virtual {p0}, Lcom/byazt/zd/c;->i()V

    return-void
.end method

.method public c(Lcom/byazt/jzl/a;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "model is null"

    .line 21
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return v0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {p1}, Lcom/byazt/fk/sp;->play()V

    return v2

    .line 24
    :cond_1
    iput-object p1, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    .line 25
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "BaseVideoController"

    if-eqz v1, :cond_2

    const-string p1, "No video info"

    .line 27
    invoke-static {v3, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "url is null"

    .line 28
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return v0

    .line 29
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/byazt/zd/c;->d:Z

    .line 30
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->isQuiet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/byazt/nj/c;->nu:Z

    .line 31
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getCurrent()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 32
    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getCurrent()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/byazt/nj/c;->sp:J

    .line 33
    iget-wide v8, p0, Lcom/byazt/nj/c;->x:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_4

    move-wide v4, v8

    :cond_4
    iput-wide v4, p0, Lcom/byazt/nj/c;->x:J

    .line 34
    :cond_5
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v1, :cond_6

    .line 35
    invoke-virtual {v1}, Lcom/byazt/un/a;->c()V

    const/16 v1, 0x8

    .line 36
    invoke-virtual {p0, v1}, Lcom/byazt/zd/c;->n(I)V

    .line 37
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v1}, Lcom/byazt/un/a;->sp()V

    .line 38
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/byazt/jzl/a;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/byazt/un/a;->ve(II)V

    .line 39
    iget-object v1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    iget-object v4, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Lcom/byazt/un/a;->ve(Landroid/view/ViewGroup;)V

    .line 40
    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-nez v1, :cond_8

    .line 41
    invoke-direct {p0}, Lcom/byazt/zd/c;->gr()Z

    move-result v1

    if-nez v1, :cond_7

    const-string p1, "create video error"

    .line 42
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    return v0

    .line 43
    :cond_7
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    iget-object v4, p0, Lcom/byazt/zd/c;->cu:Lcom/byazt/fk/sp$c;

    invoke-interface {v1, v4}, Lcom/byazt/fk/sp;->addIVideoPlayerCallback(Lcom/byazt/fk/sp$c;)V

    .line 44
    :cond_8
    invoke-virtual {p0}, Lcom/byazt/nj/c;->yv()V

    .line 45
    iput-wide v6, p0, Lcom/byazt/zd/c;->bx:J

    .line 46
    invoke-direct {p0, p1}, Lcom/byazt/zd/c;->ve(Lcom/byazt/jzl/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/byazt/nj/c;->tt(Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create video error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public da()V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->tt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/byazt/zd/c;->i()V

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
    invoke-direct {p0}, Lcom/byazt/zd/c;->b()Ljava/lang/String;

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

.method public abstract gu()I
.end method

.method public hd()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/zd/c;->to:Z

    return v0
.end method

.method public i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/byazt/fk/sp;->release()V

    .line 4
    iput-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/byazt/un/a;->i()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    iget-object v2, p0, Lcom/byazt/zd/c;->aw:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p0, Lcom/byazt/zd/c;->sv:Lcom/byazt/dh/ve$c;

    .line 10
    iput-object v1, p0, Lcom/byazt/zd/c;->ic:Lcom/byazt/zd/c$c;

    return-void
.end method

.method public ic()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/zd/c;->ve()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/byazt/zd/c;->uj()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/nj/c;->qp()V

    :cond_2
    return-void
.end method

.method public l()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/zd/c;->gu()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result v1

    .line 5
    iget-object v3, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/byazt/sw/c;->tt(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->ve(I)V

    if-ne v0, v4, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v5

    .line 8
    iget-object v2, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v2}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v4, "rewarded_video"

    invoke-static {v3, v4, v0, v1, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v5

    .line 11
    iget-object v2, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-static {v2}, Lcom/byazt/sw/uj;->c(Lcom/byazt/oce/c;)Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    const-string v4, "fullscreen_interstitial_ad"

    invoke-static {v3, v4, v0, v1, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;JLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public lo()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->c:Lcom/byazt/nr/d;

    new-instance v1, Lcom/byazt/zd/c$7;

    invoke-direct {v1, p0}, Lcom/byazt/zd/c$7;-><init>(Lcom/byazt/zd/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public lr()Z
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

.method public n(I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 13
    instance-of v1, v0, Lcom/byazt/fh/tt;

    if-eqz v1, :cond_4

    .line 14
    check-cast v0, Lcom/byazt/fh/tt;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-interface {v0, p1}, Lcom/byazt/fh/tt;->c(Z)V

    :cond_4
    return-void
.end method

.method public n(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/byazt/zd/c;->lo:Z

    return-void
.end method

.method public n()Z
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0}, Lcom/byazt/nj/c;->uj()Z

    move-result v0

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/jzl/c;->sp()I

    move-result v0

    int-to-double v0, v0

    .line 7
    iget-object v2, p0, Lcom/byazt/zd/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public p_()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

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
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/high16 v2, 0x42c80000    # 100.0f

    .line 12
    .line 13
    cmpl-float v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public pf()Ljava/util/Map;
    .locals 5
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/byazt/zd/c;->zb:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, p0, Lcom/byazt/zd/c;->h:J

    iget-object v3, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/nj/c;->nu()Lcom/byazt/fk/sp;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/byazt/aas/nb;->c(JLcom/byazt/ete/ic;Lcom/byazt/fk/sp;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public qy()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/zd/c;->l:Z

    return v0
.end method

.method public rl()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

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

.method public sv()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/zd/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/zd/c;->qp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public tt()V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/byazt/zd/c;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/zd/c;->qp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 11
    invoke-virtual {p0}, Lcom/byazt/zd/c;->bx()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/zd/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 13
    iget-object v0, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v0}, Lcom/byazt/sw/c;->c()V

    .line 14
    invoke-virtual {p0}, Lcom/byazt/nj/c;->nb()V

    const-wide/16 v2, 0x0

    .line 15
    invoke-virtual {p0, v2, v3, v1}, Lcom/byazt/zd/c;->c(JZ)V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Lcom/byazt/nj/c;->ve(Z)V

    const/4 v1, 0x2

    .line 17
    iput v1, p0, Lcom/byazt/zd/c;->b:I

    .line 18
    iput-boolean v0, p0, Lcom/byazt/zd/c;->q:Z

    .line 19
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    invoke-interface {v0}, Lcom/byazt/fk/sp;->restart()V

    :cond_1
    return-void
.end method

.method public tt(Lcom/byazt/dh/tt;I)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/byazt/un/a;->a()V

    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/byazt/zd/c;->tt(Lcom/byazt/dh/tt;Landroid/view/View;ZZ)V

    return-void
.end method

.method public tt(Lcom/byazt/dh/tt;Landroid/view/View;ZZ)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/byazt/nj/c;->md()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/nj/c;->gt:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->i(Z)V

    .line 54
    iget-object p1, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    return-void

    .line 55
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/nj/c;->gt:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/byazt/zd/c;->uj(I)V

    .line 57
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    .line 58
    iget-object p2, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/byazt/un/a;->c(Landroid/view/ViewGroup;)V

    .line 59
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1, p4}, Lcom/byazt/un/a;->ve(Z)V

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0, p2}, Lcom/byazt/zd/c;->uj(I)V

    .line 61
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_4

    .line 62
    iget-object p2, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/byazt/un/a;->tt(Landroid/view/ViewGroup;)V

    .line 63
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {p1, p4}, Lcom/byazt/un/a;->ve(Z)V

    .line 64
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/byazt/zd/c;->bm:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dh/ve$tt;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 65
    iget-boolean p2, p0, Lcom/byazt/nj/c;->gt:Z

    invoke-interface {p1, p2}, Lcom/byazt/dh/ve$tt;->c(Z)V

    :cond_6
    return-void
.end method

.method public tt(Lcom/byazt/jzl/a;)V
    .locals 0

    .line 69
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

    .line 20
    iput-object p1, p0, Lcom/byazt/zd/c;->zb:Ljava/util/Map;

    return-void
.end method

.method public u()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/byazt/fk/sp;->getBufferCount()I

    move-result v0

    return v0
.end method

.method public uj(I)V
    .locals 3

    .line 16
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

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/byazt/nj/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 18
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 19
    :cond_3
    check-cast v1, Landroid/app/Activity;

    .line 20
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

    .line 21
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 22
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public uj(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 1

    .line 23
    iget-boolean p1, p0, Lcom/byazt/nj/c;->gt:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/byazt/nj/c;->i(Z)V

    .line 25
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/byazt/zd/c;->md:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/byazt/un/a;->tt(Landroid/view/ViewGroup;)V

    .line 27
    :cond_0
    invoke-virtual {p0, p2}, Lcom/byazt/zd/c;->uj(I)V

    return-void

    .line 28
    :cond_1
    invoke-virtual {p0, p2}, Lcom/byazt/zd/c;->c(I)V

    const/4 p1, 0x3

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/byazt/zd/c;->c(ZI)V

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public uj()Z
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-super {p0}, Lcom/byazt/nj/c;->uj()Z

    move-result v0

    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->nu(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/jzl/c;->sp()I

    move-result v0

    int-to-double v0, v0

    .line 9
    iget-object v2, p0, Lcom/byazt/zd/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v4, v2, v0

    if-gtz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ve(Lcom/byazt/dh/tt;Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/byazt/un/a;->i()V

    :cond_0
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/byazt/zd/c;->c(I)V

    const/4 p2, 0x3

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/byazt/zd/c;->c(ZI)V

    return-void
.end method

.method public ve()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/zd/c;->qp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/un/a;->c()V

    .line 4
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->gt()V

    .line 5
    iget-object v0, p0, Lcom/byazt/nj/c;->n:Lcom/byazt/un/a;

    invoke-virtual {v0}, Lcom/byazt/un/a;->gr()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "resumeVideo:  mIsSurfaceValid = "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 6
    iget-boolean v2, p0, Lcom/byazt/nj/c;->da:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "BaseVideoController"

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    if-eqz v1, :cond_5

    .line 8
    invoke-interface {v1}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget-boolean v1, p0, Lcom/byazt/nj/c;->da:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/byazt/nj/c;->qy:Lcom/byazt/jzl/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/byazt/jzl/a;->isAudio()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ic/c;->tt(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/byazt/nj/c;->yv:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/byazt/nj/c;->tt(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/nj/c;->eo()V

    :goto_1
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "resumeVideo: isPaused = true , mIsSurfaceValid = "

    aput-object v5, v1, v3

    .line 12
    iget-boolean v3, p0, Lcom/byazt/nj/c;->da:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_4
    iput v4, p0, Lcom/byazt/zd/c;->b:I

    .line 14
    iput-boolean v3, p0, Lcom/byazt/zd/c;->q:Z

    .line 15
    iget-object v1, p0, Lcom/byazt/nj/c;->uj:Lcom/byazt/fk/sp;

    iget-wide v4, p0, Lcom/byazt/nj/c;->sp:J

    iget-boolean v2, p0, Lcom/byazt/nj/c;->nu:Z

    invoke-interface {v1, v3, v4, v5, v2}, Lcom/byazt/fk/sp;->start(ZJZ)V

    .line 16
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/byazt/sw/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/byazt/zd/c;->ve()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/byazt/zd/c;->uj()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/byazt/nj/c;->rl:Lcom/byazt/sw/c;

    invoke-virtual {v1, v0}, Lcom/byazt/sw/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/byazt/nj/c;->a:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    :cond_7
    invoke-virtual {p0}, Lcom/byazt/nj/c;->qp()V

    :cond_8
    return-void
.end method

.method public z()I
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/byazt/nj/c;->x:J

    iget-wide v2, p0, Lcom/byazt/zd/c;->p:J

    invoke-static {v0, v1, v2, v3}, Lcom/byazt/vv/c;->c(JJ)I

    move-result v0

    return v0
.end method
