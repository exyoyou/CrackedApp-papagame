.class public Lcom/byazt/uo/c;
.super Lcom/byazt/nc/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;
.implements Lcom/byazt/cc/TsView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/uo/c$tt;,
        Lcom/byazt/uo/c$c;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View$OnTouchListener;

.field public aw:Ljava/lang/String;

.field public b:Lcom/byazt/vw/tt;

.field public bm:Ljava/lang/Double;

.field public bx:Lcom/byazt/lh/ve;

.field public c:Lcom/byazt/cc/TsView;

.field public cu:I

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final da:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public dz:I

.field public eo:Lcom/byazt/un/uj;

.field public gr:Z

.field public gt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public gu:Z

.field public h:Z

.field public hd:F

.field public i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ic:F

.field public iu:Lcom/byazt/ddx/n;

.field public j:Lcom/byazt/im/ve;

.field public kk:Z

.field public kp:J

.field public l:Z

.field public final lo:Lcom/byazt/nr/d;

.field public lr:Z

.field public lt:Z

.field public m:J

.field public md:Lcom/byazt/uph/tt;

.field public my:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile n:Lcom/byazt/hkv/c;

.field public final nb:Ljava/util/concurrent/atomic/AtomicInteger;

.field public nu:Lcom/byazt/im/a;

.field public or:I

.field public os:Lcom/byazt/dj/tt;

.field public oz:Lcom/byazt/gat/uj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public pf:Lcom/byazt/but/tt;

.field public pu:Lcom/byazt/cc/c;

.field public q:Landroid/app/Activity;

.field public final qp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public qy:Z

.field public r:Lcom/byazt/tdq/c;

.field public rh:Lcom/byazt/im/x;

.field public rl:Z

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sl:Z

.field public sp:Lcom/byazt/uo/c$tt;

.field public sv:Landroid/content/Context;

.field public t:I

.field public tk:J

.field public to:Z

.field public tt:Lcom/byazt/ete/ic;

.field public tx:Z

.field public u:I

.field public uj:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/byazt/ocd/ve;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lcom/byazt/cc/i;

.field public volatile ve:Lcom/byazt/pop/ve;

.field public x:Lcom/byazt/vw/c;

.field public y:Z

.field public yp:Z

.field public yv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public z:Z

.field public zb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zm:Lcom/byazt/im/sp;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/uo/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/uo/c;->da:Ljava/util/Map;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/byazt/uo/c;->bm:Ljava/lang/Double;

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/byazt/uo/c;->lr:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/byazt/uo/c;->l:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/byazt/uo/c;->sl:Z

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    iput v2, p0, Lcom/byazt/uo/c;->t:I

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    iput v2, p0, Lcom/byazt/uo/c;->u:I

    .line 33
    .line 34
    new-instance v3, Lcom/byazt/nr/d;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v3, v4, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, p0, Lcom/byazt/uo/c;->lo:Lcom/byazt/nr/d;

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/byazt/uo/c;->yp:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/byazt/uo/c;->z:Z

    .line 48
    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    iput-wide v3, p0, Lcom/byazt/uo/c;->m:J

    .line 52
    .line 53
    new-instance v5, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v5, p0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    .line 59
    .line 60
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 63
    .line 64
    .line 65
    iput-object v5, p0, Lcom/byazt/uo/c;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    iput-boolean v5, p0, Lcom/byazt/uo/c;->gu:Z

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/byazt/uo/c;->gr:Z

    .line 71
    .line 72
    new-instance v6, Lcom/byazt/cc/c;

    .line 73
    .line 74
    invoke-direct {v6}, Lcom/byazt/cc/c;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v6, p0, Lcom/byazt/uo/c;->pu:Lcom/byazt/cc/c;

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/byazt/uo/c;->to:Z

    .line 80
    .line 81
    iput-wide v3, p0, Lcom/byazt/uo/c;->tk:J

    .line 82
    .line 83
    const-wide/16 v3, 0x5

    .line 84
    .line 85
    iput-wide v3, p0, Lcom/byazt/uo/c;->kp:J

    .line 86
    .line 87
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    .line 89
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 90
    .line 91
    .line 92
    iput-object v3, p0, Lcom/byazt/uo/c;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    .line 94
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    .line 96
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 97
    .line 98
    .line 99
    iput-object v3, p0, Lcom/byazt/uo/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    .line 101
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 104
    .line 105
    .line 106
    iput-object v3, p0, Lcom/byazt/uo/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    iput-boolean v5, p0, Lcom/byazt/uo/c;->tx:Z

    .line 109
    .line 110
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 113
    .line 114
    .line 115
    iput-object v3, p0, Lcom/byazt/uo/c;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    .line 117
    iput v2, p0, Lcom/byazt/uo/c;->or:I

    .line 118
    .line 119
    iput v2, p0, Lcom/byazt/uo/c;->cu:I

    .line 120
    .line 121
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    .line 123
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 124
    .line 125
    .line 126
    iput-object v2, p0, Lcom/byazt/uo/c;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    .line 128
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    .line 130
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 131
    .line 132
    .line 133
    iput-object v2, p0, Lcom/byazt/uo/c;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    .line 135
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 136
    .line 137
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 138
    .line 139
    .line 140
    iput-object v2, p0, Lcom/byazt/uo/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/byazt/uo/c;->pf:Lcom/byazt/but/tt;

    .line 143
    .line 144
    iput-boolean v1, p0, Lcom/byazt/uo/c;->y:Z

    .line 145
    .line 146
    iput v1, p0, Lcom/byazt/uo/c;->dz:I

    .line 147
    .line 148
    return-void
.end method

.method public static synthetic a(Lcom/byazt/uo/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/uo/c;->yp()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/uo/c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/uo/c;->ic:F

    return p1
.end method

.method public static synthetic c(Lcom/byazt/uo/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/uo/c;->kp:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/uo/c;)Landroid/content/Context;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/uo/c;->sv:Landroid/content/Context;

    return-object p0
.end method

.method private c(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Lcom/byazt/cc/TsView;->setCountDownTime(I)V

    :cond_0
    return-void
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 3

    .line 69
    iget-boolean p1, p0, Lcom/byazt/uo/c;->qy:Z

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    if-nez v0, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/uo/c;->lt:Z

    if-eqz v0, :cond_2

    return-void

    .line 72
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/byazt/uo/c;->lt:Z

    .line 74
    iget-object v0, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    invoke-virtual {v0}, Lcom/byazt/cc/i;->c()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/byazt/uo/c;->eo:Lcom/byazt/un/uj;

    if-eqz v1, :cond_4

    .line 76
    invoke-virtual {v1}, Lcom/byazt/un/uj;->a()V

    .line 77
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    :cond_5
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 80
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-static {p1}, Lcom/byazt/aas/pf;->x(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 83
    iput-object v2, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 84
    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-boolean p1, p0, Lcom/byazt/uo/c;->gr:Z

    if-nez p1, :cond_7

    goto :goto_0

    .line 87
    :cond_7
    iget-object p1, p0, Lcom/byazt/uo/c;->eo:Lcom/byazt/un/uj;

    if-eqz p1, :cond_8

    .line 88
    invoke-virtual {p1}, Lcom/byazt/un/uj;->da()V

    .line 89
    :cond_8
    iput-object v2, p0, Lcom/byazt/uo/c;->eo:Lcom/byazt/un/uj;

    .line 90
    :goto_0
    iget-object p1, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    iget-object v0, p0, Lcom/byazt/uo/c;->eo:Lcom/byazt/un/uj;

    new-instance v1, Lcom/byazt/uo/c$4;

    invoke-direct {v1, p0}, Lcom/byazt/uo/c$4;-><init>(Lcom/byazt/uo/c;)V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/cc/i;->c(Lcom/byazt/un/uj;Lcom/byazt/cc/i$c;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/cc/TsView;->c(Lcom/byazt/ete/ic;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/uo/c;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/uo/c;->tt(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/uo/c;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/uo/c;->tx:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/uo/c;)Lcom/byazt/cc/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    return-object p0
.end method

.method private da()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/uo/c;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ek()Lcom/byazt/ete/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ek()Lcom/byazt/ete/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/j;->tt()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/byazt/cc/TsView;->setVideoViewVisibility(I)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v0, v1}, Lcom/byazt/cc/TsView;->setVideoViewVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    new-instance v1, Lcom/byazt/uo/c$6;

    invoke-direct {v1, p0}, Lcom/byazt/uo/c$6;-><init>(Lcom/byazt/uo/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/cc/TsView;->setVoiceViewListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic i(Lcom/byazt/uo/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/uo/c;->t()V

    return-void
.end method

.method private m()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/uo/c;->kk:Z

    .line 3
    .line 4
    new-instance v1, Lcom/byazt/cc/i;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/byazt/cc/i;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/byazt/uo/c;->sv:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lcom/byazt/cc/i;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/uo/c;->pu:Lcom/byazt/cc/c;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/byazt/cc/c;->ve()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/byazt/uo/c;->z()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    :cond_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    .line 43
    .line 44
    iget v3, p0, Lcom/byazt/uo/c;->u:I

    .line 45
    .line 46
    iget-object v4, p0, Lcom/byazt/uo/c;->pu:Lcom/byazt/cc/c;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/byazt/cc/i;->c(Ljava/lang/String;ILcom/byazt/cc/c;Lcom/byazt/ocd/ve;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    .line 56
    .line 57
    iget v4, p0, Lcom/byazt/uo/c;->u:I

    .line 58
    .line 59
    iget-object v5, p0, Lcom/byazt/uo/c;->pu:Lcom/byazt/cc/c;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/byazt/ocd/ve;

    .line 66
    .line 67
    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/byazt/cc/i;->c(Ljava/lang/String;ILcom/byazt/cc/c;Lcom/byazt/ocd/ve;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iput-boolean v2, p0, Lcom/byazt/uo/c;->qy:Z

    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    invoke-virtual {v0, v1}, Lcom/byazt/cc/i;->c(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/byazt/uo/c;->pu:Lcom/byazt/cc/c;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Lcom/byazt/cc/c;->c(Lcom/byazt/nc/tt;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void
.end method

.method public static synthetic n(Lcom/byazt/uo/c;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/c;->bm:Ljava/lang/Double;

    return-object p0
.end method

.method private n(Z)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    new-instance v2, Lcom/byazt/uo/c$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/byazt/uo/c$3;-><init>(Lcom/byazt/uo/c;ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    return-void
.end method

.method private nu()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/uo/c;->lt:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/byazt/uo/c;->gu:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/uo/c;->to:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/byazt/uo/c;->to:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/uo/c;->pu:Lcom/byazt/cc/c;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/cc/c;->c()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/byazt/uo/c;->pu:Lcom/byazt/cc/c;

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/byazt/uo/c;->eo:Lcom/byazt/un/uj;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/un/uj;->da()V

    .line 32
    .line 33
    .line 34
    :cond_3
    iput-object v1, p0, Lcom/byazt/uo/c;->x:Lcom/byazt/vw/c;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/byazt/uo/c;->q:Landroid/app/Activity;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic sl(Lcom/byazt/uo/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/uo/c;->hd:F

    return p0
.end method

.method private sl()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->if()I

    move-result v0

    .line 3
    new-instance v1, Lcom/byazt/omf/EmptyView;

    iget-object v2, p0, Lcom/byazt/uo/c;->sv:Landroid/content/Context;

    iget-object v3, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-direct {v1, v2, v3, v0}, Lcom/byazt/omf/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {v1, v0}, Lcom/byazt/omf/EmptyView;->setAdType(I)V

    .line 6
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    new-instance v0, Lcom/byazt/uo/c$7;

    invoke-direct {v0, p0}, Lcom/byazt/uo/c$7;-><init>(Lcom/byazt/uo/c;)V

    invoke-virtual {v1, v0}, Lcom/byazt/omf/EmptyView;->setCallback(Lcom/byazt/omf/EmptyView$c;)V

    .line 8
    iget-boolean v0, p0, Lcom/byazt/uo/c;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 9
    invoke-virtual {v1, v0}, Lcom/byazt/omf/EmptyView;->setNeedCheckingShow(Z)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->da:Ljava/util/Map;

    iget v2, p0, Lcom/byazt/uo/c;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "splash_show_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/byazt/uo/c$8;

    iget-object v6, p0, Lcom/byazt/uo/c;->sv:Landroid/content/Context;

    iget-object v7, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    iget-object v8, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    const/4 v9, 0x4

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/byazt/uo/c$8;-><init>(Lcom/byazt/uo/c;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    .line 12
    iget-object v0, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    const-class v2, Lcom/byazt/nat/c;

    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0, p0}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    const-class v3, Lcom/byazt/vis/c;

    invoke-virtual {v0, v3}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/c;

    iget-object v3, p0, Lcom/byazt/uo/c;->da:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 14
    iget-object v0, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    const-class v3, Lcom/byazt/vis/ve;

    invoke-virtual {v0, v3}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/ve;

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/byazt/uo/c;->setAdShowCallback(Lcom/byazt/vis/ve;Lcom/byazt/omf/EmptyView;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    iget-object v1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v1}, Lcom/byazt/cc/TsView;->getDislikeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/tt;->tt(Landroid/view/View;)V

    .line 17
    new-instance v0, Lcom/byazt/uo/c$9;

    invoke-direct {v0, p0}, Lcom/byazt/uo/c$9;-><init>(Lcom/byazt/uo/c;)V

    .line 18
    iget-object v1, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    invoke-virtual {v1, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v1

    check-cast v1, Lcom/byazt/nat/c;

    invoke-virtual {v1, v0}, Lcom/byazt/nat/c;->c(Lcom/byazt/nat/c$c;)V

    .line 19
    iget-object v1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/byazt/nat/c$c;

    invoke-static {v1, v0, v2}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    new-instance v1, Lcom/byazt/uo/c$10;

    invoke-direct {v1, p0}, Lcom/byazt/uo/c$10;-><init>(Lcom/byazt/uo/c;)V

    invoke-virtual {v0, v1}, Lcom/byazt/cc/TsView;->setSkipListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic sp(Lcom/byazt/uo/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/uo/c;->y:Z

    return p0
.end method

.method public static synthetic t(Lcom/byazt/uo/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/uo/c;->ic:F

    return p0
.end method

.method private t()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/byazt/uo/c$c;

    iget-object v2, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v1, v2}, Lcom/byazt/uo/c$c;-><init>(Lcom/byazt/ete/ic;)V

    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->ve(Lcom/byazt/aas/c$tt;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/uo/c;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/uo/c;->hd:F

    return p1
.end method

.method public static synthetic tt(Lcom/byazt/uo/c;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/uo/c;->tk:J

    return-wide p1
.end method

.method private tt(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/uo/c;->iu:Lcom/byazt/ddx/n;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ddx/n;->c(FI)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/uo/c;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/uo/c;->n(Z)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/uo/c;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/byazt/uo/c;->tx:Z

    return p0
.end method

.method public static synthetic u(Lcom/byazt/uo/c;)Lcom/byazt/nr/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/c;->lo:Lcom/byazt/nr/d;

    return-object p0
.end method

.method private u()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 5
    iget-object v1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    instance-of v2, v1, Lcom/byazt/omf/EmptyView;

    if-eqz v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/uo/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    return-object p0
.end method

.method private uj(Z)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/byazt/uo/c;->sv:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 12
    invoke-direct {p0, p1}, Lcom/byazt/uo/c;->n(Z)V

    .line 13
    iget-object p1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    invoke-virtual {p0, p1}, Lcom/byazt/uo/c;->bindDownloadAdapterToClickListener(Lcom/byazt/pop/ve;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    invoke-interface {p1}, Lcom/byazt/pop/ve;->c()V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/uo/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/uo/c;->kk:Z

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/uo/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/c;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/uo/c;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/uo/c;->uj(Z)V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/uo/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/uo/c;->u()V

    return-void
.end method

.method private yp()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->pl()I

    move-result v1

    iget-object v2, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/cc/TsView;->c(ILcom/byazt/hkv/c;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/uo/c;->ve()V

    :cond_0
    return-void
.end method

.method public static synthetic yp(Lcom/byazt/uo/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/uo/c;->nu()V

    return-void
.end method

.method public static synthetic z(Lcom/byazt/uo/c;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/uo/c;->q:Landroid/app/Activity;

    return-object p0
.end method

.method private z()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/oz;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/byazt/uo/c;->yp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/byazt/uo/c;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/byazt/uo/c;->rl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public bindDownloadAdapterToClickListener(Lcom/byazt/pop/ve;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/byazt/uo/c;->n:Lcom/byazt/hkv/c;

    .line 6
    .line 7
    const-class v0, Lcom/byazt/nat/c;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/byazt/nat/c;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .line 56
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 57
    iget-boolean v0, p0, Lcom/byazt/uo/c;->z:Z

    if-nez v0, :cond_2

    .line 58
    iput-boolean v1, p0, Lcom/byazt/uo/c;->z:Z

    .line 59
    iput-boolean v1, p0, Lcom/byazt/uo/c;->sl:Z

    .line 60
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-wide v2, p0, Lcom/byazt/uo/c;->m:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/byazt/uo/c;->m:J

    sub-long v4, v2, v4

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v4, v5, v0}, Lcom/byazt/ddx/uj;->c(JLcom/byazt/ete/ic;)V

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/byazt/uo/c;->m()V

    .line 64
    iget-wide v2, p0, Lcom/byazt/uo/c;->m:J

    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v2, v3, v0}, Lcom/byazt/ddx/uj;->tt(JLcom/byazt/ete/ic;)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/byazt/uo/c;->c(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/byazt/uo/c;->n()V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/byazt/uo/c;->x:Lcom/byazt/vw/c;

    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {v0, p0, v1}, Lcom/byazt/vw/c;->c(Lcom/byazt/nc/tt;I)V

    :cond_3
    return-void
.end method

.method public c(Lcom/byazt/gat/uj;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/byazt/uo/c;->nu:Lcom/byazt/im/a;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->tt(I)V

    .line 26
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    const-string v1, "render splash ad model is null"

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    invoke-interface {p1, v0}, Lcom/byazt/gat/uj;->c(Ljava/lang/Object;)V

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->rh:Lcom/byazt/im/x;

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->tt(I)V

    .line 30
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    const-string v1, "render splash material is null"

    invoke-virtual {v0, v1}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    invoke-interface {p1, v0}, Lcom/byazt/gat/uj;->c(Ljava/lang/Object;)V

    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 33
    :try_start_0
    iput-boolean p1, p0, Lcom/byazt/uo/c;->sl:Z

    .line 34
    new-instance v0, Lcom/byazt/cc/TsView;

    iget-object v2, p0, Lcom/byazt/uo/c;->sv:Landroid/content/Context;

    iget-object v3, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v2, v3, v4}, Lcom/byazt/cc/TsView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    iput-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 35
    invoke-virtual {v0, p0}, Lcom/byazt/cc/TsView;->setAttachedToWindowListener(Lcom/byazt/cc/TsView$c;)V

    .line 36
    invoke-direct {p0}, Lcom/byazt/uo/c;->da()V

    .line 37
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    iget-object v2, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v2}, Lcom/byazt/cc/TsView;->setCountDownViewPosition(Lcom/byazt/ete/ic;)V

    .line 38
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->mq()I

    move-result v0

    if-nez v0, :cond_3

    .line 39
    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 40
    invoke-virtual {p1, v0}, Lcom/byazt/cc/TsView;->setAdlogoViewVisibility(I)V

    goto :goto_0

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {v0, p1}, Lcom/byazt/cc/TsView;->setAdlogoViewVisibility(I)V

    .line 43
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->xr()I

    move-result p1

    if-gtz p1, :cond_5

    .line 44
    invoke-direct {p0, v1}, Lcom/byazt/uo/c;->c(I)V

    goto :goto_1

    .line 45
    :cond_5
    iget-object p1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->xr()I

    move-result p1

    iput p1, p0, Lcom/byazt/uo/c;->t:I

    .line 46
    invoke-direct {p0, p1}, Lcom/byazt/uo/c;->c(I)V

    .line 47
    :goto_1
    iget-object p1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {p0, p1}, Lcom/byazt/uo/c;->c(Lcom/byazt/ete/ic;)V

    .line 48
    invoke-direct {p0}, Lcom/byazt/uo/c;->sl()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "sbr"

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/im/ve;Lcom/byazt/gat/uj;Lcom/byazt/tdq/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/im/ve;",
            "Lcom/byazt/gat/uj<",
            "Lcom/byazt/im/i;",
            "Lcom/byazt/im/sp;",
            ">;",
            "Lcom/byazt/tdq/c;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/byazt/uo/c;->j:Lcom/byazt/im/ve;

    .line 7
    iput-object p3, p0, Lcom/byazt/uo/c;->r:Lcom/byazt/tdq/c;

    .line 8
    iget-object p3, p0, Lcom/byazt/uo/c;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/byazt/im/ve;->i()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iput-object p2, p0, Lcom/byazt/uo/c;->oz:Lcom/byazt/gat/uj;

    .line 10
    new-instance p2, Lcom/byazt/im/sp;

    invoke-direct {p2}, Lcom/byazt/im/sp;-><init>()V

    iput-object p2, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    .line 11
    invoke-virtual {p1}, Lcom/byazt/im/ve;->i()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/byazt/im/sp;->tt(Z)V

    .line 12
    iget-object p2, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/byazt/im/c;->c(Lcom/byazt/ete/ic;)V

    .line 13
    iget-object p2, p0, Lcom/byazt/uo/c;->zm:Lcom/byazt/im/sp;

    invoke-virtual {p2, p0}, Lcom/byazt/im/sp;->c(Lcom/byazt/nc/tt;)V

    .line 14
    invoke-virtual {p1}, Lcom/byazt/im/ve;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/uo/c;->sv:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Lcom/byazt/im/ve;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/byazt/im/ve;->uj()Lcom/byazt/im/a;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/uo/c;->nu:Lcom/byazt/im/a;

    .line 17
    invoke-virtual {p1}, Lcom/byazt/im/ve;->n()Lcom/byazt/im/x;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/byazt/uo/c;->updateSplashResourceModel(Lcom/byazt/im/x;Z)V

    .line 18
    invoke-virtual {p1}, Lcom/byazt/im/ve;->sp()Lcom/byazt/dj/tt;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/uo/c;->os:Lcom/byazt/dj/tt;

    .line 19
    iget-object p1, p0, Lcom/byazt/uo/c;->nu:Lcom/byazt/im/a;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 20
    new-instance p2, Lcom/byazt/ddx/n;

    iget-object v0, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/byazt/uo/c;->iu:Lcom/byazt/ddx/n;

    .line 21
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->jl()Z

    move-result p1

    .line 22
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/ogz/sl;->xx()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 23
    :cond_3
    :goto_1
    iput-boolean p3, p0, Lcom/byazt/uo/c;->y:Z

    :cond_4
    :goto_2
    return-void
.end method

.method public c(Z)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/byazt/uo/c;->r:Lcom/byazt/tdq/c;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/byazt/uo/c;->oz:Lcom/byazt/gat/uj;

    iget-object v2, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/uo/c;->os:Lcom/byazt/dj/tt;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/byazt/tdq/c;->c(Lcom/byazt/gat/uj;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Z)V

    :cond_0
    return-void
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getLifecycleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

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
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/byazt/ete/zb;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "image_url"

    .line 49
    .line 50
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    return-object v0
.end method

.method public getMediationManager()Lcom/byazt/sbm/sp;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ah/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ah/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getSplashCardView()Landroid/view/View;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/uo/c;->qy:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/byazt/iyp/tt;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/c;->v:Lcom/byazt/cc/i;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/cc/i;->c()Landroid/view/ViewGroup;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_2
    return-object v1
.end method

.method public getSplashView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean p1, p0, Lcom/byazt/uo/c;->kk:Z

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/byazt/ete/oz;->c(Lcom/byazt/ete/ic;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "splash_card_close_type"

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    const-string v1, "splash_ad"

    .line 36
    .line 37
    const-string v2, "splash_card_close"

    .line 38
    .line 39
    invoke-static {v0, v1, v2, p1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/byazt/uo/c;->nu()V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :cond_2
    iget-wide v2, p0, Lcom/byazt/uo/c;->tk:J

    .line 52
    .line 53
    const-wide/16 v4, 0x1

    .line 54
    .line 55
    add-long/2addr v2, v4

    .line 56
    iput-wide v2, p0, Lcom/byazt/uo/c;->tk:J

    .line 57
    .line 58
    iget-wide v4, p0, Lcom/byazt/uo/c;->kp:J

    .line 59
    .line 60
    cmp-long p1, v2, v4

    .line 61
    .line 62
    if-ltz p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/byazt/uo/c;->lo:Lcom/byazt/nr/d;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/byazt/uo/c;->lo:Lcom/byazt/nr/d;

    .line 71
    .line 72
    const-wide/16 v2, 0x3e8

    .line 73
    .line 74
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public hideSkipButton()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-static {v3, v0, v1, v2}, Lcom/byazt/cc/sp;->c(ILcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/cc/TsView;->setSkipIconVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/byazt/hi/ve;->a:Lcom/byazt/hi/ve;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public initLifecycle(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/lh/ve;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p2}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, v1, p2}, Lcom/byazt/lh/ve;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/byazt/ky/uj;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/byazt/ky/uj;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p2}, Lcom/byazt/wi/a;->c(I)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    iget-object p2, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Lcom/byazt/wi/uj;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/byazt/wi/uj;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object p2, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/byazt/uo/c$1;

    .line 75
    .line 76
    invoke-direct {v1, p0, p1}, Lcom/byazt/uo/c$1;-><init>(Lcom/byazt/uo/c;Lcom/byazt/ete/ic;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/byazt/uo/c;->sp()V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    return-void
.end method

.method public isSerialRender()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->j:Lcom/byazt/im/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/im/ve;->da()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/uo/c;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/uo/c;->l:Z

    .line 13
    .line 14
    return-void
.end method

.method public n()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->da(Z)V

    .line 3
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->ve(Lcom/byazt/aas/c$tt;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "\u5f00\u5c4fview\u91cd\u590d\u5c55\u793a"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/cc/TsView;->getCountDownView()Lcom/byazt/but/uj;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/cc/TsView;->getCountDownView()Lcom/byazt/but/uj;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/byazt/but/uj;->getView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/cc/TsView;->getCountDownView()Lcom/byazt/but/uj;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/byazt/but/uj;->getView()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/byazt/uo/c;->tt(Z)V

    .line 59
    .line 60
    .line 61
    :cond_1
    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/byazt/uo/c;->dz:I

    .line 63
    .line 64
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-static {v0}, Lcom/byazt/aas/cu;->tt(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/uo/c;->pf:Lcom/byazt/but/tt;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/but/tt;->c()V

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/byazt/uo/c;->aw:Ljava/lang/String;

    .line 53
    .line 54
    iget v2, p0, Lcom/byazt/uo/c;->dz:I

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-static {v3, v0, v1, v2}, Lcom/byazt/cc/sp;->c(ILcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->pf:Lcom/byazt/but/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/but/tt;->c(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget p1, p0, Lcom/byazt/uo/c;->dz:I

    .line 9
    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Lcom/byazt/uo/c;->dz:I

    .line 13
    .line 14
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lcom/byazt/ocd/tt;

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setAdShowCallback(Lcom/byazt/vis/ve;Lcom/byazt/omf/EmptyView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/uo/c$11;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/uo/c$11;-><init>(Lcom/byazt/uo/c;Lcom/byazt/vis/ve;Lcom/byazt/omf/EmptyView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/byazt/vis/ve;->c(Lcom/byazt/vis/ve$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/uo/c;->uj:Ljava/lang/ref/SoftReference;

    .line 10
    .line 11
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c;->bm:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setSplashAdListener(Lcom/byazt/vw/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c;->x:Lcom/byazt/vw/c;

    .line 2
    .line 3
    return-void
.end method

.method public setSplashCardListener(Lcom/byazt/vw/tt;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c;->b:Lcom/byazt/vw/tt;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/uo/c;->pu:Lcom/byazt/cc/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/cc/c;->c(Lcom/byazt/vw/tt;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public showSplashCardView(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/uo/c;->q:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/uo/c;->c(Landroid/view/ViewGroup;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showSplashView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public sp()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/byazt/hi/ve;->c:Lcom/byazt/hi/ve;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public syncCallbackStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/uo/c;->or:I

    .line 2
    .line 3
    return-void
.end method

.method public tt()V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/byazt/uo/c;->lo:Lcom/byazt/nr/d;

    new-instance v1, Lcom/byazt/uo/c$12;

    invoke-direct {v1, p0}, Lcom/byazt/uo/c$12;-><init>(Lcom/byazt/uo/c;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public tt(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/byazt/uo/c;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/iu;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/byazt/uo/c;->pf:Lcom/byazt/but/tt;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/byazt/but/tt;->tt()V

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    invoke-virtual {p1}, Lcom/byazt/cc/TsView;->getCountDownView()Lcom/byazt/but/uj;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    new-instance v0, Lcom/byazt/uo/c$2;

    invoke-direct {v0, p0}, Lcom/byazt/uo/c$2;-><init>(Lcom/byazt/uo/c;)V

    invoke-interface {p1, v0}, Lcom/byazt/but/uj;->setCountdownListener(Lcom/byazt/but/c;)V

    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Lcom/byazt/but/uj;->c(Z)V

    .line 14
    invoke-interface {p1}, Lcom/byazt/but/uj;->c()V

    :cond_3
    return-void
.end method

.method public uj()V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/byazt/uo/c;->m()V

    .line 4
    iget-wide v0, p0, Lcom/byazt/uo/c;->m:J

    iget-object v2, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0, v1, v2}, Lcom/byazt/ddx/uj;->tt(JLcom/byazt/ete/ic;)V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/byazt/uo/c;->x:Lcom/byazt/vw/c;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/byazt/uo/c;->sl:Z

    if-nez v2, :cond_0

    .line 7
    iput-boolean v1, p0, Lcom/byazt/uo/c;->sl:Z

    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/byazt/vw/c;->c(Lcom/byazt/nc/tt;I)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/byazt/uo/c;->c(Z)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/uo/c;->n()V

    return-void
.end method

.method public declared-synchronized updateSplashResourceModel(Lcom/byazt/im/x;Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/uo/c;->rh:Lcom/byazt/im/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/byazt/uo/c;->rh:Lcom/byazt/im/x;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/byazt/im/x;->n()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/byazt/uo/c;->updateSplashVideoFlag(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/byazt/im/x;->uj()Lcom/byazt/uph/tt;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/byazt/uo/c;->md:Lcom/byazt/uph/tt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    :cond_1
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method

.method public updateSplashVideoFlag(Z)V
    .locals 0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/byazt/uo/c;->h:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/uo/c;->da()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    return-void
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/byazt/nc/tt;->values()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/rl/c;->c(Lcom/bykv/vk/openvk/api/proto/PluginValueSet;)Lcom/byazt/rl/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    sget v2, Lcom/byazt/omf/p;->uj:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/byazt/rl/c;->c(II)Lcom/byazt/rl/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/rl/c;->tt()Lcom/bykv/vk/openvk/api/proto/PluginValueSet;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public ve()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->mf()Lcom/byazt/ete/s;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/s;->i()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/s;->z()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/byazt/ete/s;->yp()Lcom/byazt/ete/s$c;

    move-result-object v0

    .line 8
    new-instance v2, Lcom/byazt/uo/c$13;

    invoke-direct {v2, p0, v0, v1}, Lcom/byazt/uo/c$13;-><init>(Lcom/byazt/uo/c;Lcom/byazt/ete/s$c;I)V

    iput-object v2, p0, Lcom/byazt/uo/c;->a:Landroid/view/View$OnTouchListener;

    .line 9
    iget-object v0, p0, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Lcom/byazt/cc/TsView;->setSlideUpTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void
.end method

.method public ve(Z)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/byazt/uo/c$5;

    invoke-direct {v2, p0, p1}, Lcom/byazt/uo/c$5;-><init>(Lcom/byazt/uo/c;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 13
    iget-object p1, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/byazt/hi/ve;->ve:Lcom/byazt/hi/ve;

    invoke-virtual {p1, v0, v1}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/uo/c;->lr:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/uo/c;->lr:Z

    .line 13
    .line 14
    return-void
.end method

.method public x()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c;->bx:Lcom/byazt/lh/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/uo/c;->getLifecycleId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/byazt/hi/ve;->tt:Lcom/byazt/hi/ve;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/lh/ve;->c(Ljava/lang/String;Lcom/byazt/hi/ve;)V

    :cond_0
    return-void
.end method
