.class public Lcom/byazt/iym/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ouz/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x202
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iym/n;->c(Lcom/byazt/iym/tt;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iym/n;


# direct methods
.method public constructor <init>(Lcom/byazt/iym/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v0, v0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    invoke-virtual {v0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(FFFFI)V
    .locals 6

    .line 16
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/iym/n;->c(FFFFI)V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v1, v0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, v0, Lcom/byazt/iym/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object p1, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object p1, p1, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    invoke-virtual {p1, v0}, Lcom/byazt/iym/uj;->sp(Z)V

    .line 8
    iget-object p1, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-static {p1}, Lcom/byazt/iym/n;->c(Lcom/byazt/iym/n;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-static {p1}, Lcom/byazt/iym/n;->tt(Lcom/byazt/iym/n;)Lcom/byazt/fcd/ve$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/fcd/ve$c;->tt()V

    .line 10
    iget-object p1, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-virtual {p1}, Lcom/byazt/iym/n;->or()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 11
    invoke-virtual {v1, p1}, Lcom/byazt/iym/uj;->sp(Z)V

    .line 12
    iget-object p1, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-static {p1}, Lcom/byazt/iym/n;->c(Lcom/byazt/iym/n;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-static {p1}, Lcom/byazt/iym/n;->tt(Lcom/byazt/iym/n;)Lcom/byazt/fcd/ve$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/fcd/ve$c;->c()V

    .line 14
    iget-object p1, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-virtual {p1}, Lcom/byazt/iym/n;->zb()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    return-void
.end method

.method public da()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method

.method public sp()V
    .locals 0

    return-void
.end method

.method public tt()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v0, v0, Lcom/byazt/iym/n;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v1, v0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/byazt/iym/n;->ve(Lcom/byazt/iym/n;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v0, v0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    invoke-virtual {v0}, Lcom/byazt/zd/c;->bm()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v0, v0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    invoke-virtual {v0}, Lcom/byazt/zd/c;->qy()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v0, v0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    invoke-virtual {v0}, Lcom/byazt/zd/c;->lr()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v0, v0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    invoke-virtual {v0}, Lcom/byazt/iym/uj;->gr()Z

    const/4 v0, 0x3

    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method public tt(I)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-static {v0}, Lcom/byazt/iym/n;->tt(Lcom/byazt/iym/n;)Lcom/byazt/fcd/ve$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/fcd/ve$c;->c(I)V

    return-void
.end method

.method public uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v0, v0, Lcom/byazt/iym/n;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-static {v0}, Lcom/byazt/iym/n;->c(Lcom/byazt/iym/n;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-static {v0}, Lcom/byazt/iym/n;->tt(Lcom/byazt/iym/n;)Lcom/byazt/fcd/ve$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fcd/ve$c;->c()V

    .line 5
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    invoke-static {v0}, Lcom/byazt/iym/n;->uj(Lcom/byazt/iym/n;)Lcom/byazt/iym/tt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/iym/tt;->tt(Z)V

    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public ve()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/iym/n$2;->c:Lcom/byazt/iym/n;

    iget-object v0, v0, Lcom/byazt/iym/n;->zm:Lcom/byazt/iym/uj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/nj/c;->sl()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public ve(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method
