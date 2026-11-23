.class public Lcom/byazt/ouz/gu;
.super Lcom/byazt/ouz/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x11
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TTNativeExpressAd"


# instance fields
.field public a:Lcom/byazt/ouz/c;

.field public c:Lcom/byazt/ouz/NativeExpressView;

.field public da:Lcom/byazt/dyf/tt;

.field public gr:Lcom/byazt/omf/EmptyView;

.field public volatile gt:Z

.field public final gu:Landroid/view/ViewGroup;

.field public m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final md:Lcom/byazt/ouz/c;

.field public my:Lcom/byazt/ouz/n;

.field public n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/ouz/u;",
            ">;"
        }
    .end annotation
.end field

.field public nu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:I

.field public final qy:Lcom/byazt/sy/n;

.field public rh:Lcom/byazt/ouz/a;

.field public final rl:Landroid/widget/FrameLayout;

.field public sl:Lcom/byazt/pop/ve;

.field public sp:Lcom/byazt/pop/c;

.field public t:Ljava/lang/Double;

.field public final tt:Landroid/content/Context;

.field public u:Z

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/ete/ic;

.field public yp:Z

.field public final yv:Lcom/byazt/ddx/n;

.field public z:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zm:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "embeded_ad"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/ouz/gu;->uj:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/byazt/ouz/gu;->t:Ljava/lang/Double;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/byazt/ouz/gu;->u:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/byazt/ouz/gu;->yp:Z

    .line 15
    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/byazt/ouz/gu;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/byazt/ouz/gu;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/byazt/ouz/gu;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/byazt/ouz/gu;->gt:Z

    .line 38
    .line 39
    new-instance v1, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/byazt/ouz/gu;->gu:Landroid/view/ViewGroup;

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/byazt/ouz/gu;->zm:Z

    .line 51
    .line 52
    const/4 v1, 0x5

    .line 53
    iput v1, p0, Lcom/byazt/ouz/gu;->p:I

    .line 54
    .line 55
    new-instance v1, Lcom/byazt/ouz/gu$1;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/byazt/ouz/gu$1;-><init>(Lcom/byazt/ouz/gu;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/byazt/ouz/gu;->md:Lcom/byazt/ouz/c;

    .line 61
    .line 62
    iput p4, p0, Lcom/byazt/ouz/gu;->p:I

    .line 63
    .line 64
    iput-object p1, p0, Lcom/byazt/ouz/gu;->tt:Landroid/content/Context;

    .line 65
    .line 66
    iput-object p2, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 67
    .line 68
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->jl()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/byazt/ogz/sl;->xx()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_0

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    :cond_0
    const/4 v0, 0x1

    .line 89
    :cond_1
    iput-boolean v0, p0, Lcom/byazt/ouz/gu;->zm:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/byazt/ouz/gu;->getLifecycleId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p2, p3, p4, v0}, Lcom/byazt/rgb/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/ouz/gu;->initExpressView(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    .line 99
    .line 100
    .line 101
    new-instance p3, Landroid/widget/FrameLayout;

    .line 102
    .line 103
    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object p3, p0, Lcom/byazt/ouz/gu;->rl:Landroid/widget/FrameLayout;

    .line 107
    .line 108
    new-instance p1, Lcom/byazt/ddx/n;

    .line 109
    .line 110
    iget-object p3, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 111
    .line 112
    iget-object p4, p0, Lcom/byazt/ouz/gu;->uj:Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {p1, p3, p4}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Lcom/byazt/ouz/gu;->yv:Lcom/byazt/ddx/n;

    .line 118
    .line 119
    new-instance p1, Lcom/byazt/sy/n;

    .line 120
    .line 121
    new-instance p3, Lcom/byazt/ouz/gu$2;

    .line 122
    .line 123
    invoke-direct {p3, p0, p2}, Lcom/byazt/ouz/gu$2;-><init>(Lcom/byazt/ouz/gu;Lcom/byazt/ete/ic;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, p2, p3}, Lcom/byazt/sy/n;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lcom/byazt/ouz/gu;->qy:Lcom/byazt/sy/n;

    .line 130
    .line 131
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->md:Lcom/byazt/ouz/c;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)Lcom/byazt/omf/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 58
    instance-of v2, v1, Lcom/byazt/omf/EmptyView;

    if-eqz v2, :cond_0

    .line 59
    check-cast v1, Lcom/byazt/omf/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->a:Lcom/byazt/ouz/c;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ouz/gu;Lcom/byazt/pop/ve;)Lcom/byazt/pop/ve;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    return-object p1
.end method

.method private c()V
    .locals 3

    .line 16
    iget-boolean v0, p0, Lcom/byazt/ouz/gu;->gt:Z

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/byazt/ouz/gu;->rh:Lcom/byazt/ouz/a;

    const-class v1, Lcom/byazt/nat/c;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    invoke-virtual {v0, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->my:Lcom/byazt/ouz/n;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v1, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 22
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    iget-object v1, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    invoke-direct {p0, v0, v1}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V

    .line 23
    iget-object v0, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    invoke-interface {v0}, Lcom/byazt/pop/ve;->c()V

    .line 24
    iget-object v0, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    iget-object v1, p0, Lcom/byazt/ouz/tt;->x:Lcom/byazt/ouz/tt$c;

    invoke-interface {v0, v1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/byazt/ouz/gu;->gt:Z

    .line 26
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 27
    new-instance v0, Lcom/byazt/ouz/gu$4;

    const-string v1, "native_register_download"

    invoke-direct {v0, p0, v1}, Lcom/byazt/ouz/gu$4;-><init>(Lcom/byazt/ouz/gu;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    :cond_4
    return-void
.end method

.method private c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 7

    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/byazt/dyf/tt;

    iget-object v1, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/ouz/gu;->uj:Ljava/lang/String;

    const/4 v5, 0x0

    .line 9
    invoke-static {}, Lcom/byazt/xky/tt;->c()Lcom/byazt/dyf/c;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    iput-object v0, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    .line 10
    iget-object v1, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1, v1, v0}, Lcom/byazt/tl/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dyf/tt;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    if-eqz p1, :cond_1

    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    invoke-virtual {p1, v0}, Lcom/byazt/dyf/tt;->setMonitorView(Landroid/view/View;)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/dyf/tt;->setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz p1, :cond_2

    .line 15
    iget-object p2, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/ouz/NativeExpressView;->setDislike(Lcom/byazt/dyf/tt;)V

    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/gu;Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V

    return-void
.end method

.method private c(Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    iget-object p2, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    if-eqz p2, :cond_1

    .line 53
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 54
    :goto_0
    new-instance v0, Lcom/byazt/ouz/tt$c;

    iget-object v1, p0, Lcom/byazt/ouz/gu;->sp:Lcom/byazt/pop/c;

    invoke-direct {v0, v1, p2}, Lcom/byazt/ouz/tt$c;-><init>(Lcom/byazt/pop/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/ouz/tt;->x:Lcom/byazt/ouz/tt$c;

    .line 55
    invoke-interface {p1, v0}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic da(Lcom/byazt/ouz/gu;)Lcom/byazt/dyf/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->my:Lcom/byazt/ouz/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/ouz/gu;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->t:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/ouz/gu;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->rl:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/ouz/gu;)Lcom/byazt/omf/EmptyView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->gr:Lcom/byazt/omf/EmptyView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/ouz/gu;)Lcom/byazt/ddx/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->yv:Lcom/byazt/ddx/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/ouz/gu;)Lcom/byazt/ouz/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->rh:Lcom/byazt/ouz/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/ouz/gu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/gu;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ouz/gu;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->gu:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private tt()Ljava/util/Map;
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

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    invoke-static {v0, v1, v2}, Lcom/byazt/ouz/yv;->c(Ljava/util/Map;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V

    return-object v0
.end method

.method public static synthetic u(Lcom/byazt/ouz/gu;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/ouz/gu;)Lcom/byazt/sy/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->qy:Lcom/byazt/sy/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/ouz/gu;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/ouz/gu;)Lcom/byazt/pop/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/ouz/gu;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/gu;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/ouz/gu;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/gu;->tt()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public c(Landroid/app/Dialog;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "dialog is null, please check"

    .line 4
    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->setOuterDislike(Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 28
    iput-object p2, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 29
    new-instance v0, Lcom/byazt/ouz/gu$5;

    invoke-direct {v0, p0, p2}, Lcom/byazt/ouz/gu$5;-><init>(Lcom/byazt/ouz/gu;Lcom/byazt/ete/ic;)V

    invoke-virtual {p1, v0}, Lcom/byazt/ouz/NativeExpressView;->setBackupListener(Lcom/byazt/xl/ve;)V

    .line 30
    invoke-static {p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/byazt/ouz/gu;->c(Landroid/view/ViewGroup;)Lcom/byazt/omf/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ouz/gu;->gr:Lcom/byazt/omf/EmptyView;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->if()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 33
    :goto_0
    new-instance v1, Lcom/byazt/omf/EmptyView;

    iget-object v2, p0, Lcom/byazt/ouz/gu;->tt:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0}, Lcom/byazt/omf/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/byazt/ouz/gu;->gr:Lcom/byazt/omf/EmptyView;

    .line 34
    iget v0, p0, Lcom/byazt/ouz/gu;->p:I

    invoke-virtual {v1, v0}, Lcom/byazt/omf/EmptyView;->setAdType(I)V

    .line 35
    iget-object v0, p0, Lcom/byazt/ouz/gu;->gr:Lcom/byazt/omf/EmptyView;

    iget-object v1, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/ouz/gu;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/byazt/ouz/gu;->gr:Lcom/byazt/omf/EmptyView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->gr:Lcom/byazt/omf/EmptyView;

    new-instance v1, Lcom/byazt/ouz/gu$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ouz/gu$6;-><init>(Lcom/byazt/ouz/gu;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V

    invoke-virtual {v0, v1}, Lcom/byazt/omf/EmptyView;->setCallback(Lcom/byazt/omf/EmptyView$c;)V

    .line 38
    new-instance v0, Lcom/byazt/ouz/a;

    iget-object v1, p0, Lcom/byazt/ouz/gu;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ouz/gu;->uj:Ljava/lang/String;

    invoke-static {v2}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/byazt/ouz/a;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/byazt/ouz/gu;->rh:Lcom/byazt/ouz/a;

    .line 39
    const-class v1, Lcom/byazt/vis/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/ve;

    .line 40
    invoke-virtual {p0, v0}, Lcom/byazt/ouz/gu;->setAdShowCallBack(Lcom/byazt/vis/ve;)V

    .line 41
    iget-object v0, p0, Lcom/byazt/ouz/gu;->rh:Lcom/byazt/ouz/a;

    invoke-virtual {v0, p1}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/byazt/ouz/gu;->rh:Lcom/byazt/ouz/a;

    const-class v2, Lcom/byazt/nat/c;

    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0, p0}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    iget-object v3, p0, Lcom/byazt/ouz/gu;->rh:Lcom/byazt/ouz/a;

    invoke-virtual {v0, v3}, Lcom/byazt/ouz/NativeExpressView;->setClickListener(Lcom/byazt/hkv/tt;)V

    .line 44
    new-instance v0, Lcom/byazt/ouz/n;

    iget-object v3, p0, Lcom/byazt/ouz/gu;->tt:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/ouz/gu;->uj:Ljava/lang/String;

    invoke-static {v4}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v3, p2, v4, v5}, Lcom/byazt/ouz/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/byazt/ouz/gu;->my:Lcom/byazt/ouz/n;

    .line 45
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p2

    check-cast p2, Lcom/byazt/vis/ve;

    .line 46
    invoke-virtual {p0, p2}, Lcom/byazt/ouz/gu;->setAdShowCallBack(Lcom/byazt/vis/ve;)V

    .line 47
    iget-object p2, p0, Lcom/byazt/ouz/gu;->my:Lcom/byazt/ouz/n;

    invoke-virtual {p2, p1}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 48
    iget-object p1, p0, Lcom/byazt/ouz/gu;->my:Lcom/byazt/ouz/n;

    invoke-virtual {p1, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, p0}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    iget-object p2, p0, Lcom/byazt/ouz/gu;->my:Lcom/byazt/ouz/n;

    invoke-virtual {p1, p2}, Lcom/byazt/ouz/NativeExpressView;->setClickCreativeListener(Lcom/byazt/hkv/c;)V

    .line 50
    iget-boolean p1, p0, Lcom/byazt/ouz/gu;->zm:Z

    if-nez p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/byazt/ouz/gu;->gr:Lcom/byazt/omf/EmptyView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/byazt/omf/EmptyView;->setNeedCheckingShow(Z)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/tt;->destroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/ouz/gu;->getLifecycleId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->t()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->yv:Lcom/byazt/ddx/n;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;)F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x10

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ddx/n;->c(FI)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/ouz/gu;->sl:Lcom/byazt/pop/ve;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->qy:Lcom/byazt/sy/n;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byazt/sy/n;->tt()V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/byazt/aas/cu;->tt(I)V

    .line 57
    .line 58
    .line 59
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
    invoke-virtual {p0}, Lcom/byazt/ouz/gu;->getLifecycleId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/byazt/ouz/gu;->c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    .line 10
    .line 11
    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/byazt/ouz/gu;->uj:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/vo/tt;->tt(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/byazt/vo/c;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Lcom/byazt/vo/c;-><init>(Lcom/byazt/vo/tt;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public getExpressAdView()Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/dz/uj;->c()Lcom/byazt/dz/uj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/byazt/iyp/tt;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/ouz/gu;->gu:Landroid/view/ViewGroup;

    .line 20
    .line 21
    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

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
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

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

.method public getMaterialMeta()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
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

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yt()Ljava/util/Map;

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

.method public getMediationManager()Lcom/byazt/sbm/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ah/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ah/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public initExpressView(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ouz/gu;->uj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p3, v1}, Lcom/byazt/ouz/NativeExpressView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/ouz/gu;->gu:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/byazt/ouz/gu;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ouz/gu;->yp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/ouz/gu;->yp:Z

    .line 13
    .line 14
    return-void
.end method

.method public registerClickableRects(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->c(Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public render()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->da:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dyf/tt;->setMonitorView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->m()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/dz/uj;->c()Lcom/byazt/dz/uj;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setAdShowCallBack(Lcom/byazt/vis/ve;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ouz/gu$7;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/byazt/ouz/gu$7;-><init>(Lcom/byazt/ouz/gu;Lcom/byazt/vis/ve;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/byazt/vis/ve;->c(Lcom/byazt/vis/ve$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/byazt/ouz/gu$3;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1, p2}, Lcom/byazt/ouz/gu$3;-><init>(Lcom/byazt/ouz/gu;Ljava/util/function/Function;Lcom/byazt/dhf/c;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Lcom/byazt/ouz/gu;->c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/byazt/pop/c$c;->c(Lcom/byazt/ocd/ve;)Lcom/byazt/pop/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/byazt/ouz/gu;->sp:Lcom/byazt/pop/c;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/tt;->x:Lcom/byazt/ouz/tt$c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/tt$c;->c(Lcom/byazt/pop/c;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setExpressInteractionListener(Lcom/byazt/ft/c;)V
    .locals 1

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/ouz/c;->c(Lcom/byazt/nc/yp;Lcom/byazt/ft/c;)Lcom/byazt/ouz/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ouz/gu;->a:Lcom/byazt/ouz/c;

    .line 4
    iget-object p1, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    iget-object v0, p0, Lcom/byazt/ouz/gu;->md:Lcom/byazt/ouz/c;

    invoke-virtual {p1, v0}, Lcom/byazt/ouz/NativeExpressView;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    return-void
.end method

.method public setExpressInteractionListener(Lcom/byazt/ft/tt;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/ouz/c;->c(Lcom/byazt/nc/yp;Lcom/byazt/ft/tt;)Lcom/byazt/ouz/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/ouz/gu;->a:Lcom/byazt/ouz/c;

    .line 2
    iget-object p1, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    iget-object v0, p0, Lcom/byazt/ouz/gu;->md:Lcom/byazt/ouz/c;

    invoke-virtual {p1, v0}, Lcom/byazt/ouz/NativeExpressView;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/gu;->t:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public unRegisterRects()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->c:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/NativeExpressView;->qy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ouz/gu;->u:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/gu;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/ouz/gu;->u:Z

    .line 13
    .line 14
    return-void
.end method
