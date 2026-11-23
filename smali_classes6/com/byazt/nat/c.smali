.class public Lcom/byazt/nat/c;
.super Lcom/byazt/zo/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4ac,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nat/c$c;
    }
.end annotation


# instance fields
.field public n:Lcom/byazt/nat/tt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/zo/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nat/tt;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/nat/tt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;Lcom/byazt/zo/ve;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/zo/ve;",
            ")I"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public c()Lcom/byazt/pop/ve;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->a()Lcom/byazt/pop/ve;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->tt(I)V

    return-void
.end method

.method public c(J)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/nat/tt;->c(J)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .line 8
    iput-object p1, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 9
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Landroid/content/Context;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 1

    .line 6
    iput-object p1, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 7
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Lcom/byazt/nat/c$c;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Lcom/byazt/nat/c$c;)V

    return-void
.end method

.method public c(Lcom/byazt/pop/ve;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Lcom/byazt/pop/ve;)V

    return-void
.end method

.method public c(Lcom/byazt/uz/c;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Lcom/byazt/uz/c;)V

    return-void
.end method

.method public c(Lcom/byazt/zd/tt;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Lcom/byazt/zd/tt;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Ljava/util/Map;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(Z)V

    return-void
.end method

.method public tt()Lcom/byazt/nat/tt;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    return-object v0
.end method

.method public tt(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->uj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->c(I)V

    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->uj(Z)V

    return-void
.end method

.method public uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->uj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->n()Lcom/byazt/uz/c;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/byazt/uz/c;->tt()V

    :cond_1
    return-void
.end method

.method public uj(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->tt(Z)V

    return-void
.end method

.method public ve()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->uj()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0}, Lcom/byazt/nat/tt;->a()Lcom/byazt/pop/ve;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/byazt/wz/c;

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    check-cast v0, Lcom/byazt/wz/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/wz/c;->a(Z)V

    return-void
.end method

.method public ve(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nat/c;->n:Lcom/byazt/nat/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/tt;->ve(Z)V

    return-void
.end method
