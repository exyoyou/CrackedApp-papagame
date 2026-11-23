.class public Lcom/byazt/gat/n$4;
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
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gat/n;->c(I)V
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
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/gat/n;


# direct methods
.method public constructor <init>(Lcom/byazt/gat/n;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/gat/n$4;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/im/a;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0, p1}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;Lcom/byazt/im/a;)Lcom/byazt/im/a;

    .line 3
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    iget-boolean v0, v0, Lcom/byazt/gat/n;->ve:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    iget-boolean v0, v0, Lcom/byazt/gat/n;->uj:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->n(Lcom/byazt/gat/n;)Lcom/byazt/im/sp;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->n(Lcom/byazt/gat/n;)Lcom/byazt/im/sp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/im/sp;->uj()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/im/c;->c(I)V

    .line 6
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->n(Lcom/byazt/gat/n;)Lcom/byazt/im/sp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/im/sp;->ve()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/byazt/im/c;->c(J)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    iput-boolean v1, v0, Lcom/byazt/gat/n;->ve:Z

    .line 8
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/tt;->tt(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v2}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/im/n;->uj()Lcom/byazt/dj/tt;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/byazt/tdq/c;->c(Lcom/byazt/im/a;Lcom/byazt/dj/tt;ZI)V

    :cond_3
    return-void
.end method

.method public c(Lcom/byazt/im/sp;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/byazt/gat/n;->c:Z

    .line 12
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    iget-boolean v0, v0, Lcom/byazt/gat/n;->tt:Z

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/gat/n;)Lcom/byazt/gat/tt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    .line 14
    :cond_0
    iget p1, p0, Lcom/byazt/gat/n$4;->c:I

    invoke-static {p1}, Lcom/byazt/tdq/c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {p1}, Lcom/byazt/gat/n;->tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {p1}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {p1}, Lcom/byazt/gat/n;->tt(Lcom/byazt/gat/n;)Lcom/byazt/tdq/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v0}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/im/n;->uj()Lcom/byazt/dj/tt;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/gat/n$4;->tt:Lcom/byazt/gat/n;

    invoke-static {v1}, Lcom/byazt/gat/n;->ve(Lcom/byazt/gat/n;)Lcom/byazt/im/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/im/n;->n()Lcom/byazt/ete/bm;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/byazt/tdq/c;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/sp;

    invoke-virtual {p0, p1}, Lcom/byazt/gat/n$4;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public synthetic tt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/gat/n$4;->c(Lcom/byazt/im/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
