.class public Lcom/byazt/im/a;
.super Lcom/byazt/im/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x548,
        0x22
    }
.end annotation


# instance fields
.field public a:J

.field public i:J

.field public n:Z

.field public sp:J

.field public uj:Lcom/byazt/ete/c;

.field public x:J


# direct methods
.method public constructor <init>(Lcom/byazt/ete/c;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/byazt/im/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/im/a;->uj:Lcom/byazt/ete/c;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/byazt/im/a;->uj:Lcom/byazt/ete/c;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/byazt/im/a;->uj:Lcom/byazt/ete/c;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/byazt/ete/c;->tt()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/byazt/ete/ic;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/byazt/im/c;->tt:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    :cond_0
    iput-boolean p2, p0, Lcom/byazt/im/a;->n:Z

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/im/a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/im/a;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/im/a;->i:J

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/a;->n:Z

    return v0
.end method

.method public sp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/im/a;->sp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/im/a;->a:J

    .line 2
    .line 3
    return-void
.end method

.method public uj()Lcom/byazt/ete/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/a;->uj:Lcom/byazt/ete/c;

    return-object v0
.end method

.method public uj(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/im/a;->x:J

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/im/a;->sp:J

    .line 2
    .line 3
    return-void
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/im/a;->x:J

    .line 2
    .line 3
    return-wide v0
.end method
