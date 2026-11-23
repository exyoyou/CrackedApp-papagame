.class public Lcom/byazt/im/x;
.super Lcom/byazt/im/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x548,
        0x47
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/hm/tt;

.field public da:J

.field public i:J

.field public m:Lcom/byazt/nc/tt;

.field public my:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Z

.field public nu:Ljava/lang/String;

.field public rh:J

.field public sl:J

.field public sp:Z

.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;

.field public uj:Lcom/byazt/uph/tt;

.field public x:Z

.field public yp:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/im/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/im/x;->n:Z

    .line 3
    iput-boolean v0, p0, Lcom/byazt/im/x;->sp:Z

    .line 4
    iput-boolean v0, p0, Lcom/byazt/im/x;->x:Z

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/byazt/im/x;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p1, p0, Lcom/byazt/im/c;->tt:Lcom/byazt/ete/ic;

    .line 7
    iput-boolean p2, p0, Lcom/byazt/im/x;->yp:Z

    return-void
.end method

.method public constructor <init>(Lcom/byazt/uph/tt;Lcom/byazt/ete/ic;Z)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/byazt/im/c;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/byazt/im/x;->n:Z

    .line 10
    iput-boolean v0, p0, Lcom/byazt/im/x;->sp:Z

    .line 11
    iput-boolean v0, p0, Lcom/byazt/im/x;->x:Z

    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/byazt/im/x;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    iput-object p1, p0, Lcom/byazt/im/x;->uj:Lcom/byazt/uph/tt;

    .line 14
    iput-object p2, p0, Lcom/byazt/im/c;->tt:Lcom/byazt/ete/ic;

    .line 15
    iput-boolean p3, p0, Lcom/byazt/im/x;->yp:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/x;->sp:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/im/c;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/im/c;->c:I

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/im/c;->tt:Lcom/byazt/ete/ic;

    return-void
.end method

.method public c(Lcom/byazt/hm/tt;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/im/x;->a:Lcom/byazt/hm/tt;

    return-void
.end method

.method public c(Lcom/byazt/nc/tt;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/im/x;->m:Lcom/byazt/nc/tt;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/im/x;->u:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcom/byazt/im/x;->t:Ljava/util/Map;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/im/x;->n:Z

    return-void
.end method

.method public da()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/x;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/im/x;->t:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/im/x;->rh:J

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/im/x;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/x;->n:Z

    return v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/im/x;->yp:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/im/x;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public t()Lcom/byazt/nc/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/x;->m:Lcom/byazt/nc/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/c;->tt:Lcom/byazt/ete/ic;

    return-object v0
.end method

.method public tt(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/im/x;->i:J

    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/im/x;->nu:Ljava/lang/String;

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/im/x;->sp:Z

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/x;->nu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/uph/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/x;->uj:Lcom/byazt/uph/tt;

    return-object v0
.end method

.method public uj(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/im/x;->sl:J

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/im/x;->z:Z

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/im/x;->da:J

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/im/x;->x:Z

    return-void
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/im/x;->sl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public yp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/im/x;->rh:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/im/x;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

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
