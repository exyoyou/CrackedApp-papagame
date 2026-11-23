.class public Lcom/byazt/gat/n$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gat/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x314,
        0x315
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gat/n$1;->c(Lcom/byazt/im/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/gat/tt<",
        "Lcom/byazt/im/a;",
        "Lcom/byazt/im/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gat/n$1;


# direct methods
.method public constructor <init>(Lcom/byazt/gat/n$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/im/a;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v0, v0, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    iget-boolean v0, v0, Lcom/byazt/gat/n;->uj:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v0, v0, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v0, v0, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v0, v0, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v1, v1, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {v1}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/im/n;->uj()Lcom/byazt/dj/tt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/byazt/tdq/c;->c(Lcom/byazt/im/a;Lcom/byazt/dj/tt;ZI)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v0, v0, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/tt;->tt(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/im/sp;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v0, v0, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget p1, p1, Lcom/byazt/gat/n$1;->c:I

    invoke-static {p1}, Lcom/byazt/tdq/c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object p1, p1, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {p1}, Lcom/byazt/gat/n;->tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object p1, p1, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {p1}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object p1, p1, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {p1}, Lcom/byazt/gat/n;->tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v0, v0, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/im/n;->uj()Lcom/byazt/dj/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/gat/n$1$1;->c:Lcom/byazt/gat/n$1;

    iget-object v1, v1, Lcom/byazt/gat/n$1;->tt:Lcom/byazt/gat/n;

    invoke-static {v1}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/im/n;->n()Lcom/byazt/ete/bm;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/tdq/c;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/sp;

    invoke-virtual {p0, p1}, Lcom/byazt/gat/n$1$1;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public synthetic tt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/gat/n$1$1;->c(Lcom/byazt/im/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
