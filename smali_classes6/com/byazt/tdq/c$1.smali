.class public Lcom/byazt/tdq/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c4,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tdq/c;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dj/tt;

.field public final synthetic tt:Lcom/byazt/tdq/c;


# direct methods
.method public constructor <init>(Lcom/byazt/tdq/c;Lcom/byazt/dj/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tdq/c$1;->tt:Lcom/byazt/tdq/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tdq/c$1;->c:Lcom/byazt/dj/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/byazt/tdq/c$1;->tt:Lcom/byazt/tdq/c;

    iget-object p2, p2, Lcom/byazt/tdq/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    invoke-virtual {p3, p1}, Lcom/byazt/ete/tt;->c(I)V

    .line 3
    invoke-static {p3}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 4

    .line 4
    invoke-static {p1}, Lcom/byazt/cc/x;->tt(Lcom/byazt/ete/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/ete/ic;

    .line 6
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/byazt/tdq/c$1;->tt:Lcom/byazt/tdq/c;

    iget-object p2, p2, Lcom/byazt/tdq/c;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/byazt/eti/n;->c(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/byazt/tdq/c$1;->tt:Lcom/byazt/tdq/c;

    new-instance v2, Lcom/byazt/ete/os;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/byazt/ete/os;-><init>(Lcom/byazt/ete/c;Lcom/byazt/ete/ic;[B)V

    iget-object v3, p0, Lcom/byazt/tdq/c$1;->c:Lcom/byazt/dj/tt;

    invoke-virtual {p2, v2, v3, v1}, Lcom/byazt/tdq/c;->c(Lcom/byazt/ete/os;Lcom/byazt/dj/tt;Z)V

    .line 10
    iget-object p2, p0, Lcom/byazt/tdq/c$1;->tt:Lcom/byazt/tdq/c;

    iget-object v1, p0, Lcom/byazt/tdq/c$1;->c:Lcom/byazt/dj/tt;

    invoke-virtual {p2, p1, v0, v1}, Lcom/byazt/tdq/c;->c(Lcom/byazt/ete/c;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, -0x4

    .line 11
    invoke-virtual {p2, p1}, Lcom/byazt/ete/tt;->c(I)V

    .line 12
    invoke-static {p2}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    :cond_3
    return-void

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/byazt/tdq/c$1;->tt:Lcom/byazt/tdq/c;

    iget-object p1, p1, Lcom/byazt/tdq/c;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
