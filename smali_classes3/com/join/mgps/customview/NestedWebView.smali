.class public Lcom/join/mgps/customview/NestedWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild3;


# static fields
.field private static final o:Ljava/lang/String; = "NestedWebView"

.field private static final p:I = -0x1


# instance fields
.field private final b:[I

.field private final c:[I

.field private d:I

.field private e:Landroidx/core/view/NestedScrollingChildHelper;

.field private f:Z

.field private g:Landroid/view/VelocityTracker;

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/widget/OverScroller;

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/NestedWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const v0, 0x1010085

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/NestedWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/customview/NestedWebView;->b:[I

    new-array p2, p1, [I

    .line 5
    iput-object p2, p0, Lcom/join/mgps/customview/NestedWebView;->c:[I

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/join/mgps/customview/NestedWebView;->f:Z

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedWebView;->e()V

    .line 10
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/NestedWebView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/NestedWebView;->stopNestedScroll(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedWebView;->i()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/customview/NestedWebView;->stopNestedScroll()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private c(I)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocityY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/high16 v8, -0x80000000

    .line 19
    .line 20
    const v9, 0x7fffffff

    .line 21
    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    div-int/lit8 v11, v0, 0x2

    .line 25
    .line 26
    move v5, p1

    .line 27
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/NestedWebView;->j(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iput v1, p0, Lcom/join/mgps/customview/NestedWebView;->h:I

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/join/mgps/customview/NestedWebView;->l:I

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/join/mgps/customview/NestedWebView;->m:I

    .line 37
    .line 38
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private g(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xff00

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    shr-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    float-to-int v1, v1

    .line 29
    iput v1, p0, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method private h(IIIIIIIIZ)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deltaX",
            "deltaY",
            "scrollX",
            "scrollY",
            "scrollRangeX",
            "scrollRangeY",
            "maxOverScrollX",
            "maxOverScrollY",
            "isTouchEvent"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-le v2, v3, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-le v3, v6, :cond_1

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    :goto_1
    if-eqz v1, :cond_3

    .line 35
    .line 36
    if-ne v1, v5, :cond_2

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v2, 0x0

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    :goto_2
    const/4 v2, 0x1

    .line 44
    :goto_3
    if-eqz v1, :cond_5

    .line 45
    .line 46
    if-ne v1, v5, :cond_4

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_4
    const/4 v1, 0x0

    .line 52
    goto :goto_5

    .line 53
    :cond_5
    :goto_4
    const/4 v1, 0x1

    .line 54
    :goto_5
    add-int v3, p3, p1

    .line 55
    .line 56
    if-nez v2, :cond_6

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move/from16 v2, p7

    .line 61
    .line 62
    :goto_6
    add-int v6, p4, p2

    .line 63
    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    goto :goto_7

    .line 68
    :cond_7
    move/from16 v1, p8

    .line 69
    .line 70
    :goto_7
    neg-int v7, v2

    .line 71
    add-int v2, v2, p5

    .line 72
    .line 73
    neg-int v8, v1

    .line 74
    add-int v1, v1, p6

    .line 75
    .line 76
    if-le v3, v2, :cond_8

    .line 77
    .line 78
    move v3, v2

    .line 79
    :goto_8
    const/4 v2, 0x1

    .line 80
    goto :goto_9

    .line 81
    :cond_8
    if-ge v3, v7, :cond_9

    .line 82
    .line 83
    move v3, v7

    .line 84
    goto :goto_8

    .line 85
    :cond_9
    const/4 v2, 0x0

    .line 86
    :goto_9
    if-le v6, v1, :cond_a

    .line 87
    .line 88
    move v6, v1

    .line 89
    :goto_a
    const/4 v1, 0x1

    .line 90
    goto :goto_b

    .line 91
    :cond_a
    if-ge v6, v8, :cond_b

    .line 92
    .line 93
    move v6, v8

    .line 94
    goto :goto_a

    .line 95
    :cond_b
    const/4 v1, 0x0

    .line 96
    :goto_b
    if-eqz v1, :cond_c

    .line 97
    .line 98
    invoke-virtual {p0, v5}, Lcom/join/mgps/customview/NestedWebView;->hasNestedScrollingParent(I)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-nez v7, :cond_c

    .line 103
    .line 104
    iget-object v7, v0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 105
    .line 106
    const/4 v8, 0x0

    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v10, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/join/mgps/customview/NestedWebView;->getScrollRange()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    move-object p1, v7

    .line 114
    move p2, v3

    .line 115
    move p3, v6

    .line 116
    move/from16 p4, v8

    .line 117
    .line 118
    move/from16 p5, v9

    .line 119
    .line 120
    move/from16 p6, v10

    .line 121
    .line 122
    move/from16 p7, v11

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 125
    .line 126
    .line 127
    :cond_c
    invoke-virtual {p0, v3, v6, v2, v1}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 128
    .line 129
    .line 130
    if-nez v2, :cond_d

    .line 131
    .line 132
    if-eqz v1, :cond_e

    .line 133
    .line 134
    :cond_d
    const/4 v4, 0x1

    .line 135
    :cond_e
    return v4
.end method

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private j(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "participateInNestedScrolling"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/NestedWebView;->startNestedScroll(II)Z

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/NestedWebView;->stopNestedScroll(I)V

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/join/mgps/customview/NestedWebView;->n:I

    .line 17
    .line 18
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v1, p0, Lcom/join/mgps/customview/NestedWebView;->n:I

    .line 22
    .line 23
    sub-int v6, v0, v1

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/customview/NestedWebView;->n:I

    .line 26
    .line 27
    iget-object v3, p0, Lcom/join/mgps/customview/NestedWebView;->c:[I

    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    const/4 v11, 0x0

    .line 31
    aput v11, v3, v10

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    move-object v0, p0

    .line 37
    move v2, v6

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/customview/NestedWebView;->dispatchNestedPreScroll(II[I[II)Z

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->c:[I

    .line 42
    .line 43
    aget v0, v0, v10

    .line 44
    .line 45
    sub-int v12, v6, v0

    .line 46
    .line 47
    if-eqz v12, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/join/mgps/customview/NestedWebView;->getScrollRange()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    move-object v0, p0

    .line 67
    move v2, v12

    .line 68
    move v4, v13

    .line 69
    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/customview/NestedWebView;->h(IIIIIIIIZ)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    sub-int/2addr v0, v13

    .line 77
    sub-int/2addr v12, v0

    .line 78
    iget-object v7, p0, Lcom/join/mgps/customview/NestedWebView;->c:[I

    .line 79
    .line 80
    aput v11, v7, v10

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    iget-object v5, p0, Lcom/join/mgps/customview/NestedWebView;->b:[I

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    move-object v0, p0

    .line 88
    move v4, v12

    .line 89
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/customview/NestedWebView;->dispatchNestedScroll(IIII[II[I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->c:[I

    .line 93
    .line 94
    aget v0, v0, v10

    .line 95
    .line 96
    sub-int/2addr v12, v0

    .line 97
    :cond_1
    if-eqz v12, :cond_2

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedWebView;->a()V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_3

    .line 109
    .line 110
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p3, p1, p2, v0}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/customview/NestedWebView;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow",
            "type"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 8
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow",
            "type",
            "consumed"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/NestedWebView;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow",
            "type"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public getNestedScrollAxes()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method getScrollRange()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/NestedWebView;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    const/4 v4, -0x1

    .line 20
    if-eq v0, v1, :cond_5

    .line 21
    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-eq v0, v1, :cond_5

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/NestedWebView;->g(Landroid/view/MotionEvent;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_2
    iget v0, p0, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 38
    .line 39
    if-ne v0, v4, :cond_3

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-ne v5, v4, :cond_4

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "Invalid pointerId="

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " in onInterceptTouchEvent"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    float-to-int v0, v0

    .line 74
    iget v4, p0, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 75
    .line 76
    sub-int v4, v0, v4

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    iget v5, p0, Lcom/join/mgps/customview/NestedWebView;->h:I

    .line 83
    .line 84
    if-le v4, v5, :cond_8

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/join/mgps/customview/NestedWebView;->getNestedScrollAxes()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    and-int/2addr v2, v4

    .line 91
    if-nez v2, :cond_8

    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 94
    .line 95
    iput v0, p0, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 96
    .line 97
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedWebView;->f()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 103
    .line 104
    .line 105
    iput v3, p0, Lcom/join/mgps/customview/NestedWebView;->j:I

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_8

    .line 112
    .line 113
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    iput-boolean v3, p0, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 118
    .line 119
    iput v4, p0, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 120
    .line 121
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedWebView;->i()V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    const/4 v5, 0x0

    .line 135
    const/4 v6, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/join/mgps/customview/NestedWebView;->getScrollRange()I

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_6

    .line 146
    .line 147
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/customview/NestedWebView;->stopNestedScroll()V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    float-to-int v0, v0

    .line 159
    iput v0, p0, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 166
    .line 167
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedWebView;->d()V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    xor-int/2addr p1, v1

    .line 187
    iput-boolean p1, p0, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 188
    .line 189
    invoke-virtual {p0, v2}, Lcom/join/mgps/customview/NestedWebView;->startNestedScroll(I)Z

    .line 190
    .line 191
    .line 192
    :cond_8
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 193
    .line 194
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/customview/NestedWebView;->f()V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 9
    .line 10
    .line 11
    move-result-object v12

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v13, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput v13, v10, Lcom/join/mgps/customview/NestedWebView;->j:I

    .line 20
    .line 21
    :cond_0
    iget v1, v10, Lcom/join/mgps/customview/NestedWebView;->j:I

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v12, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    const/4 v14, 0x1

    .line 30
    if-eqz v0, :cond_f

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    if-eq v0, v14, :cond_c

    .line 34
    .line 35
    if-eq v0, v1, :cond_5

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-eq v0, v1, :cond_3

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    if-eq v0, v1, :cond_1

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/customview/NestedWebView;->g(Landroid/view/MotionEvent;)V

    .line 49
    .line 50
    .line 51
    iget v0, v10, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 52
    .line 53
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    iput v0, v10, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    float-to-int v1, v1

    .line 75
    iput v1, v10, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 76
    .line 77
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, v10, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_3
    iget-boolean v0, v10, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iget-object v13, v10, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 96
    .line 97
    .line 98
    move-result v15

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    const/16 v17, 0x0

    .line 102
    .line 103
    const/16 v18, 0x0

    .line 104
    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/NestedWebView;->getScrollRange()I

    .line 106
    .line 107
    .line 108
    move-result v19

    .line 109
    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    iput v3, v10, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 119
    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/customview/NestedWebView;->b()V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_5
    iget v0, v10, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 126
    .line 127
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-ne v0, v3, :cond_6

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "Invalid pointerId="

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget v1, v10, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, " in onTouchEvent"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :cond_6
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    float-to-int v6, v0

    .line 160
    iget v0, v10, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 161
    .line 162
    sub-int v7, v0, v6

    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    iget-object v3, v10, Lcom/join/mgps/customview/NestedWebView;->c:[I

    .line 166
    .line 167
    iget-object v4, v10, Lcom/join/mgps/customview/NestedWebView;->b:[I

    .line 168
    .line 169
    const/4 v5, 0x0

    .line 170
    move-object/from16 v0, p0

    .line 171
    .line 172
    move v2, v7

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/customview/NestedWebView;->dispatchNestedPreScroll(II[I[II)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_7

    .line 178
    .line 179
    iget-object v0, v10, Lcom/join/mgps/customview/NestedWebView;->c:[I

    .line 180
    .line 181
    aget v0, v0, v14

    .line 182
    .line 183
    sub-int/2addr v7, v0

    .line 184
    iget v0, v10, Lcom/join/mgps/customview/NestedWebView;->j:I

    .line 185
    .line 186
    iget-object v1, v10, Lcom/join/mgps/customview/NestedWebView;->b:[I

    .line 187
    .line 188
    aget v1, v1, v14

    .line 189
    .line 190
    add-int/2addr v0, v1

    .line 191
    iput v0, v10, Lcom/join/mgps/customview/NestedWebView;->j:I

    .line 192
    .line 193
    :cond_7
    iget-boolean v0, v10, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 194
    .line 195
    if-nez v0, :cond_a

    .line 196
    .line 197
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iget v1, v10, Lcom/join/mgps/customview/NestedWebView;->h:I

    .line 202
    .line 203
    if-le v0, v1, :cond_a

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 212
    .line 213
    .line 214
    :cond_8
    iput-boolean v14, v10, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 215
    .line 216
    if-lez v7, :cond_9

    .line 217
    .line 218
    iget v0, v10, Lcom/join/mgps/customview/NestedWebView;->h:I

    .line 219
    .line 220
    sub-int/2addr v7, v0

    .line 221
    goto :goto_0

    .line 222
    :cond_9
    iget v0, v10, Lcom/join/mgps/customview/NestedWebView;->h:I

    .line 223
    .line 224
    add-int/2addr v7, v0

    .line 225
    :cond_a
    :goto_0
    move v15, v7

    .line 226
    iget-boolean v0, v10, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 227
    .line 228
    if-eqz v0, :cond_12

    .line 229
    .line 230
    iget-object v0, v10, Lcom/join/mgps/customview/NestedWebView;->b:[I

    .line 231
    .line 232
    aget v0, v0, v14

    .line 233
    .line 234
    sub-int/2addr v6, v0

    .line 235
    iput v6, v10, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 236
    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 238
    .line 239
    .line 240
    move-result v16

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/NestedWebView;->getScrollRange()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    const/4 v1, 0x0

    .line 246
    const/4 v3, 0x0

    .line 247
    const/4 v5, 0x0

    .line 248
    const/4 v7, 0x0

    .line 249
    const/4 v8, 0x0

    .line 250
    const/4 v9, 0x1

    .line 251
    move-object/from16 v0, p0

    .line 252
    .line 253
    move v2, v15

    .line 254
    move/from16 v4, v16

    .line 255
    .line 256
    invoke-direct/range {v0 .. v9}, Lcom/join/mgps/customview/NestedWebView;->h(IIIIIIIIZ)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_b

    .line 261
    .line 262
    invoke-virtual {v10, v13}, Lcom/join/mgps/customview/NestedWebView;->hasNestedScrollingParent(I)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-nez v0, :cond_b

    .line 267
    .line 268
    iget-object v0, v10, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 271
    .line 272
    .line 273
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    sub-int v2, v0, v16

    .line 278
    .line 279
    sub-int v4, v15, v2

    .line 280
    .line 281
    iget-object v7, v10, Lcom/join/mgps/customview/NestedWebView;->c:[I

    .line 282
    .line 283
    aput v13, v7, v14

    .line 284
    .line 285
    const/4 v1, 0x0

    .line 286
    const/4 v3, 0x0

    .line 287
    iget-object v5, v10, Lcom/join/mgps/customview/NestedWebView;->b:[I

    .line 288
    .line 289
    const/4 v6, 0x0

    .line 290
    move-object/from16 v0, p0

    .line 291
    .line 292
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/customview/NestedWebView;->dispatchNestedScroll(IIII[II[I)V

    .line 293
    .line 294
    .line 295
    iget v0, v10, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 296
    .line 297
    iget-object v1, v10, Lcom/join/mgps/customview/NestedWebView;->b:[I

    .line 298
    .line 299
    aget v1, v1, v14

    .line 300
    .line 301
    sub-int/2addr v0, v1

    .line 302
    iput v0, v10, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 303
    .line 304
    iget v0, v10, Lcom/join/mgps/customview/NestedWebView;->j:I

    .line 305
    .line 306
    add-int/2addr v0, v1

    .line 307
    iput v0, v10, Lcom/join/mgps/customview/NestedWebView;->j:I

    .line 308
    .line 309
    goto/16 :goto_2

    .line 310
    .line 311
    :cond_c
    iget-object v0, v10, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 312
    .line 313
    iget v1, v10, Lcom/join/mgps/customview/NestedWebView;->m:I

    .line 314
    .line 315
    int-to-float v1, v1

    .line 316
    const/16 v4, 0x3e8

    .line 317
    .line 318
    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 319
    .line 320
    .line 321
    iget v1, v10, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    float-to-int v0, v0

    .line 328
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    iget v4, v10, Lcom/join/mgps/customview/NestedWebView;->l:I

    .line 333
    .line 334
    if-le v1, v4, :cond_d

    .line 335
    .line 336
    neg-int v0, v0

    .line 337
    int-to-float v1, v0

    .line 338
    invoke-virtual {v10, v2, v1}, Lcom/join/mgps/customview/NestedWebView;->dispatchNestedPreFling(FF)Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-nez v4, :cond_e

    .line 343
    .line 344
    invoke-virtual {v10, v2, v1, v14}, Lcom/join/mgps/customview/NestedWebView;->dispatchNestedFling(FFZ)Z

    .line 345
    .line 346
    .line 347
    invoke-direct {v10, v0}, Lcom/join/mgps/customview/NestedWebView;->c(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_1

    .line 351
    :cond_d
    iget-object v15, v10, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 354
    .line 355
    .line 356
    move-result v16

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 358
    .line 359
    .line 360
    move-result v17

    .line 361
    const/16 v18, 0x0

    .line 362
    .line 363
    const/16 v19, 0x0

    .line 364
    .line 365
    const/16 v20, 0x0

    .line 366
    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/customview/NestedWebView;->getScrollRange()I

    .line 368
    .line 369
    .line 370
    move-result v21

    .line 371
    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_e

    .line 376
    .line 377
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 378
    .line 379
    .line 380
    :cond_e
    :goto_1
    iput v3, v10, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 381
    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/customview/NestedWebView;->b()V

    .line 383
    .line 384
    .line 385
    goto :goto_2

    .line 386
    :cond_f
    iget-object v0, v10, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 387
    .line 388
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    xor-int/2addr v0, v14

    .line 393
    iput-boolean v0, v10, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 394
    .line 395
    if-eqz v0, :cond_10

    .line 396
    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-eqz v0, :cond_10

    .line 402
    .line 403
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 404
    .line 405
    .line 406
    :cond_10
    iget-object v0, v10, Lcom/join/mgps/customview/NestedWebView;->k:Landroid/widget/OverScroller;

    .line 407
    .line 408
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_11

    .line 413
    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/customview/NestedWebView;->a()V

    .line 415
    .line 416
    .line 417
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    float-to-int v0, v0

    .line 422
    iput v0, v10, Lcom/join/mgps/customview/NestedWebView;->d:I

    .line 423
    .line 424
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    iput v0, v10, Lcom/join/mgps/customview/NestedWebView;->i:I

    .line 429
    .line 430
    invoke-virtual {v10, v1, v13}, Lcom/join/mgps/customview/NestedWebView;->startNestedScroll(II)Z

    .line 431
    .line 432
    .line 433
    :cond_12
    :goto_2
    iget-object v0, v10, Lcom/join/mgps/customview/NestedWebView;->g:Landroid/view/VelocityTracker;

    .line 434
    .line 435
    if-eqz v0, :cond_13

    .line 436
    .line 437
    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 438
    .line 439
    .line 440
    :cond_13
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 441
    .line 442
    .line 443
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    return v0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deltaX",
            "deltaY",
            "scrollX",
            "scrollY",
            "scrollRangeX",
            "scrollRangeY",
            "maxOverScrollX",
            "maxOverScrollY",
            "isTouchEvent"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/NestedWebView;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct/range {p0 .. p9}, Lcom/join/mgps/customview/NestedWebView;->h(IIIIIIIIZ)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disallowIntercept"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/NestedWebView;->i()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axes"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/NestedWebView;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axes",
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/NestedWebView;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/NestedWebView;->e:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
