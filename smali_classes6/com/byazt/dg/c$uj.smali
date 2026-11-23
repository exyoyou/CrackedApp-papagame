.class public final Lcom/byazt/dg/c$uj;
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
        0xbb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "uj"
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
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/byazt/vc/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/vc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/vc/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public uj:F

.field public ve:Lcom/byazt/vc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/vc/c<",
            "TT;>;"
        }
    .end annotation
.end field


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
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/dg/c$uj;->ve:Lcom/byazt/vc/c;

    .line 6
    .line 7
    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    .line 9
    iput v0, p0, Lcom/byazt/dg/c$uj;->uj:F

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/dg/c$uj;->c:Ljava/util/List;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/byazt/dg/c$uj;->ve(F)Lcom/byazt/vc/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/byazt/dg/c$uj;->tt:Lcom/byazt/vc/c;

    .line 19
    .line 20
    return-void
.end method

.method private ve(F)Lcom/byazt/vc/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/byazt/vc/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/dg/c$uj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/vc/c;

    .line 2
    invoke-virtual {v0}, Lcom/byazt/vc/c;->ve()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/dg/c$uj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-lez v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/byazt/dg/c$uj;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/vc/c;

    .line 5
    iget-object v2, p0, Lcom/byazt/dg/c$uj;->tt:Lcom/byazt/vc/c;

    if-eq v2, v1, :cond_1

    .line 6
    invoke-virtual {v1, p1}, Lcom/byazt/vc/c;->c(F)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/byazt/dg/c$uj;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/vc/c;

    return-object p1
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public c(F)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dg/c$uj;->tt:Lcom/byazt/vc/c;

    invoke-virtual {v0, p1}, Lcom/byazt/vc/c;->c(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/byazt/dg/c$uj;->tt:Lcom/byazt/vc/c;

    invoke-virtual {p1}, Lcom/byazt/vc/c;->n()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/dg/c$uj;->ve(F)Lcom/byazt/vc/c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/dg/c$uj;->tt:Lcom/byazt/vc/c;

    return v1
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
    iget-object v0, p0, Lcom/byazt/dg/c$uj;->tt:Lcom/byazt/vc/c;

    return-object v0
.end method

.method public tt(F)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/dg/c$uj;->ve:Lcom/byazt/vc/c;

    iget-object v1, p0, Lcom/byazt/dg/c$uj;->tt:Lcom/byazt/vc/c;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/byazt/dg/c$uj;->uj:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/byazt/dg/c$uj;->ve:Lcom/byazt/vc/c;

    .line 4
    iput p1, p0, Lcom/byazt/dg/c$uj;->uj:F

    const/4 p1, 0x0

    return p1
.end method

.method public uj()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dg/c$uj;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/byazt/vc/c;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/byazt/vc/c;->uj()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public ve()F
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/byazt/dg/c$uj;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/vc/c;

    invoke-virtual {v0}, Lcom/byazt/vc/c;->ve()F

    move-result v0

    return v0
.end method
