.class public Lcom/byazt/xl/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/da$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5b3,
        0x42
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/xl/z;

.field public tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/xl/da;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Lcom/byazt/xl/i;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/byazt/xl/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/xl/da;",
            ">;",
            "Lcom/byazt/xl/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/xl/t;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/byazt/xl/t;->tt:Ljava/util/List;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/byazt/xl/t;->ve:Lcom/byazt/xl/i;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xl/t;->ve:Lcom/byazt/xl/i;

    invoke-interface {v0}, Lcom/byazt/xl/i;->a()V

    .line 2
    iget-object v0, p0, Lcom/byazt/xl/t;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/xl/da;

    .line 3
    invoke-interface {v1, p0}, Lcom/byazt/xl/da;->c(Lcom/byazt/xl/da$c;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xl/da;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/xl/t;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 5
    iget-object v0, p0, Lcom/byazt/xl/t;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/xl/t;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/xl/da;

    .line 7
    invoke-interface {v0, p0}, Lcom/byazt/xl/da;->c(Lcom/byazt/xl/da$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/xl/z;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/xl/t;->c:Lcom/byazt/xl/z;

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/xl/t;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public tt()Lcom/byazt/xl/z;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/xl/t;->c:Lcom/byazt/xl/z;

    return-object v0
.end method

.method public tt(Lcom/byazt/xl/da;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/xl/t;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/byazt/xl/t;->tt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xl/t;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
