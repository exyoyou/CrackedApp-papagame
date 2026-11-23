.class public Lcom/byazt/hr/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d,
        0x2e
    }
.end annotation


# instance fields
.field public c:I

.field public n:I

.field public tt:J

.field public uj:J

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/byazt/hr/n;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/byazt/hr/n;->c:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/byazt/hr/n;->tt:J

    return-void
.end method

.method public c(Lcom/byazt/hr/n;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/byazt/hr/n;->c()I

    move-result v0

    iput v0, p0, Lcom/byazt/hr/n;->c:I

    .line 2
    invoke-virtual {p1}, Lcom/byazt/hr/n;->tt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/hr/n;->tt:J

    .line 3
    invoke-virtual {p1}, Lcom/byazt/hr/n;->ve()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/hr/n;->ve:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/byazt/hr/n;->uj()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/hr/n;->uj:J

    .line 5
    invoke-virtual {p1}, Lcom/byazt/hr/n;->n()I

    move-result p1

    iput p1, p0, Lcom/byazt/hr/n;->n:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/hr/n;->ve:Ljava/lang/String;

    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/hr/n;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/hr/n;->tt:J

    return-wide v0
.end method

.method public tt(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/hr/n;->n:I

    return-void
.end method

.method public tt(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/hr/n;->uj:J

    return-void
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/hr/n;->uj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hr/n;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
