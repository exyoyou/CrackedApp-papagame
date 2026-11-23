.class public Lcom/byazt/wo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7a1,
        0x14
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:J

.field public da:Z

.field public gt:I

.field public i:Z

.field public m:J

.field public my:J

.field public n:Lorg/json/JSONObject;

.field public nu:J

.field public rh:J

.field public rl:I

.field public sl:J

.field public sp:Z

.field public t:J

.field public tt:J

.field public u:J

.field public uj:J

.field public ve:J

.field public x:J

.field public yp:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/wo/c;->gt:I

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/wo/c;->rl:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->x:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->x:J

    return-void
.end method

.method public c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/wo/c;->yp:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/byazt/wo/c;->gt:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/wo/c;->yp:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/wo/c;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wo/c;->n:Lorg/json/JSONObject;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/wo/c;->da:Z

    return-void
.end method

.method public da()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->tt:J

    return-wide v0
.end method

.method public da(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->z:J

    return-void
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->c:J

    return-wide v0
.end method

.method public i(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->tt:J

    return-void
.end method

.method public m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->rh:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public my()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/wo/c;->rl:I

    .line 2
    .line 3
    return v0
.end method

.method public n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->sl:J

    return-wide v0
.end method

.method public n(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->sl:J

    return-void
.end method

.method public nu()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->my:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public rh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/wo/c;->gt:I

    .line 2
    .line 3
    return v0
.end method

.method public sl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wo/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public sl(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->m:J

    return-void
.end method

.method public sp(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->ve:J

    return-void
.end method

.method public sp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/wo/c;->da:Z

    return v0
.end method

.method public t(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->nu:J

    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/wo/c;->sp:Z

    return v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->u:J

    return-wide v0
.end method

.method public tt(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/wo/c;->rl:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->u:J

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/wo/c;->i:Z

    return-void
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->z:J

    return-wide v0
.end method

.method public u(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->rh:J

    return-void
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->t:J

    return-wide v0
.end method

.method public uj(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->t:J

    return-void
.end method

.method public ve()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->uj:J

    return-wide v0
.end method

.method public ve(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->uj:J

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/wo/c;->sp:Z

    return-void
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->ve:J

    return-wide v0
.end method

.method public x(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->c:J

    return-void
.end method

.method public yp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->m:J

    return-wide v0
.end method

.method public yp(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/wo/c;->my:J

    return-void
.end method

.method public z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/wo/c;->nu:J

    .line 2
    .line 3
    return-wide v0
.end method
