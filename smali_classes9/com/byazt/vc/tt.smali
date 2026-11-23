.class public Lcom/byazt/vc/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x270,
        0xd
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
.field public a:F

.field public c:F

.field public n:F

.field public sp:F

.field public tt:F

.field public uj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public ve:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# virtual methods
.method public c(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/byazt/vc/tt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)",
            "Lcom/byazt/vc/tt<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/vc/tt;->c:F

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/vc/tt;->tt:F

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/vc/tt;->ve:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/vc/tt;->uj:Ljava/lang/Object;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/vc/tt;->n:F

    .line 10
    .line 11
    iput p6, p0, Lcom/byazt/vc/tt;->a:F

    .line 12
    .line 13
    iput p7, p0, Lcom/byazt/vc/tt;->sp:F

    .line 14
    .line 15
    return-object p0
.end method
