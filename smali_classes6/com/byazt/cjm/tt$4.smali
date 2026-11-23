.class public Lcom/byazt/cjm/tt$4;
.super Lcom/byazt/qq/da;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4db,
        0x5f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cjm/tt;->da()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cjm/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/cjm/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/qq/da;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cjm/tt;->uj(Lcom/byazt/cjm/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/cjm/tt;->n(Lcom/byazt/cjm/tt;)Lcom/byazt/hc/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/cjm/tt;->n(Lcom/byazt/cjm/tt;)Lcom/byazt/hc/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/byazt/qq/tt;->uj()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/byazt/cjm/tt;->da(Lcom/byazt/cjm/tt;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/byazt/cjm/tt;->c(Lcom/byazt/cjm/tt;)Lcom/byazt/cjm/c$c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "reward_again"

    .line 47
    .line 48
    const-string v2, "popup"

    .line 49
    .line 50
    const-string v3, "reward_endcard"

    .line 51
    .line 52
    invoke-static {v0, v3, v1, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public tt()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cjm/tt;->uj(Lcom/byazt/cjm/tt;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/cjm/tt;->c(Lcom/byazt/cjm/tt;)Lcom/byazt/cjm/c$c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->c()Lcom/byazt/ete/ic;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "popup_cancel"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v3, "reward_endcard"

    .line 28
    .line 29
    invoke-static {v0, v3, v1, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/cjm/tt$4;->c:Lcom/byazt/cjm/tt;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/cjm/tt;->c(Lcom/byazt/cjm/tt;)Lcom/byazt/cjm/c$c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/byazt/cjm/c$c;->ve()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
