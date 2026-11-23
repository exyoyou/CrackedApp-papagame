.class public Lcom/byazt/ab/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/zd/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f5,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ab/c;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ab/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ab/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {v0}, Lcom/byazt/ab/c;->ve(Lcom/byazt/ab/c;)Lcom/byazt/zd/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-virtual {v0}, Lcom/byazt/ab/c;->c()V

    .line 3
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {v0}, Lcom/byazt/ab/c;->ve(Lcom/byazt/ab/c;)Lcom/byazt/zd/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/zd/tt;->ve()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {v0}, Lcom/byazt/ab/c;->uj(Lcom/byazt/ab/c;)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {v0}, Lcom/byazt/ab/c;->n(Lcom/byazt/ab/c;)Lcom/byazt/ab/ve;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {v0}, Lcom/byazt/ab/c;->n(Lcom/byazt/ab/c;)Lcom/byazt/ab/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/zd/c;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-virtual {v0}, Lcom/byazt/ab/c;->c()V

    :cond_1
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    const/16 p2, 0x134

    if-ne p1, p2, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {p1}, Lcom/byazt/ab/c;->a(Lcom/byazt/ab/c;)Lcom/byazt/ab/PlayableVideoContainer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/byazt/ab/PlayableVideoContainer;->c(Z)V

    return-void
.end method

.method public c(JJ)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {v0}, Lcom/byazt/ab/c;->a(Lcom/byazt/ab/c;)Lcom/byazt/ab/PlayableVideoContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/ab/PlayableVideoContainer;->c(Z)V

    .line 9
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {v0}, Lcom/byazt/ab/c;->ve(Lcom/byazt/ab/c;)Lcom/byazt/zd/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    invoke-static {v0}, Lcom/byazt/ab/c;->ve(Lcom/byazt/ab/c;)Lcom/byazt/zd/tt;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/zd/tt;->c(JJ)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ab/c;->a(Lcom/byazt/ab/c;)Lcom/byazt/ab/PlayableVideoContainer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/ab/PlayableVideoContainer;->c(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/ab/c;->ve(Lcom/byazt/ab/c;)Lcom/byazt/zd/tt;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/ab/c;->ve(Lcom/byazt/ab/c;)Lcom/byazt/zd/tt;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/byazt/zd/tt;->da()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ab/c$3;->c:Lcom/byazt/ab/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ab/c;->sp(Lcom/byazt/ab/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
