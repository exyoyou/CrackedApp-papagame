.class public Lcom/byazt/omf/my;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x91
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/omf/my$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/ddx/n;

.field public final c:Lcom/byazt/ete/ic;

.field public cu:Lcom/byazt/omf/my$c;

.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/un/NativeVideoTsView;",
            ">;"
        }
    .end annotation
.end field

.field public final da:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile eo:Z

.field public gr:Landroid/view/View;

.field public gt:Lcom/byazt/pop/c;

.field public gu:Lcom/byazt/omf/EmptyView;

.field public h:Landroid/app/Activity;

.field public i:Ljava/lang/Double;

.field public m:Landroid/view/View;

.field public md:Lcom/byazt/hkv/c;

.field public my:Lcom/byazt/nr/zm;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public nu:Lcom/byazt/lsp/c;

.field public or:Lcom/byazt/pro/CreativeContainer;

.field public p:Lcom/byazt/hkv/c;

.field public volatile qy:Z

.field public rh:I

.field public volatile rl:J

.field public final sl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sp:Ljava/lang/String;

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final tt:Landroid/content/Context;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public uj:Lcom/byazt/nc/u;

.field public volatile ve:Lcom/byazt/pop/ve;

.field public x:Lcom/byazt/lsp/c;

.field public yp:Landroid/view/ViewGroup;

.field public volatile yv:Lcom/byazt/hkv/c;

.field public z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public zb:Lcom/byazt/un/c;

.field public volatile zm:Lcom/byazt/hkv/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/nc/u;Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/omf/my;->n:Ljava/util/List;

    .line 10
    .line 11
    const-string v0, "embeded_ad"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/omf/my;->sp:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/byazt/omf/my;->i:Ljava/lang/Double;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/byazt/omf/my;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/byazt/omf/my;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/omf/my;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/byazt/omf/my;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 v0, 0x5

    .line 48
    iput v0, p0, Lcom/byazt/omf/my;->rh:I

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    iput-wide v2, p0, Lcom/byazt/omf/my;->rl:J

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/byazt/omf/my;->qy:Z

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/byazt/omf/my;->eo:Z

    .line 58
    .line 59
    iput-object p2, p0, Lcom/byazt/omf/my;->uj:Lcom/byazt/nc/u;

    .line 60
    .line 61
    iput-object p3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/byazt/omf/my;->tt:Landroid/content/Context;

    .line 64
    .line 65
    iput-object p4, p0, Lcom/byazt/omf/my;->sp:Ljava/lang/String;

    .line 66
    .line 67
    new-instance p1, Lcom/byazt/ddx/n;

    .line 68
    .line 69
    invoke-direct {p1, p3, p4}, Lcom/byazt/ddx/n;-><init>(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/byazt/omf/my;->a:Lcom/byazt/ddx/n;

    .line 73
    .line 74
    return-void
.end method

.method private a()V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/byazt/omf/my;->n()Lcom/byazt/ete/sl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/sl;->tt()F

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/byazt/ete/sl;->ve()F

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Lcom/byazt/nr/zm;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/omf/x;->uj()Z

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Lcom/byazt/nr/zm;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->br()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/byazt/nr/zm;->tt(F)V

    .line 9
    iget-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->lv()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/nr/zm;->c(Lorg/json/JSONObject;)V

    .line 10
    iget-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->yx()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/nr/zm;->tt(Lorg/json/JSONObject;)V

    .line 11
    iget-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->pe()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/nr/zm;->a(I)V

    .line 12
    iget-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->cy()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/byazt/nr/zm;->ve(Lorg/json/JSONObject;)V

    .line 13
    iget-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->ge()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/byazt/nr/zm;->c(F)V

    .line 14
    iget-object v2, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/nr/zm;->n(I)V

    .line 15
    new-instance v2, Lcom/byazt/omf/my$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/byazt/omf/my$7;-><init>(Lcom/byazt/omf/my;FF)V

    .line 16
    iget-object v0, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    invoke-virtual {v0, v2}, Lcom/byazt/nr/zm;->c(Lcom/byazt/nr/zm$c;)V

    .line 17
    iget-object v0, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    iget-object v1, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->eo()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(I)Z

    return-void
.end method

.method public static synthetic a(Lcom/byazt/omf/my;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/my;->uj()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/omf/my;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/omf/my;->rl:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/omf/my;)Lcom/byazt/pop/ve;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/omf/my;Lcom/byazt/pop/ve;)Lcom/byazt/pop/ve;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    return-object p1
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/omf/my;->tt(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "onPause error:"

    const-string v2, "ShakeUtils"

    const-string v3, "click_listener"

    const-string v4, "shake_compat"

    const-string v5, "tag"

    const v6, 0x7e06fd95

    if-eqz v0, :cond_1

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v4, p0, Lcom/byazt/omf/my;->md:Lcom/byazt/hkv/c;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :try_start_0
    invoke-virtual {v0, v6, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/byazt/aas/or;->c(ILjava/lang/String;)V

    .line 79
    :goto_0
    iput-object v0, p0, Lcom/byazt/omf/my;->gr:Landroid/view/View;

    return-void

    .line 80
    :cond_1
    new-instance v0, Landroid/view/View;

    iget-object v7, p0, Lcom/byazt/omf/my;->tt:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v7, Lcom/byazt/omf/my$6;

    invoke-direct {v7, p0}, Lcom/byazt/omf/my$6;-><init>(Lcom/byazt/omf/my;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 82
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v4, p0, Lcom/byazt/omf/my;->md:Lcom/byazt/hkv/c;

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :try_start_1
    invoke-virtual {v0, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/byazt/aas/or;->c(ILjava/lang/String;)V

    .line 88
    :goto_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    iput-object v0, p0, Lcom/byazt/omf/my;->gr:Landroid/view/View;

    return-void
.end method

.method private c(Lcom/byazt/hkv/tt;Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;I)V
    .locals 7

    .line 59
    const-class v0, Lcom/byazt/vis/ve;

    invoke-virtual {p1, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/ve;

    .line 60
    invoke-virtual {p0, v0}, Lcom/byazt/omf/my;->c(Lcom/byazt/vis/ve;)V

    const/4 v0, 0x3

    if-eq p6, v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-class v1, Lcom/byazt/vis/c;

    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v1

    check-cast v1, Lcom/byazt/vis/c;

    invoke-virtual {v1, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 64
    :cond_0
    invoke-virtual {p1, p2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 65
    invoke-virtual {p1, p3}, Lcom/byazt/hkv/tt;->tt(Landroid/view/View;)V

    .line 66
    const-class p2, Lcom/byazt/nat/c;

    invoke-virtual {p1, p2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p3

    check-cast p3, Lcom/byazt/nat/c;

    iget-object v0, p0, Lcom/byazt/omf/my;->uj:Lcom/byazt/nc/u;

    invoke-virtual {p3, v0}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 67
    new-instance p3, Lcom/byazt/omf/my$5;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/byazt/omf/my$5;-><init>(Lcom/byazt/omf/my;Lcom/byazt/hkv/tt;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;I)V

    .line 68
    invoke-virtual {p1, p2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, p3}, Lcom/byazt/nat/c;->c(Lcom/byazt/nat/c$c;)V

    .line 69
    iget-object p1, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/byazt/nat/c$c;

    invoke-static {p1, p3, p2}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/omf/my;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/omf/my;->qy:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/omf/my;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/omf/my;)Lcom/byazt/omf/EmptyView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->gu:Lcom/byazt/omf/EmptyView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/omf/my;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/omf/my;->rl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic i(Lcom/byazt/omf/my;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/omf/my;->rh:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic m(Lcom/byazt/omf/my;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->i:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/omf/my;)Lcom/byazt/un/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->zb:Lcom/byazt/un/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/omf/my;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->h:Landroid/app/Activity;

    return-object p0
.end method

.method private n()Lcom/byazt/ete/sl;
    .locals 4

    .line 2
    iget v0, p0, Lcom/byazt/omf/my;->rh:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    if-nez v0, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->mn()Lcom/byazt/ete/sl;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/sl;->c()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    return-object v2

    :cond_3
    return-object v0
.end method

.method public static synthetic nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->uj:Lcom/byazt/nc/u;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/omf/my;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->z:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/omf/my;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/my;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic rl(Lcom/byazt/omf/my;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/omf/my;->qy:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sl(Lcom/byazt/omf/my;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/my;->ve()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/omf/my;)Lcom/byazt/nr/zm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    return-object p0
.end method

.method private sp()Ljava/util/Map;
    .locals 10
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
    iget-object v1, p0, Lcom/byazt/omf/my;->n:Ljava/util/List;

    const-string v2, "alpha"

    const-string v3, "height"

    const-string v4, "width"

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 5
    iget-object v5, p0, Lcom/byazt/omf/my;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_0

    .line 6
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_0
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {v7, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v5, "image_view"

    .line 11
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    :try_start_1
    iget-object v5, p0, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 15
    iget-object v5, p0, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    iget-object v5, p0, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const-string v5, "root_view"

    .line 17
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/byazt/omf/my;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/un/NativeVideoTsView;

    if-eqz v1, :cond_4

    .line 20
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 21
    :try_start_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {v5, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string v1, "video_view"

    .line 24
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public static synthetic t(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/omf/my;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->tt:Landroid/content/Context;

    return-object p0
.end method

.method private tt(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Ljava/util/Map;

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Ljava/util/Map;

    const-string v3, "tag"

    .line 7
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :cond_1
    :goto_1
    const-string v2, "shake_compat"

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic u(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/omf/my;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->sp:Ljava/lang/String;

    return-object p0
.end method

.method private uj()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    const-class v1, Lcom/byazt/nat/c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    invoke-virtual {v0, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/my;->yv:Lcom/byazt/hkv/c;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/omf/my;->yv:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    invoke-virtual {v0, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/omf/my;->md:Lcom/byazt/hkv/c;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    invoke-virtual {v0, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/byazt/omf/my;->p:Lcom/byazt/hkv/c;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v1, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 11
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    invoke-interface {v0}, Lcom/byazt/pop/ve;->c()V

    .line 12
    iget-object v0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    iget-object v1, p0, Lcom/byazt/omf/my;->gt:Lcom/byazt/pop/c;

    invoke-interface {v0, v1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private ve(Landroid/view/ViewGroup;)Lcom/byazt/omf/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lcom/byazt/omf/EmptyView;

    if-eqz v2, :cond_0

    .line 10
    check-cast v1, Lcom/byazt/omf/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/omf/my;->eo:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/byazt/omf/my;->uj()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/omf/my;->eo:Z

    .line 6
    new-instance v0, Lcom/byazt/omf/my$1;

    const-string v1, "feed_register_download"

    invoke-direct {v0, p0, v1}, Lcom/byazt/omf/my$1;-><init>(Lcom/byazt/omf/my;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic x(Lcom/byazt/omf/my;)Lcom/byazt/ddx/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->a:Lcom/byazt/ddx/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/omf/my;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/my;->sp()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/my;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()Lcom/byazt/pop/ve;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/byazt/omf/my;->rh:I

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    .line 6
    iput-object p1, p0, Lcom/byazt/omf/my;->h:Landroid/app/Activity;

    .line 7
    iget-object v0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .line 9
    iget-object p2, p0, Lcom/byazt/omf/my;->uj:Lcom/byazt/nc/u;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/byazt/nc/u;->getLifecycleId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/byazt/rgb/tt;->ve(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/byazt/omf/my;->x:Lcom/byazt/lsp/c;

    if-eqz p2, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/omf/my;->uj:Lcom/byazt/nc/u;

    invoke-virtual {p2, p1, v0}, Lcom/byazt/lsp/c;->tt(Landroid/view/View;Lcom/byazt/nc/u;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/byazt/omf/my;->yv:Lcom/byazt/hkv/c;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/byazt/omf/my;->yv:Lcom/byazt/hkv/c;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;)V
    .locals 16
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
            "Lcom/byazt/lsp/c;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    .line 16
    iput-object v12, v7, Lcom/byazt/omf/my;->x:Lcom/byazt/lsp/c;

    .line 17
    iput-object v8, v7, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, v7, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v7, Lcom/byazt/omf/my;->z:Ljava/lang/ref/WeakReference;

    move-object/from16 v13, p6

    .line 19
    iput-object v13, v7, Lcom/byazt/omf/my;->m:Landroid/view/View;

    move-object/from16 v14, p8

    .line 20
    iput-object v14, v7, Lcom/byazt/omf/my;->nu:Lcom/byazt/lsp/c;

    .line 21
    iget-object v0, v7, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;)V

    .line 22
    new-instance v0, Lcom/byazt/hkv/c;

    iget-object v1, v7, Lcom/byazt/omf/my;->tt:Landroid/content/Context;

    iget-object v2, v7, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    iget-object v3, v7, Lcom/byazt/omf/my;->sp:Ljava/lang/String;

    invoke-static {v3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, v7, Lcom/byazt/omf/my;->md:Lcom/byazt/hkv/c;

    .line 23
    new-instance v0, Lcom/byazt/omf/my$c;

    iget-object v1, v7, Lcom/byazt/omf/my;->a:Lcom/byazt/ddx/n;

    invoke-direct {v0, v1, v8}, Lcom/byazt/omf/my$c;-><init>(Lcom/byazt/ddx/n;Landroid/view/ViewGroup;)V

    iput-object v0, v7, Lcom/byazt/omf/my;->cu:Lcom/byazt/omf/my$c;

    .line 24
    invoke-virtual {v8, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 25
    invoke-direct/range {p0 .. p1}, Lcom/byazt/omf/my;->c(Landroid/view/ViewGroup;)V

    .line 26
    invoke-direct/range {p0 .. p1}, Lcom/byazt/omf/my;->ve(Landroid/view/ViewGroup;)Lcom/byazt/omf/EmptyView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 27
    iget-object v0, v7, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->if()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 29
    :goto_0
    new-instance v1, Lcom/byazt/omf/my$3;

    iget-object v2, v7, Lcom/byazt/omf/my;->tt:Landroid/content/Context;

    invoke-direct {v1, v7, v2, v8, v0}, Lcom/byazt/omf/my$3;-><init>(Lcom/byazt/omf/my;Landroid/content/Context;Landroid/view/View;I)V

    .line 30
    iget v0, v7, Lcom/byazt/omf/my;->rh:I

    invoke-virtual {v1, v0}, Lcom/byazt/omf/EmptyView;->setAdType(I)V

    .line 31
    iget-object v0, v7, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    iget-object v2, v7, Lcom/byazt/omf/my;->sp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/byazt/omf/EmptyView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v15, v1

    goto :goto_1

    :cond_1
    move-object v15, v0

    .line 33
    :goto_1
    invoke-virtual {v15}, Lcom/byazt/omf/EmptyView;->c()V

    .line 34
    invoke-virtual {v15, v9}, Lcom/byazt/omf/EmptyView;->setRefClickViews(Ljava/util/List;)V

    .line 35
    invoke-virtual {v15, v10}, Lcom/byazt/omf/EmptyView;->setRefCreativeViews(Ljava/util/List;)V

    .line 36
    invoke-virtual {v15, v11}, Lcom/byazt/omf/EmptyView;->setRefDirectDownloadViews(Ljava/util/List;)V

    .line 37
    iput-object v15, v7, Lcom/byazt/omf/my;->gu:Lcom/byazt/omf/EmptyView;

    .line 38
    iget-object v1, v7, Lcom/byazt/omf/my;->md:Lcom/byazt/hkv/c;

    iget-object v2, v7, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    iget-object v3, v7, Lcom/byazt/omf/my;->m:Landroid/view/View;

    iget-object v5, v7, Lcom/byazt/omf/my;->nu:Lcom/byazt/lsp/c;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v6}, Lcom/byazt/omf/my;->c(Lcom/byazt/hkv/tt;Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;I)V

    move-object/from16 v0, p2

    .line 39
    iput-object v0, v7, Lcom/byazt/omf/my;->n:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/byazt/hkv/tt;

    iget-object v1, v7, Lcom/byazt/omf/my;->tt:Landroid/content/Context;

    iget-object v2, v7, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    iget-object v3, v7, Lcom/byazt/omf/my;->sp:Ljava/lang/String;

    invoke-static {v3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/hkv/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, v7, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    .line 41
    iget-object v1, v7, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/byazt/omf/my;->c(Lcom/byazt/hkv/tt;Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;I)V

    .line 42
    new-instance v0, Lcom/byazt/hkv/c;

    iget-object v1, v7, Lcom/byazt/omf/my;->tt:Landroid/content/Context;

    iget-object v2, v7, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    iget-object v3, v7, Lcom/byazt/omf/my;->sp:Ljava/lang/String;

    invoke-static {v3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, v7, Lcom/byazt/omf/my;->yv:Lcom/byazt/hkv/c;

    .line 43
    iget-object v1, v7, Lcom/byazt/omf/my;->yv:Lcom/byazt/hkv/c;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v6}, Lcom/byazt/omf/my;->c(Lcom/byazt/hkv/tt;Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;I)V

    .line 44
    invoke-static/range {p5 .. p5}, Lcom/byazt/nr/u;->c(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/byazt/hkv/c;

    iget-object v1, v7, Lcom/byazt/omf/my;->tt:Landroid/content/Context;

    iget-object v2, v7, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    iget-object v3, v7, Lcom/byazt/omf/my;->sp:Ljava/lang/String;

    .line 46
    invoke-static {v3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, v7, Lcom/byazt/omf/my;->p:Lcom/byazt/hkv/c;

    const/4 v1, 0x2

    .line 47
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/tt;->c(I)V

    .line 48
    iget-object v1, v7, Lcom/byazt/omf/my;->p:Lcom/byazt/hkv/c;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/byazt/omf/my;->c(Lcom/byazt/hkv/tt;Landroid/view/ViewGroup;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;I)V

    .line 49
    :cond_2
    iget-object v0, v7, Lcom/byazt/omf/my;->or:Lcom/byazt/pro/CreativeContainer;

    if-eqz v0, :cond_3

    .line 50
    iget-object v1, v7, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_3
    iget-object v0, v7, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    invoke-virtual {v15, v9, v0}, Lcom/byazt/omf/EmptyView;->c(Ljava/util/List;Lcom/byazt/hkv/uj;)V

    .line 52
    iget-object v0, v7, Lcom/byazt/omf/my;->yv:Lcom/byazt/hkv/c;

    invoke-virtual {v15, v10, v0}, Lcom/byazt/omf/EmptyView;->c(Ljava/util/List;Lcom/byazt/hkv/uj;)V

    .line 53
    iget-object v0, v7, Lcom/byazt/omf/my;->p:Lcom/byazt/hkv/c;

    invoke-virtual {v15, v11, v0}, Lcom/byazt/omf/EmptyView;->c(Ljava/util/List;Lcom/byazt/hkv/uj;)V

    .line 54
    new-instance v0, Lcom/byazt/omf/my$4;

    invoke-direct {v0, v7, v8, v12}, Lcom/byazt/omf/my$4;-><init>(Lcom/byazt/omf/my;Landroid/view/ViewGroup;Lcom/byazt/lsp/c;)V

    invoke-virtual {v15, v0}, Lcom/byazt/omf/EmptyView;->setCallback(Lcom/byazt/omf/EmptyView$c;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {v15, v0}, Lcom/byazt/omf/EmptyView;->setNeedCheckingShow(Z)V

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/byazt/omf/my;->ve()V

    return-void
.end method

.method public c(Lcom/byazt/nc/u;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/omf/my;->uj:Lcom/byazt/nc/u;

    return-void
.end method

.method public c(Lcom/byazt/pop/c;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/byazt/omf/my;->gt:Lcom/byazt/pop/c;

    return-void
.end method

.method public c(Lcom/byazt/pro/CreativeContainer;)V
    .locals 1

    .line 12
    iput-object p1, p0, Lcom/byazt/omf/my;->or:Lcom/byazt/pro/CreativeContainer;

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/byazt/omf/my;->or:Lcom/byazt/pro/CreativeContainer;

    iget-object v0, p0, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/un/c;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/byazt/omf/my;->zb:Lcom/byazt/un/c;

    return-void
.end method

.method public c(Lcom/byazt/vis/ve;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/byazt/omf/my$8;

    invoke-direct {v0, p0, p1}, Lcom/byazt/omf/my$8;-><init>(Lcom/byazt/omf/my;Lcom/byazt/vis/ve;)V

    invoke-virtual {p1, v0}, Lcom/byazt/vis/ve;->c(Lcom/byazt/vis/ve$c;)V

    return-void
.end method

.method public c(Ljava/lang/Double;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/byazt/omf/my;->i:Ljava/lang/Double;

    return-void
.end method

.method public c(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/un/NativeVideoTsView;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/byazt/omf/my;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public tt()V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/byazt/omf/my;->ve:Lcom/byazt/pop/ve;

    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/my;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    .line 17
    iget-object v1, p0, Lcom/byazt/omf/my;->gu:Lcom/byazt/omf/EmptyView;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 18
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/byazt/omf/my$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/byazt/omf/my$9;-><init>(Lcom/byazt/omf/my;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    iget-object v1, p0, Lcom/byazt/omf/my;->cu:Lcom/byazt/omf/my$c;

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/byazt/omf/my;->gr:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 22
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/byazt/omf/my$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/byazt/omf/my$10;-><init>(Lcom/byazt/omf/my;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_3
    iget-object v1, p0, Lcom/byazt/omf/my;->my:Lcom/byazt/nr/zm;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 24
    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->eo()I

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/byazt/nr/zm;->tt(I)V

    .line 25
    :cond_5
    iget-object v1, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->eo()I

    move-result v2

    :cond_6
    invoke-static {v2}, Lcom/byazt/aas/cu;->tt(I)V

    .line 26
    iget-object v1, p0, Lcom/byazt/omf/my;->or:Lcom/byazt/pro/CreativeContainer;

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_7
    iget v1, p0, Lcom/byazt/omf/my;->rh:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    iget-object v2, p0, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    .line 29
    invoke-static {v1}, Lcom/byazt/qqc/c;->uj(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 30
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/omf/my;->yp:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/omf/my;->c:Lcom/byazt/ete/ic;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/byazt/qqc/ve;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    :cond_8
    if-eqz v0, :cond_9

    .line 31
    iget-object v1, p0, Lcom/byazt/omf/my;->cu:Lcom/byazt/omf/my$c;

    if-eqz v1, :cond_9

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 33
    :cond_9
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byazt/omf/my$2;

    invoke-direct {v1, p0}, Lcom/byazt/omf/my$2;-><init>(Lcom/byazt/omf/my;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tt(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/omf/my;->zm:Lcom/byazt/hkv/tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    :cond_0
    return-void
.end method
