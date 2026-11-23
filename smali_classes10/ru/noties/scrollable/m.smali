.class public abstract Lru/noties/scrollable/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/noties/scrollable/l;


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lru/noties/scrollable/m;->b:F

    .line 7
    .line 8
    return-void
.end method

.method static synthetic d(Lru/noties/scrollable/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lru/noties/scrollable/m;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lru/noties/scrollable/m;I)I
    .locals 0

    .line 1
    iput p1, p0, Lru/noties/scrollable/m;->a:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public a(Lru/noties/scrollable/ScrollableLayout;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lru/noties/scrollable/m;->f()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lru/noties/scrollable/m;->h(Lru/noties/scrollable/ScrollableLayout;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lru/noties/scrollable/m;->a:I

    .line 9
    .line 10
    neg-int p2, p2

    .line 11
    add-int/2addr v1, p2

    .line 12
    iput v1, p0, Lru/noties/scrollable/m;->a:I

    .line 13
    .line 14
    if-le v1, v0, :cond_0

    .line 15
    .line 16
    iput v0, p0, Lru/noties/scrollable/m;->a:I

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lru/noties/scrollable/m;->i(Lru/noties/scrollable/ScrollableLayout;)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget v0, p0, Lru/noties/scrollable/m;->b:F

    .line 23
    .line 24
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lru/noties/scrollable/m;->j(Lru/noties/scrollable/ScrollableLayout;F)V

    .line 31
    .line 32
    .line 33
    iput p2, p0, Lru/noties/scrollable/m;->b:F

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public b(Lru/noties/scrollable/ScrollableLayout;I)Z
    .locals 0

    .line 1
    iget p1, p0, Lru/noties/scrollable/m;->a:I

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public c(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lru/noties/scrollable/m;->f()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lru/noties/scrollable/m;->i(Lru/noties/scrollable/ScrollableLayout;)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [F

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lru/noties/scrollable/m;->g(Landroid/animation/ValueAnimator;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    new-instance v2, Lru/noties/scrollable/m$a;

    .line 26
    .line 27
    invoke-direct {v2, p0, p1, v0}, Lru/noties/scrollable/m$a;-><init>(Lru/noties/scrollable/m;Lru/noties/scrollable/ScrollableLayout;F)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lru/noties/scrollable/m;->a:I

    .line 3
    .line 4
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lru/noties/scrollable/m;->c:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected g(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0xfa

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected h(Lru/noties/scrollable/ScrollableLayout;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lru/noties/scrollable/ScrollableLayout;->getMaxScrollY()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected i(Lru/noties/scrollable/ScrollableLayout;)F
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/m;->a:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    int-to-float v0, v0

    .line 8
    invoke-virtual {p0, p1}, Lru/noties/scrollable/m;->h(Lru/noties/scrollable/ScrollableLayout;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    int-to-float p1, p1

    .line 13
    div-float p1, v0, p1

    .line 14
    .line 15
    :goto_0
    return p1
.end method

.method protected abstract j(Lru/noties/scrollable/ScrollableLayout;F)V
.end method
