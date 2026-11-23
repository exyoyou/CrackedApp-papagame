.class public Lcom/byazt/tp/tt;
.super Lcom/byazt/ouz/tt;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b4,
        0xd
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TTBannerExpressAd"


# instance fields
.field public a:Lcom/byazt/pop/c;

.field public c:Lcom/byazt/tp/c;

.field public da:Lcom/byazt/pop/ve;

.field public gr:Lcom/byazt/ouz/a;

.field public gt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile gu:Landroid/view/View;

.field public final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public my:Z

.field public n:Lcom/byazt/ouz/c;

.field public nu:Ljava/lang/Double;

.field public p:Z

.field public qy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rh:Z

.field public rl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sl:Lcom/byazt/dyf/tt;

.field public sp:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/tp/BannerExpressBackupView;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/byazt/nr/d;

.field public final tt:Landroid/content/Context;

.field public u:I

.field public uj:Lcom/byazt/dj/tt;

.field public ve:Lcom/byazt/ete/ic;

.field public yp:Lcom/byazt/dhf/c;

.field public yv:Lcom/byazt/ouz/NativeExpressView;

.field public z:Ljava/lang/String;

.field public zm:Lcom/byazt/ouz/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/tt;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "banner_ad"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/tp/tt;->m:Ljava/util/Queue;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/byazt/tp/tt;->nu:Ljava/lang/Double;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/byazt/tp/tt;->rh:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/byazt/tp/tt;->my:Z

    .line 22
    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/byazt/tp/tt;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/byazt/tp/tt;->rl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/byazt/tp/tt;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/byazt/tp/tt;->p:Z

    .line 45
    .line 46
    iput-object p1, p0, Lcom/byazt/tp/tt;->tt:Landroid/content/Context;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 49
    .line 50
    iput-object p3, p0, Lcom/byazt/tp/tt;->uj:Lcom/byazt/dj/tt;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/byazt/tp/tt;->getLifecycleId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-static {p2, p3, v2, v1}, Lcom/byazt/rgb/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/byazt/ogz/sl;->jl()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/byazt/ogz/sl;->xx()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_1

    .line 77
    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 v2, 0x0

    .line 82
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/byazt/tp/tt;->p:Z

    .line 83
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/tp/tt;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 94
    .line 95
    invoke-virtual {p0, p1, p2, v0}, Lcom/byazt/tp/tt;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;Z)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public static synthetic a(Lcom/byazt/tp/tt;)Lcom/byazt/dyf/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)Lcom/byazt/omf/EmptyView;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 78
    instance-of v3, v2, Lcom/byazt/omf/EmptyView;

    if-eqz v3, :cond_1

    .line 79
    check-cast v2, Lcom/byazt/omf/EmptyView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/tp/tt;Lcom/byazt/pop/ve;)Lcom/byazt/pop/ve;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tp/tt;->da:Lcom/byazt/pop/ve;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/tp/tt;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ouz/NativeExpressView;",
            "Lcom/byazt/ete/ic;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {p2, v0, p1}, Lcom/byazt/ouz/yv;->c(Ljava/util/Map;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V

    return-object p2
.end method

.method public static synthetic c(Lcom/byazt/tp/tt;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)Ljava/util/Map;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/tp/tt;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 21
    new-instance v0, Lcom/byazt/tp/tt$3;

    const-string v1, "banner_express_register_download"

    invoke-direct {v0, p0, v1}, Lcom/byazt/tp/tt$3;-><init>(Lcom/byazt/tp/tt;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 7

    .line 12
    iget-object v0, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/byazt/dyf/tt;

    iget-object v1, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/byazt/xky/tt;->c()Lcom/byazt/dyf/c;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    iput-object v0, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    .line 14
    iget-object v1, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    invoke-static {p1, v1, v0}, Lcom/byazt/tl/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dyf/tt;)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    if-eqz p1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {p1, v0}, Lcom/byazt/dyf/tt;->setMonitorView(Landroid/view/View;)V

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/dyf/tt;->setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {p1}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/ouz/NativeExpressView;->setDislike(Lcom/byazt/dyf/tt;)V

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/ete/ic;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {v0}, Lcom/byazt/tp/c;->getNextView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {v0}, Lcom/byazt/tp/c;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {v0}, Lcom/byazt/tp/c;->getNextView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/byazt/tp/tt;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/vo/tt;)V

    .line 24
    iget-object v0, p0, Lcom/byazt/tp/tt;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {v0}, Lcom/byazt/tp/c;->getNextView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/byazt/tp/tt;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;Z)V

    :cond_0
    return-void
.end method

.method private c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/vo/tt;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt;->yp:Lcom/byazt/dhf/c;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    invoke-virtual {v0, p2}, Lcom/byazt/dyf/tt;->resetData(Lcom/byazt/vo/tt;)V

    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/ouz/NativeExpressView;->setDislike(Lcom/byazt/dyf/tt;)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/tt;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p0, p2}, Lcom/byazt/ouz/tt;->c(Lcom/byazt/vo/tt;)V

    if-eqz p1, :cond_2

    .line 31
    iget-object p2, p0, Lcom/byazt/ouz/tt;->i:Landroid/app/Dialog;

    invoke-virtual {p1, p2}, Lcom/byazt/ouz/NativeExpressView;->setOuterDislike(Landroid/app/Dialog;)V

    :cond_2
    return-void
.end method

.method private c(Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 65
    :goto_0
    new-instance v0, Lcom/byazt/ouz/tt$c;

    iget-object v1, p0, Lcom/byazt/tp/tt;->a:Lcom/byazt/pop/c;

    invoke-direct {v0, v1, p2}, Lcom/byazt/ouz/tt$c;-><init>(Lcom/byazt/pop/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/ouz/tt;->x:Lcom/byazt/ouz/tt$c;

    .line 66
    invoke-interface {p1, v0}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/tp/tt;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/tp/tt;Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/byazt/tp/tt;->c(Lcom/byazt/pop/ve;Lcom/byazt/ouz/NativeExpressView;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/tp/tt;Lcom/byazt/vo/tt;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/ouz/tt;->c(Lcom/byazt/vo/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/tp/tt;ZLcom/byazt/ete/ic;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/tp/tt;->c(ZLcom/byazt/ete/ic;)V

    return-void
.end method

.method private c(ZLcom/byazt/ete/ic;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/byazt/tp/tt;->m:Ljava/util/Queue;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 68
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void

    .line 69
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/byazt/tp/tt;->m:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/byazt/ddx/n;

    iget-object v1, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/n;->c(F)V

    .line 74
    iget-object v1, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/byazt/ddx/n;->tt()Ljava/util/Map;

    move-result-object v0

    const/16 v2, 0xd

    invoke-static {p1, p2, v1, v2, v0}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 75
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic da(Lcom/byazt/tp/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tp/tt;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i(Lcom/byazt/tp/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tp/tt;->ve()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/byazt/tp/tt;)Lcom/byazt/ouz/NativeExpressView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->yv:Lcom/byazt/ouz/NativeExpressView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/tp/tt;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/tt;->i:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->rl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->da:Lcom/byazt/pop/ve;

    return-object p0
.end method

.method private tt()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/byazt/tp/tt;->gu:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt;->gu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/tp/tt;->t:Lcom/byazt/nr/d;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/tp/tt;->t:Lcom/byazt/nr/d;

    iget v1, p0, Lcom/byazt/tp/tt;->u:I

    int-to-long v1, v1

    const v3, 0x1b649

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private tt(Lcom/byazt/ete/ic;)V
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/byazt/tp/tt;->m:Ljava/util/Queue;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tp/tt;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/byazt/ddx/n;

    iget-object v2, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {v1, v2}, Lcom/byazt/ddx/n;->c(F)V

    .line 13
    iget-object v2, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/byazt/ddx/n;->tt()Ljava/util/Map;

    move-result-object v1

    const/16 v3, 0xf

    invoke-static {v0, p1, v2, v3, v1}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/tp/tt;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/tp/tt;->c(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public static synthetic u(Lcom/byazt/tp/tt;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->m:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/tp/tt;)Lcom/byazt/ouz/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->zm:Lcom/byazt/ouz/n;

    return-object p0
.end method

.method private uj()V
    .locals 5

    .line 2
    new-instance v0, Lcom/byazt/ete/bm;

    invoke-direct {v0}, Lcom/byazt/ete/bm;-><init>()V

    const/4 v1, 0x2

    .line 3
    iput v1, v0, Lcom/byazt/ete/bm;->sp:I

    .line 4
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/tp/tt;->uj:Lcom/byazt/dj/tt;

    new-instance v3, Lcom/byazt/gk/c;

    new-instance v4, Lcom/byazt/tp/tt$8;

    invoke-direct {v4, p0}, Lcom/byazt/tp/tt$8;-><init>(Lcom/byazt/tp/tt;)V

    invoke-direct {v3, v4}, Lcom/byazt/gk/c;-><init>(Lcom/byazt/omf/gu$tt;)V

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/byazt/omf/gu;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;ILcom/byazt/omf/gu$tt;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/tp/tt;)Lcom/byazt/ouz/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->gr:Lcom/byazt/ouz/a;

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/tp/tt;->t:Lcom/byazt/nr/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic x(Lcom/byazt/tp/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tp/tt;->tt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic yp(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->qy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/tp/tt;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/tp/tt;->nu:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Landroid/app/Dialog;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "dialog is null, please check"

    .line 9
    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {v0}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/ouz/NativeExpressView;->setOuterDislike(Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/byazt/tp/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/byazt/tp/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    iput-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    return-void
.end method

.method public c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;Z)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/byazt/tp/tt;->yv:Lcom/byazt/ouz/NativeExpressView;

    .line 33
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    move-result v0

    invoke-static {v0}, Lcom/byazt/aas/cu;->tt(I)V

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 36
    new-instance v0, Lcom/byazt/tp/tt$4;

    invoke-direct {v0, p0, p2}, Lcom/byazt/tp/tt$4;-><init>(Lcom/byazt/tp/tt;Lcom/byazt/ete/ic;)V

    invoke-virtual {p1, v0}, Lcom/byazt/ouz/NativeExpressView;->setBackupListener(Lcom/byazt/xl/ve;)V

    .line 37
    invoke-static {p2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/byazt/tp/tt;->c(Landroid/view/ViewGroup;)Lcom/byazt/omf/EmptyView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 39
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->if()I

    move-result v0

    .line 40
    new-instance v2, Lcom/byazt/omf/EmptyView;

    iget-object v3, p0, Lcom/byazt/tp/tt;->tt:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v0}, Lcom/byazt/omf/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 41
    invoke-virtual {v2, v1}, Lcom/byazt/omf/EmptyView;->setAdType(I)V

    .line 42
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v2

    .line 44
    :cond_2
    iput-object v0, p0, Lcom/byazt/tp/tt;->gu:Landroid/view/View;

    .line 45
    new-instance v2, Lcom/byazt/tp/tt$5;

    invoke-direct {v2, p0, p2, p1, p2}, Lcom/byazt/tp/tt$5;-><init>(Lcom/byazt/tp/tt;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V

    invoke-virtual {v0, v2}, Lcom/byazt/omf/EmptyView;->setCallback(Lcom/byazt/omf/EmptyView$c;)V

    .line 46
    new-instance v2, Lcom/byazt/ouz/a;

    iget-object v3, p0, Lcom/byazt/tp/tt;->tt:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    const/4 v10, 0x2

    invoke-direct {v2, v3, p2, v4, v10}, Lcom/byazt/ouz/a;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/byazt/tp/tt;->gr:Lcom/byazt/ouz/a;

    .line 47
    const-class v3, Lcom/byazt/vis/ve;

    invoke-virtual {v2, v3}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v2

    check-cast v2, Lcom/byazt/vis/ve;

    .line 48
    new-instance v11, Lcom/byazt/tp/tt$6;

    move-object v4, v11

    move-object v5, p0

    move-object v6, v2

    move-object v7, v0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/byazt/tp/tt$6;-><init>(Lcom/byazt/tp/tt;Lcom/byazt/vis/ve;Lcom/byazt/omf/EmptyView;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V

    invoke-virtual {v2, v11}, Lcom/byazt/vis/ve;->c(Lcom/byazt/vis/ve$c;)V

    .line 49
    iget-object v2, p0, Lcom/byazt/tp/tt;->gr:Lcom/byazt/ouz/a;

    invoke-virtual {v2, p1}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 50
    iget-object v2, p0, Lcom/byazt/tp/tt;->gr:Lcom/byazt/ouz/a;

    const-class v11, Lcom/byazt/nat/c;

    invoke-virtual {v2, v11}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v2

    check-cast v2, Lcom/byazt/nat/c;

    invoke-virtual {v2, p0}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 51
    iget-object v2, p0, Lcom/byazt/tp/tt;->gr:Lcom/byazt/ouz/a;

    invoke-virtual {p1, v2}, Lcom/byazt/ouz/NativeExpressView;->setClickListener(Lcom/byazt/hkv/tt;)V

    .line 52
    new-instance v2, Lcom/byazt/ouz/n;

    iget-object v4, p0, Lcom/byazt/tp/tt;->tt:Landroid/content/Context;

    iget-object v5, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    invoke-direct {v2, v4, p2, v5, v10}, Lcom/byazt/ouz/n;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/byazt/tp/tt;->zm:Lcom/byazt/ouz/n;

    .line 53
    invoke-virtual {v2, v3}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v2

    check-cast v2, Lcom/byazt/vis/ve;

    .line 54
    new-instance v3, Lcom/byazt/tp/tt$7;

    move-object v4, v3

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Lcom/byazt/tp/tt$7;-><init>(Lcom/byazt/tp/tt;Lcom/byazt/vis/ve;Lcom/byazt/omf/EmptyView;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V

    invoke-virtual {v2, v3}, Lcom/byazt/vis/ve;->c(Lcom/byazt/vis/ve$c;)V

    .line 55
    iget-object p2, p0, Lcom/byazt/tp/tt;->zm:Lcom/byazt/ouz/n;

    invoke-virtual {p2, p1}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 56
    iget-object p2, p0, Lcom/byazt/tp/tt;->zm:Lcom/byazt/ouz/n;

    invoke-virtual {p2, v11}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p2

    check-cast p2, Lcom/byazt/nat/c;

    invoke-virtual {p2, p0}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 57
    iget-object p2, p0, Lcom/byazt/tp/tt;->zm:Lcom/byazt/ouz/n;

    invoke-virtual {p1, p2}, Lcom/byazt/ouz/NativeExpressView;->setClickCreativeListener(Lcom/byazt/hkv/c;)V

    .line 58
    iget-boolean p1, p0, Lcom/byazt/tp/tt;->p:Z

    if-nez p1, :cond_3

    .line 59
    invoke-virtual {v0, v1}, Lcom/byazt/omf/EmptyView;->setNeedCheckingShow(Z)V

    :cond_3
    if-eqz p3, :cond_4

    .line 60
    invoke-direct {p0}, Lcom/byazt/tp/tt;->c()V

    :cond_4
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/tt;->destroy()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/tp/tt$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/tp/tt$1;-><init>(Lcom/byazt/tp/tt;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/tp/tt;->t:Lcom/byazt/nr/d;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/tp/tt;->t:Lcom/byazt/nr/d;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-static {v0}, Lcom/byazt/aas/cu;->tt(I)V

    .line 33
    .line 34
    .line 35
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
    invoke-virtual {p0}, Lcom/byazt/tp/tt;->getLifecycleId()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/byazt/tp/tt;->c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    .line 10
    .line 11
    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/vo/tt;->tt(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/byazt/vo/c;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

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
    iget-object v1, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(I)Lcom/byazt/dz/uj;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->c()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/byazt/iyp/tt;->c(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    .line 25
    .line 26
    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

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

.method public handleMsg(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v0, 0x1b649

    .line 4
    .line 5
    .line 6
    if-ne p1, v0, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lcom/byazt/tp/tt;->gu:Landroid/view/View;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/byazt/tp/tt;->gu:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/byazt/tp/tt;->uj()V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/tp/tt;->my:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/tp/tt;->my:Z

    .line 13
    .line 14
    return-void
.end method

.method public registerClickableRects(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt;->sl:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/dyf/tt;->setMonitorView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/tp/c;->n()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/dz/uj;->c()Lcom/byazt/dz/uj;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(I)Lcom/byazt/dz/uj;

    .line 27
    .line 28
    .line 29
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
    new-instance v0, Lcom/byazt/tp/tt$2;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1, p2}, Lcom/byazt/tp/tt$2;-><init>(Lcom/byazt/tp/tt;Ljava/util/function/Function;Lcom/byazt/dhf/c;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/tp/tt;->yp:Lcom/byazt/dhf/c;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lcom/byazt/tp/tt;->c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 15
    .line 16
    .line 17
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
    iput-object p1, p0, Lcom/byazt/tp/tt;->a:Lcom/byazt/pop/c;

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

    iput-object p1, p0, Lcom/byazt/tp/tt;->n:Lcom/byazt/ouz/c;

    .line 4
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {v0, p1}, Lcom/byazt/tp/c;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    return-void
.end method

.method public setExpressInteractionListener(Lcom/byazt/ft/tt;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/byazt/ouz/c;->c(Lcom/byazt/nc/yp;Lcom/byazt/ft/tt;)Lcom/byazt/ouz/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/tp/tt;->n:Lcom/byazt/ouz/c;

    .line 2
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {v0, p1}, Lcom/byazt/tp/c;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tp/tt;->nu:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setSlideIntervalTime(I)V
    .locals 3

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "slide_banner_ad"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/tp/tt;->z:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lcom/byazt/tp/tt;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    .line 21
    .line 22
    const/16 v1, 0x3e8

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/tp/c;->setDuration(I)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x7530

    .line 28
    .line 29
    if-ge p1, v0, :cond_1

    .line 30
    .line 31
    const/16 p1, 0x7530

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const v0, 0x1d4c0

    .line 35
    .line 36
    .line 37
    if-le p1, v0, :cond_2

    .line 38
    .line 39
    const p1, 0x1d4c0

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    iput p1, p0, Lcom/byazt/tp/tt;->u:I

    .line 43
    .line 44
    new-instance p1, Lcom/byazt/nr/d;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/byazt/tp/tt;->t:Lcom/byazt/nr/d;

    .line 54
    .line 55
    return-void
.end method

.method public unRegisterRects()V
    .locals 0

    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

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
    iget-boolean v0, p0, Lcom/byazt/tp/tt;->rh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/tp/tt;->rh:Z

    .line 13
    .line 14
    return-void
.end method
