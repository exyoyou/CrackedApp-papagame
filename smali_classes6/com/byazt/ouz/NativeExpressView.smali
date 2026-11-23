.class public Lcom/byazt/ouz/NativeExpressView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/kn/uj;
.implements Lcom/byazt/xv/c;
.implements Lcom/byazt/xl/x;
.implements Lcom/byazt/xl/z;
.implements Lcom/byazt/ouz/m;
.implements Lcom/byazt/ouz/sl;
.implements Lcom/byazt/qdk/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x8b9
    }
.end annotation


# static fields
.field public static my:I = 0x1f4


# instance fields
.field public final a:Landroid/content/Context;

.field public aw:Ljava/lang/Runnable;

.field public b:Lcom/byazt/xl/a;

.field public final bm:Ljava/lang/Runnable;

.field public final bx:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Z

.field public cu:Landroid/widget/FrameLayout;

.field public d:Z

.field public da:Ljava/lang/String;

.field public dz:F

.field public eo:Lcom/byazt/ete/v;

.field public f:F

.field public g:Landroid/view/View;

.field public gr:Lcom/byazt/hkv/tt;

.field public gt:Z

.field public gu:Lcom/byazt/hkv/c;

.field public h:Lcom/byazt/rbg/c;

.field public final hd:Ljava/lang/Runnable;

.field public i:Lcom/byazt/ete/ic;

.field public final ic:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public ir:J

.field public iu:Z

.field public j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/hkv/uj$c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile kk:Lcom/byazt/xl/yp;

.field public kp:Lcom/byazt/xl/tt;

.field public l:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

.field public lo:Lcom/byazt/ouz/yv;

.field public final lr:Ljava/lang/Runnable;

.field public lt:Lcom/byazt/xl/da$c;

.field public m:Z

.field public ma:F

.field public md:F

.field public n:Lcom/byazt/ouz/c;

.field public final nb:Lcom/byazt/ddx/n;

.field public nu:Lcom/byazt/xl/ve;

.field public or:Landroid/widget/FrameLayout;

.field public os:Lcom/byazt/xl/u;

.field public oz:Lcom/byazt/ouz/nu;

.field public p:F

.field public final pf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public pu:Lcom/byazt/atv/sp;

.field public q:Lcom/byazt/atv/a;

.field public qp:Landroid/widget/FrameLayout;

.field public qy:Z

.field public r:Z

.field public rh:Z

.field public rl:Landroid/widget/FrameLayout;

.field public s:Lcom/byazt/ouz/qy;

.field public sl:Lcom/byazt/ouz/ExpressVideoView;

.field public sp:Ljava/lang/String;

.field public sv:Landroid/widget/FrameLayout;

.field public t:Lcom/byazt/dh/ve$uj;

.field public tk:Lcom/byazt/xl/m;

.field public to:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/xl/da;",
            ">;"
        }
    .end annotation
.end field

.field public tt:I

.field public tx:Lcom/byazt/xl/i;

.field public u:Lcom/byazt/dh/ve$ve;

.field public uj:Landroid/app/Dialog;

.field public v:Lcom/byazt/xl/uj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/xl/uj<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public ve:Lcom/byazt/dyf/tt;

.field public x:Lcom/byazt/dj/tt;

.field public y:Lcom/byazt/but/ve;

.field public yf:F

.field public yp:Landroid/widget/FrameLayout;

.field public yv:Ljava/lang/String;

.field public z:Z

.field public zb:Lcom/byazt/qmz/c;

.field public final zm:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->c:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->tt:I

    const-string v1, "embeded_ad"

    .line 4
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->zm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->yv:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 8
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->rh:Z

    .line 9
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 10
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->d:Z

    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->qy:Z

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$1;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$1;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->ic:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 15
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$5;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$5;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->hd:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$6;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$6;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->bm:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$7;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$7;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lr:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->j:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->dz:F

    .line 20
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->ma:F

    .line 21
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->yf:F

    .line 22
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->f:F

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/byazt/ouz/NativeExpressView;->ir:J

    .line 24
    iput-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 27
    new-instance p1, Lcom/byazt/ddx/n;

    invoke-direct {p1, p2, p4}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->nb:Lcom/byazt/ddx/n;

    .line 28
    iput-object p3, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 29
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->sl()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;Z)V
    .locals 4

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->c:Z

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/byazt/ouz/NativeExpressView;->tt:I

    const-string v2, "embeded_ad"

    .line 64
    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 65
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->zm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    .line 66
    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->yv:Ljava/lang/String;

    .line 67
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 68
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->rh:Z

    .line 69
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 70
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->d:Z

    .line 71
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->qy:Z

    .line 73
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    new-instance v2, Lcom/byazt/ouz/NativeExpressView$1;

    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressView$1;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->ic:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 75
    new-instance v2, Lcom/byazt/ouz/NativeExpressView$5;

    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressView$5;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->hd:Ljava/lang/Runnable;

    .line 76
    new-instance v2, Lcom/byazt/ouz/NativeExpressView$6;

    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressView$6;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->bm:Ljava/lang/Runnable;

    .line 77
    new-instance v2, Lcom/byazt/ouz/NativeExpressView$7;

    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressView$7;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->lr:Ljava/lang/Runnable;

    .line 78
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->j:Landroid/util/SparseArray;

    const/high16 v2, -0x40800000    # -1.0f

    .line 79
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->dz:F

    .line 80
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->ma:F

    .line 81
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->yf:F

    .line 82
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->f:F

    const-wide/16 v2, 0x0

    .line 83
    iput-wide v2, p0, Lcom/byazt/ouz/NativeExpressView;->ir:J

    .line 84
    iput-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 87
    new-instance p1, Lcom/byazt/ddx/n;

    invoke-direct {p1, p2, p4}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->nb:Lcom/byazt/ddx/n;

    .line 88
    iput-object p3, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 89
    iput-boolean p5, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 90
    invoke-virtual {p3}, Lcom/byazt/dj/tt;->gt()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 91
    invoke-virtual {p3}, Lcom/byazt/dj/tt;->z()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->sl()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->c:Z

    const/4 v1, 0x0

    .line 95
    iput v1, p0, Lcom/byazt/ouz/NativeExpressView;->tt:I

    const-string v2, "embeded_ad"

    .line 96
    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 97
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->zm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    .line 98
    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->yv:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 100
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->rh:Z

    .line 101
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 102
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->d:Z

    .line 103
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->qy:Z

    .line 105
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    new-instance v2, Lcom/byazt/ouz/NativeExpressView$1;

    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressView$1;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->ic:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 107
    new-instance v2, Lcom/byazt/ouz/NativeExpressView$5;

    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressView$5;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->hd:Ljava/lang/Runnable;

    .line 108
    new-instance v2, Lcom/byazt/ouz/NativeExpressView$6;

    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressView$6;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->bm:Ljava/lang/Runnable;

    .line 109
    new-instance v2, Lcom/byazt/ouz/NativeExpressView$7;

    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressView$7;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->lr:Ljava/lang/Runnable;

    .line 110
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->j:Landroid/util/SparseArray;

    const/high16 v2, -0x40800000    # -1.0f

    .line 111
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->dz:F

    .line 112
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->ma:F

    .line 113
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->yf:F

    .line 114
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->f:F

    const-wide/16 v2, 0x0

    .line 115
    iput-wide v2, p0, Lcom/byazt/ouz/NativeExpressView;->ir:J

    .line 116
    iput-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 119
    new-instance p1, Lcom/byazt/ddx/n;

    invoke-direct {p1, p2, p4}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->nb:Lcom/byazt/ddx/n;

    .line 120
    iput-object p6, p0, Lcom/byazt/ouz/NativeExpressView;->da:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 122
    iput-boolean p5, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 123
    invoke-virtual {p3}, Lcom/byazt/dj/tt;->gt()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 124
    invoke-virtual {p3}, Lcom/byazt/dj/tt;->z()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->sl()V

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;Z)V
    .locals 2

    .line 30
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->c:Z

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->tt:I

    const-string v1, "embeded_ad"

    .line 33
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->zm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->yv:Ljava/lang/String;

    .line 36
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 37
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->rh:Z

    .line 38
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 39
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->d:Z

    .line 40
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->qy:Z

    .line 42
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$1;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$1;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->ic:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 44
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$5;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$5;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->hd:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$6;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$6;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->bm:Ljava/lang/Runnable;

    .line 46
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$7;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$7;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lr:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->j:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 48
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->dz:F

    .line 49
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->ma:F

    .line 50
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->yf:F

    .line 51
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->f:F

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/byazt/ouz/NativeExpressView;->ir:J

    .line 53
    iput-object p5, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 56
    new-instance p2, Lcom/byazt/ddx/n;

    invoke-direct {p2, p3, p5}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->nb:Lcom/byazt/ddx/n;

    .line 57
    iput-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 58
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 59
    iput-boolean p6, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 60
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->sl()V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/ouz/NativeExpressView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->nb:Lcom/byazt/ddx/n;

    invoke-virtual {v0}, Lcom/byazt/ddx/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->nb:Lcom/byazt/ddx/n;

    invoke-static {p0}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ddx/n;->c(FI)V

    :cond_0
    return-void
.end method

.method private a(Lcom/byazt/ete/ic;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(Z)V

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;)V

    return-void

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/byazt/yih/c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/ete/uj;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/byazt/ete/uj;->sp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;)V

    return-void

    .line 10
    :cond_2
    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(Z)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v1

    if-nez v1, :cond_4

    .line 12
    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(Z)V

    return-void

    .line 13
    :cond_4
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$12;

    const-string v2, "pl_dlf"

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/byazt/ouz/NativeExpressView$12;-><init>(Lcom/byazt/ouz/NativeExpressView;Ljava/lang/String;Lcom/byazt/ete/n;Lcom/byazt/ete/ic;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/NativeExpressView;)Ljava/lang/Runnable;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->hd:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c(Landroid/view/View;ILcom/byazt/ete/gr;Lcom/byazt/ete/da;I)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/ic;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    if-eqz v0, :cond_1

    .line 163
    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0}, Lcom/byazt/nat/c;->c()Lcom/byazt/pop/ve;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/pop/ve;I)V

    .line 164
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    invoke-virtual {p2, p3}, Lcom/byazt/hkv/uj;->c(Lcom/byazt/ete/gr;)V

    .line 165
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    invoke-virtual {p2, p4}, Lcom/byazt/hkv/tt;->c(Lcom/byazt/ete/da;)V

    .line 166
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    invoke-virtual {p2, p1, p4}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    if-eqz p1, :cond_2

    .line 168
    invoke-virtual {p1, p0, p5}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private c(Landroid/view/View;Lcom/byazt/ete/gr;Lcom/byazt/ete/da;ILjava/lang/String;II)V
    .locals 1

    .line 145
    iget-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {p4}, Lcom/byazt/ete/ic;->a(Lcom/byazt/ete/ic;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    if-eqz p4, :cond_1

    .line 147
    invoke-virtual {p4, p2}, Lcom/byazt/hkv/uj;->c(Lcom/byazt/ete/gr;)V

    .line 148
    iget-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    const-class v0, Lcom/byazt/nat/c;

    invoke-virtual {p4, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p4

    check-cast p4, Lcom/byazt/nat/c;

    invoke-virtual {p4}, Lcom/byazt/nat/c;->c()Lcom/byazt/pop/ve;

    move-result-object p4

    invoke-direct {p0, p4, p7}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/pop/ve;I)V

    .line 149
    iget-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    const-class p7, Lcom/byazt/vis/c;

    invoke-virtual {p4, p7}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p4

    check-cast p4, Lcom/byazt/vis/c;

    .line 150
    invoke-direct {p0, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/vis/c;)V

    .line 151
    invoke-virtual {p4, p5}, Lcom/byazt/vis/c;->tt(Ljava/lang/String;)V

    .line 152
    iget-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    invoke-virtual {p4, p3}, Lcom/byazt/hkv/tt;->c(Lcom/byazt/ete/da;)V

    .line 153
    invoke-static {}, Lcom/byazt/rv/c;->c()Lcom/byazt/rv/c;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p7, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 154
    invoke-virtual {p7}, Lcom/byazt/ete/ic;->hashCode()I

    move-result p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p7, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {p7}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/byazt/rv/c;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    .line 155
    iget-object p5, p2, Lcom/byazt/ete/gr;->rh:Ljava/lang/String;

    const-string p7, "convert_tag"

    invoke-interface {p4, p7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object p5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {p5}, Lcom/byazt/ete/ic;->u()Lcom/byazt/ete/qy;

    move-result-object p5

    iget-object p7, p2, Lcom/byazt/ete/gr;->rh:Ljava/lang/String;

    invoke-static {p5, p7}, Lcom/byazt/ete/qy;->uj(Lcom/byazt/ete/qy;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    const-string p7, "dpa_convert"

    invoke-interface {p4, p7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p0, p2, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/ete/gr;Ljava/util/Map;)V

    .line 158
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    invoke-virtual {p2, p1, p3}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p1, p0, p6}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private c(Landroid/view/View;Lcom/byazt/ete/gr;Lcom/byazt/ete/da;Ljava/lang/String;II)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/ic;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0, p2}, Lcom/byazt/hkv/uj;->c(Lcom/byazt/ete/gr;)V

    .line 123
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0}, Lcom/byazt/nat/c;->c()Lcom/byazt/pop/ve;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/pop/ve;I)V

    .line 124
    iget-object p6, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    const-class v0, Lcom/byazt/vis/c;

    invoke-virtual {p6, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p6

    check-cast p6, Lcom/byazt/vis/c;

    .line 125
    invoke-direct {p0, p6}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/vis/c;)V

    .line 126
    invoke-virtual {p6, p4}, Lcom/byazt/vis/c;->tt(Ljava/lang/String;)V

    .line 127
    iget-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    invoke-virtual {p4, p3}, Lcom/byazt/hkv/tt;->c(Lcom/byazt/ete/da;)V

    .line 128
    invoke-static {}, Lcom/byazt/rv/c;->c()Lcom/byazt/rv/c;

    move-result-object p4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 129
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->hashCode()I

    move-result v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Lcom/byazt/rv/c;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    .line 130
    iget-object p6, p2, Lcom/byazt/ete/gr;->rh:Ljava/lang/String;

    const-string v0, "convert_tag"

    invoke-interface {p4, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p6, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {p6}, Lcom/byazt/ete/ic;->u()Lcom/byazt/ete/qy;

    move-result-object p6

    iget-object v0, p2, Lcom/byazt/ete/gr;->rh:Ljava/lang/String;

    invoke-static {p6, v0}, Lcom/byazt/ete/qy;->uj(Lcom/byazt/ete/qy;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p6

    const-string v0, "dpa_convert"

    invoke-interface {p4, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, p2, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/ete/gr;Ljava/util/Map;)V

    .line 133
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    invoke-virtual {p2, p1, p3}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1, p0, p5}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 217
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/byazt/aas/n;->ve(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;)V
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sv:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sv:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;I)Landroid/widget/FrameLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->sv:Landroid/widget/FrameLayout;

    const-string v1, "#161823"

    .line 181
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->ve(Lcom/byazt/ete/ic;)F

    move-result p1

    .line 183
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 184
    iget v1, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    sub-float p1, v1, p1

    div-float/2addr p1, v1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v2, 0x30

    goto :goto_0

    :cond_1
    const/16 v2, 0x50

    .line 185
    :goto_0
    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    .line 187
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->sv:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->rl:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 189
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    .line 191
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 192
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 193
    :cond_2
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    .line 194
    :goto_1
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->rl:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 195
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 197
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 199
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_2
    int-to-float v2, v2

    .line 200
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    if-ne v0, v1, :cond_4

    move v4, v2

    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 201
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->or:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 202
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->sv:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/NativeExpressView;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->a(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/NativeExpressView;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->tt(Z)V

    return-void
.end method

.method private c(Lcom/byazt/pop/ve;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 169
    :cond_0
    instance-of v0, p1, Lcom/byazt/wz/c;

    if-eqz v0, :cond_1

    .line 170
    move-object v0, p1

    check-cast v0, Lcom/byazt/wz/c;

    invoke-virtual {v0}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object v0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Lcom/byazt/yzg/ve;->tt(Z)V

    .line 172
    invoke-virtual {v0, p2}, Lcom/byazt/yzg/ve;->c(I)V

    .line 173
    :cond_1
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/byazt/pop/ve;->uj(Z)V

    return-void
.end method

.method private c(Lcom/byazt/qdk/ve;)V
    .locals 2

    const-string v0, "reduce_duration"

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p1, v0, v1}, Lcom/byazt/qdk/ve;->c(Ljava/lang/String;I)I

    move-result p1

    .line 220
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0, p1}, Lcom/byazt/qx/gu;->c(Lcom/byazt/ete/ic;I)I

    move-result p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->tt(I)V

    return-void
.end method

.method private c(Lcom/byazt/vis/c;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->eo:Lcom/byazt/ete/v;

    if-eqz v0, :cond_0

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "custom_express_gesture"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v0}, Lcom/byazt/ete/v;->tt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "express_gesture_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v0}, Lcom/byazt/ete/v;->uj()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "express_slide_direction"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v0}, Lcom/byazt/ete/v;->ve()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "express_slide_threshold"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1, v1}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/xj/ve;Lcom/byazt/qdk/ve;I)V
    .locals 5

    const-string v0, "ugen_click_event_params"

    .line 25
    const-class v1, Lcom/byazt/ete/da;

    invoke-virtual {p2, v0, v1}, Lcom/byazt/qdk/ve;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/da;

    const-string v1, "v3_trigger_name"

    .line 26
    invoke-virtual {p2, v1}, Lcom/byazt/qdk/ve;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v2, Lcom/byazt/ete/gr$c;

    invoke-direct {v2}, Lcom/byazt/ete/gr$c;-><init>()V

    .line 28
    invoke-virtual {v0}, Lcom/byazt/ete/da;->nu()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/gr$c;->uj(F)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lcom/byazt/ete/da;->rh()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/gr$c;->ve(F)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 30
    invoke-virtual {v0}, Lcom/byazt/ete/da;->my()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/gr$c;->tt(F)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 31
    invoke-virtual {v0}, Lcom/byazt/ete/da;->gt()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/gr$c;->c(F)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 32
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->eo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/ete/gr$c;->c(Ljava/lang/String;)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 33
    invoke-virtual {v0}, Lcom/byazt/ete/da;->z()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/ete/gr$c;->tt(J)Lcom/byazt/ete/gr$c;

    move-result-object v2

    .line 34
    invoke-virtual {v0}, Lcom/byazt/ete/da;->m()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/ete/gr$c;->c(J)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 35
    invoke-static {v1}, Lcom/byazt/atv/sp;->tt(Ljava/lang/String;)B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/ete/gr$c;->c(B)Lcom/byazt/ete/gr$c;

    move-result-object v0

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "convert_action_type"

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p2, v2, v3}, Lcom/byazt/qdk/ve;->c(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_0

    :try_start_0
    const-string v2, "convertActionType"

    .line 38
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :catchall_0
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object p1

    .line 40
    :try_start_1
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 41
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 42
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "\u4e0b\u8f7d"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "is_compliant_download"

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :catch_0
    :cond_1
    invoke-virtual {v0, v1}, Lcom/byazt/ete/gr$c;->c(Lorg/json/JSONObject;)Lcom/byazt/ete/gr$c;

    .line 45
    invoke-virtual {v0}, Lcom/byazt/ete/gr$c;->c()Lcom/byazt/ete/gr;

    move-result-object p2

    const/4 v0, -0x1

    .line 46
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->gr()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private eo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->h:Lcom/byazt/rbg/c;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/ddx/da;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/ddx/da;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/byazt/xl/u;->x()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/da;->tt(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->h:Lcom/byazt/rbg/c;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/byazt/yw/ve;->c()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lt:Lcom/byazt/xl/da$c;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Lcom/byazt/xl/da$c;->c(Lcom/byazt/xl/z;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lt:Lcom/byazt/xl/da$c;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/byazt/xl/da$c;->c()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private getRenderThread()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->md()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Lcom/byazt/ogz/sl;->x(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x4

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/byazt/by/n;->t()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x2

    .line 35
    and-int/2addr v0, v2

    .line 36
    if-ne v0, v2, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    if-eqz v0, :cond_2

    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/byazt/ete/pu;->uj(Lcom/byazt/ete/ic;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    return v0
.end method

.method private gr()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->l:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.bytedance.openadsdk.themeTypeChangeReceiver"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->l:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 19
    .line 20
    invoke-static {}, Lcom/byazt/aas/nb;->p()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private gu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

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
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget v1, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->sp()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    cmpl-float v0, v1, v0

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->a()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    int-to-float v1, v1

    .line 36
    cmpl-float v0, v0, v1

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 41
    .line 42
    iget v1, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-float v0, v0

    .line 49
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget v1, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 58
    .line 59
    int-to-float v0, v0

    .line 60
    cmpg-float v2, v1, v0

    .line 61
    .line 62
    if-gez v2, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    int-to-float v0, v0

    .line 71
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    int-to-float v0, v0

    .line 81
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 82
    .line 83
    :cond_2
    return-void
.end method

.method private h()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->tt:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->md()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v2, 0x3e8

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iput v2, p0, Lcom/byazt/ouz/NativeExpressView;->tt:I

    .line 27
    .line 28
    :cond_0
    new-instance v10, Lcom/byazt/vu/c;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v10, v0, v3}, Lcom/byazt/vu/c;-><init>(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->tt:I

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    if-eq v0, v3, :cond_4

    .line 44
    .line 45
    const/4 v3, 0x7

    .line 46
    if-eq v0, v3, :cond_3

    .line 47
    .line 48
    const/16 v3, 0xa

    .line 49
    .line 50
    if-eq v0, v3, :cond_1

    .line 51
    .line 52
    if-eq v0, v2, :cond_5

    .line 53
    .line 54
    new-instance v0, Lcom/byazt/ouz/yv;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 59
    .line 60
    iget-object v7, p0, Lcom/byazt/ouz/NativeExpressView;->l:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 61
    .line 62
    iget-object v8, p0, Lcom/byazt/ouz/NativeExpressView;->h:Lcom/byazt/rbg/c;

    .line 63
    .line 64
    iget-object v9, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 65
    .line 66
    iget-object v10, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 67
    .line 68
    move-object v4, v0

    .line 69
    move-object v11, p0

    .line 70
    invoke-direct/range {v4 .. v11}, Lcom/byazt/ouz/yv;-><init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;Lcom/byazt/rbg/c;Lcom/byazt/ete/ic;Lcom/byazt/xl/i;Lcom/byazt/ouz/m;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lo:Lcom/byazt/ouz/yv;

    .line 74
    .line 75
    new-instance v3, Lcom/byazt/xl/m;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 80
    .line 81
    invoke-direct {v3, v4, v5, v0, p0}, Lcom/byazt/xl/m;-><init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/ol/c;Lcom/byazt/xl/x;)V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->tk:Lcom/byazt/xl/m;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_1
    new-instance v0, Lcom/byazt/atv/sp;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 100
    .line 101
    check-cast v5, Lcom/byazt/atv/tt;

    .line 102
    .line 103
    invoke-direct {v0, v3, v4, v5, p0}, Lcom/byazt/atv/sp;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->pu:Lcom/byazt/atv/sp;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/byazt/atv/n;->da()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->d:Z

    .line 113
    .line 114
    new-instance v0, Lcom/byazt/atv/a;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 117
    .line 118
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->pu:Lcom/byazt/atv/sp;

    .line 119
    .line 120
    iget-object v7, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 121
    .line 122
    move-object v3, v0

    .line 123
    move-object v6, p0

    .line 124
    move-object v8, p0

    .line 125
    invoke-direct/range {v3 .. v8}, Lcom/byazt/atv/a;-><init>(Landroid/content/Context;Lcom/byazt/atv/n;Lcom/byazt/xl/x;Lcom/byazt/xl/u;Lcom/byazt/qdk/tt;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->q:Lcom/byazt/atv/a;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(I)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->pu:Lcom/byazt/atv/sp;

    .line 143
    .line 144
    new-instance v3, Lcom/byazt/ouz/NativeExpressView$8;

    .line 145
    .line 146
    invoke-direct {v3, p0}, Lcom/byazt/ouz/NativeExpressView$8;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3}, Lcom/byazt/atv/n;->c(Lcom/byazt/sz/x;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 153
    .line 154
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->q:Lcom/byazt/atv/a;

    .line 155
    .line 156
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_3
    new-instance v6, Lcom/byazt/atv/n;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 163
    .line 164
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 165
    .line 166
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 167
    .line 168
    check-cast v4, Lcom/byazt/atv/tt;

    .line 169
    .line 170
    invoke-direct {v6, v0, v3, v4, p0}, Lcom/byazt/atv/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Lcom/byazt/atv/n;->da()Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->d:Z

    .line 178
    .line 179
    new-instance v0, Lcom/byazt/atv/a;

    .line 180
    .line 181
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 182
    .line 183
    iget-object v8, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 184
    .line 185
    move-object v4, v0

    .line 186
    move-object v7, p0

    .line 187
    move-object v9, p0

    .line 188
    invoke-direct/range {v4 .. v9}, Lcom/byazt/atv/a;-><init>(Landroid/content/Context;Lcom/byazt/atv/n;Lcom/byazt/xl/x;Lcom/byazt/xl/u;Lcom/byazt/qdk/tt;)V

    .line 189
    .line 190
    .line 191
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->q:Lcom/byazt/atv/a;

    .line 192
    .line 193
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_4
    new-instance v8, Lcom/byazt/du/sp;

    .line 200
    .line 201
    invoke-direct {v8}, Lcom/byazt/du/sp;-><init>()V

    .line 202
    .line 203
    .line 204
    new-instance v0, Lcom/byazt/xl/tt;

    .line 205
    .line 206
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 207
    .line 208
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 209
    .line 210
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->l:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 211
    .line 212
    iget-boolean v7, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 213
    .line 214
    move-object v3, v0

    .line 215
    move-object v9, p0

    .line 216
    invoke-direct/range {v3 .. v10}, Lcom/byazt/xl/tt;-><init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;ZLcom/byazt/du/x;Lcom/byazt/xl/x;Lcom/byazt/wl/c;)V

    .line 217
    .line 218
    .line 219
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->kp:Lcom/byazt/xl/tt;

    .line 220
    .line 221
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->kp:Lcom/byazt/xl/tt;

    .line 227
    .line 228
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v3}, Lcom/byazt/ogz/sl;->ra()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    invoke-virtual {v0, v3}, Lcom/byazt/xl/tt;->c(Z)V

    .line 237
    .line 238
    .line 239
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 240
    .line 241
    invoke-static {v0}, Lcom/byazt/ete/pu;->ve(Lcom/byazt/ete/ic;)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-lez v0, :cond_6

    .line 246
    .line 247
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yv()Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_6

    .line 252
    .line 253
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 254
    .line 255
    const-string v4, "embeded_ad"

    .line 256
    .line 257
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_6

    .line 262
    .line 263
    new-instance v6, Lcom/byazt/ouc/ve;

    .line 264
    .line 265
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 266
    .line 267
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 268
    .line 269
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 270
    .line 271
    check-cast v2, Lcom/byazt/atv/tt;

    .line 272
    .line 273
    invoke-direct {v6, v0, v1, v2, p0}, Lcom/byazt/ouc/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    .line 274
    .line 275
    .line 276
    new-instance v0, Lcom/byazt/atv/a;

    .line 277
    .line 278
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 279
    .line 280
    iget-object v8, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 281
    .line 282
    move-object v4, v0

    .line 283
    move-object v7, p0

    .line 284
    move-object v9, p0

    .line 285
    invoke-direct/range {v4 .. v9}, Lcom/byazt/atv/a;-><init>(Landroid/content/Context;Lcom/byazt/atv/n;Lcom/byazt/xl/x;Lcom/byazt/xl/u;Lcom/byazt/qdk/tt;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 289
    .line 290
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_6
    if-ne v0, v1, :cond_7

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_7
    const/4 v1, 0x0

    .line 298
    :goto_1
    iput-boolean v1, p0, Lcom/byazt/ouz/NativeExpressView;->c:Z

    .line 299
    .line 300
    if-nez v1, :cond_9

    .line 301
    .line 302
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->tt:I

    .line 303
    .line 304
    if-ne v0, v2, :cond_8

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_8
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 308
    .line 309
    invoke-static {v0}, Lcom/byazt/ouc/c;->tt(Lcom/byazt/ete/ic;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_a

    .line 314
    .line 315
    new-instance v3, Lcom/byazt/ouc/ve;

    .line 316
    .line 317
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 318
    .line 319
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 320
    .line 321
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 322
    .line 323
    check-cast v2, Lcom/byazt/atv/tt;

    .line 324
    .line 325
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/byazt/ouc/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/atv/tt;Landroid/view/ViewGroup;)V

    .line 326
    .line 327
    .line 328
    new-instance v0, Lcom/byazt/atv/a;

    .line 329
    .line 330
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 331
    .line 332
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 333
    .line 334
    move-object v1, v0

    .line 335
    move-object v4, p0

    .line 336
    move-object v6, p0

    .line 337
    invoke-direct/range {v1 .. v6}, Lcom/byazt/atv/a;-><init>(Landroid/content/Context;Lcom/byazt/atv/n;Lcom/byazt/xl/x;Lcom/byazt/xl/u;Lcom/byazt/qdk/tt;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 341
    .line 342
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_9
    :goto_2
    new-instance v0, Lcom/byazt/ouz/my;

    .line 347
    .line 348
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->l:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 349
    .line 350
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 351
    .line 352
    invoke-direct {v0, p0, v1, v2}, Lcom/byazt/ouz/my;-><init>(Landroid/view/View;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;Lcom/byazt/xl/u;)V

    .line 353
    .line 354
    .line 355
    new-instance v1, Lcom/byazt/xl/a;

    .line 356
    .line 357
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 358
    .line 359
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 360
    .line 361
    invoke-direct {v1, v2, v3, v0}, Lcom/byazt/xl/a;-><init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xl/c;)V

    .line 362
    .line 363
    .line 364
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->b:Lcom/byazt/xl/a;

    .line 365
    .line 366
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 367
    .line 368
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    :cond_a
    :goto_3
    new-instance v0, Lcom/byazt/xl/t;

    .line 372
    .line 373
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 374
    .line 375
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 376
    .line 377
    invoke-direct {v0, v1, v2}, Lcom/byazt/xl/t;-><init>(Ljava/util/List;Lcom/byazt/xl/i;)V

    .line 378
    .line 379
    .line 380
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lt:Lcom/byazt/xl/da$c;

    .line 381
    .line 382
    return-void
.end method

.method private md()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

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

.method public static synthetic n(Lcom/byazt/ouz/NativeExpressView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->sv:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private n(Lcom/byazt/ete/ic;)V
    .locals 3

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/byazt/wz/x;->a(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->uj(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/byazt/yih/c;->uj(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(Z)V

    return-void

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->a(Lcom/byazt/ete/ic;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    const-string v2, "express_dl"

    invoke-virtual {v1, v2, p1}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->tt(Z)V

    return-void
.end method

.method private p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "rewarded_video"

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
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "fullscreen_interstitial_ad"

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
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fe()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public static synthetic sp(Lcom/byazt/ouz/NativeExpressView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private tt(Lorg/json/JSONObject;)Lcom/byazt/rbg/c;
    .locals 4

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v1, Lcom/byazt/ddx/da;

    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/byazt/ddx/da;-><init>(Ljava/lang/String;Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "webview_source"

    invoke-virtual {v1, v0, v2, p1}, Lcom/byazt/ddx/da;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static synthetic tt(Lcom/byazt/ouz/NativeExpressView;)Lcom/byazt/xl/u;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    return-object p0
.end method

.method private tt(Landroid/view/View;ILcom/byazt/ete/gr;Lcom/byazt/ete/da;I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/ic;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    if-eqz v0, :cond_1

    .line 44
    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0}, Lcom/byazt/nat/c;->c()Lcom/byazt/pop/ve;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/pop/ve;I)V

    .line 45
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    invoke-virtual {p2, p3}, Lcom/byazt/hkv/uj;->c(Lcom/byazt/ete/gr;)V

    .line 46
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    invoke-virtual {p2, p4}, Lcom/byazt/hkv/tt;->c(Lcom/byazt/ete/da;)V

    .line 47
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    invoke-virtual {p2, p1, p4}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1, p0, p5}, Lcom/byazt/ouz/c;->c(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private tt(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 104
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/byazt/aas/n;->tt(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private tt(Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;)V

    const/4 p1, 0x1

    .line 55
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->tt(Z)V

    return-void
.end method

.method private tt(Lcom/byazt/pop/ve;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    instance-of v0, p1, Lcom/byazt/wz/c;

    if-eqz v0, :cond_1

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/byazt/wz/c;

    invoke-virtual {v0}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p2}, Lcom/byazt/yzg/ve;->tt(I)V

    .line 53
    :cond_1
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/byazt/pop/ve;->uj(Z)V

    return-void
.end method

.method private tt(Z)V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sv:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Lcom/byazt/ouz/NativeExpressView$2;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/NativeExpressView$2;-><init>(Lcom/byazt/ouz/NativeExpressView;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    if-nez v0, :cond_1

    return-void

    .line 60
    :cond_1
    instance-of v1, v0, Lcom/byazt/ouz/yv;

    if-eqz v1, :cond_2

    .line 61
    check-cast v0, Lcom/byazt/ouz/yv;

    invoke-virtual {v0}, Lcom/byazt/ouz/yv;->J_()Lcom/byazt/omf/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "result"

    .line 63
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "isShow7Factors"

    .line 64
    invoke-virtual {v0, p1, v1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private u()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/xv/ThemeStatusBroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->l:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/byazt/xv/ThemeStatusBroadcastReceiver;->c(Lcom/byazt/xv/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/ouz/NativeExpressView;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->eo()V

    return-void
.end method

.method private uj(Lcom/byazt/ete/ic;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 5
    iget p1, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v3

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->fr()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->fr()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    .line 7
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_1
    int-to-float p1, p1

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_6

    return v0

    :cond_6
    return v3
.end method

.method private ve(Lcom/byazt/ete/ic;)F
    .locals 1

    .line 6
    invoke-static {p1}, Lcom/byazt/wz/x;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/byazt/yih/c;->uj(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x42600000    # 56.0f

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic ve(Lcom/byazt/ouz/NativeExpressView;)Lcom/byazt/ouz/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    return-object p0
.end method

.method private ve(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2, p1, p3}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private yp()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->md()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private yv()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/byazt/omf/p;->uj:I

    .line 6
    .line 7
    const/16 v2, 0x170c

    .line 8
    .line 9
    if-lt v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->yv()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method private zb()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->vp()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private zm()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/pu;->x(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yp()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v1, :cond_6

    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/16 v5, 0x9

    .line 23
    .line 24
    if-eq v1, v5, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v10, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 v10, 0x1

    .line 38
    :goto_1
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/byazt/jlk/tt;->c(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget v1, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 47
    .line 48
    iget v4, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    .line 49
    .line 50
    iget-boolean v5, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 51
    .line 52
    invoke-static {v1, v4, v5}, Lcom/byazt/jlk/tt;->c(FFZ)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    iget-object v9, p0, Lcom/byazt/ouz/NativeExpressView;->da:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static/range {v5 .. v10}, Lcom/byazt/jlk/tt;->c(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;Z)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/byazt/ete/pu;->da(Lcom/byazt/ete/ic;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 75
    .line 76
    invoke-static {v1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/byazt/ete/dz;->i()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_4

    .line 97
    .line 98
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/byazt/ete/dz;->i()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 109
    .line 110
    invoke-static {v5}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/byazt/ete/dz;->da()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v1, v5, v4}, Lcom/byazt/xs/da;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/xs/ve;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    iget v1, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 124
    .line 125
    iget v4, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    .line 126
    .line 127
    iget-boolean v5, p0, Lcom/byazt/ouz/NativeExpressView;->m:Z

    .line 128
    .line 129
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 130
    .line 131
    invoke-static {v1, v4, v5, v6, v10}, Lcom/byazt/jlk/tt;->c(FFZLcom/byazt/ete/ic;Z)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    invoke-static {}, Lcom/byazt/omf/uj;->c()Lcom/byazt/omf/uj;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 148
    .line 149
    invoke-static {v5}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v5}, Lcom/byazt/ete/dz;->tt()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v1, v5}, Lcom/byazt/omf/uj;->c(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 161
    .line 162
    invoke-static {v1}, Lcom/byazt/ete/pu;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ma;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_6

    .line 167
    .line 168
    invoke-static {}, Lcom/byazt/omf/uj;->c()Lcom/byazt/omf/uj;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 173
    .line 174
    invoke-static {v5}, Lcom/byazt/ete/pu;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ma;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v5}, Lcom/byazt/ete/ma;->c()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v1, v5}, Lcom/byazt/omf/uj;->c(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_6
    invoke-direct {p0, v4}, Lcom/byazt/ouz/NativeExpressView;->tt(Lorg/json/JSONObject;)Lcom/byazt/rbg/c;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->h:Lcom/byazt/rbg/c;

    .line 190
    .line 191
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yp()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_7

    .line 196
    .line 197
    new-instance v1, Lcom/byazt/ouz/gt;

    .line 198
    .line 199
    invoke-direct {v1}, Lcom/byazt/ouz/gt;-><init>()V

    .line 200
    .line 201
    .line 202
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_7
    new-instance v1, Lcom/byazt/ouz/da;

    .line 206
    .line 207
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->h:Lcom/byazt/rbg/c;

    .line 208
    .line 209
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 210
    .line 211
    iget-object v7, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 212
    .line 213
    iget-object v8, p0, Lcom/byazt/ouz/NativeExpressView;->yv:Ljava/lang/String;

    .line 214
    .line 215
    invoke-direct {v1, v5, v6, v7, v8}, Lcom/byazt/ouz/da;-><init>(Lcom/byazt/rbg/c;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 219
    .line 220
    :goto_3
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->p()Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 225
    .line 226
    invoke-static {v5}, Lcom/byazt/ete/pu;->da(Lcom/byazt/ete/ic;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-nez v5, :cond_9

    .line 231
    .line 232
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 233
    .line 234
    invoke-static {v5}, Lcom/byazt/ete/pu;->t(Lcom/byazt/ete/ic;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_9

    .line 239
    .line 240
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 241
    .line 242
    invoke-static {v5}, Lcom/byazt/ouc/c;->tt(Lcom/byazt/ete/ic;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-nez v5, :cond_9

    .line 247
    .line 248
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yv()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_8

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_8
    new-instance v2, Lcom/byazt/xl/u$c;

    .line 256
    .line 257
    invoke-direct {v2}, Lcom/byazt/xl/u$c;-><init>()V

    .line 258
    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_9
    :goto_4
    new-instance v5, Lcom/byazt/atv/tt$c;

    .line 262
    .line 263
    invoke-direct {v5}, Lcom/byazt/atv/tt$c;-><init>()V

    .line 264
    .line 265
    .line 266
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 267
    .line 268
    invoke-static {v6, p0, v3}, Lcom/byazt/xs/da;->c(Lcom/byazt/ete/ic;Landroid/view/View;Z)Lorg/json/JSONObject;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {v5, v6}, Lcom/byazt/atv/tt$c;->n(Lorg/json/JSONObject;)Lcom/byazt/atv/tt$c;

    .line 273
    .line 274
    .line 275
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 276
    .line 277
    check-cast v6, Lcom/byazt/sz/qy;

    .line 278
    .line 279
    invoke-virtual {v5, v6}, Lcom/byazt/atv/tt$c;->c(Lcom/byazt/sz/qy;)Lcom/byazt/atv/tt$c;

    .line 280
    .line 281
    .line 282
    iget v6, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 283
    .line 284
    invoke-virtual {v5, v6}, Lcom/byazt/atv/tt$c;->c(F)Lcom/byazt/atv/tt$c;

    .line 285
    .line 286
    .line 287
    iget v6, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    .line 288
    .line 289
    invoke-virtual {v5, v6}, Lcom/byazt/atv/tt$c;->tt(F)Lcom/byazt/atv/tt$c;

    .line 290
    .line 291
    .line 292
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yv()Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    invoke-virtual {v5, v6}, Lcom/byazt/atv/tt$c;->n(Z)Lcom/byazt/atv/tt$c;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v2}, Lcom/byazt/atv/tt$c;->sl(I)Lcom/byazt/atv/tt$c;

    .line 300
    .line 301
    .line 302
    move-object v2, v5

    .line 303
    :goto_5
    invoke-virtual {v2, v0}, Lcom/byazt/xl/u$c;->ve(Z)Lcom/byazt/xl/u$c;

    .line 304
    .line 305
    .line 306
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 307
    .line 308
    const-string v5, "splash_ad"

    .line 309
    .line 310
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_a

    .line 315
    .line 316
    invoke-static {}, Lcom/byazt/bzd/sl;->n()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v2, v0}, Lcom/byazt/xl/u$c;->a(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 321
    .line 322
    .line 323
    :cond_a
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 324
    .line 325
    invoke-static {v0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    const/4 v5, 0x3

    .line 330
    if-ne v0, v5, :cond_b

    .line 331
    .line 332
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 333
    .line 334
    invoke-static {v0}, Lcom/byazt/ic/c;->uj(Lcom/byazt/ete/ic;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_b

    .line 339
    .line 340
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    if-eqz v0, :cond_b

    .line 347
    .line 348
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-nez v5, :cond_b

    .line 353
    .line 354
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Lcom/byazt/ete/zb;

    .line 359
    .line 360
    if-eqz v0, :cond_b

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v2, v0}, Lcom/byazt/xl/u$c;->i(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 367
    .line 368
    .line 369
    new-instance v0, Lcom/byazt/ui/UpieImageView;

    .line 370
    .line 371
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 372
    .line 373
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 374
    .line 375
    invoke-static {v5}, Lcom/byazt/ic/c;->i(Lcom/byazt/ete/ic;)Lcom/byazt/cph/c;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 380
    .line 381
    invoke-static {v6}, Lcom/byazt/nj/c;->c(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/tt;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    iget-object v7, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 386
    .line 387
    invoke-static {v7}, Lcom/byazt/ic/c;->da(Lcom/byazt/ete/ic;)Lcom/byazt/ui/c;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    invoke-direct {v0, v3, v5, v6, v7}, Lcom/byazt/ui/UpieImageView;-><init>(Landroid/content/Context;Lcom/byazt/cph/c;Lcom/byazt/jzl/tt;Lcom/byazt/ui/c;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v0}, Lcom/byazt/xl/u$c;->c(Landroid/view/View;)Lcom/byazt/xl/u$c;

    .line 395
    .line 396
    .line 397
    :cond_b
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->getRenderThread()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v2, v3}, Lcom/byazt/xl/u$c;->c(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 408
    .line 409
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-virtual {v2, v3}, Lcom/byazt/xl/u$c;->tt(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 418
    .line 419
    invoke-static {v3}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {v2, v3}, Lcom/byazt/xl/u$c;->ve(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 428
    .line 429
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v2, v3}, Lcom/byazt/xl/u$c;->uj(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v2, v4}, Lcom/byazt/xl/u$c;->c(Lorg/json/JSONObject;)Lcom/byazt/xl/u$c;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 442
    .line 443
    invoke-virtual {v2, v3}, Lcom/byazt/xl/u$c;->c(Lcom/byazt/xl/i;)Lcom/byazt/xl/u$c;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 452
    .line 453
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 454
    .line 455
    invoke-static {v5}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    invoke-virtual {v3, v4, v5}, Lcom/byazt/ogz/sl;->c(Ljava/lang/String;I)I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    invoke-virtual {v2, v3}, Lcom/byazt/xl/u$c;->c(I)Lcom/byazt/xl/u$c;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    invoke-virtual {v2, v1}, Lcom/byazt/xl/u$c;->tt(Z)Lcom/byazt/xl/u$c;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 472
    .line 473
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->vi()I

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    invoke-virtual {v1, v2}, Lcom/byazt/xl/u$c;->tt(I)Lcom/byazt/xl/u$c;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 482
    .line 483
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->i()I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    invoke-virtual {v1, v2}, Lcom/byazt/xl/u$c;->ve(I)Lcom/byazt/xl/u$c;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 492
    .line 493
    invoke-static {v2}, Lcom/byazt/jlk/tt;->uj(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v1, v2}, Lcom/byazt/xl/u$c;->n(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 502
    .line 503
    invoke-static {v2}, Lcom/byazt/jlk/tt;->n(Lcom/byazt/ete/ic;)Ljava/util/Map;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    invoke-virtual {v1, v2}, Lcom/byazt/xl/u$c;->c(Ljava/util/Map;)Lcom/byazt/xl/u$c;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-virtual {v1, v0}, Lcom/byazt/xl/u$c;->uj(I)Lcom/byazt/xl/u$c;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 516
    .line 517
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ge()I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->n(I)Lcom/byazt/xl/u$c;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 526
    .line 527
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->tw()I

    .line 528
    .line 529
    .line 530
    move-result v1

    .line 531
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->a(I)Lcom/byazt/xl/u$c;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 536
    .line 537
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->br()I

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->sp(I)Lcom/byazt/xl/u$c;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 546
    .line 547
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->lv()Lorg/json/JSONObject;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->tt(Lorg/json/JSONObject;)Lcom/byazt/xl/u$c;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 556
    .line 557
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->cy()Lorg/json/JSONObject;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->ve(Lorg/json/JSONObject;)Lcom/byazt/xl/u$c;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 566
    .line 567
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yx()Lorg/json/JSONObject;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->uj(Lorg/json/JSONObject;)Lcom/byazt/xl/u$c;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 576
    .line 577
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->pe()I

    .line 578
    .line 579
    .line 580
    move-result v1

    .line 581
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->i(I)Lcom/byazt/xl/u$c;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 586
    .line 587
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->e()I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->x(I)Lcom/byazt/xl/u$c;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 596
    .line 597
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->dn()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->sp(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    const-string v1, "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/csj_assets/"

    .line 606
    .line 607
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->x(Ljava/lang/String;)Lcom/byazt/xl/u$c;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-virtual {v1}, Lcom/byazt/omf/x;->uj()Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->c(Z)Lcom/byazt/xl/u$c;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 624
    .line 625
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->eo()I

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->da(I)Lcom/byazt/xl/u$c;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->tw()Z

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    invoke-virtual {v0, v1}, Lcom/byazt/xl/u$c;->uj(Z)Lcom/byazt/xl/u$c;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v0}, Lcom/byazt/xl/u$c;->c()Lcom/byazt/xl/u;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    .line 650
    .line 651
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->y:Lcom/byazt/but/ve;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/byazt/but/ve;->c()V

    :cond_0
    return-void
.end method

.method public a_(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->iu:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->c:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/byazt/xl/i;->sl()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/byazt/xl/i;->t()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    .line 19
    .line 20
    instance-of v1, v0, Lcom/byazt/ouz/da;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lcom/byazt/ouz/da;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/ouz/da;->yp()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, p0, v1, p1}, Lcom/byazt/ouz/c;->c(Landroid/view/View;Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/byazt/ouz/NativeExpressView$4;

    .line 58
    .line 59
    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/NativeExpressView$4;-><init>(Lcom/byazt/ouz/NativeExpressView;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public b_(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/byazt/ouz/yp;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/byazt/ouz/yp;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/byazt/ouz/yp;->b_(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(F)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(FFFFI)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 4
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->zb:Lcom/byazt/qmz/c;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1, p2}, Lcom/byazt/qmz/c;->c(II)V

    :cond_0
    return-void
.end method

.method public c(IIZ)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/h;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/h;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->yv:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/ogz/sl;->n(I)I

    move-result v0

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    const-string v2, "rewarded_video"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->yv:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/ogz/sl;->uj(I)I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-gt p2, v0, :cond_4

    sub-int v1, v0, p2

    .line 211
    :cond_4
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->kp:Lcom/byazt/xl/tt;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/byazt/xl/tt;->tt()Lcom/byazt/kn/uj;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 212
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->kp:Lcom/byazt/xl/tt;

    invoke-virtual {p2}, Lcom/byazt/xl/tt;->tt()Lcom/byazt/kn/uj;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v2, v1, p3}, Lcom/byazt/kn/uj;->c(Ljava/lang/CharSequence;IIZ)V

    .line 213
    :cond_5
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    if-eqz p2, :cond_7

    .line 214
    invoke-interface {p2}, Lcom/byazt/xl/uj;->ve()I

    move-result p2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_6

    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    invoke-interface {p2}, Lcom/byazt/xl/uj;->ve()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_7

    .line 215
    :cond_6
    iget-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    instance-of v0, p2, Lcom/byazt/atv/n;

    if-eqz v0, :cond_7

    .line 216
    check-cast p2, Lcom/byazt/kn/uj;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v2, v1, p3}, Lcom/byazt/kn/uj;->c(Ljava/lang/CharSequence;IIZ)V

    :cond_7
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 5
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v0, p2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 47
    :cond_0
    move-object/from16 v2, p3

    check-cast v2, Lcom/byazt/ete/gr;

    .line 48
    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/byazt/hkv/uj;->n(I)V

    .line 50
    :cond_1
    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/byazt/hkv/uj;->n(I)V

    .line 52
    :cond_2
    const-class v1, Lcom/byazt/vis/c;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    iget-object v4, v8, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    if-eqz v4, :cond_3

    .line 53
    invoke-virtual {v4}, Lcom/byazt/hkv/tt;->tt()Lcom/byazt/ete/da;

    move-result-object v4

    .line 54
    iget-object v5, v8, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    invoke-virtual {v5, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v5

    check-cast v5, Lcom/byazt/vis/c;

    .line 55
    invoke-virtual {v5}, Lcom/byazt/vis/c;->n()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    .line 56
    iget-object v7, v8, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    if-eqz v7, :cond_4

    .line 57
    invoke-virtual {v7}, Lcom/byazt/hkv/tt;->tt()Lcom/byazt/ete/da;

    move-result-object v4

    .line 58
    iget-object v5, v8, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    invoke-virtual {v5, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/byazt/vis/c;

    .line 59
    invoke-virtual {v5}, Lcom/byazt/vis/c;->n()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 60
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Lcom/byazt/ete/gr;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "click_extra_map"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v5, :cond_5

    .line 61
    instance-of v7, v1, Ljava/util/Map;

    if-eqz v7, :cond_5

    .line 62
    check-cast v1, Ljava/util/Map;

    invoke-virtual {v5, v1}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 63
    new-instance v1, Lcom/byazt/ete/da;

    invoke-direct {v1}, Lcom/byazt/ete/da;-><init>()V

    move-object v4, v1

    .line 64
    :cond_6
    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->eo:Lcom/byazt/ete/v;

    if-eqz v1, :cond_7

    .line 65
    invoke-virtual {v4, v8}, Lcom/byazt/ete/da;->tt(Landroid/view/View;)V

    .line 66
    :cond_7
    iget v1, v2, Lcom/byazt/ete/gr;->c:F

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->c(F)V

    .line 67
    iget v1, v2, Lcom/byazt/ete/gr;->tt:F

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->tt(F)V

    .line 68
    iget v1, v2, Lcom/byazt/ete/gr;->ve:F

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->ve(F)V

    .line 69
    iget v1, v2, Lcom/byazt/ete/gr;->uj:F

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->uj(F)V

    .line 70
    iget-boolean v1, v2, Lcom/byazt/ete/gr;->z:Z

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->tt(Z)V

    .line 71
    iget v1, v2, Lcom/byazt/ete/gr;->my:I

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->sp(I)V

    .line 72
    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    iget-object v5, v2, Lcom/byazt/ete/gr;->rh:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/byazt/ete/qy;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->c(Ljava/lang/String;)V

    .line 73
    iget-object v1, v2, Lcom/byazt/ete/gr;->rh:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->tt(Ljava/lang/String;)V

    .line 74
    iget-byte v1, v2, Lcom/byazt/ete/gr;->m:B

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->c(B)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ouz/NativeExpressView;->getShowDLFactorsEventParams()B

    move-result v1

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->tt(B)V

    .line 76
    iget-object v1, v2, Lcom/byazt/ete/gr;->nu:Landroid/util/SparseArray;

    if-eqz v1, :cond_8

    .line 77
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 78
    :cond_8
    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->j:Landroid/util/SparseArray;

    .line 79
    :cond_9
    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->c(Landroid/util/SparseArray;)V

    .line 80
    invoke-virtual {v2}, Lcom/byazt/ete/gr;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "is_compliant_download"

    .line 81
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/byazt/ete/da;->uj(Z)V

    const-string v5, "uchain_event_name"

    .line 82
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v4, v5}, Lcom/byazt/ete/da;->ve(Ljava/lang/String;)V

    .line 84
    iget-boolean v7, v8, Lcom/byazt/ouz/NativeExpressView;->qy:Z

    invoke-virtual {v4, v7}, Lcom/byazt/ete/da;->c(Z)V

    const-string v7, "convertActionType"

    const/high16 v9, -0x80000000

    .line 85
    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v3, :cond_b

    if-ne v0, v6, :cond_a

    .line 86
    iget-object v6, v8, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    if-eqz v6, :cond_d

    .line 87
    invoke-virtual {v6}, Lcom/byazt/hkv/uj;->ve()V

    goto :goto_2

    .line 88
    :cond_a
    iget-object v6, v8, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    if-eqz v6, :cond_d

    .line 89
    invoke-virtual {v6}, Lcom/byazt/hkv/uj;->ve()V

    goto :goto_2

    :cond_b
    if-ne v7, v6, :cond_d

    if-ne v0, v6, :cond_c

    .line 90
    iget-object v6, v8, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    if-eqz v6, :cond_d

    .line 91
    invoke-virtual {v6}, Lcom/byazt/hkv/uj;->uj()V

    goto :goto_2

    .line 92
    :cond_c
    iget-object v6, v8, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    if-eqz v6, :cond_d

    .line 93
    invoke-virtual {v6}, Lcom/byazt/hkv/uj;->uj()V

    :cond_d
    :goto_2
    if-nez p1, :cond_e

    move-object v6, v8

    goto :goto_3

    :cond_e
    move-object/from16 v6, p1

    .line 94
    :goto_3
    iget-object v7, v2, Lcom/byazt/ete/gr;->sl:Ljava/lang/String;

    .line 95
    iget-object v9, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    if-eqz v9, :cond_f

    .line 96
    invoke-virtual {v9}, Lcom/byazt/ete/ic;->i()I

    move-result v9

    goto :goto_4

    :cond_f
    const/4 v9, 0x0

    :goto_4
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    const-string v0, "openCommonWebUrl"

    const-string v2, ""

    .line 97
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "openCommonWebTitle"

    .line 98
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 100
    iget-object v2, v8, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->uj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 101
    :pswitch_2
    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v2, v8, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/byazt/ouz/NativeExpressView;->ve(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 102
    :pswitch_3
    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v2, v8, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 103
    :pswitch_4
    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v2, v8, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 104
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ouz/NativeExpressView;->sp()V

    return-void

    .line 105
    :pswitch_6
    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/byazt/aas/nb;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 106
    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0, v1}, Lcom/byazt/aas/n;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    return-void

    .line 107
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ouz/NativeExpressView;->a()V

    return-void

    .line 108
    :pswitch_8
    iget-boolean v0, v8, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    xor-int/2addr v0, v3

    invoke-virtual {v8, v0}, Lcom/byazt/ouz/NativeExpressView;->c(Z)V

    return-void

    .line 109
    :pswitch_9
    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 110
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 111
    :cond_10
    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->gr(Lcom/byazt/ete/ic;)Z

    const-string v0, "embeded_ad"

    .line 112
    iget-object v1, v8, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/byazt/ouz/NativeExpressView;->zb()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, v8, Lcom/byazt/ouz/NativeExpressView;->z:Z

    if-nez v0, :cond_11

    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->gr(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v3, v4

    move-object v4, v7

    move v5, v9

    move/from16 v6, p4

    .line 113
    invoke-direct/range {v0 .. v6}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;Lcom/byazt/ete/gr;Lcom/byazt/ete/da;Ljava/lang/String;II)V

    return-void

    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    move v6, v9

    move/from16 v7, p4

    .line 114
    invoke-direct/range {v0 .. v7}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;Lcom/byazt/ete/gr;Lcom/byazt/ete/da;ILjava/lang/String;II)V

    return-void

    .line 115
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/ouz/NativeExpressView;->i()V

    return-void

    :pswitch_b
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v3, v4

    move-object v4, v7

    move v5, v9

    move/from16 v6, p4

    .line 116
    invoke-direct/range {v0 .. v6}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;Lcom/byazt/ete/gr;Lcom/byazt/ete/da;Ljava/lang/String;II)V

    return-void

    .line 117
    :pswitch_c
    iget-object v0, v8, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 118
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    move v6, v9

    move/from16 v7, p4

    .line 119
    invoke-direct/range {v0 .. v7}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;Lcom/byazt/ete/gr;Lcom/byazt/ete/da;ILjava/lang/String;II)V

    :cond_13
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;Lcom/byazt/ete/v;)V
    .locals 0

    .line 12
    iput-object p4, p0, Lcom/byazt/ouz/NativeExpressView;->eo:Lcom/byazt/ete/v;

    const/4 p4, -0x1

    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->eo:Lcom/byazt/ete/v;

    return-void
.end method

.method public c(Lcom/byazt/ete/gr;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/gr;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 136
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/ete/gr;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "live_saas_param_interaction_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "live_saas_interaction_type"

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 6
    return-void
.end method

.method public c(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V
    .locals 2
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

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->iu:Z

    .line 175
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/byazt/ouz/NativeExpressView$11;-><init>(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .line 205
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/byazt/ouz/NativeExpressView;->c(IIZ)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 7
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 225
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->gu()Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->r:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/byazt/ouz/qy;

    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, p1, p0}, Lcom/byazt/ouz/qy;-><init>(Lcom/byazt/ete/ic;Lorg/json/JSONObject;Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->s:Lcom/byazt/ouz/qy;

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    invoke-interface {v0}, Lcom/byazt/xl/uj;->ve()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    instance-of v1, v0, Lcom/byazt/atv/n;

    if-eqz v1, :cond_0

    .line 224
    check-cast v0, Lcom/byazt/kn/uj;

    invoke-interface {v0, p1}, Lcom/byazt/kn/uj;->setSoundMute(Z)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/xj/ve;Lcom/byazt/qdk/ve;)Z
    .locals 7

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dislike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "interactiveFinish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "muteVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "convert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "videoControl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "skip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "pauseVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "resumeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "clickEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_1

    .line 16
    :pswitch_0
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->i()V

    goto :goto_1

    .line 17
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/qdk/ve;)V

    goto :goto_1

    .line 18
    :pswitch_2
    iget-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    xor-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->c(Z)V

    goto :goto_1

    .line 19
    :pswitch_3
    invoke-direct {p0, p2, p3, v1}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/xj/ve;Lcom/byazt/qdk/ve;I)V

    goto :goto_1

    .line 20
    :pswitch_4
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->sp()V

    goto :goto_1

    .line 21
    :pswitch_5
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->a()V

    goto :goto_1

    .line 22
    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/byazt/ouz/NativeExpressView;->c(I)V

    goto :goto_1

    .line 23
    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/byazt/ouz/NativeExpressView;->c(I)V

    goto :goto_1

    .line 24
    :pswitch_8
    invoke-direct {p0, p2, p3, v3}, Lcom/byazt/ouz/NativeExpressView;->c(Lcom/byazt/xj/ve;Lcom/byazt/qdk/ve;I)V

    :goto_1
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2fbc0e0e -> :sswitch_9
        -0x5398fb2 -> :sswitch_8
        -0x353b7db -> :sswitch_7
        0x35e57f -> :sswitch_6
        0x5a5ddf8 -> :sswitch_5
        0x2ff1f862 -> :sswitch_4
        0x38b81db3 -> :sswitch_3
        0x44a639e2 -> :sswitch_2
        0x4ac71615 -> :sswitch_1
        0x63a33d25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public da()V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/tt;->ve(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/tt;->tt(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/tt;->uj(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/tt;->ve(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/tt;->tt(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/tt;->uj(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    const/4 v1, 0x3

    .line 67
    const/4 v2, 0x1

    .line 68
    if-eq v0, v2, :cond_6

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    if-eq v0, v3, :cond_3

    .line 72
    .line 73
    if-eq v0, v1, :cond_2

    .line 74
    .line 75
    const/4 v1, -0x1

    .line 76
    const/4 v5, -0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 v1, 0x4

    .line 79
    const/4 v5, 0x4

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->yf:F

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget v4, p0, Lcom/byazt/ouz/NativeExpressView;->dz:F

    .line 88
    .line 89
    sub-float/2addr v1, v4

    .line 90
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    add-float/2addr v0, v1

    .line 95
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->yf:F

    .line 96
    .line 97
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->f:F

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iget v4, p0, Lcom/byazt/ouz/NativeExpressView;->ma:F

    .line 104
    .line 105
    sub-float/2addr v1, v4

    .line 106
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    add-float/2addr v0, v1

    .line 111
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->f:F

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->dz:F

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->ma:F

    .line 124
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    iget-wide v4, p0, Lcom/byazt/ouz/NativeExpressView;->ir:J

    .line 130
    .line 131
    sub-long/2addr v0, v4

    .line 132
    const-wide/16 v4, 0xc8

    .line 133
    .line 134
    cmp-long v6, v0, v4

    .line 135
    .line 136
    if-lez v6, :cond_5

    .line 137
    .line 138
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->yf:F

    .line 139
    .line 140
    const/high16 v1, 0x41000000    # 8.0f

    .line 141
    .line 142
    cmpl-float v0, v0, v1

    .line 143
    .line 144
    if-gtz v0, :cond_4

    .line 145
    .line 146
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->f:F

    .line 147
    .line 148
    cmpl-float v0, v0, v1

    .line 149
    .line 150
    if-lez v0, :cond_5

    .line 151
    .line 152
    :cond_4
    const/4 v5, 0x1

    .line 153
    goto :goto_0

    .line 154
    :cond_5
    const/4 v5, 0x2

    .line 155
    goto :goto_0

    .line 156
    :cond_6
    const/4 v5, 0x3

    .line 157
    goto :goto_0

    .line 158
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->dz:F

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->ma:F

    .line 169
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 171
    .line 172
    .line 173
    move-result-wide v2

    .line 174
    iput-wide v2, p0, Lcom/byazt/ouz/NativeExpressView;->ir:J

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->j:Landroid/util/SparseArray;

    .line 178
    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    new-instance v2, Lcom/byazt/hkv/uj$c;

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    float-to-double v6, v3

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    float-to-double v8, v3

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 198
    .line 199
    .line 200
    move-result-wide v10

    .line 201
    move-object v4, v2

    .line 202
    invoke-direct/range {v4 .. v11}, Lcom/byazt/hkv/uj$c;-><init>(IDDJ)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    return p1
.end method

.method public getAdShowTime()Lcom/byazt/ddx/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->nb:Lcom/byazt/ddx/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickCreativeListener()Lcom/byazt/hkv/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickListener()Lcom/byazt/hkv/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDynamicShowType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/xl/uj;->ve()I

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

.method public getEasyPlayableLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->qp:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpectExpressHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getExpectExpressWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getExpressInteractionListener()Lcom/byazt/ouz/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJsObject()Lcom/byazt/omf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lo:Lcom/byazt/ouz/yv;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/yv;->J_()Lcom/byazt/omf/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getRenderEngineCacheType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/ouz/yv;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/ouz/yv;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/ouz/yv;->z()Lcom/byazt/ouz/sp;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/ouz/sp;->c()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public getShowDLFactorsEventParams()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/wz/x;->a(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/yih/c;->uj(Lcom/byazt/ete/ic;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->rl()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-eqz v1, :cond_3

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0
.end method

.method public getUGenV3Render()Lcom/byazt/atv/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->pu:Lcom/byazt/atv/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoController()Lcom/byazt/dh/ve;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebView()Lcom/byazt/el/SSWebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lo:Lcom/byazt/ouz/yv;

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
    invoke-virtual {v0}, Lcom/byazt/ouz/yv;->c()Lcom/byazt/el/SSWebView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public gt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/atv/n;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    instance-of v1, v0, Lcom/byazt/atv/sp;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/byazt/atv/n;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/atv/n;->uj()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->uj:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->ve:Lcom/byazt/dyf/tt;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/dyf/tt;->showDislikeDialog()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->uv()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->iu:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    .line 30
    .line 31
    const/16 v1, -0x10

    .line 32
    .line 33
    invoke-static {v1}, Lcom/byazt/omf/sp;->c(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, p0, v2, v1}, Lcom/byazt/ouz/c;->c(Landroid/view/View;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/byazt/ouz/NativeExpressView$9;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/byazt/ouz/NativeExpressView$9;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ra()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-static {}, Lcom/byazt/bzd/x;->c()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/byazt/ouz/NativeExpressView$10;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/byazt/ouz/NativeExpressView$10;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->eo()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public my()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :catchall_0
    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public nu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lo:Lcom/byazt/ouz/yv;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ol/c;->tt()Lcom/byazt/el/SSWebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lo:Lcom/byazt/ouz/yv;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/ouz/yv;->n()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const-string v0, "webviewpool"

    .line 5
    .line 6
    const-string v1, "onAttachedToWindow+++"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x33

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->a(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->ic:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->h:Lcom/byazt/rbg/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Lcom/byazt/rbg/c;->tt(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->ic:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    const-string v0, "webviewpool"

    .line 22
    .line 23
    const-string v1, "onDetachedFromWindow==="

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    const-string v0, "webviewpool"

    .line 5
    .line 6
    const-string v1, "onFinishTemporaryDetach+++"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yv()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->oz:Lcom/byazt/ouz/nu;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/nu;->c(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x37

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->a(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    const-string v0, "webviewpool"

    .line 5
    .line 6
    const-string v1, "onStartTemporaryDetach==="

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yv()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->oz:Lcom/byazt/ouz/nu;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/nu;->tt(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x35

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v0, 0x36

    .line 10
    .line 11
    :goto_0
    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->a(I)V

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1c

    .line 17
    .line 18
    if-ge v0, v1, :cond_2

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/16 v0, 0x8

    .line 28
    .line 29
    :goto_1
    invoke-virtual {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->onWindowVisibilityChanged(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lo:Lcom/byazt/ouz/yv;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/yv;->tt(Z)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lr:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->bm:Ljava/lang/Runnable;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x32

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->bm:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->lr:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public qy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->s:Lcom/byazt/ouz/qy;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/qy;->uj()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public rh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/atv/n;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/atv/n;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/atv/n;->nu()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public rl()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/xl/uj;->ve()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public setBackupListener(Lcom/byazt/xl/ve;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->nu:Lcom/byazt/xl/ve;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->b:Lcom/byazt/xl/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/xl/a;->c(Lcom/byazt/xl/ve;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setClickCreativeListener(Lcom/byazt/hkv/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    .line 2
    .line 3
    return-void
.end method

.method public setClickListener(Lcom/byazt/hkv/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    .line 2
    .line 3
    return-void
.end method

.method public setDislike(Lcom/byazt/dyf/tt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/byazt/ouz/my;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/xl/uj;->sp()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/byazt/ouz/BackupView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/BackupView;->setDislikeInner(Lcom/byazt/nc/sp;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->ve:Lcom/byazt/dyf/tt;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-class v1, Lcom/byazt/dyf/tt;

    .line 31
    .line 32
    invoke-static {v0, p1, v1}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public setDynamicSkipListener(Lcom/byazt/but/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->y:Lcom/byazt/but/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setEasyPlayableSender(Lcom/byazt/sy/sp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/byazt/un/NativeVideoTsView;->setEasyPlayableEventSender(Lcom/byazt/sy/sp;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setExpressInteractionListener(Lcom/byazt/ouz/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    .line 2
    .line 3
    return-void
.end method

.method public setOuterDislike(Landroid/app/Dialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/byazt/ouz/my;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/xl/uj;->sp()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/byazt/ouz/BackupView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/BackupView;->setDislikeOuter(Landroid/app/Dialog;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->uj:Landroid/app/Dialog;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-class v1, Landroid/app/Dialog;

    .line 31
    .line 32
    invoke-static {v0, p1, v1}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method

.method public setSoundMute(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->kp:Lcom/byazt/xl/tt;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/xl/tt;->tt()Lcom/byazt/kn/uj;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->kp:Lcom/byazt/xl/tt;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/xl/tt;->tt()Lcom/byazt/kn/uj;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/kn/uj;->setSoundMute(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/byazt/xl/uj;->ve()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x7

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 34
    .line 35
    instance-of v1, v0, Lcom/byazt/atv/n;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    check-cast v0, Lcom/byazt/kn/uj;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/byazt/kn/uj;->setSoundMute(Z)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    return-void
.end method

.method public setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->u:Lcom/byazt/dh/ve$ve;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoAdListener(Lcom/byazt/dh/ve$uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->t:Lcom/byazt/dh/ve$uj;

    .line 2
    .line 3
    return-void
.end method

.method public sl()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->rl:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    new-instance v0, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    new-instance v0, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->qp:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->rl:Landroid/widget/FrameLayout;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->qp:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->x()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->p:F

    .line 59
    .line 60
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->i()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/byazt/ouz/NativeExpressView;->md:F

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->gu()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yv:Ljava/lang/String;

    .line 78
    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yp()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 87
    .line 88
    .line 89
    const v0, 0x106000d

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->u()V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->zm()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->h()V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->tk:Lcom/byazt/xl/m;

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/byazt/xl/m;->tt()Lcom/byazt/ol/c;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/byazt/ouz/yv;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lo:Lcom/byazt/ouz/yv;

    .line 115
    .line 116
    :cond_2
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yv()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    new-instance v0, Lcom/byazt/ouz/nu;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lcom/byazt/ouz/nu;-><init>(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->oz:Lcom/byazt/ouz/nu;

    .line 128
    .line 129
    :cond_3
    return-void
.end method

.method public sp()V
    .locals 4

    .line 5
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->yv()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    const-string v1, "embeded_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_0
    new-instance v0, Lcom/byazt/vo/tt;

    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/byazt/tl/uj;->c()Lcom/byazt/vo/ve;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/byazt/vo/tt;-><init>(Lorg/json/JSONObject;Lcom/byazt/vo/ve;)V

    const-string v1, "dislike"

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/vo/tt;->tt(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/byazt/pr/c;->c()Lcom/byazt/pr/ve;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    const-string v3, "close_success"

    invoke-interface {v1, v2, v0, v3}, Lcom/byazt/pr/ve;->c(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sp(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Lcom/byazt/ouz/yp;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/byazt/ouz/yp;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/yp;->tt(I)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/atv/n;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/atv/n;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/atv/n;->m()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->to:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/byazt/xl/da;

    .line 47
    .line 48
    invoke-interface {v1}, Lcom/byazt/xl/da;->c()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->ve:Lcom/byazt/dyf/tt;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->uj:Landroid/app/Dialog;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->nu:Lcom/byazt/xl/ve;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->t:Lcom/byazt/dh/ve$uj;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->u:Lcom/byazt/dh/ve$ve;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->l:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->gt()V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->aw:Ljava/lang/Runnable;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    :cond_5
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->nb:Lcom/byazt/ddx/n;

    .line 101
    .line 102
    const/16 v1, 0x38

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/n;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    const-string v1, "NativeExpressView"

    .line 110
    .line 111
    const-string v2, "detach error"

    .line 112
    .line 113
    invoke-static {v1, v2, v0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public tt(ILjava/lang/String;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    instance-of v1, v0, Lcom/byazt/ouz/yv;

    if-eqz v1, :cond_1

    .line 108
    check-cast v0, Lcom/byazt/ouz/yv;

    invoke-virtual {v0}, Lcom/byazt/ouz/yv;->J_()Lcom/byazt/omf/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "time"

    .line 110
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "flag"

    .line 111
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "onVideoPaused"

    .line 112
    invoke-virtual {v0, p1, v1}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 113
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 15

    move-object v6, p0

    move/from16 v0, p2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    move-object/from16 v3, p3

    check-cast v3, Lcom/byazt/ete/gr;

    .line 8
    new-instance v4, Lcom/byazt/ete/da;

    invoke-direct {v4}, Lcom/byazt/ete/da;-><init>()V

    .line 9
    iget-object v1, v3, Lcom/byazt/ete/gr;->nu:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->c(Landroid/util/SparseArray;)V

    .line 10
    iget v1, v3, Lcom/byazt/ete/gr;->c:F

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->c(F)V

    .line 11
    iget v1, v3, Lcom/byazt/ete/gr;->tt:F

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->tt(F)V

    .line 12
    iget v1, v3, Lcom/byazt/ete/gr;->ve:F

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->ve(F)V

    .line 13
    iget v1, v3, Lcom/byazt/ete/gr;->uj:F

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->uj(F)V

    .line 14
    iget-boolean v1, v3, Lcom/byazt/ete/gr;->z:Z

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->tt(Z)V

    .line 15
    invoke-virtual {v3}, Lcom/byazt/ete/gr;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "convertActionType"

    const/high16 v5, -0x80000000

    .line 16
    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "is_compliant_download"

    .line 17
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/byazt/ete/da;->uj(Z)V

    const/4 v1, 0x1

    const/4 v5, 0x2

    if-ne v2, v1, :cond_2

    if-ne v0, v5, :cond_1

    .line 18
    iget-object v2, v6, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    invoke-virtual {v2}, Lcom/byazt/hkv/uj;->ve()V

    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, v6, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    invoke-virtual {v2}, Lcom/byazt/hkv/uj;->ve()V

    goto :goto_0

    :cond_2
    if-ne v2, v5, :cond_4

    if-ne v0, v5, :cond_3

    .line 20
    iget-object v2, v6, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    invoke-virtual {v2}, Lcom/byazt/hkv/uj;->uj()V

    goto :goto_0

    .line 21
    :cond_3
    iget-object v2, v6, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    invoke-virtual {v2}, Lcom/byazt/hkv/uj;->uj()V

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    move-object v2, v6

    goto :goto_1

    :cond_5
    move-object/from16 v2, p1

    .line 22
    :goto_1
    iget-object v5, v6, Lcom/byazt/ouz/NativeExpressView;->gu:Lcom/byazt/hkv/c;

    if-eqz v5, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/byazt/hkv/uj;->n(I)V

    .line 24
    :cond_6
    iget-object v5, v6, Lcom/byazt/ouz/NativeExpressView;->gr:Lcom/byazt/hkv/tt;

    if-eqz v5, :cond_7

    .line 25
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/byazt/hkv/uj;->n(I)V

    .line 26
    :cond_7
    iget-object v5, v6, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    if-eqz v5, :cond_8

    .line 27
    invoke-virtual {v5}, Lcom/byazt/ete/ic;->i()I

    move-result v5

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 28
    :pswitch_1
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->sp()V

    goto/16 :goto_3

    .line 29
    :pswitch_2
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->a()V

    return-void

    .line 30
    :pswitch_3
    iget-boolean v0, v6, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->c(Z)V

    return-void

    .line 31
    :pswitch_4
    iget-object v0, v6, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 32
    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    :cond_9
    iget-object v0, v6, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->gr(Lcom/byazt/ete/ic;)Z

    const-string v0, "embeded_ad"

    .line 34
    iget-object v1, v6, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->zb()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, v6, Lcom/byazt/ouz/NativeExpressView;->z:Z

    if-nez v0, :cond_a

    iget-object v0, v6, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->gr(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    move-object v1, v2

    move/from16 v2, p4

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/byazt/ouz/NativeExpressView;->tt(Landroid/view/View;ILcom/byazt/ete/gr;Lcom/byazt/ete/da;I)V

    return-void

    :cond_a
    move-object v0, p0

    move-object v1, v2

    move/from16 v2, p4

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/ete/gr;Lcom/byazt/ete/da;I)V

    return-void

    .line 37
    :pswitch_5
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressView;->i()V

    return-void

    :pswitch_6
    move-object v0, p0

    move-object v1, v2

    move/from16 v2, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/byazt/ouz/NativeExpressView;->tt(Landroid/view/View;ILcom/byazt/ete/gr;Lcom/byazt/ete/da;I)V

    return-void

    .line 39
    :pswitch_7
    iget-object v0, v6, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_b

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 40
    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_b
    move-object v0, p0

    move-object v1, v2

    move/from16 v2, p4

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/ete/gr;Lcom/byazt/ete/da;I)V

    :cond_c
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public tt(Lcom/byazt/ete/ic;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->n(Lcom/byazt/ete/ic;)V

    :cond_0
    return-void
.end method

.method public tt(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V
    .locals 7
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

    .line 66
    :try_start_0
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 67
    iput-object p2, p0, Lcom/byazt/ouz/NativeExpressView;->kk:Lcom/byazt/xl/yp;

    .line 68
    invoke-interface {p1}, Lcom/byazt/xl/uj;->ve()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 69
    invoke-interface {p1}, Lcom/byazt/xl/uj;->sp()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->cu:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->tt()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 74
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->n()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/xl/yp;->uj()D

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;D)D

    move-result-wide v3

    double-to-int v0, v3

    if-gtz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rm()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 80
    new-instance v0, Lcom/byazt/ouz/NativeExpressView$3;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/NativeExpressView$3;-><init>(Lcom/byazt/ouz/NativeExpressView;)V

    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->aw:Ljava/lang/Runnable;

    .line 81
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 83
    instance-of v3, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_4

    .line 84
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-direct {p0, v0}, Lcom/byazt/ouz/NativeExpressView;->n(Lcom/byazt/ete/ic;)V

    .line 86
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->s:Lcom/byazt/ouz/qy;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/byazt/atv/n;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/byazt/atv/sp;

    if-nez v0, :cond_5

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/byazt/atv/n;

    invoke-virtual {v0}, Lcom/byazt/atv/n;->i()Ljava/util/List;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->s:Lcom/byazt/ouz/qy;

    invoke-virtual {v2, v0}, Lcom/byazt/ouz/qy;->c(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->s:Lcom/byazt/ouz/qy;

    invoke-virtual {v0, p0}, Lcom/byazt/ouz/qy;->c(Lcom/byazt/ouz/NativeExpressView;)V

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->tx:Lcom/byazt/xl/i;

    instance-of v2, v0, Lcom/byazt/ouz/da;

    if-eqz v2, :cond_6

    .line 91
    check-cast v0, Lcom/byazt/ouz/da;

    invoke-virtual {v0}, Lcom/byazt/ouz/da;->yp()V

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->h:Lcom/byazt/rbg/c;

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/byazt/xl/uj;->ve()I

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->h:Lcom/byazt/rbg/c;

    invoke-interface {p1}, Lcom/byazt/xl/uj;->ve()I

    move-result p1

    invoke-virtual {p2}, Lcom/byazt/xl/yp;->sl()I

    move-result v2

    invoke-virtual {p2}, Lcom/byazt/xl/yp;->da()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/byazt/rbg/c;->c(IILjava/lang/String;)V

    .line 94
    :cond_7
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    instance-of v0, p1, Lcom/byazt/ouz/z;

    if-eqz v0, :cond_8

    .line 95
    check-cast p1, Lcom/byazt/ouz/z;

    invoke-interface {p1}, Lcom/byazt/ouz/z;->J_()Lcom/byazt/omf/d;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 96
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    check-cast p1, Lcom/byazt/ouz/z;

    invoke-interface {p1}, Lcom/byazt/ouz/z;->J_()Lcom/byazt/omf/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/ouz/sl;)Lcom/byazt/omf/d;

    .line 97
    :cond_8
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->tt()I

    move-result p1

    if-ne p1, v1, :cond_9

    instance-of p1, p2, Lcom/byazt/atv/ve;

    if-eqz p1, :cond_9

    .line 98
    move-object p1, p2

    check-cast p1, Lcom/byazt/atv/ve;

    .line 99
    invoke-virtual {p1}, Lcom/byazt/atv/ve;->rh()Lcom/byazt/qmz/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->zb:Lcom/byazt/qmz/c;

    .line 100
    :cond_9
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->n:Lcom/byazt/ouz/c;

    if-eqz p1, :cond_a

    .line 101
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->uj()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2}, Lcom/byazt/xl/yp;->n()D

    move-result-wide v1

    double-to-float p2, v1

    .line 102
    invoke-virtual {p1, p0, v0, p2}, Lcom/byazt/ouz/c;->c(Landroid/view/View;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public uj()V
    .locals 0

    .line 1
    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public ve(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->lo:Lcom/byazt/ouz/yv;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/yv;->ve(Z)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    return-void
.end method

.method public x(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->os:Lcom/byazt/xl/u;

    invoke-virtual {v0, p1}, Lcom/byazt/xl/u;->c(I)V

    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->v:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/ouz/yp;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/byazt/ouz/yp;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/byazt/ouz/yp;->x()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of v1, v0, Lcom/byazt/atv/n;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/byazt/atv/n;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/atv/n;->z()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressView;->d()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
