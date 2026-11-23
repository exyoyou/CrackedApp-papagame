.class public Lcom/byazt/tp/tt$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/EmptyView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b4,
        0x5a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tp/tt;->c(Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/ouz/NativeExpressView;

.field public final synthetic uj:Lcom/byazt/tp/tt;

.field public final synthetic ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/tp/tt;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tp/tt$5;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tp/tt$5;->tt:Lcom/byazt/ouz/NativeExpressView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/tp/tt$5;->ve:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->da(Lcom/byazt/tp/tt;)V

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

    .line 9
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->u(Lcom/byazt/tp/tt;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->u(Lcom/byazt/tp/tt;)Ljava/util/Queue;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    iget-object v1, p0, Lcom/byazt/tp/tt$5;->tt:Lcom/byazt/ouz/NativeExpressView;

    iget-object v2, p0, Lcom/byazt/tp/tt$5;->c:Lcom/byazt/ete/ic;

    invoke-static {v0, v1, v2}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;Lcom/byazt/ouz/NativeExpressView;Lcom/byazt/ete/ic;)Ljava/util/Map;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string v1, "show_send_type"

    .line 12
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {p2}, Lcom/byazt/tp/tt;->yp(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "is_repeat"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {p2}, Lcom/byazt/tp/tt;->sl(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {p2}, Lcom/byazt/tp/tt;->t(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    .line 17
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {p2}, Lcom/byazt/tp/tt;->t(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->c:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v2}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v3}, Lcom/byazt/tp/tt;->z(Lcom/byazt/tp/tt;)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p2, v2, v0, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    .line 19
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/pf/c;->uj()V

    .line 20
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->ve:Lcom/byazt/ete/ic;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->eo()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/byazt/aas/cu;->c(I)V

    .line 21
    :cond_3
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/ogz/sl;->oq()Z

    move-result p2

    .line 22
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->yp(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    iget-object v1, v1, Lcom/byazt/tp/tt;->n:Lcom/byazt/ouz/c;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    if-eqz p2, :cond_5

    .line 24
    :cond_4
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->c:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->i()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/byazt/ouz/c;->tt(Landroid/view/View;I)V

    .line 25
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->yv()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/byazt/tp/tt$5;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 26
    invoke-static {}, Lcom/byazt/yxu/c;->c()Lcom/byazt/yxu/c;

    move-result-object p2

    iget-object v1, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    iget-object v1, v1, Lcom/byazt/tp/tt;->tt:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/tp/tt$5;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/byazt/yxu/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/byazt/tp/tt$5;->tt:Lcom/byazt/ouz/NativeExpressView;

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/byazt/tp/tt$5;->c:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/tp/tt$5;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->up()Z

    move-result v1

    invoke-static {p2, v0, p1, v1}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/view/View;Z)V

    .line 29
    :cond_7
    iget-object p1, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {p1}, Lcom/byazt/tp/tt;->x(Lcom/byazt/tp/tt;)V

    .line 30
    iget-object p1, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    iget-object p1, p1, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    iget-object p1, p1, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {p1}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->nu()V

    .line 32
    iget-object p1, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    iget-object p1, p1, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {p1}, Lcom/byazt/tp/c;->getCurView()Lcom/byazt/ouz/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->z()V

    :cond_8
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->x(Lcom/byazt/tp/tt;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    invoke-static {v0}, Lcom/byazt/tp/tt;->i(Lcom/byazt/tp/tt;)V

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    iget-object v1, p0, Lcom/byazt/tp/tt$5;->c:Lcom/byazt/ete/ic;

    invoke-static {v0, p1, v1}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;ZLcom/byazt/ete/ic;)V

    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;)Lcom/byazt/pop/ve;

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
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/tp/tt$5;->c:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/byazt/tp/tt;->c(Lcom/byazt/tp/tt;Lcom/byazt/ete/ic;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/tp/tt;->sl(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/tp/tt$5;->uj:Lcom/byazt/tp/tt;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/tp/tt;->t(Lcom/byazt/tp/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
