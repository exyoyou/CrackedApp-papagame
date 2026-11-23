.class public Lcom/byazt/un/a$8;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x18f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/un/a;->zb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/un/a;

.field public final tt:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/byazt/un/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/un/a$8;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/a$8;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->i()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x4

    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/un/a;->n(Lcom/byazt/un/a;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/byazt/un/a;->a(Lcom/byazt/un/a;)Lcom/byazt/un/sp;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-class v2, Lcom/byazt/un/sp;

    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a$8;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/byazt/un/a;->d:Lcom/byazt/pop/ve;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/un/a;->uj(Lcom/byazt/un/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/un/a$8;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/un/a;->uj(Lcom/byazt/un/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/un/a$8;->tt()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/un/a$8;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/un/a$8;->tt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/a$8;->c:Lcom/byazt/un/a;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/byazt/un/a;->d:Lcom/byazt/pop/ve;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/byazt/pop/ve;->tt()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
