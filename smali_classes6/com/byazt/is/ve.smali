.class public Lcom/byazt/is/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d8,
        0x36
    }
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public final da:J

.field public i:J

.field public n:I

.field public sp:I

.field public tt:J

.field public uj:J

.field public ve:J

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/is/ve;->tt:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/byazt/is/ve;->ve:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/byazt/is/ve;->uj:J

    .line 11
    .line 12
    const-wide/16 v0, 0x1e

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/byazt/is/ve;->da:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/is/ve;->sp:I

    .line 2
    .line 3
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/is/ve;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/is/ve;->c:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/is/ve;->tt:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/is/ve;->x:Ljava/lang/String;

    return-void
.end method

.method public da()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/is/ve;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/is/ve;->uj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n()J
    .locals 2

    const-wide/16 v0, 0x1c

    return-wide v0
.end method

.method public sl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/is/ve;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/is/ve;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/is/ve;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/is/ve;->ve:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/byazt/is/ve;->uj:J

    :goto_0
    return-wide v0
.end method

.method public tt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/is/ve;->sp:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/is/ve;->ve:J

    return-void
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/is/ve;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public uj()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/byazt/is/ve;->n:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    iget v2, p0, Lcom/byazt/is/ve;->sp:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public uj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/is/ve;->a:I

    return-void
.end method

.method public uj(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/is/ve;->i:J

    return-void
.end method

.method public ve()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/byazt/is/ve;->uj()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/byazt/is/ve;->tt()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public ve(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/is/ve;->n:I

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/is/ve;->uj:J

    return-void
.end method

.method public x()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/is/ve;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method
