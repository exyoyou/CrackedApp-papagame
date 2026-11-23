.class public Lcom/byazt/fcd/ve$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iym/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x184,
        0x187
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/fcd/ve;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/fcd/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/fcd/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private c(Lcom/byazt/iym/n;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v0, p1}, Lcom/byazt/fcd/ve;->c(Lcom/byazt/fcd/ve;Lcom/byazt/iym/n;)Lcom/byazt/iym/n;

    .line 28
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v0}, Lcom/byazt/fcd/ve;->a(Lcom/byazt/fcd/ve;)Lcom/byazt/iym/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/iym/n;->tt(Z)V

    .line 29
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v0}, Lcom/byazt/fcd/ve;->a(Lcom/byazt/fcd/ve;)Lcom/byazt/iym/n;

    move-result-object v0

    new-instance v2, Lcom/byazt/fcd/ve$4$1;

    invoke-direct {v2, p0}, Lcom/byazt/fcd/ve$4$1;-><init>(Lcom/byazt/fcd/ve$4;)V

    invoke-virtual {v0, v2}, Lcom/byazt/iym/n;->c(Lcom/byazt/fcd/ve$c;)V

    .line 30
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-virtual {p1}, Lcom/byazt/iym/n;->nb()Z

    move-result v2

    iput-boolean v2, v0, Lcom/byazt/fcd/c;->m:Z

    .line 31
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v0}, Lcom/byazt/fcd/ve;->tt(Lcom/byazt/fcd/ve;)Lcom/byazt/dqg/uj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/iym/n;->pf()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/byazt/dqg/uj;->c(Z)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/byazt/fcd/c;->m:Z

    .line 33
    :goto_0
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->ve(Lcom/byazt/fcd/ve;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/fcd/c;->m:Z

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2}, Lcom/byazt/fcd/ve;->c(Lcom/byazt/fcd/ve;I)I

    .line 3
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v0}, Lcom/byazt/fcd/ve;->tt(Lcom/byazt/fcd/ve;)Lcom/byazt/dqg/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/dqg/uj;->tt()Lcom/byazt/kt/RecyclerView;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v2}, Lcom/byazt/kt/RecyclerView;->ve(I)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v0

    check-cast v0, Lcom/byazt/iym/n;

    .line 5
    invoke-direct {p0, v0}, Lcom/byazt/fcd/ve$4;->c(Lcom/byazt/iym/n;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v0}, Lcom/byazt/fcd/ve;->ve(Lcom/byazt/fcd/ve;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v0}, Lcom/byazt/fcd/ve;->uj(Lcom/byazt/fcd/ve;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0, v2, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(ZZ)V

    return-void
.end method

.method public c(ZI)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->tt(Lcom/byazt/fcd/ve;)Lcom/byazt/dqg/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/dqg/uj;->tt()Lcom/byazt/kt/RecyclerView;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Lcom/byazt/kt/RecyclerView;->ve(I)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    check-cast p1, Lcom/byazt/iym/n;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p2}, Lcom/byazt/iym/n;->tt(Z)V

    :cond_0
    return-void
.end method

.method public c(ZIZ)V
    .locals 4

    .line 9
    iget-object p3, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p3}, Lcom/byazt/fcd/ve;->n(Lcom/byazt/fcd/ve;)I

    move-result p3

    .line 10
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v0}, Lcom/byazt/fcd/ve;->a(Lcom/byazt/fcd/ve;)Lcom/byazt/iym/n;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    iget-object v0, v0, Lcom/byazt/fcd/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->lt()Lcom/byazt/kcl/ve;

    move-result-object v0

    add-int/2addr p3, v1

    iget-object v2, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {v2}, Lcom/byazt/fcd/ve;->a(Lcom/byazt/fcd/ve;)Lcom/byazt/iym/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/iym/n;->eo()J

    move-result-wide v2

    invoke-virtual {v0, p1, p3, v2, v3}, Lcom/byazt/kcl/ve;->c(ZIJ)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1, p2}, Lcom/byazt/fcd/ve;->tt(Lcom/byazt/fcd/ve;I)I

    .line 13
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->sp(Lcom/byazt/fcd/ve;)I

    move-result p3

    add-int/lit8 v0, p2, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {p1, p3}, Lcom/byazt/fcd/ve;->ve(Lcom/byazt/fcd/ve;I)I

    .line 14
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->x(Lcom/byazt/fcd/ve;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    rem-int p3, p2, p3

    invoke-static {p1, p3}, Lcom/byazt/fcd/ve;->c(Lcom/byazt/fcd/ve;I)I

    .line 15
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->tt(Lcom/byazt/fcd/ve;)Lcom/byazt/dqg/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/dqg/uj;->tt()Lcom/byazt/kt/RecyclerView;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p2}, Lcom/byazt/kt/RecyclerView;->ve(I)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    check-cast p1, Lcom/byazt/iym/n;

    .line 17
    invoke-direct {p0, p1}, Lcom/byazt/fcd/ve$4;->c(Lcom/byazt/iym/n;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->tt(Lcom/byazt/fcd/ve;)Lcom/byazt/dqg/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/dqg/uj;->a()V

    .line 19
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->i(Lcom/byazt/fcd/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->sl(Lcom/byazt/fcd/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    iget-object p2, p2, Lcom/byazt/fcd/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/lt;->yp(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p2}, Lcom/byazt/fcd/ve;->da(Lcom/byazt/fcd/ve;)I

    move-result p2

    add-int/2addr p2, v1

    iget-object p3, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p3}, Lcom/byazt/fcd/ve;->x(Lcom/byazt/fcd/ve;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-virtual {p1}, Lcom/byazt/fcd/ve;->r()V

    .line 22
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->uj(Lcom/byazt/fcd/ve;)V

    .line 23
    iget-object p1, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    iget-object p2, p1, Lcom/byazt/fcd/c;->rh:Lcom/byazt/kcl/n;

    invoke-static {p1}, Lcom/byazt/fcd/ve;->x(Lcom/byazt/fcd/ve;)Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Lcom/byazt/fcd/ve$4;->c:Lcom/byazt/fcd/ve;

    invoke-static {p3}, Lcom/byazt/fcd/ve;->da(Lcom/byazt/fcd/ve;)I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/iym/tt;

    invoke-virtual {p1}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/byazt/kcl/n;->c(Lcom/byazt/ete/ic;)V

    return-void
.end method
