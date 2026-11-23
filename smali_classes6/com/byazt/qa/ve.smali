.class public Lcom/byazt/qa/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x256,
        0x36
    }
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public da:F

.field public i:I

.field public m:I

.field public n:I

.field public nu:Z

.field public rh:Z

.field public sl:F

.field public sp:I

.field public t:I

.field public tt:I

.field public u:I

.field public uj:I

.field public ve:I

.field public x:I

.field public yp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/qa/ve;->c:I

    .line 8
    .line 9
    iput v0, p0, Lcom/byazt/qa/ve;->tt:I

    .line 10
    .line 11
    const/high16 v0, -0x80000000

    .line 12
    .line 13
    iput v0, p0, Lcom/byazt/qa/ve;->ve:I

    .line 14
    .line 15
    iput v0, p0, Lcom/byazt/qa/ve;->uj:I

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/qa/ve;->yp:Ljava/util/List;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/qa/ve;->sp:I

    return v0
.end method

.method public c(Landroid/view/View;IIII)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/byazt/qa/tt;

    .line 3
    iget v1, p0, Lcom/byazt/qa/ve;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-interface {v0}, Lcom/byazt/qa/tt;->u()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/byazt/qa/ve;->c:I

    .line 4
    iget p2, p0, Lcom/byazt/qa/ve;->tt:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-interface {v0}, Lcom/byazt/qa/tt;->yp()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/byazt/qa/ve;->tt:I

    .line 5
    iget p2, p0, Lcom/byazt/qa/ve;->ve:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-interface {v0}, Lcom/byazt/qa/tt;->z()I

    move-result v1

    add-int/2addr p3, v1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/byazt/qa/ve;->ve:I

    .line 6
    iget p2, p0, Lcom/byazt/qa/ve;->uj:I

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-interface {v0}, Lcom/byazt/qa/tt;->m()I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p5

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/byazt/qa/ve;->uj:I

    return-void
.end method

.method public tt()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/qa/ve;->x:I

    .line 2
    .line 3
    iget v1, p0, Lcom/byazt/qa/ve;->i:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method
