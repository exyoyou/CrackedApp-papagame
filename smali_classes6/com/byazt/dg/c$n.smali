.class public final Lcom/byazt/dg/c$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dg/c$ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xba,
        0x2ca
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/byazt/dg/c$ve<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/vc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/vc/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public tt:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/byazt/vc/c<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/dg/c$n;->tt:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/byazt/vc/c;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/byazt/dg/c$n;->c:Lcom/byazt/vc/c;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public c(F)Z
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/byazt/dg/c$n;->c:Lcom/byazt/vc/c;

    invoke-virtual {p1}, Lcom/byazt/vc/c;->n()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt()Lcom/byazt/vc/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/vc/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/dg/c$n;->c:Lcom/byazt/vc/c;

    return-object v0
.end method

.method public tt(F)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/dg/c$n;->tt:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/byazt/dg/c$n;->tt:F

    const/4 p1, 0x0

    return p1
.end method

.method public uj()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dg/c$n;->c:Lcom/byazt/vc/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vc/c;->uj()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ve()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dg/c$n;->c:Lcom/byazt/vc/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/vc/c;->ve()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
