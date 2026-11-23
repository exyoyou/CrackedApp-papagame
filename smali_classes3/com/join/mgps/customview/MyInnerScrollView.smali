.class public Lcom/join/mgps/customview/MyInnerScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MyInnerScrollView$a;
    }
.end annotation


# instance fields
.field public b:Lcom/join/mgps/customview/PullableScrollView;

.field private c:Lcom/join/mgps/customview/MyInnerScrollView$a;

.field private d:I

.field e:I

.field f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->d:I

    .line 6
    .line 7
    const/16 p1, 0xa

    .line 8
    .line 9
    iput p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->e:I

    .line 10
    .line 11
    return-void
.end method

.method private getScrollRange()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v0, v2

    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :cond_0
    return v1
.end method

.method private setParentScrollAble(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/PullableScrollView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/PullableScrollView;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/PullableScrollView;

    .line 10
    .line 11
    xor-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    const/4 v1, 0x0

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->d:I

    .line 3
    .line 4
    neg-int v2, v0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/customview/MyInnerScrollView;->getScrollRange()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x1

    .line 18
    move-object v0, p0

    .line 19
    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->d:I

    .line 24
    .line 25
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetView"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->e:I

    .line 10
    .line 11
    sub-int/2addr p1, v1

    .line 12
    sub-int v3, p1, v0

    .line 13
    .line 14
    iput v3, p0, Lcom/join/mgps/customview/MyInnerScrollView;->d:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-direct {p0}, Lcom/join/mgps/customview/MyInnerScrollView;->getScrollRange()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x1

    .line 30
    move-object v1, p0

    .line 31
    invoke-virtual/range {v1 .. v10}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public getParentScrollView()Lcom/join/mgps/customview/PullableScrollView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/PullableScrollView;

    .line 2
    .line 3
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "method onInterceptTouchEvent() called.parentScrollView="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/PullableScrollView;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/PullableScrollView;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/PullableScrollView;->a()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    float-to-int v0, v0

    .line 43
    iput v0, p0, Lcom/join/mgps/customview/MyInnerScrollView;->f:I

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 47
    .line 48
    .line 49
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/2addr p2, p1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    add-int/lit16 p1, p1, -0x12c

    .line 11
    .line 12
    if-lt p2, p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->c:Lcom/join/mgps/customview/MyInnerScrollView$a;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/join/mgps/customview/MyInnerScrollView$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/PullableScrollView;

    .line 7
    .line 8
    if-eqz v2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x2

    .line 15
    if-ne v2, v3, :cond_4

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    sub-int/2addr v1, v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    float-to-int v3, v3

    .line 35
    iget v4, p0, Lcom/join/mgps/customview/MyInnerScrollView;->f:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-ge v4, v3, :cond_1

    .line 39
    .line 40
    if-gtz v2, :cond_0

    .line 41
    .line 42
    invoke-direct {p0, v5}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 43
    .line 44
    .line 45
    return v0

    .line 46
    :cond_0
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-le v4, v3, :cond_3

    .line 51
    .line 52
    if-lt v2, v1, :cond_2

    .line 53
    .line 54
    invoke-direct {p0, v5}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 55
    .line 56
    .line 57
    return v0

    .line 58
    :cond_2
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/MyInnerScrollView;->setParentScrollAble(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    iput v3, p0, Lcom/join/mgps/customview/MyInnerScrollView;->f:I

    .line 62
    .line 63
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public setParentScrollView(Lcom/join/mgps/customview/PullableScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentScrollView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->b:Lcom/join/mgps/customview/PullableScrollView;

    .line 2
    .line 3
    return-void
.end method

.method public setScrollBottomListener(Lcom/join/mgps/customview/MyInnerScrollView$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollBottomListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyInnerScrollView;->c:Lcom/join/mgps/customview/MyInnerScrollView$a;

    .line 2
    .line 3
    return-void
.end method
