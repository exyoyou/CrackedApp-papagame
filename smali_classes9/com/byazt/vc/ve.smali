.class public Lcom/byazt/vc/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x270,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final tt:Lcom/byazt/vc/tt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/vc/tt<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/vc/ve;->tt:Lcom/byazt/vc/tt;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/vc/tt;->c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/byazt/vc/tt;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/vc/ve;->c(Lcom/byazt/vc/tt;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/vc/tt;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/vc/tt<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/vc/ve;->c:Ljava/lang/Object;

    return-object p1
.end method
