.class public Lcom/byazt/omf/EmptyView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x20
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/omf/EmptyView$tt;,
        Lcom/byazt/omf/EmptyView$c;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/byazt/aas/c$tt;

.field public final da:Landroid/os/Handler;

.field public i:I

.field public m:Z

.field public my:Z

.field public n:Landroid/view/View;

.field public final nu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rh:I

.field public final sl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public t:I

.field public volatile tt:Z

.field public u:Lcom/byazt/ete/ic;

.field public uj:Lcom/byazt/omf/EmptyView$c;

.field public volatile ve:Z

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->ve:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/omf/EmptyView;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x3e8

    .line 4
    iput p1, p0, Lcom/byazt/omf/EmptyView;->t:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->z:Z

    .line 6
    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->m:Z

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/omf/EmptyView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput p1, p0, Lcom/byazt/omf/EmptyView;->rh:I

    .line 9
    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 10
    new-instance v0, Lcom/byazt/omf/EmptyView$6;

    invoke-direct {v0, p0}, Lcom/byazt/omf/EmptyView$6;-><init>(Lcom/byazt/omf/EmptyView;)V

    iput-object v0, p0, Lcom/byazt/omf/EmptyView;->c:Lcom/byazt/aas/c$tt;

    .line 11
    iput-object p2, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    .line 12
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance p1, Lcom/byazt/nr/d;

    invoke-static {}, Lcom/byazt/bzd/x;->tt()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    iput-object p1, p0, Lcom/byazt/omf/EmptyView;->da:Landroid/os/Handler;

    .line 14
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->jl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->z:Z

    .line 15
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->xx()Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/byazt/omf/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 17
    iput p3, p0, Lcom/byazt/omf/EmptyView;->t:I

    return-void
.end method

.method public static synthetic a(Lcom/byazt/omf/EmptyView;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/omf/EmptyView;->rh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/byazt/omf/EmptyView;->rh:I

    return v0
.end method

.method private a()Z
    .locals 3

    .line 2
    iget v0, p0, Lcom/byazt/omf/EmptyView;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic c(Lcom/byazt/omf/EmptyView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    return-object p0
.end method

.method private c(ZLandroid/os/Message;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/os/Message;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkWhenAddToWindow"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "show_send_type"

    if-eqz v0, :cond_0

    const/4 p2, 0x2

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "checkWhenClicked"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(ILjava/lang/String;)V
    .locals 3

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "is_success"

    if-nez p1, :cond_0

    .line 26
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    .line 28
    invoke-static {p1}, Lcom/byazt/omf/zb;->c(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v1, "error_code"

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "error_message"

    .line 30
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_0
    iget p1, p0, Lcom/byazt/omf/EmptyView;->rh:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "checking_cnt"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Lcom/byazt/omf/EmptyView;->u:Lcom/byazt/ete/ic;

    iget-object p2, p0, Lcom/byazt/omf/EmptyView;->yp:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/omf/EmptyView;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/omf/EmptyView;->c(ILjava/lang/String;)V

    return-void
.end method

.method private c(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    .line 33
    :try_start_0
    invoke-static {}, Lcom/byazt/aas/DeviceUtils;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_1
    return v0
.end method

.method public static synthetic c(Lcom/byazt/omf/EmptyView;Landroid/view/View;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/omf/EmptyView;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/byazt/omf/EmptyView;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->my:Z

    return p1
.end method

.method public static synthetic da(Lcom/byazt/omf/EmptyView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->uj()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getLifecycleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->u:Lcom/byazt/ete/ic;

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

.method public static synthetic i(Lcom/byazt/omf/EmptyView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->da:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/omf/EmptyView$4;

    invoke-direct {v1, p0}, Lcom/byazt/omf/EmptyView$4;-><init>(Lcom/byazt/omf/EmptyView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic n(Lcom/byazt/omf/EmptyView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/omf/EmptyView;->tt:Z

    return p0
.end method

.method public static synthetic sl(Lcom/byazt/omf/EmptyView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sp(Lcom/byazt/omf/EmptyView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/EmptyView;->da:Landroid/os/Handler;

    return-object p0
.end method

.method private sp()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/omf/EmptyView;->i:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic t(Lcom/byazt/omf/EmptyView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->a()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/omf/EmptyView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/omf/EmptyView;->i:I

    return p0
.end method

.method private tt()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/rgb/uj;->tt(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->uj:Lcom/byazt/omf/EmptyView$c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/byazt/omf/EmptyView$c;->c()V

    :cond_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/omf/EmptyView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->tt:Z

    return p1
.end method

.method private uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->da:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/omf/EmptyView$2;

    invoke-direct {v1, p0}, Lcom/byazt/omf/EmptyView$2;-><init>(Lcom/byazt/omf/EmptyView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/omf/EmptyView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/omf/EmptyView;->ve:Z

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/omf/EmptyView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ve()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/rgb/uj;->n(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->uj:Lcom/byazt/omf/EmptyView$c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/byazt/omf/EmptyView$c;->tt()V

    :cond_0
    return-void
.end method

.method public static synthetic ve(Lcom/byazt/omf/EmptyView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/omf/EmptyView;->ve:Z

    return p1
.end method

.method public static synthetic x(Lcom/byazt/omf/EmptyView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/omf/EmptyView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/byazt/omf/EmptyView;->c(Ljava/util/List;Lcom/byazt/hkv/uj;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->sp:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/byazt/omf/EmptyView;->c(Ljava/util/List;Lcom/byazt/hkv/uj;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->x:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/byazt/omf/EmptyView;->c(Ljava/util/List;Lcom/byazt/hkv/uj;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/String;)V
    .locals 2

    .line 13
    iput-object p1, p0, Lcom/byazt/omf/EmptyView;->u:Lcom/byazt/ete/ic;

    .line 14
    iput-object p2, p0, Lcom/byazt/omf/EmptyView;->yp:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 15
    invoke-static {p1}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 17
    iget v1, p0, Lcom/byazt/omf/EmptyView;->i:I

    if-nez v1, :cond_0

    .line 18
    iput v0, p0, Lcom/byazt/omf/EmptyView;->i:I

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/byazt/rgb/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->da:Landroid/os/Handler;

    new-instance v1, Lcom/byazt/omf/EmptyView$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/omf/EmptyView$3;-><init>(Lcom/byazt/omf/EmptyView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/util/List;Lcom/byazt/hkv/uj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/hkv/uj;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/byazt/nr/u;->tt(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
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
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/rgb/uj;->tt(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/byazt/omf/EmptyView;->z:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/byazt/omf/EmptyView;->m:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    instance-of v4, v3, Ljava/lang/String;

    .line 18
    .line 19
    const-string v5, "checkWhenClicked"

    .line 20
    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    const-string v4, "checkWhenAddToWindow"

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    :cond_2
    const/4 v3, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const/4 v3, 0x0

    .line 50
    :goto_2
    iget v4, p1, Landroid/os/Message;->what:I

    .line 51
    .line 52
    if-eq v4, v2, :cond_4

    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_4
    iget-boolean v4, p0, Lcom/byazt/omf/EmptyView;->tt:Z

    .line 57
    .line 58
    if-nez v4, :cond_5

    .line 59
    .line 60
    if-eqz v0, :cond_c

    .line 61
    .line 62
    if-eqz v3, :cond_c

    .line 63
    .line 64
    :cond_5
    iget-boolean v4, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 65
    .line 66
    if-nez v4, :cond_7

    .line 67
    .line 68
    iget-object v4, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    .line 69
    .line 70
    invoke-direct {p0, v4}, Lcom/byazt/omf/EmptyView;->c(Landroid/view/View;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_7

    .line 75
    .line 76
    iput-boolean v2, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->a()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_6

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4, v1}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    :cond_6
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->sp()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_7

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Lcom/byazt/rgb/uj;->ve(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_7
    const/16 v1, 0x14

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    if-nez v0, :cond_9

    .line 108
    .line 109
    iget-object p1, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    .line 110
    .line 111
    iget v0, p0, Lcom/byazt/omf/EmptyView;->i:I

    .line 112
    .line 113
    invoke-static {p1, v1, v0}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;II)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_8

    .line 118
    .line 119
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->n()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/byazt/omf/EmptyView;->uj:Lcom/byazt/omf/EmptyView$c;

    .line 123
    .line 124
    if-eqz p1, :cond_c

    .line 125
    .line 126
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    .line 127
    .line 128
    invoke-interface {p1, v0, v4}, Lcom/byazt/omf/EmptyView$c;->c(Landroid/view/View;Ljava/util/Map;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_8
    iget-object p1, p0, Lcom/byazt/omf/EmptyView;->da:Landroid/os/Handler;

    .line 133
    .line 134
    iget v0, p0, Lcom/byazt/omf/EmptyView;->t:I

    .line 135
    .line 136
    int-to-long v0, v0

    .line 137
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_9
    :try_start_0
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    .line 142
    .line 143
    iget v6, p0, Lcom/byazt/omf/EmptyView;->i:I

    .line 144
    .line 145
    invoke-static {v0, v1, v6}, Lcom/byazt/omf/zb;->c(Landroid/view/View;II)I

    .line 146
    .line 147
    .line 148
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    goto :goto_3

    .line 150
    :catchall_0
    move-exception v0

    .line 151
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    const/4 v0, 0x7

    .line 159
    :goto_3
    if-nez v0, :cond_a

    .line 160
    .line 161
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->n()V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/byazt/omf/EmptyView;->uj:Lcom/byazt/omf/EmptyView$c;

    .line 165
    .line 166
    if-eqz v1, :cond_b

    .line 167
    .line 168
    iget-object v1, p0, Lcom/byazt/omf/EmptyView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_b

    .line 175
    .line 176
    iget-object v1, p0, Lcom/byazt/omf/EmptyView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, v3, p1}, Lcom/byazt/omf/EmptyView;->c(ZLandroid/os/Message;)Ljava/util/Map;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/byazt/omf/EmptyView;->uj:Lcom/byazt/omf/EmptyView$c;

    .line 186
    .line 187
    iget-object v3, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    .line 188
    .line 189
    invoke-interface {v2, v3, v1}, Lcom/byazt/omf/EmptyView$c;->c(Landroid/view/View;Ljava/util/Map;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_a
    if-nez v3, :cond_b

    .line 194
    .line 195
    iget-object v1, p0, Lcom/byazt/omf/EmptyView;->da:Landroid/os/Handler;

    .line 196
    .line 197
    iget v3, p0, Lcom/byazt/omf/EmptyView;->t:I

    .line 198
    .line 199
    int-to-long v6, v3

    .line 200
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 201
    .line 202
    .line 203
    :cond_b
    :goto_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 204
    .line 205
    instance-of v1, p1, Ljava/lang/String;

    .line 206
    .line 207
    if-eqz v1, :cond_c

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_c

    .line 218
    .line 219
    invoke-direct {p0, v0, v4}, Lcom/byazt/omf/EmptyView;->c(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :cond_c
    :goto_5
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->uj()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/byazt/omf/EmptyView;->z:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "checkWhenAddToWindow"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/byazt/omf/EmptyView;->c(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->sp()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/byazt/rgb/uj;->ve(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->tt()V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/byazt/omf/EmptyView;->c:Lcom/byazt/aas/c$tt;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->c(Lcom/byazt/aas/c$tt;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->n()V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->tt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/byazt/rgb/uj;->uj(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->ve()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/byazt/omf/EmptyView;->c:Lcom/byazt/aas/c$tt;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->tt(Lcom/byazt/aas/c$tt;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x2

    .line 14
    :goto_0
    invoke-static {v0, v2}, Lcom/byazt/rgb/uj;->c(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->uj:Lcom/byazt/omf/EmptyView$c;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/byazt/omf/EmptyView$c;->c(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 27
    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/byazt/omf/EmptyView;->c(Landroid/view/View;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/byazt/omf/EmptyView;->getLifecycleId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/byazt/rgb/uj;->ve(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget-boolean p1, p0, Lcom/byazt/omf/EmptyView;->my:Z

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/byazt/omf/EmptyView;->n:Landroid/view/View;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    new-instance v0, Lcom/byazt/omf/EmptyView$1;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/byazt/omf/EmptyView$1;-><init>(Lcom/byazt/omf/EmptyView;)V

    .line 59
    .line 60
    .line 61
    const-wide/16 v1, 0x1f4

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public setAdType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/omf/EmptyView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setCallback(Lcom/byazt/omf/EmptyView$c;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/omf/EmptyView$tt;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/byazt/omf/EmptyView$tt;-><init>(Lcom/byazt/omf/EmptyView$c;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/omf/EmptyView;->uj:Lcom/byazt/omf/EmptyView$c;

    .line 7
    .line 8
    return-void
.end method

.method public setNeedCheckingShow(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/omf/EmptyView;->da:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v1, Lcom/byazt/omf/EmptyView$5;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/byazt/omf/EmptyView$5;-><init>(Lcom/byazt/omf/EmptyView;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setRefClickViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView;->a:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRefCreativeViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView;->sp:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRefDirectDownloadViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/EmptyView;->x:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
