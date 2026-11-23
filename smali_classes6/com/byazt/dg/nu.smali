.class public Lcom/byazt/dg/nu;
.super Lcom/byazt/dg/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xba,
        0x89
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/byazt/dg/c<",
        "TK;TA;>;"
    }
.end annotation


# instance fields
.field public final uj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# virtual methods
.method public a()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public c(Lcom/byazt/vc/c;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/vc/c<",
            "TK;>;F)TA;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/byazt/dg/nu;->sp()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/dg/c;->tt:F

    return-void
.end method

.method public sp()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/dg/c;->ve:Lcom/byazt/vc/ve;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v4, p0, Lcom/byazt/dg/nu;->uj:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/byazt/dg/c;->x()F

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    invoke-virtual {p0}, Lcom/byazt/dg/c;->x()F

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    invoke-virtual {p0}, Lcom/byazt/dg/c;->x()F

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    move-object v3, v4

    .line 20
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/vc/ve;->c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dg/c;->ve:Lcom/byazt/vc/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/byazt/dg/c;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
