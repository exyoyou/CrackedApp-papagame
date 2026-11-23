.class public Lcom/byazt/omf/my$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/EmptyView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0x93a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/omf/my;->c(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;Lcom/byazt/lsp/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic tt:Lcom/byazt/lsp/c;

.field public final synthetic ve:Lcom/byazt/omf/my;


# direct methods
.method public constructor <init>(Lcom/byazt/omf/my;Landroid/view/ViewGroup;Lcom/byazt/lsp/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/omf/my$4;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/omf/my$4;->tt:Lcom/byazt/lsp/c;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->sl(Lcom/byazt/omf/my;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->i(Lcom/byazt/omf/my;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 11
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v1}, Lcom/byazt/omf/my;->da(Lcom/byazt/omf/my;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v3}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/aas/nb;->zm(Lcom/byazt/ete/ic;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/qqc/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->x(Lcom/byazt/omf/my;)Lcom/byazt/ddx/n;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/omf/my$4;->c:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;)F

    move-result v1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/byazt/ddx/n;->c(FI)V

    return-void
.end method

.method public c(Landroid/view/View;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->i(Lcom/byazt/omf/my;)I

    move-result p1

    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/vvt/c;->c(ILcom/byazt/ete/ic;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->sl(Lcom/byazt/omf/my;)V

    .line 15
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->x(Lcom/byazt/omf/my;)Lcom/byazt/ddx/n;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/omf/my$4;->c:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;)F

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ddx/n;->c(FI)V

    .line 16
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->yp(Lcom/byazt/omf/my;)Ljava/util/Map;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->z(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_repeat"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string v0, "show_send_type"

    .line 18
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->z(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->t(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->u(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 23
    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->u(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object p2

    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v2}, Lcom/byazt/omf/my;->uj(Lcom/byazt/omf/my;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v3}, Lcom/byazt/omf/my;->m(Lcom/byazt/omf/my;)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p2, v2, p1, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    .line 25
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/pf/c;->uj()V

    .line 26
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->eo()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/byazt/aas/cu;->c(I)V

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/byazt/omf/my$4;->tt:Lcom/byazt/lsp/c;

    if-eqz p1, :cond_6

    .line 28
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->oq()Z

    move-result p1

    .line 29
    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->z(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_5

    .line 30
    :cond_3
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/nc/u;->getLifecycleId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1, v1}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;Z)V

    .line 31
    iget-object p1, p0, Lcom/byazt/omf/my$4;->tt:Lcom/byazt/lsp/c;

    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->nu(Lcom/byazt/omf/my;)Lcom/byazt/nc/u;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/lsp/c;->c(Lcom/byazt/nc/u;)V

    .line 32
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yv()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 33
    invoke-static {}, Lcom/byazt/yxu/c;->c()Lcom/byazt/yxu/c;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->tt(Lcom/byazt/omf/my;)Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/byazt/yxu/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    :cond_5
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/byazt/omf/my;->c(Lcom/byazt/omf/my;J)J

    .line 35
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->rh(Lcom/byazt/omf/my;)V

    .line 36
    :cond_6
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->my(Lcom/byazt/omf/my;)Lcom/byazt/un/c;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 37
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->my(Lcom/byazt/omf/my;)Lcom/byazt/un/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/un/c;->c()V

    .line 38
    :cond_7
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->u(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->gt(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_9

    .line 39
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->gt(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    iget-object p1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {p2}, Lcom/byazt/omf/my;->uj(Lcom/byazt/omf/my;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/byazt/omf/my$4;->c:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v3}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v3}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->up()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    invoke-static {p1, p2, v2, v0}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/view/View;Z)V

    :cond_9
    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->x(Lcom/byazt/omf/my;)Lcom/byazt/ddx/n;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/omf/my$4;->c:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;)F

    move-result v1

    if-eqz p1, :cond_0

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ddx/n;->c(FI)V

    .line 2
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->sp(Lcom/byazt/omf/my;)Lcom/byazt/nr/zm;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3
    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->eo()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->c(I)Z

    goto :goto_1

    .line 4
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->eo()I

    move-result v1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/byazt/nr/zm;->tt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShakeUtils"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->i(Lcom/byazt/omf/my;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    if-eqz p1, :cond_5

    .line 7
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->da(Lcom/byazt/omf/my;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/aas/nb;->zm(Lcom/byazt/ete/ic;)Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/qqc/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    return-void

    .line 8
    :cond_5
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v0}, Lcom/byazt/omf/my;->da(Lcom/byazt/omf/my;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    invoke-static {v1}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/qqc/ve;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    :cond_6
    return-void
.end method

.method public tt()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/omf/my;->c(Lcom/byazt/omf/my;)Lcom/byazt/pop/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/omf/my;->c(Lcom/byazt/omf/my;)Lcom/byazt/pop/ve;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/omf/my;->sp(Lcom/byazt/omf/my;)Lcom/byazt/nr/zm;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/byazt/omf/my;->sp(Lcom/byazt/omf/my;)Lcom/byazt/nr/zm;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->eo()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    .line 53
    :goto_0
    invoke-virtual {v1, v2}, Lcom/byazt/nr/zm;->tt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "onPause error:"

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "ShakeUtils"

    .line 77
    .line 78
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/byazt/omf/my;->t(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/byazt/omf/my;->u(Lcom/byazt/omf/my;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/byazt/omf/my;->i(Lcom/byazt/omf/my;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/16 v1, 0x9

    .line 106
    .line 107
    if-ne v0, v1, :cond_3

    .line 108
    .line 109
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 114
    .line 115
    invoke-static {v1}, Lcom/byazt/omf/my;->da(Lcom/byazt/omf/my;)Landroid/view/ViewGroup;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/byazt/omf/my;->ve(Lcom/byazt/omf/my;)Lcom/byazt/ete/ic;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const/4 v3, 0x1

    .line 130
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/qqc/ve;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object v0, p0, Lcom/byazt/omf/my$4;->ve:Lcom/byazt/omf/my;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/byazt/omf/my;->x(Lcom/byazt/omf/my;)Lcom/byazt/ddx/n;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/byazt/omf/my$4;->c:Landroid/view/ViewGroup;

    .line 140
    .line 141
    invoke-static {v1}, Lcom/byazt/omf/zb;->tt(Landroid/view/View;)F

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    const/16 v2, 0xf

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ddx/n;->c(FI)V

    .line 148
    .line 149
    .line 150
    return-void
.end method
