.class public Lcom/byazt/dqg/c;
.super Lcom/byazt/dqg/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x14
    }
.end annotation


# instance fields
.field public gr:Lcom/byazt/kcl/n;

.field public gt:Ljava/lang/String;

.field public gu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public m:Lcom/byazt/lo/uj;

.field public my:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public nu:Lcom/byazt/qp/c;

.field public qy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rh:Lcom/byazt/lo/tt;

.field public rl:Lcom/byazt/xzj/RewardLpBottomView;

.field public yp:Lcom/byazt/seg/c;

.field public z:Lcom/byazt/ddx/sp;

.field public zm:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;ZLcom/byazt/ddx/sp;Lcom/byazt/kcl/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/dqg/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->v()Lcom/byazt/seg/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/byazt/dqg/c;->yp:Lcom/byazt/seg/c;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/byazt/dqg/c;->z:Lcom/byazt/ddx/sp;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->sp(I)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/byazt/dqg/c;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/byazt/dqg/c;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/byazt/dqg/c;->gu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    iput-object p5, p0, Lcom/byazt/dqg/c;->gr:Lcom/byazt/kcl/n;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/byazt/dqg/c;)Lcom/byazt/xzj/RewardLpBottomView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dqg/c;->rl:Lcom/byazt/xzj/RewardLpBottomView;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/dqg/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dqg/c;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/dqg/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/dqg/c;->zm:Z

    return p1
.end method

.method private gt()Landroid/view/ViewGroup;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lcom/byazt/rpt/PlayableEndcardFrameLayout;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/byazt/rpt/PlayableEndcardFrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/byazt/xzj/RewardLpBottomView;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lcom/byazt/xzj/RewardLpBottomView;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/dqg/c;->rl:Lcom/byazt/xzj/RewardLpBottomView;

    .line 27
    .line 28
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    const/4 v3, -0x2

    .line 32
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x50

    .line 36
    .line 37
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 38
    .line 39
    iget-object v2, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/byazt/dqg/c;->rl:Lcom/byazt/xzj/RewardLpBottomView;

    .line 42
    .line 43
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/byazt/dqg/c;->rl:Lcom/byazt/xzj/RewardLpBottomView;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/byazt/dqg/c;->gt:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/byazt/xzj/RewardLpBottomView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/byazt/dqg/c$9;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/byazt/dqg/c$9;-><init>(Lcom/byazt/dqg/c;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/byazt/rpt/PlayableEndcardFrameLayout;->c(Lcom/byazt/rpt/PlayableEndcardFrameLayout$c;)V

    .line 61
    .line 62
    .line 63
    return-object v0
.end method

.method private my()V
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/qp/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/dqg/c;->gt()Landroid/view/ViewGroup;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/byazt/dqg/c;->yp:Lcom/byazt/seg/c;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/qp/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/seg/c;Lcom/byazt/ete/ic;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/dqg/c;->nu:Lcom/byazt/qp/c;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/qp/c;->c(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/dqg/c;->nu:Lcom/byazt/qp/c;

    .line 28
    .line 29
    new-instance v1, Lcom/byazt/dqg/c$8;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/byazt/dqg/c$8;-><init>(Lcom/byazt/dqg/c;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/byazt/qp/c;->c(Lcom/byazt/qj/c;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/dqg/c;->nu:Lcom/byazt/qp/c;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/qp/c;->c()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic n(Lcom/byazt/dqg/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/dqg/c;->zm:Z

    return p0
.end method

.method private nu()V
    .locals 8

    .line 1
    new-instance v7, Lcom/byazt/lo/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/dqg/c;->z:Lcom/byazt/ddx/sp;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/byazt/dqg/c;->gt:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/dqg/tt;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    move-object v0, v7

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/byazt/lo/uj;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    iput-object v7, p0, Lcom/byazt/dqg/c;->m:Lcom/byazt/lo/uj;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v7, v0}, Lcom/byazt/ux/c;->tt(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/dqg/c;->m:Lcom/byazt/lo/uj;

    .line 30
    .line 31
    new-instance v1, Lcom/byazt/dqg/c$2;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/byazt/dqg/c$2;-><init>(Lcom/byazt/dqg/c;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/ux/c;->c(Lcom/byazt/qj/c;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/dqg/c;->m:Lcom/byazt/lo/uj;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/ux/c;->t()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private rh()V
    .locals 8

    .line 1
    new-instance v2, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    .line 9
    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    new-instance v7, Lcom/byazt/lo/tt;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/byazt/dqg/c;->z:Lcom/byazt/ddx/sp;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    iget-object v5, p0, Lcom/byazt/dqg/c;->gt:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/dqg/tt;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    move-object v0, v7

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/byazt/lo/tt;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iput-object v7, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {v7, v0}, Lcom/byazt/ux/c;->tt(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 46
    .line 47
    new-instance v1, Lcom/byazt/dqg/c$3;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/byazt/dqg/c$3;-><init>(Lcom/byazt/dqg/c;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/ux/c;->c(Lcom/byazt/ux/tt;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 56
    .line 57
    new-instance v1, Lcom/byazt/dqg/c$4;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Lcom/byazt/dqg/c$4;-><init>(Lcom/byazt/dqg/c;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/byazt/ux/c;->c(Lcom/byazt/qj/c;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 66
    .line 67
    new-instance v1, Lcom/byazt/dqg/c$5;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lcom/byazt/dqg/c$5;-><init>(Lcom/byazt/dqg/c;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/byazt/ux/c;->c(Lcom/byazt/ux/c$c;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/byazt/lo/tt;->t()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Lcom/byazt/dqg/c$6;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/byazt/dqg/c$6;-><init>(Lcom/byazt/dqg/c;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->ve(Lcom/byazt/aas/c$tt;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/byazt/dqg/c;->yp:Lcom/byazt/seg/c;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/byazt/seg/c;->c()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "3"

    .line 103
    .line 104
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/byazt/dqg/c;->tt()V

    .line 111
    .line 112
    .line 113
    :cond_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/dqg/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dqg/c;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/dqg/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dqg/c;->gu:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/dqg/c;)Lcom/byazt/lo/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/c;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/byazt/dqg/tt;->c()V

    .line 4
    iget-object v0, p0, Lcom/byazt/dqg/tt;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/byazt/aas/nb;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/dqg/c;->gt:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/byazt/dqg/c;->yp:Lcom/byazt/seg/c;

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/dqg/c$1;

    invoke-direct {v1, p0}, Lcom/byazt/dqg/c$1;-><init>(Lcom/byazt/dqg/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/seg/c;->uj()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->sp(I)V

    .line 9
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->rh()V

    return-void

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/byazt/dqg/c;->my()V

    return-void

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/byazt/dqg/c;->rh()V

    return-void

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/byazt/dqg/c;->nu()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/byazt/dqg/c;->m:Lcom/byazt/lo/uj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/byazt/dqg/c;->m:Lcom/byazt/lo/uj;

    invoke-virtual {v0, p1}, Lcom/byazt/lo/uj;->a(I)V

    :cond_0
    return-void
.end method

.method public c(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/byazt/dqg/c;->nu:Lcom/byazt/qp/c;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Lcom/byazt/qp/c;->c(Landroid/webkit/DownloadListener;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/hkv/tt;Lcom/byazt/hkv/tt;)V
    .locals 1

    .line 14
    invoke-super {p0, p1, p2}, Lcom/byazt/dqg/tt;->c(Lcom/byazt/hkv/tt;Lcom/byazt/hkv/tt;)V

    .line 15
    iget-object p2, p0, Lcom/byazt/dqg/c;->m:Lcom/byazt/lo/uj;

    if-eqz p2, :cond_0

    .line 16
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/ux/c;->c(Ljava/util/Map;)V

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    if-eqz p2, :cond_1

    .line 18
    iget-object v0, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/byazt/ux/c;->c(Ljava/util/Map;)V

    .line 19
    :cond_1
    iget-object p2, p0, Lcom/byazt/dqg/c;->nu:Lcom/byazt/qp/c;

    if-eqz p2, :cond_2

    .line 20
    invoke-virtual {p2, p1}, Lcom/byazt/qp/c;->c(Lcom/byazt/hkv/tt;)V

    :cond_2
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/dqg/c;->gu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public da()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/c;->nu:Lcom/byazt/qp/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qp/c;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/lo/tt;->z()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/dqg/c;->rl:Lcom/byazt/xzj/RewardLpBottomView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/xzj/RewardLpBottomView;->tt()V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/lo/tt;->gt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public n()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object v0
.end method

.method public sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/lo/tt;->rh()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public tt()V
    .locals 4

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 4
    iget-object v2, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, v1

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x35

    .line 6
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    float-to-int v1, v2

    .line 7
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8
    iget-object v1, p0, Lcom/byazt/dqg/tt;->sp:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v1, p0, Lcom/byazt/dqg/tt;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    const-string v2, "tt_unmute"

    const/16 v3, 0x140

    invoke-static {v1, v2, v0, v3}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 10
    new-instance v1, Lcom/byazt/dqg/c$7;

    invoke-direct {v1, p0, v0}, Lcom/byazt/dqg/c$7;-><init>(Lcom/byazt/dqg/c;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dqg/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/lo/tt;->ve(Z)V

    :cond_0
    return-void
.end method

.method public uj()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/ux/c;->u()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/dqg/c;->gu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/c;->rh:Lcom/byazt/lo/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/lo/tt;->nu()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
