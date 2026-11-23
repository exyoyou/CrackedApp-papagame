.class public Lcom/byazt/uo/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/EmptyView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x68
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/c;->sl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/uo/c;

.field public volatile tt:Z


# direct methods
.method public constructor <init>(Lcom/byazt/uo/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/uo/c$7;->tt:Z

    .line 8
    .line 9
    return-void
.end method

.method private ve()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/uo/c$7;->tt:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/byazt/pop/ve;->c()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eq v2, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-static {v0, v1}, Lcom/byazt/uo/c;->tt(Lcom/byazt/uo/c;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :cond_1
    return-void

    .line 35
    :cond_2
    iput-boolean v1, p0, Lcom/byazt/uo/c$7;->tt:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x4

    .line 46
    if-ne v0, v1, :cond_3

    .line 47
    .line 48
    new-instance v0, Lcom/byazt/uo/c$7$1;

    .line 49
    .line 50
    const-string v1, "splash_register_download"

    .line 51
    .line 52
    invoke-direct {v0, p0, v1}, Lcom/byazt/uo/c$7$1;-><init>(Lcom/byazt/uo/c$7;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/byazt/uo/c$7;->ve()V

    .line 6
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/byazt/uo/c;->c(Lcom/byazt/uo/c;I)V

    return-void
.end method

.method public c(Landroid/view/View;Ljava/util/Map;)V
    .locals 5
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

    .line 7
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v1, v0, Lcom/byazt/uo/c;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/uo/c;->ve(Z)V

    .line 8
    invoke-direct {p0}, Lcom/byazt/uo/c$7;->ve()V

    .line 9
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/byazt/uo/c;->c(Lcom/byazt/uo/c;I)V

    .line 10
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/byazt/uo/c;->m:J

    .line 11
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->sp:Lcom/byazt/uo/c$tt;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lcom/byazt/uo/c$tt;->onShow()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v1, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/byazt/uo/c;->nu:Lcom/byazt/im/a;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/byazt/im/a;->n()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/byazt/ete/ic;->da(Z)V

    .line 15
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v2, v2, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/ogz/sl;->x(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cache_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v1, v0, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    iget v0, v0, Lcom/byazt/uo/c;->cu:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "splash_show_time_type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "show_send_type"

    .line 17
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v1, v1, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_2
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v0, p2, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    iget-object p2, p2, Lcom/byazt/uo/c;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "is_repeat"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object p2, p2, Lcom/byazt/uo/c;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-static {p2}, Lcom/byazt/uo/c;->ve(Lcom/byazt/uo/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_4

    .line 22
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-static {p2}, Lcom/byazt/uo/c;->ve(Lcom/byazt/uo/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v2, p2, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/uo/c;->uj(Lcom/byazt/uo/c;)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v4, v3, Lcom/byazt/uo/c;->my:Ljava/util/Map;

    invoke-static {v3}, Lcom/byazt/uo/c;->n(Lcom/byazt/uo/c;)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, p2, v4, v3}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    .line 24
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/pf/c;->uj()V

    .line 25
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object p2, p2, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->eo()I

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/byazt/aas/cu;->c(I)V

    .line 26
    :cond_4
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-static {p2}, Lcom/byazt/uo/c;->a(Lcom/byazt/uo/c;)V

    .line 27
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-static {p2}, Lcom/byazt/uo/c;->sp(Lcom/byazt/uo/c;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 28
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-static {p2}, Lcom/byazt/uo/c;->x(Lcom/byazt/uo/c;)V

    .line 29
    :cond_5
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v2, p2, Lcom/byazt/uo/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/byazt/uo/c;->tt(Z)V

    .line 30
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/ogz/sl;->oq()Z

    move-result p2

    .line 31
    iget-object v2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v3, v2, Lcom/byazt/uo/c;->x:Lcom/byazt/vw/c;

    if-eqz v3, :cond_a

    .line 32
    iget-object v2, v2, Lcom/byazt/uo/c;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p2, :cond_a

    .line 33
    :cond_6
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v3, p2, Lcom/byazt/uo/c;->x:Lcom/byazt/vw/c;

    invoke-virtual {v3, p2}, Lcom/byazt/vw/c;->c(Lcom/byazt/nc/tt;)V

    .line 34
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object p2, p2, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->yv()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object p2, p2, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 35
    invoke-static {}, Lcom/byazt/yxu/c;->c()Lcom/byazt/yxu/c;

    move-result-object p2

    iget-object v3, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-static {v3}, Lcom/byazt/uo/c;->c(Lcom/byazt/uo/c;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v4, v4, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v4}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/byazt/yxu/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    if-nez v2, :cond_a

    if-eqz p1, :cond_8

    goto :goto_1

    .line 36
    :cond_8
    iget-object p1, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object p1, p1, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    :goto_1
    if-eqz p1, :cond_a

    .line 37
    iget-object p2, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v2, p2, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/uo/c;->uj(Lcom/byazt/uo/c;)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v3, v3, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->up()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-static {v2, p2, p1, v1}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/view/View;Z)V

    .line 38
    :cond_a
    iget-object p1, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-static {p1}, Lcom/byazt/uo/c;->i(Lcom/byazt/uo/c;)V

    .line 39
    iget-object p1, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object p1, p1, Lcom/byazt/uo/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    iget-object p1, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object p1, p1, Lcom/byazt/uo/c;->c:Lcom/byazt/cc/TsView;

    if-eqz p1, :cond_b

    .line 41
    invoke-virtual {p1, v0}, Lcom/byazt/cc/TsView;->setIsShowSuccess(Z)V

    .line 42
    :cond_b
    iget-object p1, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    invoke-virtual {p1, v0}, Lcom/byazt/uo/c;->c(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    iget-object v0, v0, Lcom/byazt/uo/c;->ve:Lcom/byazt/pop/ve;

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    if-eqz p1, :cond_2

    const/16 p1, 0xc

    goto :goto_1

    :cond_2
    const/16 p1, 0xd

    :goto_1
    invoke-static {v0, p1}, Lcom/byazt/uo/c;->c(Lcom/byazt/uo/c;I)V

    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uo/c$7;->c:Lcom/byazt/uo/c;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/uo/c;->c(Lcom/byazt/uo/c;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
