.class public Lcom/byazt/kt/i$1;
.super Lcom/byazt/kt/a;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kt/i;->tt(Lcom/byazt/kt/RecyclerView$i;)Lcom/byazt/kt/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/kt/i;


# direct methods
.method public constructor <init>(Lcom/byazt/kt/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/i$1;->a:Lcom/byazt/kt/i;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/kt/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 6
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public c(Landroid/view/View;Lcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$my$c;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/byazt/kt/i$1;->a:Lcom/byazt/kt/i;

    iget-object v0, p2, Lcom/byazt/kt/t;->c:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->getLayoutManager()Lcom/byazt/kt/RecyclerView$i;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/byazt/kt/i;->c(Lcom/byazt/kt/RecyclerView$i;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 3
    aget p1, p1, v0

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byazt/kt/a;->c(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/byazt/kt/a;->tt:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/byazt/kt/RecyclerView$my$c;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public tt(I)I
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/byazt/kt/a;->tt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
