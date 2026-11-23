.class public Lcom/byazt/wdw/c;
.super Lcom/byazt/wdw/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26d,
        0x14
    }
.end annotation


# instance fields
.field public a:I

.field public n:Lcom/byazt/ouz/ve;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/wdw/tt;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/wdw/tt;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 4
    iput-object p2, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;Lcom/byazt/zo/ve;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/zo/ve;",
            ")I"
        }
    .end annotation

    .line 4
    iget-object p1, p0, Lcom/byazt/wdw/c;->n:Lcom/byazt/ouz/ve;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Lcom/byazt/ete/da;

    invoke-direct {p1}, Lcom/byazt/ete/da;-><init>()V

    iput-object p1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    invoke-virtual {p1}, Lcom/byazt/ete/da;->i()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    if-eqz p1, :cond_2

    .line 8
    invoke-static {p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;)[I

    move-result-object v1

    .line 9
    invoke-static {p1}, Lcom/byazt/aas/pf;->ve(Landroid/view/View;)[I

    move-result-object v0

    .line 10
    :cond_2
    new-instance p1, Lcom/byazt/ete/gr$c;

    invoke-direct {p1}, Lcom/byazt/ete/gr$c;-><init>()V

    iget-object v2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 11
    invoke-virtual {v2}, Lcom/byazt/ete/da;->nu()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/ete/gr$c;->uj(F)Lcom/byazt/ete/gr$c;

    move-result-object p1

    iget-object v2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 12
    invoke-virtual {v2}, Lcom/byazt/ete/da;->rh()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/ete/gr$c;->ve(F)Lcom/byazt/ete/gr$c;

    move-result-object p1

    iget-object v2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 13
    invoke-virtual {v2}, Lcom/byazt/ete/da;->my()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/ete/gr$c;->tt(F)Lcom/byazt/ete/gr$c;

    move-result-object p1

    iget-object v2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 14
    invoke-virtual {v2}, Lcom/byazt/ete/da;->gt()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/byazt/ete/gr$c;->c(F)Lcom/byazt/ete/gr$c;

    move-result-object p1

    iget-object v2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 15
    invoke-virtual {v2}, Lcom/byazt/ete/da;->z()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/byazt/ete/gr$c;->tt(J)Lcom/byazt/ete/gr$c;

    move-result-object p1

    iget-object v2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 16
    invoke-virtual {v2}, Lcom/byazt/ete/da;->m()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/byazt/ete/gr$c;->c(J)Lcom/byazt/ete/gr$c;

    move-result-object p1

    aget v2, v1, p2

    .line 17
    invoke-virtual {p1, v2}, Lcom/byazt/ete/gr$c;->c(I)Lcom/byazt/ete/gr$c;

    move-result-object p1

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 18
    invoke-virtual {p1, v1}, Lcom/byazt/ete/gr$c;->tt(I)Lcom/byazt/ete/gr$c;

    move-result-object p1

    aget p2, v0, p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/byazt/ete/gr$c;->ve(I)Lcom/byazt/ete/gr$c;

    move-result-object p1

    aget p2, v0, v2

    .line 20
    invoke-virtual {p1, p2}, Lcom/byazt/ete/gr$c;->uj(I)Lcom/byazt/ete/gr$c;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 21
    invoke-virtual {p2}, Lcom/byazt/ete/da;->x()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/ete/gr$c;->c(Z)Lcom/byazt/ete/gr$c;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    .line 22
    invoke-virtual {p2}, Lcom/byazt/ete/da;->u()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/ete/gr$c;->c(Landroid/util/SparseArray;)Lcom/byazt/ete/gr$c;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/byazt/ete/gr$c;->c()Lcom/byazt/ete/gr;

    move-result-object p1

    .line 24
    iget-object p2, p0, Lcom/byazt/wdw/c;->n:Lcom/byazt/ouz/ve;

    iget-object v0, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    iget v1, p0, Lcom/byazt/wdw/c;->a:I

    invoke-interface {p2, v0, v1, p1}, Lcom/byazt/ouz/ve;->c(Landroid/view/View;ILcom/byazt/ete/gr;)V

    return v2
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/wdw/c;->a:I

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    return-void
.end method

.method public c(Lcom/byazt/ouz/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wdw/c;->n:Lcom/byazt/ouz/ve;

    return-void
.end method
