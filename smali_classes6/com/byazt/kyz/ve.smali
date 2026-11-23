.class public Lcom/byazt/kyz/ve;
.super Lcom/byazt/nc/u;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x36
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/nc/n;

.field public final c:Lcom/byazt/omf/my;

.field public volatile d:Z

.field public da:Lcom/byazt/nc/yp;

.field public eo:Lcom/byazt/lsp/c;

.field public final gr:Z

.field public gt:Lcom/byazt/lsp/c;

.field public gu:Z

.field public final h:Lcom/byazt/un/c;

.field public i:Lcom/byazt/dj/tt;

.field public m:F

.field public md:Lcom/byazt/sy/a;

.field public my:Lcom/byazt/lsp/ve;

.field public n:Lcom/byazt/nc/sp;

.field public nu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:Lcom/byazt/sy/da;

.field public qy:Z

.field public rh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rl:Landroid/widget/TextView;

.field public volatile sl:Landroid/view/ViewGroup;

.field public sp:I

.field public t:Landroid/view/View;

.field public final tt:Lcom/byazt/ete/ic;

.field public u:Z

.field public uj:Landroid/app/Dialog;

.field public final ve:Landroid/content/Context;

.field public x:I

.field public yp:Z

.field public yv:Lcom/byazt/sy/n;

.field public z:F

.field public volatile zm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/un/NativeVideoTsView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;ILcom/byazt/dj/tt;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/nc/u;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/kyz/ve;->u:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/byazt/kyz/ve;->yp:Z

    .line 9
    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/byazt/kyz/ve;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/byazt/kyz/ve;->qy:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/byazt/kyz/ve;->gu:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    new-instance v2, Lcom/byazt/kyz/ve$1;

    .line 32
    .line 33
    invoke-direct {v2, p0}, Lcom/byazt/kyz/ve$1;-><init>(Lcom/byazt/kyz/ve;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/byazt/kyz/ve;->h:Lcom/byazt/un/c;

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/byazt/kyz/ve;->d:Z

    .line 39
    .line 40
    iput-object v1, p0, Lcom/byazt/kyz/ve;->eo:Lcom/byazt/lsp/c;

    .line 41
    .line 42
    const-string v0, "materialMeta\u4e0d\u80fd\u4e3anull"

    .line 43
    .line 44
    invoke-static {p2, v0}, Lcom/byazt/nr/my;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-boolean p5, p0, Lcom/byazt/kyz/ve;->gr:Z

    .line 48
    .line 49
    iput-object p2, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 61
    .line 62
    :goto_0
    iput p3, p0, Lcom/byazt/kyz/ve;->sp:I

    .line 63
    .line 64
    iput-object p4, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    .line 65
    .line 66
    new-instance p1, Lcom/byazt/omf/my;

    .line 67
    .line 68
    iget-object p5, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {p0, p3}, Lcom/byazt/kyz/ve;->c(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p1, p5, p0, p2, v0}, Lcom/byazt/omf/my;-><init>(Landroid/content/Context;Lcom/byazt/nc/u;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 78
    .line 79
    invoke-virtual {p1, p3}, Lcom/byazt/omf/my;->c(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p2}, Lcom/byazt/kyz/ve;->c(Lcom/byazt/ete/ic;)Lcom/byazt/nc/yp;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    .line 87
    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p2, p4, p3, p1}, Lcom/byazt/rgb/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->initComponentEngine()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static synthetic a(Lcom/byazt/kyz/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/kyz/ve;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/kyz/ve;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/kyz/ve;->z:F

    return p1
.end method

.method private c()Landroid/view/View;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    .line 39
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/byazt/un/NativeVideoTsView;

    invoke-static {v1, v0, v2}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/byazt/kyz/ve;->tt(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/kyz/ve;)Landroid/view/View;
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/byazt/kyz/ve;->c()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/kyz/ve;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->tt(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/byazt/ete/ic;)Lcom/byazt/nc/yp;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget v3, p0, Lcom/byazt/kyz/ve;->sp:I

    if-eq v3, v2, :cond_5

    const/4 v2, 0x5

    if-eq v3, v2, :cond_3

    const/16 v0, 0x9

    if-eq v3, v0, :cond_2

    return-object v1

    .line 67
    :cond_2
    new-instance v0, Lcom/byazt/ouz/gr;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/byazt/ouz/gr;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 68
    new-instance v0, Lcom/byazt/ouz/zm;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/byazt/ouz/zm;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V

    return-object v0

    .line 69
    :cond_4
    new-instance v0, Lcom/byazt/ouz/gu;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/byazt/ouz/gu;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;I)V

    return-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 70
    new-instance v0, Lcom/byazt/tp/ve;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-direct {v0, v1, p1, v2}, Lcom/byazt/tp/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    return-object v0

    .line 71
    :cond_6
    new-instance v0, Lcom/byazt/tp/tt;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-direct {v0, v1, p1, v2}, Lcom/byazt/tp/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    return-object v0

    :cond_7
    :goto_1
    return-object v1
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    const-string v1, "embeded_ad"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "draw_ad"

    goto :goto_0

    :cond_1
    const-string v1, "stream"

    goto :goto_0

    :cond_2
    const-string v1, "interaction"

    goto :goto_0

    :cond_3
    const-string v1, "banner_ad"

    :cond_4
    :goto_0
    return-object v1
.end method

.method public static synthetic c(Lcom/byazt/kyz/ve;I)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 26
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 27
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 29
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 8

    .line 55
    iget-object v0, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 57
    :cond_0
    new-instance v7, Lcom/byazt/kyz/ve$10;

    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object v3

    iget v0, p0, Lcom/byazt/kyz/ve;->sp:I

    .line 58
    invoke-direct {p0, v0}, Lcom/byazt/kyz/ve;->c(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 59
    invoke-static {}, Lcom/byazt/xky/tt;->c()Lcom/byazt/dyf/c;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/byazt/kyz/ve$10;-><init>(Lcom/byazt/kyz/ve;Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    iput-object v7, p0, Lcom/byazt/kyz/ve;->n:Lcom/byazt/nc/sp;

    .line 60
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    check-cast v7, Lcom/byazt/dyf/tt;

    invoke-static {p1, v0, v7}, Lcom/byazt/tl/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dyf/tt;)V

    .line 61
    iget-object p1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/kyz/ve;->n:Lcom/byazt/nc/sp;

    const-class v1, Lcom/byazt/dyf/tt;

    invoke-static {p1, v0, v1}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/app/Dialog;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "dialog is null, please check"

    .line 72
    invoke-static {p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;)V

    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/byazt/kyz/ve;->uj:Landroid/app/Dialog;

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/byazt/kyz/ve;->yv:Lcom/byazt/sy/n;

    invoke-virtual {v0}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/byazt/sy/sp;->uj()V

    .line 32
    :cond_0
    instance-of v1, p1, Lcom/byazt/un/NativeVideoTsView;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, p1

    check-cast v1, Lcom/byazt/un/NativeVideoTsView;

    .line 34
    invoke-virtual {v1, v0}, Lcom/byazt/un/NativeVideoTsView;->setEasyPlayableEventSender(Lcom/byazt/sy/sp;)V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->yv:Lcom/byazt/sy/n;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/sy/n;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 10
    new-instance v7, Lcom/byazt/kyz/ve$4;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/byazt/kyz/ve$4;-><init>(Lcom/byazt/kyz/ve;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v7}, Lcom/byazt/bzd/x;->uj(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/view/ViewGroup;Ljava/util/List;[Lcom/byazt/ui/UpieImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;[",
            "Lcom/byazt/ui/UpieImageView;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 17
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 18
    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_0
    instance-of v3, v2, Lcom/byazt/ui/UpieImageView;

    if-eqz v3, :cond_1

    .line 20
    check-cast v2, Lcom/byazt/ui/UpieImageView;

    aput-object v2, p3, v0

    return-void

    .line 21
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 22
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2, p3}, Lcom/byazt/kyz/ve;->c(Landroid/view/ViewGroup;Ljava/util/List;[Lcom/byazt/ui/UpieImageView;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic c(Lcom/byazt/kyz/ve;Landroid/view/View;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->ve(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kyz/ve;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/kyz/ve;->tt(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/kyz/ve;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->tt(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .line 63
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    iget v1, p0, Lcom/byazt/kyz/ve;->sp:I

    iget-object v2, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1, v2, p1}, Lcom/byazt/ukr/yp;->c(ILcom/byazt/ete/ic;Z)V

    return-void
.end method

.method private static c(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return v1

    .line 13
    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 14
    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Lcom/byazt/kyz/ve;->c(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static synthetic c(Ljava/util/List;Landroid/view/View;)Z
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/byazt/kyz/ve;->tt(Ljava/util/List;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic da(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->eo:Lcom/byazt/lsp/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/kyz/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/kyz/ve;->sp:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/byazt/kyz/ve;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve;->t:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/kyz/ve;->uj:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->n:Lcom/byazt/nc/sp;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/byazt/nc/sp;->showDislikeDialog()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->c(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public static synthetic sl(Lcom/byazt/kyz/ve;)Lcom/byazt/sy/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->yv:Lcom/byazt/sy/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/kyz/ve;)Lcom/byazt/omf/my;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/kyz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/kyz/ve;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/kyz/ve;->m:F

    return p1
.end method

.method private tt(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/byazt/ui/UpieImageView;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 9
    invoke-direct {p0, p1, v1, v2}, Lcom/byazt/kyz/ve;->c(Landroid/view/ViewGroup;Ljava/util/List;[Lcom/byazt/ui/UpieImageView;)V

    aget-object p1, v2, v3

    if-eqz p1, :cond_0

    return-object p1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    .line 12
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-le v2, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-le v2, v4, :cond_2

    :goto_1
    move-object v0, p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/kyz/ve;)Landroid/view/ViewGroup;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private tt(Landroid/view/View;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/byazt/kyz/ve;->p:Lcom/byazt/sy/da;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/sy/da;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private tt(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 16
    iget-object v2, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 17
    iget-object v2, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 18
    iget-object v3, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {v3, p2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v5, v1, v0

    if-lez v5, :cond_2

    cmpl-float v5, p1, v0

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    cmpl-float v6, v2, v0

    if-lez v6, :cond_3

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-nez v5, :cond_4

    if-nez v3, :cond_4

    return-void

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v3, "ad_show_real_size"

    .line 20
    invoke-static {v0, v3}, Lcom/byazt/vif/uj;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/it/ve;

    move-result-object v0

    .line 21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "ad_width"

    float-to-double v5, v1

    .line 22
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "ad_height"

    float-to-double v4, p1

    .line 23
    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "image_width"

    float-to-double v1, v2

    .line 24
    invoke-virtual {v3, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "image_height"

    float-to-double v1, p2

    .line 25
    invoke-virtual {v3, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    iget-object p1, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/kyz/ve;Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->tt(Landroid/view/View;)V

    return-void
.end method

.method private tt(Z)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/byazt/un/NativeVideoTsView;->tt(ZZ)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/byazt/un/NativeVideoTsView;->setIsQuiet(Z)V

    return-void
.end method

.method private tt()Z
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    return v1

    .line 29
    :cond_1
    iget v0, p0, Lcom/byazt/kyz/ve;->x:I

    if-nez v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    iput v0, p0, Lcom/byazt/kyz/ve;->x:I

    .line 31
    :cond_2
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    iget v2, p0, Lcom/byazt/kyz/ve;->x:I

    invoke-virtual {v0, v2}, Lcom/byazt/ogz/sl;->sp(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private static tt(Ljava/util/List;Landroid/view/View;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x1

    if-ne v2, p1, :cond_1

    return v3

    .line 6
    :cond_1
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 7
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/byazt/kyz/ve;->c(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static synthetic u(Lcom/byazt/kyz/ve;)Lcom/byazt/dj/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->gt:Lcom/byazt/lsp/c;

    return-object p0
.end method

.method private uj()V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/kyz/ve;->t:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    iget-object v0, p0, Lcom/byazt/kyz/ve;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/byazt/kyz/ve;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private uj(Landroid/view/View;)V
    .locals 7

    const-string v0, "h"

    const-string v1, "w"

    const-string v2, "y"

    const-string v3, "x"

    .line 3
    iget-object v4, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/rgb/uj;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    iget-object v5, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object v5, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_0

    .line 9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 14
    :catch_1
    :goto_1
    invoke-static {}, Lcom/byazt/rgb/uj;->c()Lcom/byazt/lh/n;

    move-result-object p1

    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byazt/kyz/ve$5;

    invoke-direct {v1, p0, v4, v5}, Lcom/byazt/kyz/ve$5;-><init>(Lcom/byazt/kyz/ve;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    :cond_1
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/kyz/ve;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->uj(Landroid/view/View;)V

    return-void
.end method

.method private ve(Landroid/view/ViewGroup;)Lcom/byazt/un/NativeVideoTsView;
    .locals 4

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ado_tag"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/byazt/un/NativeVideoTsView;

    if-eqz v2, :cond_0

    .line 9
    check-cast v1, Lcom/byazt/un/NativeVideoTsView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/kyz/ve;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private ve()V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/kyz/ve;->my:Lcom/byazt/lsp/ve;

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-virtual {v2}, Lcom/byazt/dj/tt;->x()F

    move-result v2

    iget-object v3, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    .line 13
    invoke-virtual {v3}, Lcom/byazt/dj/tt;->i()F

    move-result v3

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/lsp/ve;->c(Landroid/view/View;FFZ)V

    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/kyz/ve;->my:Lcom/byazt/lsp/ve;

    if-eqz v0, :cond_2

    .line 16
    iget-object v1, p0, Lcom/byazt/kyz/ve;->t:Landroid/view/View;

    iget v2, p0, Lcom/byazt/kyz/ve;->z:F

    iget v3, p0, Lcom/byazt/kyz/ve;->m:F

    iget-object v4, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/lsp/ve;->c(Landroid/view/View;FFZ)V

    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    new-instance v1, Lcom/byazt/kyz/ve$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/byazt/kyz/ve$2;-><init>(Lcom/byazt/kyz/ve;Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lcom/byazt/nc/yp;->setExpressInteractionListener(Lcom/byazt/ft/tt;)V

    .line 18
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    invoke-virtual {v0}, Lcom/byazt/nc/yp;->render()V

    return-void
.end method

.method private ve(Landroid/view/View;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->iw()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->md:Lcom/byazt/sy/a;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/byazt/sy/a;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/kyz/ve;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/kyz/ve;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/ve;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->my:Lcom/byazt/lsp/ve;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/kyz/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/kyz/ve;->gr:Z

    if-nez v0, :cond_1

    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 44
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->ve(Landroid/view/ViewGroup;)Lcom/byazt/un/NativeVideoTsView;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_5

    .line 45
    iget p1, p0, Lcom/byazt/kyz/ve;->sp:I

    if-ne v1, p1, :cond_4

    .line 46
    iget-boolean p1, p0, Lcom/byazt/kyz/ve;->u:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->n()Z

    move-result p1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/byazt/kyz/ve;->yp:Z

    :goto_0
    invoke-virtual {v0, p1}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    return-void

    .line 47
    :cond_4
    iget-boolean p1, p0, Lcom/byazt/kyz/ve;->yp:Z

    invoke-virtual {v0, p1}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    return-void

    .line 48
    :cond_5
    new-instance v0, Lcom/byazt/un/NativeVideoTsView;

    iget-object v3, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    iget-object v4, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v2, p0, Lcom/byazt/kyz/ve;->sp:I

    invoke-static {v2}, Lcom/byazt/aas/nb;->tt(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/byazt/un/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;ZZLjava/lang/String;ZZ)V

    .line 49
    iget v2, p0, Lcom/byazt/kyz/ve;->sp:I

    if-ne v1, v2, :cond_7

    .line 50
    iget-boolean v1, p0, Lcom/byazt/kyz/ve;->u:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    invoke-virtual {v1}, Lcom/byazt/dj/tt;->n()Z

    move-result v1

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lcom/byazt/kyz/ve;->yp:Z

    :goto_1
    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    goto :goto_2

    .line 51
    :cond_7
    iget-boolean v1, p0, Lcom/byazt/kyz/ve;->yp:Z

    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    :goto_2
    const-string v1, "ado_tag"

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/kyz/ve;->d:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/omf/my;->tt()V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->yv:Lcom/byazt/sy/n;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/sy/n;->tt()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/kyz/ve;->p:Lcom/byazt/sy/da;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/byazt/sy/da;->c()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/byazt/kyz/ve;->md:Lcom/byazt/sy/a;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/byazt/sy/a;->c()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getLifecycleId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x2

    .line 58
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public finalize()V
    .locals 1
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
    iget-boolean v0, p0, Lcom/byazt/kyz/ve;->d:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Lcom/byazt/fh/uj;->c(I)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->dn()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/fh/uj;->c(I)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/byazt/kyz/ve;->rl:Landroid/widget/TextView;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    new-instance v1, Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/byazt/kyz/ve;->rl:Landroid/widget/TextView;

    .line 40
    .line 41
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    const/4 v2, -0x2

    .line 44
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/byazt/kyz/ve;->rl:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v1, p0, Lcom/byazt/kyz/ve;->rl:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1, v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Ljava/lang/String;Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/byazt/kyz/ve;->rl:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/byazt/aas/pf;->sp(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppCommentNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/n;->a()I

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

.method public getAppScore()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/n;->n()I

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

.method public getAppSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/ete/n;->sp()I

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

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getComplianceInfo()Lcom/byazt/ete/t;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/byazt/ete/t;

    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1}, Lcom/byazt/ete/t;-><init>(Lcom/byazt/ete/ic;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getComplianceInfo()Lcom/byazt/nc/ve;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getComplianceInfo()Lcom/byazt/ete/t;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ete/bx;->a(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/ete/bx;->a(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    return-object v0

    .line 119
    :cond_5
    return-object v1
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->n:Lcom/byazt/nc/sp;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->c(Landroid/app/Activity;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/byazt/kyz/ve;->n:Lcom/byazt/nc/sp;

    return-object p1
.end method

.method public getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
    .locals 2

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object v0

    new-instance v1, Lcom/byazt/kyz/ve$6;

    invoke-direct {v1, p0}, Lcom/byazt/kyz/ve$6;-><init>(Lcom/byazt/kyz/ve;)V

    invoke-static {v0, p1, p2, v1}, Lcom/byazt/pr/tt;->c(Lcom/byazt/vo/tt;Landroid/app/Dialog;[Ljava/lang/Integer;Lcom/byazt/pr/tt$c;)V

    .line 7
    new-instance p2, Lcom/byazt/kyz/ve$7;

    invoke-direct {p2, p0, p1}, Lcom/byazt/kyz/ve$7;-><init>(Lcom/byazt/kyz/ve;Landroid/app/Dialog;)V

    return-object p2

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dialog is null, please check"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Lcom/byazt/kyz/ve;->sp:I

    .line 19
    .line 20
    invoke-direct {p0, v1}, Lcom/byazt/kyz/ve;->c(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/vo/tt;->tt(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/byazt/vo/c;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lcom/byazt/vo/c;-><init>(Lcom/byazt/vo/tt;)V

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method

.method public getDownloadStatusController()Lcom/byazt/nc/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kyz/ve;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x4

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/byazt/kyz/ve;->a:Lcom/byazt/nc/n;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Lcom/byazt/kyz/ve$8;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/byazt/kyz/ve$8;-><init>(Lcom/byazt/kyz/ve;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/kyz/ve;->a:Lcom/byazt/nc/n;

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->a:Lcom/byazt/nc/n;

    .line 47
    .line 48
    return-object v0
.end method

.method public getIcon()Lcom/byazt/nc/t;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ete/bx;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {v4, v4, v1, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/byazt/ete/bx;->sl(Lcom/byazt/ete/ic;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/byazt/ete/bx;->da(Lcom/byazt/ete/ic;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v4, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    invoke-static {v4}, Lcom/byazt/ete/bx;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v0, v1, v4, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    invoke-static {v4, v4, v1, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/byazt/ete/zb;->c(Lcom/byazt/ete/zb;)Lcom/byazt/nc/t;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/nc/t;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/byazt/ete/ic;->tt(Lcom/byazt/ete/ic;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const-string v4, "Invalid invoke getImageList"

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, v4}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/byazt/ete/zb;

    .line 68
    .line 69
    invoke-static {v2}, Lcom/byazt/ete/zb;->c(Lcom/byazt/ete/zb;)Lcom/byazt/nc/t;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return-object v0
.end method

.method public getImageMode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

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
    invoke-static {v0}, Lcom/byazt/ete/ic;->tt(Lcom/byazt/ete/ic;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0xf

    .line 12
    .line 13
    const/4 v2, 0x5

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_6

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v4, 0x7d1

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    return v4

    .line 28
    :cond_1
    const/16 v5, 0x7d2

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    return v5

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/byazt/ete/bx;->t(Lcom/byazt/ete/ic;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/byazt/ete/bx;->u(Lcom/byazt/ete/ic;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-le v0, v1, :cond_3

    .line 54
    .line 55
    return v4

    .line 56
    :cond_3
    return v5

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_6

    .line 70
    .line 71
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-eqz v6, :cond_6

    .line 76
    .line 77
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Lcom/byazt/ete/zb;

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/byazt/ete/zb;->n()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    iget-object v6, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 90
    .line 91
    invoke-static {v6}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/ete/ic;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_6

    .line 96
    .line 97
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/byazt/ete/zb;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/byazt/ete/zb;->tt()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/byazt/ete/zb;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->ve()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-lt v1, v0, :cond_5

    .line 118
    .line 119
    return v4

    .line 120
    :cond_5
    return v5

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_8

    .line 134
    .line 135
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    if-eqz v4, :cond_8

    .line 140
    .line 141
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Lcom/byazt/ete/zb;

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/byazt/ete/zb;->n()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    iget-object v4, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 154
    .line 155
    invoke-static {v4}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/ete/ic;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_8

    .line 160
    .line 161
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Lcom/byazt/ete/zb;

    .line 166
    .line 167
    invoke-virtual {v4}, Lcom/byazt/ete/zb;->tt()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/byazt/ete/zb;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->ve()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-lt v4, v0, :cond_7

    .line 182
    .line 183
    return v2

    .line 184
    :cond_7
    return v1

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    return v0
.end method

.method public getInteractionManager()Lcom/byazt/omf/my;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

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

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ete/bx;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/ete/bx;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->e()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getSource()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getSource()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_5

    .line 135
    .line 136
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/byazt/ete/n;->ve()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getSource()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/byazt/kyz/ve;->getSource()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    return-object v0

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :cond_7
    return-object v1
.end method

.method public getVideoCoverImage()Lcom/byazt/nc/t;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v4, v4, v1, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/ete/bx;->x(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {v4, v4, v1, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/ete/bx;->u(Lcom/byazt/ete/ic;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/byazt/ete/bx;->t(Lcom/byazt/ete/ic;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v4, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/byazt/ete/bx;->x(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v0, v1, v4, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/byazt/ete/xd;->ve(Lcom/byazt/ete/ic;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-object v4, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 82
    .line 83
    invoke-static {v4}, Lcom/byazt/ete/xd;->uj(Lcom/byazt/ete/ic;)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v1, v4, v0, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_4

    .line 105
    .line 106
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Lcom/byazt/ete/zb;

    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/byazt/ete/zb;->n()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_4

    .line 123
    .line 124
    iget-object v5, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 125
    .line 126
    invoke-static {v5}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/ete/ic;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_4

    .line 131
    .line 132
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/byazt/ete/zb;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/byazt/ete/zb;->tt()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Lcom/byazt/ete/zb;

    .line 147
    .line 148
    invoke-virtual {v5}, Lcom/byazt/ete/zb;->ve()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/byazt/ete/zb;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v5, v1, v0, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0

    .line 167
    :cond_4
    invoke-static {v4, v4, v1, v2, v3}, Lcom/byazt/ete/zb;->c(IILjava/lang/String;D)Lcom/byazt/nc/t;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

.method public initComponentEngine()V
    .locals 5

    .line 1
    new-instance v0, Lcom/byazt/kyz/ve$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/kyz/ve$3;-><init>(Lcom/byazt/kyz/ve;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/byazt/sy/n;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/byazt/sy/n;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/dj/tt;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/byazt/kyz/ve;->yv:Lcom/byazt/sy/n;

    .line 18
    .line 19
    new-instance v1, Lcom/byazt/sy/da;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/byazt/sy/da;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/dj/tt;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/byazt/kyz/ve;->p:Lcom/byazt/sy/da;

    .line 31
    .line 32
    new-instance v1, Lcom/byazt/sy/a;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/byazt/kyz/ve;->i:Lcom/byazt/dj/tt;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/byazt/kyz/ve;->ve:Landroid/content/Context;

    .line 39
    .line 40
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/byazt/sy/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;Lcom/byazt/dj/tt;Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/byazt/kyz/ve;->md:Lcom/byazt/sy/a;

    .line 44
    .line 45
    return-void
.end method

.method public isAllowDevOperate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kyz/ve;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kyz/ve;->yp:Z

    .line 2
    .line 3
    return v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kyz/ve;->gu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/kyz/ve;->gu:Z

    .line 13
    .line 14
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;Lcom/byazt/am/uj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/lsp/c;",
            "Lcom/byazt/am/uj;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-nez p2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    const-string v2, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v0, v2}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/byazt/kyz/ve;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 13
    iget-object v2, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-nez p2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const-string v3, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-eqz p2, :cond_4

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    const-string v1, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v1}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 17
    invoke-virtual/range {v2 .. v8}, Lcom/byazt/kyz/ve;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/byazt/lsp/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 8
    iget-object v2, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-nez p2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const-string v3, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v2, v3}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-eqz p2, :cond_4

    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    const-string v1, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v1}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 12
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/kyz/ve;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 18
    iget-object v3, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const-string v4, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v3, v4}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-nez p3, :cond_3

    .line 19
    iget-object v3, p0, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    const-string v4, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v3, v4}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-eqz p3, :cond_4

    .line 20
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v0, 0x1

    :cond_4
    const-string v2, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v0, v2}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 22
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/kyz/ve;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v0, p4

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 23
    iget-object v5, v6, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    const-string v7, "container\u4e0d\u80fd\u4e3anull"

    invoke-static {v5, v7}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-nez v3, :cond_3

    .line 24
    iget-object v5, v6, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    :goto_3
    const-string v7, "clickView\u4e0d\u80fd\u4e3anull"

    invoke-static {v5, v7}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    if-eqz v3, :cond_4

    .line 25
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    const-string v7, "clickViews\u6570\u91cf\u5fc5\u987b\u5927\u4e8e\u7b49\u4e8e1"

    invoke-static {v5, v7}, Lcom/byazt/nr/my;->c(ZLjava/lang/String;)V

    .line 26
    iput-object v1, v6, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    move-object/from16 v5, p7

    .line 27
    iput-object v5, v6, Lcom/byazt/kyz/ve;->gt:Lcom/byazt/lsp/c;

    if-eqz v0, :cond_5

    .line 28
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    const/4 v2, 0x1

    .line 29
    :cond_5
    invoke-direct {v6, v2}, Lcom/byazt/kyz/ve;->c(Z)V

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/byazt/kyz/ve;->tt()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 31
    invoke-direct {v6, v3, v0}, Lcom/byazt/kyz/ve;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_6
    move-object/from16 v16, v0

    .line 32
    iget-object v0, v6, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v6, Lcom/byazt/kyz/ve;->sp:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_7

    if-eq v0, v4, :cond_7

    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    .line 33
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/byazt/kyz/ve;->uj()V

    .line 34
    :cond_8
    iget-object v0, v6, Lcom/byazt/kyz/ve;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    .line 35
    iget-object v0, v6, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    if-eqz v0, :cond_9

    .line 36
    iget-object v2, v6, Lcom/byazt/kyz/ve;->h:Lcom/byazt/un/c;

    invoke-virtual {v0, v2}, Lcom/byazt/omf/my;->c(Lcom/byazt/un/c;)V

    .line 37
    iget-object v7, v6, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    iget-object v15, v6, Lcom/byazt/kyz/ve;->eo:Lcom/byazt/lsp/c;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, v16

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v7 .. v15}, Lcom/byazt/omf/my;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;)V

    .line 38
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/byazt/kyz/ve;->c(Landroid/view/ViewGroup;)V

    .line 39
    :cond_a
    iget-object v0, v6, Lcom/byazt/kyz/ve;->n:Lcom/byazt/nc/sp;

    instance-of v2, v0, Lcom/byazt/dyf/tt;

    if-eqz v2, :cond_b

    .line 40
    check-cast v0, Lcom/byazt/dyf/tt;

    iget-object v2, v6, Lcom/byazt/kyz/ve;->sl:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/byazt/dyf/tt;->setMonitorView(Landroid/view/View;)V

    .line 41
    :cond_b
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->da()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 42
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v6, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/pro/CreativeContainer;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object/from16 v5, p5

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/byazt/kyz/ve;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_c
    return-void
.end method

.method public render()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/kyz/ve;->ve()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/dz/uj;->c()Lcom/byazt/dz/uj;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(Lcom/byazt/ete/ic;)Lcom/byazt/dz/uj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/byazt/kyz/ve;->sp:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->c(I)Lcom/byazt/dz/uj;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/byazt/kyz/ve;->x:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/dz/uj;->tt(I)Lcom/byazt/dz/uj;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setActivityForDownloadApp(Landroid/app/Activity;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/omf/my;->c(Landroid/app/Activity;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

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

.method public setAllowDevOperate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/kyz/ve;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/kyz/ve;->yp:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

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
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/yp;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/yp;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/byazt/kyz/ve$9;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/kyz/ve$9;-><init>(Lcom/byazt/kyz/ve;Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    nop

    .line 26
    :goto_0
    invoke-direct {p0, p1}, Lcom/byazt/kyz/ve;->c(Landroid/app/Dialog;)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-class v0, Landroid/app/Dialog;

    .line 38
    .line 39
    invoke-static {p2, p1, v0}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 2

    .line 1
    const-string v0, "downloadListener\u4e0d\u80fd\u4e3anull"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/byazt/nr/my;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/byazt/pop/c$c;->c(Lcom/byazt/ocd/ve;)Lcom/byazt/pop/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/byazt/omf/my;->c(Lcom/byazt/pop/c;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/kyz/ve;->da:Lcom/byazt/nc/yp;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public setEasyPlayWidgetListener(Lcom/byazt/lsp/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->yv:Lcom/byazt/sy/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/sy/n;->c(Lcom/byazt/lsp/tt;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setExpressRenderListener(Lcom/byazt/lsp/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve;->my:Lcom/byazt/lsp/ve;

    .line 2
    .line 3
    return-void
.end method

.method public setPluginAdInteractionListener(Lcom/byazt/lsp/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve;->eo:Lcom/byazt/lsp/c;

    .line 2
    .line 3
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/omf/my;->c(Ljava/lang/Double;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoViewEasyPlayableSender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/byazt/un/NativeVideoTsView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/kyz/ve;->yv:Lcom/byazt/sy/n;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setEasyPlayableEventSender(Lcom/byazt/sy/sp;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public setWeakReferenceTsView(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/un/NativeVideoTsView;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve;->zm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/kyz/ve;->c:Lcom/byazt/omf/my;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/omf/my;->c(Ljava/lang/ref/WeakReference;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

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
    iget-boolean v0, p0, Lcom/byazt/kyz/ve;->qy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/kyz/ve;->tt:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/byazt/aas/h;->c(Lcom/byazt/ete/ic;Ljava/lang/Double;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/byazt/kyz/ve;->qy:Z

    .line 13
    .line 14
    return-void
.end method
