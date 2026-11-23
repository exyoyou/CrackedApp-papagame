.class public Lcom/byazt/ouz/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ouz/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x42
    }
.end annotation


# instance fields
.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/byazt/ouz/sl;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/t;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/ouz/sl;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->a()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    .line 24
    .line 25
    new-instance v1, Lcom/byazt/ouz/t$11;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/byazt/ouz/t$11;-><init>(Lcom/byazt/ouz/t;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public c()J
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->c()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c(F)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(F)V

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$7;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$7;-><init>(Lcom/byazt/ouz/t;F)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(FFFFI)V
    .locals 9

    .line 14
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/byazt/ouz/sl;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/byazt/ouz/sl;->c(FFFFI)V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v8, Lcom/byazt/ouz/t$18;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/ouz/t$18;-><init>(Lcom/byazt/ouz/t;FFFFI)V

    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(I)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$13;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$13;-><init>(Lcom/byazt/ouz/t;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1, p2}, Lcom/byazt/ouz/sl;->c(ILjava/lang/String;)V

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ouz/t$5;-><init>(Lcom/byazt/ouz/t;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(Lcom/byazt/ete/ic;)V

    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$10;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$10;-><init>(Lcom/byazt/ouz/t;Lcom/byazt/ete/ic;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/byazt/ouz/sl;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 3
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->c(Z)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$1;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$1;-><init>(Lcom/byazt/ouz/t;Z)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public da()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/ouz/sl;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->da()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    .line 24
    .line 25
    new-instance v1, Lcom/byazt/ouz/t$16;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/byazt/ouz/t$16;-><init>(Lcom/byazt/ouz/t;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/ouz/sl;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->i()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    .line 24
    .line 25
    new-instance v1, Lcom/byazt/ouz/t$15;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/byazt/ouz/t$15;-><init>(Lcom/byazt/ouz/t;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public n()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->n()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$4;

    invoke-direct {v1, p0}, Lcom/byazt/ouz/t$4;-><init>(Lcom/byazt/ouz/t;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->n(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$17;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$17;-><init>(Lcom/byazt/ouz/t;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/ouz/sl;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->setPauseFromExpressView(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    .line 24
    .line 25
    new-instance v1, Lcom/byazt/ouz/t$6;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$6;-><init>(Lcom/byazt/ouz/t;Z)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public sl()Lcom/byazt/ouz/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/byazt/ouz/sl;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public sp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/ouz/sl;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->sp()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    .line 24
    .line 25
    new-instance v1, Lcom/byazt/ouz/t$12;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/byazt/ouz/t$12;-><init>(Lcom/byazt/ouz/t;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->tt()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tt(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->tt(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$3;-><init>(Lcom/byazt/ouz/t;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->uj()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$2;

    invoke-direct {v1, p0}, Lcom/byazt/ouz/t$2;-><init>(Lcom/byazt/ouz/t;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public uj(I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->uj(I)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$9;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$9;-><init>(Lcom/byazt/ouz/t;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0}, Lcom/byazt/ouz/sl;->ve()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ve(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ouz/sl;

    invoke-interface {v0, p1}, Lcom/byazt/ouz/sl;->ve(I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    new-instance v1, Lcom/byazt/ouz/t$8;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/t$8;-><init>(Lcom/byazt/ouz/t;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/t;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/byazt/ouz/sl;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/ouz/sl;->x()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/t;->tt:Ljava/util/Queue;

    .line 24
    .line 25
    new-instance v1, Lcom/byazt/ouz/t$14;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/byazt/ouz/t$14;-><init>(Lcom/byazt/ouz/t;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
