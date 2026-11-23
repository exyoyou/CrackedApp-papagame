.class public Lcom/byazt/kt/n$ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x3ae
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ve"
.end annotation


# instance fields
.field public a:I

.field public c:Z

.field public da:I

.field public i:Z

.field public n:I

.field public sl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/kt/RecyclerView$gu;",
            ">;"
        }
    .end annotation
.end field

.field public sp:I

.field public t:Z

.field public tt:I

.field public uj:I

.field public ve:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/kt/n$ve;->c:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/byazt/kt/n$ve;->x:I

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/byazt/kt/n$ve;->i:Z

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/byazt/kt/n$ve;->sl:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method private tt()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/n$ve;->sl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/byazt/kt/n$ve;->sl:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/kt/RecyclerView$gu;

    iget-object v2, v2, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/byazt/kt/RecyclerView$da;

    .line 4
    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$da;->tt()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/byazt/kt/n$ve;->uj:I

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$da;->uj()I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lcom/byazt/kt/n$ve;->c(Landroid/view/View;)V

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/kt/RecyclerView$m;)Landroid/view/View;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/n$ve;->sl:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/byazt/kt/n$ve;->tt()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/byazt/kt/n$ve;->uj:I

    invoke-virtual {p1, v0}, Lcom/byazt/kt/RecyclerView$m;->tt(I)Landroid/view/View;

    move-result-object p1

    .line 5
    iget v0, p0, Lcom/byazt/kt/n$ve;->uj:I

    iget v1, p0, Lcom/byazt/kt/n$ve;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/byazt/kt/n$ve;->uj:I

    return-object p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/kt/n$ve;->c(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/kt/n$ve;->tt(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/byazt/kt/n$ve;->uj:I

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$da;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$da;->uj()I

    move-result p1

    iput p1, p0, Lcom/byazt/kt/n$ve;->uj:I

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gt;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/kt/n$ve;->uj:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gt;->uj()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt(Landroid/view/View;)Landroid/view/View;
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/byazt/kt/n$ve;->sl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 7
    iget-object v4, p0, Lcom/byazt/kt/n$ve;->sl:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/kt/RecyclerView$gu;

    iget-object v4, v4, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/byazt/kt/RecyclerView$da;

    if-eq v4, p1, :cond_0

    .line 9
    invoke-virtual {v5}, Lcom/byazt/kt/RecyclerView$da;->tt()Z

    move-result v6

    if-nez v6, :cond_0

    .line 10
    invoke-virtual {v5}, Lcom/byazt/kt/RecyclerView$da;->uj()I

    move-result v5

    iget v6, p0, Lcom/byazt/kt/n$ve;->uj:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/byazt/kt/n$ve;->n:I

    mul-int v5, v5, v6

    if-ltz v5, :cond_0

    if-ge v5, v2, :cond_0

    move-object v1, v4

    if-eqz v5, :cond_1

    move v2, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
