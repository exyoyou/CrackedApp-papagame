.class public Lcom/byazt/tp/tt$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b4,
        0x2df
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tp/tt;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tp/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tp/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tp/tt$8;->c:Lcom/byazt/tp/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/byazt/tp/tt$8;->c:Lcom/byazt/tp/tt;

    invoke-static {p1}, Lcom/byazt/tp/tt;->x(Lcom/byazt/tp/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 1

    .line 2
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/tp/tt$8;->c:Lcom/byazt/tp/tt;

    invoke-static {p1}, Lcom/byazt/tp/tt;->x(Lcom/byazt/tp/tt;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/ete/ic;

    .line 6
    iget-object p2, p0, Lcom/byazt/tp/tt$8;->c:Lcom/byazt/tp/tt;

    iget-object v0, p2, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    iget-object p2, p2, Lcom/byazt/tp/tt;->uj:Lcom/byazt/dj/tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/tp/c;->c(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V

    .line 7
    iget-object p2, p0, Lcom/byazt/tp/tt$8;->c:Lcom/byazt/tp/tt;

    invoke-static {p2, p1}, Lcom/byazt/tp/tt;->tt(Lcom/byazt/tp/tt;Lcom/byazt/ete/ic;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/tp/tt$8;->c:Lcom/byazt/tp/tt;

    iget-object p1, p1, Lcom/byazt/tp/tt;->c:Lcom/byazt/tp/c;

    invoke-virtual {p1}, Lcom/byazt/tp/c;->ve()V

    return-void
.end method
