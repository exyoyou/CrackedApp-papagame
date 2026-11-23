.class public Lcom/byazt/kcl/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0xf
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Z

.field public n:Lcom/byazt/kcl/n;

.field public final tt:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public uj:Lcom/byazt/kcl/tt;

.field public ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/kcl/uj;->a:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/kcl/uj;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/kcl/uj;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/kcl/uj;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/kcl/uj;->uj()Z

    :cond_1
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/kcl/tt;->tt(II)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/byazt/kcl/uj;->ve:Lcom/byazt/ete/ic;

    return-void
.end method

.method public c(Lcom/byazt/kcl/tt;Lcom/byazt/ete/ic;Ljava/lang/String;Lcom/byazt/kcl/n;)V
    .locals 0

    .line 1
    iget-boolean p3, p0, Lcom/byazt/kcl/uj;->a:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lcom/byazt/kcl/uj;->a:Z

    .line 3
    iput-object p1, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    .line 4
    iput-object p2, p0, Lcom/byazt/kcl/uj;->ve:Lcom/byazt/ete/ic;

    .line 5
    iput-object p4, p0, Lcom/byazt/kcl/uj;->n:Lcom/byazt/kcl/n;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    iput-boolean p1, p0, Lcom/byazt/kcl/uj;->c:Z

    .line 11
    iget-object v0, p0, Lcom/byazt/kcl/uj;->n:Lcom/byazt/kcl/n;

    invoke-virtual {v0, p1}, Lcom/byazt/kcl/n;->uj(Z)V

    .line 12
    iget-object p1, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    iget-boolean v0, p0, Lcom/byazt/kcl/uj;->c:Z

    invoke-virtual {p1, v0}, Lcom/byazt/kcl/tt;->c(Z)V

    return-void
.end method

.method public c(ZZ)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->zm()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/byazt/kcl/uj;->c(Z)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/byazt/kcl/uj;->tt(Z)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/uj;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->or()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/uj;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/kcl/uj;->uj()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/kcl/uj;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/byazt/kcl/uj;->c:Z

    .line 4
    iget-object v1, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    invoke-virtual {v1, v0}, Lcom/byazt/kcl/tt;->c(Z)V

    :cond_2
    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/kcl/tt;->a(Z)V

    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public ve()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/uj;->uj:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->md()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/kcl/uj;->n:Lcom/byazt/kcl/n;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/kcl/uj;->tt:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/byazt/fcd/tt;->tx()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
