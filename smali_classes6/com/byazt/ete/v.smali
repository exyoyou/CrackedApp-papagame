.class public Lcom/byazt/ete/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0xe6
    }
.end annotation


# instance fields
.field public c:I

.field public n:I

.field public tt:D

.field public uj:I

.field public ve:I


# direct methods
.method public constructor <init>(IDII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/ete/v;->c:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/byazt/ete/v;->tt:D

    .line 7
    .line 8
    iput p4, p0, Lcom/byazt/ete/v;->ve:I

    .line 9
    .line 10
    iput p5, p0, Lcom/byazt/ete/v;->uj:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/ete/v;->uj:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/ete/v;->n:I

    return-void
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/v;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/v;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/v;->tt:D

    .line 2
    .line 3
    return-wide v0
.end method
