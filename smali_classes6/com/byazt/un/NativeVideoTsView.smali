.class public Lcom/byazt/un/NativeVideoTsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dh/ve$c;
.implements Lcom/byazt/dna/qp$c;
.implements Lcom/byazt/un/uj$c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x9b5
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/un/NativeVideoTsView$tt;,
        Lcom/byazt/un/NativeVideoTsView$ve;,
        Lcom/byazt/un/NativeVideoTsView$uj;,
        Lcom/byazt/un/NativeVideoTsView$c;
    }
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public aw:Z

.field public b:Z

.field public bm:Lcom/byazt/un/NativeVideoTsView$ve;

.field public bx:I

.field public c:Z

.field public cu:J

.field public final d:Lcom/byazt/nr/d;

.field public da:Landroid/widget/RelativeLayout;

.field public eo:Z

.field public gr:Z

.field public final gt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public gu:Z

.field public h:J

.field public hd:Z

.field public i:Z

.field public ic:Z

.field public kk:Z

.field public kp:Z

.field public l:Landroid/view/ViewTreeObserver;

.field public lo:Landroid/view/View$OnAttachStateChangeListener;

.field public lr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public lt:Lcom/byazt/sy/sp;

.field public m:I

.field public md:Z

.field public my:Lcom/byazt/un/NativeVideoTsView$uj;

.field public n:Lcom/byazt/dh/ve;

.field public nb:Z

.field public nu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public or:J

.field public p:Lcom/byazt/ouz/NativeExpressVideoView;

.field public pf:Z

.field public pu:Landroid/view/ViewGroup;

.field public q:Z

.field public qp:Lcom/byazt/dh/ve$ve;

.field public qy:Z

.field public rh:Z

.field public rl:Ljava/lang/String;

.field public sl:Landroid/widget/ImageView;

.field public sp:Landroid/widget/FrameLayout;

.field public sv:I

.field public t:Landroid/widget/ImageView;

.field public tk:Lcom/byazt/un/NativeVideoTsView$tt;

.field public to:Lcom/byazt/it/ve;

.field public tt:Z

.field public volatile tx:Z

.field public u:Landroid/widget/ImageView;

.field public uj:Lcom/byazt/ete/ic;

.field public v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ve:Landroid/content/Context;

.field public x:Z

.field public yp:Z

.field public yv:Z

.field public z:Ljava/lang/String;

.field public zb:Lcom/byazt/lbn/TTViewStub;

.field public zm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZ)V
    .locals 8

    const-string v5, "embeded_ad"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZLjava/lang/String;ZZ)V
    .locals 4

    .line 5
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 7
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->x:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->tt:Z

    .line 9
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->qy:Z

    .line 10
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->gu:Z

    .line 11
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->gr:Z

    .line 12
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->zm:Z

    .line 13
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->yv:Z

    .line 14
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->yp:Z

    const-string v2, "embeded_ad"

    .line 15
    iput-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    const/16 v2, 0x32

    .line 16
    iput v2, p0, Lcom/byazt/un/NativeVideoTsView;->m:I

    .line 17
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->md:Z

    .line 18
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->eo:Z

    .line 20
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->rh:Z

    const-wide/16 v2, 0x32

    .line 21
    iput-wide v2, p0, Lcom/byazt/un/NativeVideoTsView;->or:J

    const-wide/16 v2, 0x1f4

    .line 22
    iput-wide v2, p0, Lcom/byazt/un/NativeVideoTsView;->cu:J

    .line 23
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->nb:Z

    .line 24
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->pf:Z

    .line 25
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->aw:Z

    .line 26
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->ic:Z

    .line 27
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->kp:Z

    .line 28
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->q:Z

    .line 30
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->tx:Z

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p5, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 35
    iput-boolean p3, p0, Lcom/byazt/un/NativeVideoTsView;->tt:Z

    .line 36
    iput-boolean p4, p0, Lcom/byazt/un/NativeVideoTsView;->yv:Z

    .line 37
    iput-boolean p6, p0, Lcom/byazt/un/NativeVideoTsView;->gr:Z

    .line 38
    iput-boolean p7, p0, Lcom/byazt/un/NativeVideoTsView;->zm:Z

    .line 39
    new-instance p1, Lcom/byazt/nr/d;

    invoke-static {}, Lcom/byazt/bzd/x;->tt()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    const-string p1, "NativeVideoAdView"

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    .line 42
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->rl()V

    .line 43
    new-instance p1, Lcom/byazt/un/NativeVideoTsView$1;

    invoke-direct {p1, p0}, Lcom/byazt/un/NativeVideoTsView$1;-><init>(Lcom/byazt/un/NativeVideoTsView;)V

    invoke-static {p1}, Lcom/byazt/bzd/x;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 16
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v3, 0x7e06ff88

    .line 18
    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    const/16 v3, 0x11

    .line 19
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x8

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 22
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v5, 0x7e06ff2c

    .line 24
    invoke-virtual {v1, v5}, Landroid/view/View;->setId(I)V

    .line 25
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 26
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 28
    iput-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->sp:Landroid/widget/FrameLayout;

    .line 29
    new-instance v1, Lcom/byazt/lbn/TTViewStub;

    new-instance v3, Lcom/byazt/wol/n;

    invoke-direct {v3}, Lcom/byazt/wol/n;-><init>()V

    invoke-direct {v1, p1, v3}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    .line 30
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v2, 0x7e06fe97

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 32
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 34
    iput-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->zb:Lcom/byazt/lbn/TTViewStub;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/un/NativeVideoTsView;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->l:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/un/NativeVideoTsView;)Lcom/byazt/it/ve;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/un/NativeVideoTsView;Lcom/byazt/it/ve;)Lcom/byazt/it/ve;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/un/NativeVideoTsView;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/NativeVideoTsView;->tt(II)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/un/NativeVideoTsView;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->tt(Z)V

    return-void
.end method

.method private cu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->pu:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    check-cast v1, Landroid/view/ViewGroup;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->pu:Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->pu:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method private eo()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->getKvCache()Lcom/byazt/it/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 12
    .line 13
    const-string v1, "key_video_is_update_flag"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 25
    .line 26
    invoke-interface {v3, v1, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 36
    :goto_1
    if-eqz v3, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 40
    .line 41
    const-string v4, "key_native_video_complete"

    .line 42
    .line 43
    invoke-interface {v3, v4, v2}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget-object v4, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 48
    .line 49
    const-string v5, "key_video_current_play_position"

    .line 50
    .line 51
    const-wide/16 v6, -0x1

    .line 52
    .line 53
    invoke-interface {v4, v5, v6, v7}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    iget-object v6, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/byazt/dh/ve;->yp()J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    invoke-interface {v0}, Lcom/byazt/dh/ve;->t()J

    .line 64
    .line 65
    .line 66
    move-result-wide v9

    .line 67
    add-long/2addr v7, v9

    .line 68
    const-string v9, "key_video_total_play_duration"

    .line 69
    .line 70
    invoke-interface {v6, v9, v7, v8}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    iget-object v8, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 75
    .line 76
    const-string v9, "key_video_duration"

    .line 77
    .line 78
    invoke-interface {v0}, Lcom/byazt/dh/ve;->yp()J

    .line 79
    .line 80
    .line 81
    move-result-wide v10

    .line 82
    invoke-interface {v8, v9, v10, v11}, Lcom/byazt/it/c;->get(Ljava/lang/String;J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v8

    .line 86
    invoke-interface {v0, v3}, Lcom/byazt/dh/ve;->ve(Z)V

    .line 87
    .line 88
    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    invoke-interface {v0, v8, v9}, Lcom/byazt/dh/ve;->tt(J)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    invoke-interface {v0, v4, v5}, Lcom/byazt/dh/ve;->tt(J)V

    .line 96
    .line 97
    .line 98
    :goto_2
    invoke-interface {v0, v6, v7}, Lcom/byazt/dh/ve;->ve(J)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v8, v9}, Lcom/byazt/dh/ve;->uj(J)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 105
    .line 106
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private getKvCache()Lcom/byazt/it/ve;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    const-string v1, "sp_multi_native_video_data"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private gr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->uj(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 12
    .line 13
    check-cast v0, Lcom/byazt/un/uj;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/uj$c;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lcom/byazt/dh/ve;->c(Lcom/byazt/dh/ve$c;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private gu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->l:Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->lr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->getKvCache()Lcom/byazt/it/ve;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 19
    .line 20
    const-string v1, "key_video_isfromvideodetailpage"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 27
    .line 28
    const-string v1, "key_video_is_from_detail_page"

    .line 29
    .line 30
    invoke-interface {v0, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private md()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->getKvCache()Lcom/byazt/it/ve;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 20
    .line 21
    const-string v2, "key_video_isfromvideodetailpage"

    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->to:Lcom/byazt/it/ve;

    .line 28
    .line 29
    const-string v3, "key_video_is_from_detail_page"

    .line 30
    .line 31
    invoke-interface {v2, v3, v1}, Lcom/byazt/it/c;->get(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return v1

    .line 41
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 42
    return v0
.end method

.method public static synthetic n(Lcom/byazt/un/NativeVideoTsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->gu()V

    return-void
.end method

.method private or()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/byazt/ogz/sl;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x5

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private p()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->p:Lcom/byazt/ouz/NativeExpressVideoView;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move-object v0, p0

    .line 35
    :goto_0
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const/16 v2, 0x32

    .line 40
    .line 41
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/byazt/qqc/ve;->c(ILcom/byazt/ete/ic;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x5

    .line 48
    invoke-static {v0, v1, v2}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;II)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    return v0
.end method

.method private qy()V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/byazt/un/NativeDrawVideoTsView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/omf/x;->sv()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/byazt/omf/x;->sv()Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v2, p0, Lcom/byazt/un/NativeVideoTsView;->m:I

    .line 49
    .line 50
    int-to-float v2, v2

    .line 51
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 56
    .line 57
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 58
    .line 59
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method private rl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->H_()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/un/NativeVideoTsView;)Lcom/byazt/it/ve;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->getKvCache()Lcom/byazt/it/ve;

    move-result-object p0

    return-object p0
.end method

.method private tt(II)V
    .locals 9

    .line 3
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qi()Lcom/byazt/ete/z;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-gtz p2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/z;->x()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    return-void

    .line 7
    :cond_3
    iput p1, p0, Lcom/byazt/un/NativeVideoTsView;->bx:I

    .line 8
    iput p2, p0, Lcom/byazt/un/NativeVideoTsView;->sv:I

    .line 9
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->bm:Lcom/byazt/un/NativeVideoTsView$ve;

    if-nez v1, :cond_4

    .line 10
    new-instance v8, Lcom/byazt/un/NativeVideoTsView$ve;

    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    iget-object v5, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    move-object v1, v8

    move-object v2, v0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/byazt/un/NativeVideoTsView$ve;-><init>(Lcom/byazt/ete/z;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;II)V

    iput-object v8, p0, Lcom/byazt/un/NativeVideoTsView;->bm:Lcom/byazt/un/NativeVideoTsView$ve;

    .line 11
    :cond_4
    invoke-virtual {v0}, Lcom/byazt/ete/z;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p1

    const/4 p2, 0x3

    .line 12
    invoke-interface {p1, p2}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 13
    invoke-interface {p1, p2}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView;->bm:Lcom/byazt/un/NativeVideoTsView$ve;

    .line 14
    invoke-interface {p1, p2}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;)Lcom/byazt/yj/t;

    :cond_5
    return-void
.end method

.method private tt(Z)V
    .locals 3

    .line 15
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->kp:Z

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->qy:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 17
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->tk:Lcom/byazt/un/NativeVideoTsView$tt;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    :cond_2
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->qy:Z

    .line 19
    invoke-virtual {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->ve(Z)V

    .line 20
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->md()Z

    move-result v0

    .line 22
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->h()V

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 23
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v2}, Lcom/byazt/dh/ve;->gt()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {p0, v1}, Lcom/byazt/un/NativeVideoTsView;->uj(Z)V

    .line 25
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->x()V

    return-void

    :cond_4
    if-eqz p1, :cond_9

    .line 26
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->gt()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->m()Z

    move-result p1

    if-nez p1, :cond_9

    .line 27
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 28
    iget-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    if-eqz p1, :cond_6

    const-string p1, "device_info_new"

    .line 29
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dna/u;

    invoke-interface {p1}, Lcom/byazt/dna/u;->getDeviceModel()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ALP-AL00"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->x()V

    goto :goto_0

    .line 31
    :cond_5
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    check-cast p1, Lcom/byazt/un/uj;

    invoke-virtual {p1, v0}, Lcom/byazt/un/uj;->a(Z)V

    .line 32
    :goto_0
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    if-eqz p1, :cond_a

    .line 33
    invoke-interface {p1}, Lcom/byazt/dh/ve$ve;->onVideoAdContinuePlay()V

    return-void

    .line 34
    :cond_6
    iput-boolean v2, p0, Lcom/byazt/un/NativeVideoTsView;->qy:Z

    return-void

    .line 35
    :cond_7
    iget-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object p1

    if-nez p1, :cond_a

    .line 36
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_8

    .line 37
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    :cond_8
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->uj()V

    return-void

    .line 40
    :cond_9
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 41
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 42
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->a()V

    .line 43
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    if-eqz p1, :cond_a

    .line 44
    invoke-interface {p1}, Lcom/byazt/dh/ve$ve;->onVideoAdPaused()V

    :cond_a
    :goto_1
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/un/NativeVideoTsView;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/NativeVideoTsView;->lr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/un/NativeVideoTsView;)Landroid/view/ViewTreeObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/NativeVideoTsView;->l:Landroid/view/ViewTreeObserver;

    return-object p0
.end method

.method private x()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/byazt/un/NativeVideoTsView;->c(JI)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    .line 9
    .line 10
    return-void
.end method

.method private yv()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->tx:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 12
    .line 13
    instance-of v1, v0, Lcom/byazt/un/uj;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Lcom/byazt/un/uj;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/nj/c;->h()Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->tx:Z

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->tk:Lcom/byazt/un/NativeVideoTsView$tt;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    new-instance v1, Lcom/byazt/un/NativeVideoTsView$tt;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, p0, v2}, Lcom/byazt/un/NativeVideoTsView$tt;-><init>(Lcom/byazt/un/NativeVideoTsView;Lcom/byazt/un/NativeVideoTsView$1;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->tk:Lcom/byazt/un/NativeVideoTsView$tt;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->tk:Lcom/byazt/un/NativeVideoTsView$tt;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->tk:Lcom/byazt/un/NativeVideoTsView$tt;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/byazt/un/NativeVideoTsView$tt;->c(Z)Ljava/lang/Runnable;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->tk:Lcom/byazt/un/NativeVideoTsView$tt;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    :goto_1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    iget-wide v2, p0, Lcom/byazt/un/NativeVideoTsView;->or:J

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private zb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/byazt/ogz/sl;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private zm()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "splash_ad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "cache_splash_ad"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method


# virtual methods
.method public H_()V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->sp:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v5, v0, 0x1

    .line 14
    .line 15
    iget-boolean v6, p0, Lcom/byazt/un/NativeVideoTsView;->gr:Z

    .line 16
    .line 17
    iget-boolean v7, p0, Lcom/byazt/un/NativeVideoTsView;->zm:Z

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)Lcom/byazt/dh/ve;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->gr()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/byazt/un/NativeVideoTsView$3;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/byazt/un/NativeVideoTsView$3;-><init>(Lcom/byazt/un/NativeVideoTsView;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->lo:Landroid/view/View$OnAttachStateChangeListener;

    .line 35
    .line 36
    new-instance v0, Lcom/byazt/un/NativeVideoTsView$4;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/byazt/un/NativeVideoTsView$4;-><init>(Lcom/byazt/un/NativeVideoTsView;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->lr:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 42
    .line 43
    return-void
.end method

.method public I_()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/byazt/un/NativeVideoTsView;->kk:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/byazt/un/NativeVideoTsView;->kk:Z

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/dh/ve$ve;->onVideoAdStartPlay()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->lt:Lcom/byazt/sy/sp;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/byazt/sy/sp;->c()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)Lcom/byazt/dh/ve;
    .locals 9

    .line 49
    new-instance v8, Lcom/byazt/un/uj;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/byazt/un/uj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZZ)V

    return-object v8
.end method

.method public c()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->zm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve$ve;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_0

    .line 96
    check-cast v0, Lcom/byazt/un/uj;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/un/uj;->c(II)V

    :cond_0
    return-void
.end method

.method public c(JI)V
    .locals 0

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->kp:Z

    .line 7
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Lcom/byazt/dh/ve$ve;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public c(JJ)V
    .locals 1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->kp:Z

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/dh/ve$ve;->onProgressUpdate(JJ)V

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->p()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Lcom/byazt/dh/ve;->a()V

    :cond_2
    return-void
.end method

.method public c(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-interface {v0}, Lcom/byazt/dh/ve;->rh()Lcom/byazt/dh/tt;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 99
    :cond_1
    invoke-static {p3}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-interface {p3, v1}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p3

    const/4 v1, 0x2

    invoke-interface {p3, v1}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p3

    new-instance v1, Lcom/byazt/un/NativeVideoTsView$5;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/byazt/un/NativeVideoTsView$5;-><init>(Lcom/byazt/un/NativeVideoTsView;Landroid/content/Context;ILcom/byazt/dh/tt;)V

    const/4 p1, 0x4

    .line 100
    invoke-interface {p3, v1, p1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    return-void
.end method

.method public c(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ic/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ic/c;->sp(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 37
    invoke-interface {p2, v0}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p2

    const/4 v0, 0x2

    .line 38
    invoke-interface {p2, v0}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p2

    new-instance v0, Lcom/byazt/un/NativeVideoTsView$2;

    invoke-direct {v0, p0, p1}, Lcom/byazt/un/NativeVideoTsView$2;-><init>(Lcom/byazt/un/NativeVideoTsView;Landroid/widget/ImageView;)V

    const/4 p1, 0x4

    .line 39
    invoke-interface {p2, v0, p1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->zb:Lcom/byazt/lbn/TTViewStub;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->zb:Lcom/byazt/lbn/TTViewStub;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->zb:Lcom/byazt/lbn/TTViewStub;

    invoke-virtual {v0}, Lcom/byazt/lbn/TTViewStub;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    :cond_1
    const v0, 0x7e06fff2

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7e06ff87

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    .line 46
    invoke-static {p1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 47
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public c(Z)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    .line 85
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->sv()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/omf/x;->sv()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    const/16 v2, 0x140

    const-string v3, "tt_new_play_video"

    invoke-static {v0, v3, v1, v2}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/byazt/un/NativeVideoTsView;->m:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 90
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 91
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public c(JZZ)Z
    .locals 9

    .line 50
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/byazt/un/uj;

    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/un/NativeVideoTsView;->sp:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    iget-object v6, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/byazt/un/NativeVideoTsView;->gr:Z

    iget-boolean v8, p0, Lcom/byazt/un/NativeVideoTsView;->zm:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/byazt/un/uj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 53
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->gr()V

    .line 54
    :cond_0
    iput-wide p1, p0, Lcom/byazt/un/NativeVideoTsView;->h:J

    .line 55
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 56
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->c(Z)V

    .line 57
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 58
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v0, v1}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 61
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 62
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 64
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    if-eqz p4, :cond_1

    .line 65
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1, v0}, Lcom/byazt/dh/ve;->tt(Lcom/byazt/jzl/a;)V

    return v2

    .line 66
    :cond_1
    invoke-virtual {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/jzl/a;)Z

    move-result v1

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    if-lez v0, :cond_5

    if-eqz p3, :cond_5

    .line 67
    iget-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->yv:Z

    if-nez p1, :cond_5

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    instance-of p1, p1, Lcom/byazt/nj/c;

    if-eqz p1, :cond_5

    .line 69
    new-instance p1, Lcom/byazt/afw/nu$c;

    invoke-direct {p1}, Lcom/byazt/afw/nu$c;-><init>()V

    .line 70
    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p2}, Lcom/byazt/dh/ve;->sl()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/byazt/afw/nu$c;->c(J)V

    .line 71
    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p2}, Lcom/byazt/dh/ve;->yp()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/byazt/afw/nu$c;->ve(J)V

    .line 72
    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p2}, Lcom/byazt/dh/ve;->t()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/byazt/afw/nu$c;->tt(J)V

    .line 73
    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    move-object p3, p2

    check-cast p3, Lcom/byazt/nj/c;

    invoke-interface {p2}, Lcom/byazt/dh/ve;->rh()Lcom/byazt/dh/tt;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/byazt/nj/c;->tt(Lcom/byazt/oce/c;Lcom/byazt/afw/nu$c;)V

    :cond_5
    return v1

    .line 74
    :cond_6
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->u()Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->i:Z

    if-eqz p1, :cond_8

    .line 75
    :cond_7
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    iget-object p2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x19

    invoke-virtual {p0, p1, p3, p2}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/content/Context;ILjava/lang/String;)V

    :cond_8
    return v2
.end method

.method public c(Lcom/byazt/jzl/a;)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->md:Z

    .line 78
    iget-wide v0, p0, Lcom/byazt/un/NativeVideoTsView;->cu:J

    iput-wide v0, p0, Lcom/byazt/un/NativeVideoTsView;->or:J

    .line 79
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->hd:Z

    if-eqz v0, :cond_0

    .line 80
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->ic:Z

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->c(Lcom/byazt/jzl/a;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNativeVideoController()Lcom/byazt/dh/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->gu:Z

    .line 2
    .line 3
    return v0
.end method

.method public gt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->yv()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->tx:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public my()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->cu()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/dh/ve;->tt()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->my:Lcom/byazt/un/NativeVideoTsView$uj;

    .line 3
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->rh()V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->yp()V

    return-void
.end method

.method public nu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->tt:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->aw:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->lo:Landroid/view/View$OnAttachStateChangeListener;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->uj()V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/byazt/qw/x;->c(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->lo:Landroid/view/View$OnAttachStateChangeListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->n()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->bm:Lcom/byazt/un/NativeVideoTsView$ve;

    .line 20
    .line 21
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->aw:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->uj()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sl()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->n()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->aw:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->nb:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->eo()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->md()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/byazt/dh/ve;->gt()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->h()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lcom/byazt/un/NativeVideoTsView;->uj(Z)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->x()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x0

    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->z()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/byazt/dh/ve;->m()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    invoke-interface {p1}, Lcom/byazt/dh/ve;->gt()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_3

    .line 90
    .line 91
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, v2}, Lcom/byazt/un/NativeVideoTsView;->tt(Z)V

    .line 107
    .line 108
    .line 109
    :cond_4
    return-void

    .line 110
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->z()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    if-nez p1, :cond_6

    .line 117
    .line 118
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 119
    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 129
    .line 130
    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v2}, Lcom/byazt/un/NativeVideoTsView;->tt(Z)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_6
    if-eqz p1, :cond_7

    .line 150
    .line 151
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 158
    .line 159
    .line 160
    :cond_7
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 7

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->aw:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->d()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->eo()V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->q:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->q:Z

    .line 29
    .line 30
    :cond_2
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->md()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v4, 0x8

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/byazt/dh/ve;->gt()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->h()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-static {p1, v4}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v3}, Lcom/byazt/un/NativeVideoTsView;->uj(Z)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->x()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_8

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->z()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_8

    .line 77
    .line 78
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 79
    .line 80
    if-eqz v1, :cond_8

    .line 81
    .line 82
    invoke-interface {v1}, Lcom/byazt/dh/ve;->m()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_8

    .line 87
    .line 88
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 89
    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_4
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/16 v5, 0x14

    .line 99
    .line 100
    iget-object v6, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 101
    .line 102
    invoke-virtual {v1, v5, v6}, Lcom/byazt/qqc/ve;->c(ILcom/byazt/ete/ic;)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/4 v5, 0x5

    .line 107
    invoke-static {p0, v1, v5}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;II)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 112
    .line 113
    .line 114
    iget-boolean v5, p0, Lcom/byazt/un/NativeVideoTsView;->md:Z

    .line 115
    .line 116
    if-eqz v5, :cond_5

    .line 117
    .line 118
    iget-object v5, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 119
    .line 120
    invoke-static {v5}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_5

    .line 125
    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    const/4 v0, 0x4

    .line 129
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-wide v1, p0, Lcom/byazt/un/NativeVideoTsView;->h:J

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->m()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/jzl/a;)Z

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 187
    .line 188
    invoke-static {v0, v4}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_5
    :try_start_0
    const-string v1, "NativeVideoAdView"

    .line 193
    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v5, "onWindowVisibilityChanged materialMeta.getVideo() is null "

    .line 197
    .line 198
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v5, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 202
    .line 203
    if-nez v5, :cond_6

    .line 204
    .line 205
    const/4 v5, 0x1

    .line 206
    goto :goto_1

    .line 207
    :cond_6
    const/4 v5, 0x0

    .line 208
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-boolean v5, p0, Lcom/byazt/un/NativeVideoTsView;->q:Z

    .line 215
    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->q:Z

    .line 237
    .line 238
    if-eqz v0, :cond_7

    .line 239
    .line 240
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 241
    .line 242
    if-nez v0, :cond_7

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->t()V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 248
    .line 249
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    :cond_7
    :goto_2
    if-nez p1, :cond_8

    .line 258
    .line 259
    iget-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->nb:Z

    .line 260
    .line 261
    if-eqz p1, :cond_8

    .line 262
    .line 263
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 264
    .line 265
    if-eqz p1, :cond_8

    .line 266
    .line 267
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 268
    .line 269
    if-eqz p1, :cond_8

    .line 270
    .line 271
    invoke-interface {p1}, Lcom/byazt/dh/ve;->gt()Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-nez p1, :cond_8

    .line 276
    .line 277
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 278
    .line 279
    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 284
    .line 285
    .line 286
    :cond_8
    :goto_3
    return-void
.end method

.method public rh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve;->rh()Lcom/byazt/dh/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/dh/tt;->c()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/byazt/dh/tt;->ve()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public setAdCreativeClickListener(Lcom/byazt/un/NativeVideoTsView$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/un/uj;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/un/NativeVideoTsView$c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setComplete(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->ve(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setControllerStatusCallBack(Lcom/byazt/un/NativeVideoTsView$uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->my:Lcom/byazt/un/NativeVideoTsView$uj;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawVideoListener(Lcom/byazt/uz/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/un/uj;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/uz/c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setEasyPlayableEventSender(Lcom/byazt/sy/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->lt:Lcom/byazt/sy/sp;

    .line 2
    .line 3
    return-void
.end method

.method public setEnableAutoCheck(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->aw:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsAutoPlay(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->eo:Z

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Lcom/byazt/ogz/sl;->a(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/nr/rh;->n(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->zb()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    :goto_0
    const/4 p1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->zb()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->or()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 76
    .line 77
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->uj(Z)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 85
    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->t()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 92
    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    .line 117
    .line 118
    invoke-interface {p1, v0}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    const-string p1, "NativeVideoAdView"

    .line 134
    .line 135
    const-string v0, "attachTask materialMeta.getVideo() is null !!"

    .line 136
    .line 137
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 142
    .line 143
    const/16 v0, 0x8

    .line 144
    .line 145
    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 146
    .line 147
    .line 148
    :cond_7
    :goto_2
    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->eo:Z

    .line 150
    .line 151
    :cond_8
    :goto_3
    return-void
.end method

.method public setIsQuiet(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->x:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->tt(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setMaterialMeta(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeExpressVideoView(Lcom/byazt/ouz/NativeExpressVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->p:Lcom/byazt/ouz/NativeExpressVideoView;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeRenderAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNativeVideoAdListener(Lcom/byazt/dh/ve$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->c(Lcom/byazt/dh/ve$c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setNativeVideoController(Lcom/byazt/dh/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setNeedNativeVideoPlayBtnVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->yp:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoAdClickListenerTTNativeAd(Lcom/byazt/nc/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/byazt/un/uj;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/un/uj;->c(Lcom/byazt/nc/u;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->qp:Lcom/byazt/dh/ve$ve;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoAdLoadListener(Lcom/byazt/dh/ve$uj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->c(Lcom/byazt/dh/ve$uj;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoCacheUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->rl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->yp()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public sl()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->tt:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->my:Lcom/byazt/un/NativeVideoTsView$uj;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/byazt/dh/ve;->gt()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/dh/ve;->yp()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/byazt/dh/ve;->yp()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/byazt/dh/ve;->t()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    add-long/2addr v5, v7

    .line 36
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/byazt/dh/ve;->sl()J

    .line 39
    .line 40
    .line 41
    move-result-wide v7

    .line 42
    iget-boolean v9, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 43
    .line 44
    iget-boolean v10, p0, Lcom/byazt/un/NativeVideoTsView;->x:Z

    .line 45
    .line 46
    invoke-interface/range {v1 .. v10}, Lcom/byazt/un/NativeVideoTsView$uj;->c(ZJJJZZ)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public sp()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Lcom/byazt/ogz/sl;->a(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_9

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v0, v3, :cond_6

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-eq v0, v3, :cond_5

    .line 27
    .line 28
    const/4 v3, 0x4

    .line 29
    if-eq v0, v3, :cond_4

    .line 30
    .line 31
    const/4 v3, 0x5

    .line 32
    if-eq v0, v3, :cond_1

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 55
    :goto_1
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    iput-boolean v2, p0, Lcom/byazt/un/NativeVideoTsView;->rh:Z

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/byazt/nr/rh;->n(Landroid/content/Context;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_8

    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_8

    .line 79
    .line 80
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_8

    .line 87
    .line 88
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-ne v0, v2, :cond_7

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_7
    const/4 v0, 0x0

    .line 100
    goto :goto_3

    .line 101
    :cond_8
    :goto_2
    const/4 v0, 0x1

    .line 102
    :goto_3
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 112
    .line 113
    :goto_4
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->tt:Z

    .line 114
    .line 115
    if-nez v0, :cond_b

    .line 116
    .line 117
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ab()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-ne v0, v2, :cond_a

    .line 124
    .line 125
    const/4 v1, 0x1

    .line 126
    :cond_a
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->x:Z

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_b
    iput-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->x:Z

    .line 130
    .line 131
    :goto_5
    const-string v0, "splash_ad"

    .line 132
    .line 133
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_c

    .line 140
    .line 141
    iput-boolean v2, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 142
    .line 143
    iput-boolean v2, p0, Lcom/byazt/un/NativeVideoTsView;->x:Z

    .line 144
    .line 145
    :cond_c
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 146
    .line 147
    if-eqz v0, :cond_d

    .line 148
    .line 149
    iget-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 150
    .line 151
    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->uj(Z)V

    .line 152
    .line 153
    .line 154
    :cond_d
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->zm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->zb:Lcom/byazt/lbn/TTViewStub;

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->zb:Lcom/byazt/lbn/TTViewStub;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->zb:Lcom/byazt/lbn/TTViewStub;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->zb:Lcom/byazt/lbn/TTViewStub;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/byazt/lbn/TTViewStub;->c()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    :cond_2
    const v0, 0x7e06fff2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    .line 69
    .line 70
    const v0, 0x7e06ff87

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/ImageView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->u:Landroid/widget/ImageView;

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/byazt/un/NativeVideoTsView;->yp:Z

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_4

    .line 100
    .line 101
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    .line 112
    .line 113
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->sl:Landroid/widget/ImageView;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->qy()V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_0
    return-void
.end method

.method public tt()V
    .locals 5

    .line 78
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-direct {p0, v1}, Lcom/byazt/un/NativeVideoTsView;->tt(Z)V

    .line 82
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    :cond_1
    invoke-virtual {p0, v2}, Lcom/byazt/un/NativeVideoTsView;->c(Z)V

    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    iput-boolean v2, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 87
    invoke-direct {p0, v2}, Lcom/byazt/un/NativeVideoTsView;->tt(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    .line 89
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    if-eqz v0, :cond_3

    .line 90
    iget-wide v3, p0, Lcom/byazt/un/NativeVideoTsView;->or:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    :cond_3
    invoke-virtual {p0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Z)V

    return-void

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->z()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 95
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->cu()V

    const/4 v0, 0x4

    .line 96
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v0, v3}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object v0

    .line 97
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 99
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 100
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 101
    iget-wide v3, p0, Lcom/byazt/un/NativeVideoTsView;->h:J

    invoke-virtual {v0, v3, v4}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 102
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->m()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/jzl/a;)Z

    goto :goto_0

    :cond_5
    const-string v0, "NativeVideoAdView"

    const-string v3, "attachTask materialMeta.getVideo() is null !!"

    .line 104
    invoke-static {v0, v3}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    if-eqz v0, :cond_6

    .line 106
    iget-wide v3, p0, Lcom/byazt/un/NativeVideoTsView;->or:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 107
    :cond_6
    invoke-virtual {p0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Z)V

    :cond_7
    return-void
.end method

.method public tt(I)V
    .locals 5

    .line 47
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 50
    invoke-direct {p0, v1}, Lcom/byazt/un/NativeVideoTsView;->tt(Z)V

    .line 51
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    :cond_1
    invoke-virtual {p0, v2}, Lcom/byazt/un/NativeVideoTsView;->c(Z)V

    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->nu()Lcom/byazt/fk/sp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/sp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 55
    iput-boolean v2, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 56
    invoke-direct {p0, v2}, Lcom/byazt/un/NativeVideoTsView;->tt(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    .line 58
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    if-eqz p1, :cond_3

    .line 59
    iget-wide v3, p0, Lcom/byazt/un/NativeVideoTsView;->or:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    :cond_3
    invoke-virtual {p0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Z)V

    return-void

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->z()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    .line 62
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 63
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 64
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->cu()V

    const/4 p1, 0x4

    .line 65
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {p1, v0}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 68
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 69
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 70
    iget-wide v3, p0, Lcom/byazt/un/NativeVideoTsView;->h:J

    invoke-virtual {p1, v3, v4}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 71
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->m()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 72
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->xx()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fk/c;->getOtherCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/jzl/a;->setCacheParentDir(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/jzl/a;)Z

    goto :goto_0

    :cond_5
    const-string p1, "NativeVideoAdView"

    const-string v0, "attachTask materialMeta.getVideo() is null !!"

    .line 74
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    if-eqz p1, :cond_6

    .line 76
    iget-wide v3, p0, Lcom/byazt/un/NativeVideoTsView;->or:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    :cond_6
    invoke-virtual {p0, v1}, Lcom/byazt/un/NativeVideoTsView;->c(Z)V

    :cond_7
    return-void
.end method

.method public tt(JI)V
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->gu:Z

    return-void
.end method

.method public tt(ZZ)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/byazt/un/NativeVideoTsView;->ic:Z

    .line 46
    iput-boolean p2, p0, Lcom/byazt/un/NativeVideoTsView;->hd:Z

    return-void
.end method

.method public u()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->il()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    const-string v0, "draw_ad"

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->z:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public uj()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->H_()V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, v0, Lcom/byazt/un/uj;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->nu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    check-cast v0, Lcom/byazt/un/uj;

    invoke-virtual {v0}, Lcom/byazt/un/uj;->sv()V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_8

    .line 7
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->sp()V

    .line 10
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->z()Z

    move-result v0

    const-string v2, "NativeVideoAdView"

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/16 v3, 0x8

    .line 12
    invoke-static {v0, v3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    .line 14
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v0, v2}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 17
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 18
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v3}, Lcom/byazt/jzl/a;->setCurrent(J)V

    .line 20
    iget-object v2, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setAudio(Z)V

    .line 21
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 22
    invoke-direct {p0}, Lcom/byazt/un/NativeVideoTsView;->zm()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    invoke-static {v1}, Lcom/byazt/bzd/sl;->c(I)Lcom/byazt/fk/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/byazt/fk/c;->getSplashCacheDir()Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->ox()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    invoke-static {}, Lcom/byazt/bzd/sl;->c()Ljava/lang/String;

    move-result-object v2

    .line 26
    :cond_3
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setCacheParentDir(Ljava/lang/String;)V

    .line 27
    :cond_4
    invoke-virtual {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->c(Lcom/byazt/jzl/a;)Z

    .line 28
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0, v1}, Lcom/byazt/dh/ve;->ve(Z)V

    return-void

    :cond_5
    const-string v0, "attachTask materialMeta.getVideo() is null !!"

    .line 29
    invoke-static {v2, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {v0}, Lcom/byazt/dh/ve;->gt()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/byazt/un/NativeVideoTsView;->uj(Z)V

    return-void

    :cond_7
    const-string v0, "attachTask.......mRlImgCover.....VISIBLE"

    .line 32
    invoke-static {v2, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/byazt/un/NativeVideoTsView;->t()V

    .line 34
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->da:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    :cond_8
    return-void
.end method

.method public uj(Z)V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->ve(Z)V

    .line 37
    iget-object p1, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    invoke-interface {p1}, Lcom/byazt/dh/ve;->rh()Lcom/byazt/dh/tt;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 38
    invoke-interface {p1}, Lcom/byazt/dh/tt;->tt()V

    .line 39
    invoke-interface {p1}, Lcom/byazt/dh/tt;->ve()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 42
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->uj:Lcom/byazt/ete/ic;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/byazt/un/NativeVideoTsView;->ve:Landroid/content/Context;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v2, v1}, Lcom/byazt/dh/tt;->c(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V

    :cond_1
    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->lt:Lcom/byazt/sy/sp;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/sy/sp;->c(Z)V

    :cond_0
    return-void
.end method

.method public yp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->d:Lcom/byazt/nr/d;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->n:Lcom/byazt/dh/ve;

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    invoke-interface {v0, v1, v2}, Lcom/byazt/dh/ve;->c(ZI)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/NativeVideoTsView;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/NativeVideoTsView;->c:Z

    .line 2
    .line 3
    return v0
.end method
