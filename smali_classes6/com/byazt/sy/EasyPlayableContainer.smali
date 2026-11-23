.class public Lcom/byazt/sy/EasyPlayableContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0x661
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/sy/sp;

.field public n:Lcom/byazt/ete/u;

.field public final tt:Lcom/byazt/ete/m;

.field public uj:I

.field public final ve:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/sy/sp;Lcom/byazt/ete/m;Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/byazt/sy/EasyPlayableContainer;->uj:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/byazt/sy/EasyPlayableContainer;->c:Lcom/byazt/sy/sp;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/byazt/sy/EasyPlayableContainer;->tt:Lcom/byazt/ete/m;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/byazt/sy/EasyPlayableContainer;->ve:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/byazt/sy/EasyPlayableContainer;->n:Lcom/byazt/ete/u;

    .line 14
    .line 15
    return-void
.end method

.method public static c(Landroid/view/ViewGroup;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lcom/byazt/sy/EasyPlayableContainer;

    if-eqz v4, :cond_0

    .line 5
    check-cast v3, Lcom/byazt/sy/EasyPlayableContainer;

    .line 6
    invoke-virtual {v3}, Lcom/byazt/sy/EasyPlayableContainer;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/sy/EasyPlayableContainer;->uj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sy/EasyPlayableContainer;->c:Lcom/byazt/sy/sp;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/sy/sp;->tt()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/sy/EasyPlayableContainer;->c:Lcom/byazt/sy/sp;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/sy/sp;->ve()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/EasyPlayableContainer;->tt:Lcom/byazt/ete/m;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    iget-object v2, p0, Lcom/byazt/sy/EasyPlayableContainer;->tt:Lcom/byazt/ete/m;

    .line 32
    .line 33
    float-to-double v3, v0

    .line 34
    float-to-double v5, v1

    .line 35
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/byazt/ete/m;->c(DD)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 v2, 0x1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    new-instance p1, Lcom/byazt/kyz/c;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/byazt/sy/EasyPlayableContainer;->ve:Lcom/byazt/ete/ic;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/byazt/sy/EasyPlayableContainer;->n:Lcom/byazt/ete/u;

    .line 58
    .line 59
    invoke-direct {p1, v3, v4}, Lcom/byazt/kyz/c;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/ete/u;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lcom/byazt/sy/EasyPlayableContainer;->ve:Lcom/byazt/ete/ic;

    .line 63
    .line 64
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/byazt/kyz/c;->c(Lcom/byazt/ete/ic;FFI)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return v2

    .line 68
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/sy/EasyPlayableContainer;->tt:Lcom/byazt/ete/m;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    int-to-float v1, v1

    .line 31
    iget-object v2, p0, Lcom/byazt/sy/EasyPlayableContainer;->tt:Lcom/byazt/ete/m;

    .line 32
    .line 33
    float-to-double v3, v0

    .line 34
    float-to-double v0, v1

    .line 35
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/byazt/ete/m;->c(DD)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    return p1

    .line 48
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public setIfStayTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/sy/EasyPlayableContainer;->uj:I

    .line 2
    .line 3
    return-void
.end method
