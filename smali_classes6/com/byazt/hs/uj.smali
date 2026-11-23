.class public Lcom/byazt/hs/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x57c,
        0xf
    }
.end annotation


# instance fields
.field public final c:D

.field public final tt:I

.field public uj:I

.field public ve:D


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/hs/uj;->ve:D

    .line 7
    .line 8
    iput-wide p1, p0, Lcom/byazt/hs/uj;->c:D

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    cmpl-double v2, p1, v0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const p1, 0x7fffffff

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 21
    .line 22
    div-double/2addr v0, p1

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    double-to-int p1, p1

    .line 28
    :goto_0
    iput p1, p0, Lcom/byazt/hs/uj;->tt:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public c()D
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/byazt/hs/uj;->ve:D

    return-wide v0
.end method

.method public c(D)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/byazt/hs/uj;->c:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 2
    iget v4, p0, Lcom/byazt/hs/uj;->uj:I

    iget v5, p0, Lcom/byazt/hs/uj;->tt:I

    if-le v4, v5, :cond_0

    .line 3
    iget-wide v2, p0, Lcom/byazt/hs/uj;->ve:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/byazt/hs/uj;->c:D

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/hs/uj;->ve:D

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    int-to-double v5, v4

    mul-double v0, v0, v5

    int-to-double v4, v4

    add-double/2addr v4, v2

    div-double/2addr v0, v4

    sub-double/2addr v2, v0

    .line 4
    iget-wide v4, p0, Lcom/byazt/hs/uj;->ve:D

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/hs/uj;->ve:D

    goto :goto_0

    .line 5
    :cond_1
    iput-wide p1, p0, Lcom/byazt/hs/uj;->ve:D

    .line 6
    :goto_0
    iget p1, p0, Lcom/byazt/hs/uj;->uj:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/byazt/hs/uj;->uj:I

    return-void
.end method
