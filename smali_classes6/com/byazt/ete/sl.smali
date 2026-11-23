.class public Lcom/byazt/ete/sl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x9e
    }
.end annotation


# instance fields
.field public c:I

.field public tt:F

.field public ve:F


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

    .line 1
    iget v0, p0, Lcom/byazt/ete/sl;->c:I

    return v0
.end method

.method public c(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/sl;->tt:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/sl;->c:I

    return-void
.end method

.method public tt()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/sl;->tt:F

    return v0
.end method

.method public tt(F)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/sl;->ve:F

    return-void
.end method

.method public ve()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/ete/sl;->ve:F

    .line 2
    .line 3
    return v0
.end method
