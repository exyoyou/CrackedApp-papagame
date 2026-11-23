.class public Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$OnScrollListener;,
        Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;
    }
.end annotation


# instance fields
.field private childViewPager:Landroidx/viewpager/widget/ViewPager;

.field private isClickHead:Z

.field private isClickHeadExpand:Z

.field private mCurY:I

.field private mDirection:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

.field private mDisallowIntercept:Z

.field private mDownX:F

.field private mDownY:F

.field private mExpandHeight:I

.field private mHeadHeight:I

.field private mHeadView:Landroid/view/View;

.field private mHelper:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;

.field private mLastScrollerY:I

.field private mLastY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private maxY:I

.field private minY:I

.field private needCheckUpdown:Z

.field private onScrollListener:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$OnScrollListener;

.field private final tag:Ljava/lang/String;

.field private updown:Z


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

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "cp:scrollableLayout"

    .line 2
    iput-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 4
    iput v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 5
    invoke-direct {p0, p1}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->init(Landroid/content/Context;)V

    return-void
.end method

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

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "cp:scrollableLayout"

    .line 7
    iput-object p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->tag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 8
    iput p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 9
    iput p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 10
    invoke-direct {p0, p1}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

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

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "cp:scrollableLayout"

    .line 12
    iput-object p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->tag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 14
    iput p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 15
    invoke-direct {p0, p1}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p2, "cp:scrollableLayout"

    .line 17
    iput-object p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->tag:Ljava/lang/String;

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 19
    iput p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 20
    invoke-direct {p0, p1}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calcDuration(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "timepass"
        }
    .end annotation

    sub-int/2addr p1, p2

    return p1
.end method

.method private checkIsClickHead(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downY",
            "headHeight",
            "scrollY"
        }
    .end annotation

    .line 1
    add-int/2addr p1, p3

    .line 2
    if-gt p1, p2, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-boolean p1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isClickHead:Z

    .line 8
    .line 9
    return-void
.end method

.method private checkIsClickHeadExpand(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downY",
            "headHeight",
            "scrollY"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mExpandHeight:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isClickHeadExpand:Z

    .line 7
    .line 8
    :cond_0
    add-int/2addr p1, p3

    .line 9
    add-int/2addr p2, v0

    .line 10
    if-gt p1, p2, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_1
    iput-boolean v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isClickHeadExpand:Z

    .line 14
    .line 15
    return-void
.end method

.method private getScrollerVelocity(II)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "distance",
            "duration"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrVelocity()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    float-to-int p1, p1

    .line 12
    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHelper:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;

    .line 7
    .line 8
    new-instance v0, Landroid/widget/Scroller;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mTouchSlop:I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mMinimumVelocity:I

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mMaximumVelocity:I

    .line 36
    .line 37
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

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

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public canPtr()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->updown:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mCurY:I

    .line 6
    .line 7
    iget v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHelper:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->isTop()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDirection:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

    .line 16
    .line 17
    sget-object v2, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;->UP:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isSticked()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sub-int/2addr v1, v0

    .line 36
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-direct {p0, v0, v2}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->calcDuration(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHelper:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;

    .line 53
    .line 54
    invoke-direct {p0, v1, v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->getScrollerVelocity(II)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v2, v4, v1, v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->smoothScrollBy(III)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, v4, v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->scrollTo(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHelper:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->isTop()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isClickHeadExpand:Z

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    :cond_2
    iget v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mLastScrollerY:I

    .line 84
    .line 85
    sub-int v1, v0, v1

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    add-int/2addr v2, v1

    .line 92
    invoke-virtual {p0, v4, v2}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->scrollTo(II)V

    .line 93
    .line 94
    .line 95
    iget v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mCurY:I

    .line 96
    .line 97
    iget v2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 98
    .line 99
    if-gt v1, v2, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 108
    .line 109
    .line 110
    :goto_0
    iput v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mLastScrollerY:I

    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget v4, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDownX:F

    .line 14
    .line 15
    sub-float v4, v2, v4

    .line 16
    .line 17
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    float-to-int v4, v4

    .line 22
    iget v5, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDownY:F

    .line 23
    .line 24
    sub-float v5, v3, v5

    .line 25
    .line 26
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    float-to-int v5, v5

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x1

    .line 37
    if-eqz v6, :cond_e

    .line 38
    .line 39
    if-eq v6, v8, :cond_7

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    if-eq v6, v2, :cond_0

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    iget-boolean v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDisallowIntercept:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->initVelocityTrackerIfNotExists()V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 58
    .line 59
    .line 60
    iget v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mLastY:F

    .line 61
    .line 62
    sub-float/2addr v2, v3

    .line 63
    iget-boolean v6, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->needCheckUpdown:Z

    .line 64
    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    iget v6, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mTouchSlop:I

    .line 68
    .line 69
    if-le v4, v6, :cond_2

    .line 70
    .line 71
    if-le v4, v5, :cond_2

    .line 72
    .line 73
    iput-boolean v7, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->needCheckUpdown:Z

    .line 74
    .line 75
    iput-boolean v7, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->updown:Z

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-le v5, v6, :cond_3

    .line 79
    .line 80
    if-le v5, v4, :cond_3

    .line 81
    .line 82
    iput-boolean v7, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->needCheckUpdown:Z

    .line 83
    .line 84
    iput-boolean v8, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->updown:Z

    .line 85
    .line 86
    :cond_3
    :goto_0
    iget-boolean v6, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->updown:Z

    .line 87
    .line 88
    if-eqz v6, :cond_6

    .line 89
    .line 90
    iget v6, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mTouchSlop:I

    .line 91
    .line 92
    if-le v5, v6, :cond_6

    .line 93
    .line 94
    if-le v5, v4, :cond_6

    .line 95
    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isSticked()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    iget-object v4, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHelper:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;

    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;->isTop()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_4

    .line 109
    .line 110
    iget-boolean v4, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isClickHeadExpand:Z

    .line 111
    .line 112
    if-eqz v4, :cond_6

    .line 113
    .line 114
    :cond_4
    iget-object v4, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->childViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 115
    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 119
    .line 120
    .line 121
    :cond_5
    float-to-double v4, v2

    .line 122
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 123
    .line 124
    add-double/2addr v4, v9

    .line 125
    double-to-int v2, v4

    .line 126
    invoke-virtual {v0, v7, v2}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->scrollBy(II)V

    .line 127
    .line 128
    .line 129
    :cond_6
    iput v3, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mLastY:F

    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_7
    iget-boolean v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->updown:Z

    .line 134
    .line 135
    if-eqz v2, :cond_f

    .line 136
    .line 137
    if-le v5, v4, :cond_f

    .line 138
    .line 139
    iget v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mTouchSlop:I

    .line 140
    .line 141
    if-le v5, v2, :cond_f

    .line 142
    .line 143
    iget-object v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 144
    .line 145
    iget v3, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mMaximumVelocity:I

    .line 146
    .line 147
    int-to-float v3, v3

    .line 148
    const/16 v4, 0x3e8

    .line 149
    .line 150
    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 151
    .line 152
    .line 153
    iget-object v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 154
    .line 155
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    neg-float v2, v2

    .line 160
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    iget v4, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mMinimumVelocity:I

    .line 165
    .line 166
    int-to-float v4, v4

    .line 167
    cmpl-float v3, v3, v4

    .line 168
    .line 169
    if-lez v3, :cond_c

    .line 170
    .line 171
    const/4 v3, 0x0

    .line 172
    cmpl-float v3, v2, v3

    .line 173
    .line 174
    if-lez v3, :cond_8

    .line 175
    .line 176
    sget-object v3, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;->UP:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_8
    sget-object v3, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;->DOWN:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

    .line 180
    .line 181
    :goto_1
    iput-object v3, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDirection:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

    .line 182
    .line 183
    sget-object v4, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;->UP:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

    .line 184
    .line 185
    if-ne v3, v4, :cond_9

    .line 186
    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isSticked()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-nez v3, :cond_a

    .line 192
    .line 193
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isSticked()Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_b

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_b

    .line 204
    .line 205
    iget-object v3, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDirection:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

    .line 206
    .line 207
    sget-object v4, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;->DOWN:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$DIRECTION;

    .line 208
    .line 209
    if-ne v3, v4, :cond_b

    .line 210
    .line 211
    :cond_a
    const/4 v7, 0x1

    .line 212
    goto :goto_2

    .line 213
    :cond_b
    iget-object v9, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 214
    .line 215
    const/4 v10, 0x0

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    const/4 v12, 0x0

    .line 221
    float-to-int v13, v2

    .line 222
    const/4 v14, 0x0

    .line 223
    const/4 v15, 0x0

    .line 224
    const v16, -0x7fffffff

    .line 225
    .line 226
    .line 227
    const v17, 0x7fffffff

    .line 228
    .line 229
    .line 230
    invoke-virtual/range {v9 .. v17}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 231
    .line 232
    .line 233
    iget-object v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 234
    .line 235
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    iput v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mLastScrollerY:I

    .line 243
    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 245
    .line 246
    .line 247
    :cond_c
    :goto_2
    if-nez v7, :cond_f

    .line 248
    .line 249
    iget-boolean v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isClickHead:Z

    .line 250
    .line 251
    if-nez v2, :cond_d

    .line 252
    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->isSticked()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-nez v2, :cond_f

    .line 258
    .line 259
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    const/4 v3, 0x3

    .line 264
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 265
    .line 266
    .line 267
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 272
    .line 273
    .line 274
    return v3

    .line 275
    :cond_e
    iput-boolean v7, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDisallowIntercept:Z

    .line 276
    .line 277
    iput-boolean v8, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->needCheckUpdown:Z

    .line 278
    .line 279
    iput-boolean v8, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->updown:Z

    .line 280
    .line 281
    iput v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDownX:F

    .line 282
    .line 283
    iput v3, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDownY:F

    .line 284
    .line 285
    iput v3, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mLastY:F

    .line 286
    .line 287
    float-to-int v2, v3

    .line 288
    iget v3, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHeadHeight:I

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-direct {v0, v2, v3, v4}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->checkIsClickHead(III)V

    .line 295
    .line 296
    .line 297
    iget v3, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHeadHeight:I

    .line 298
    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    invoke-direct {v0, v2, v3, v4}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->checkIsClickHeadExpand(III)V

    .line 304
    .line 305
    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->initOrResetVelocityTracker()V

    .line 307
    .line 308
    .line 309
    iget-object v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 310
    .line 311
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 312
    .line 313
    .line 314
    iget-object v2, v0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mScroller:Landroid/widget/Scroller;

    .line 315
    .line 316
    invoke-virtual {v2, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 317
    .line 318
    .line 319
    :cond_f
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 320
    .line 321
    .line 322
    return v8
.end method

.method public getHelper()Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHelper:Lcom/cpoopc/scrollablelayoutlib/ScrollableHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 2
    .line 3
    return v0
.end method

.method public isHeadTop()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mCurY:I

    .line 2
    .line 3
    iget v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isSticked()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mCurY:I

    .line 2
    .line 3
    iget v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHeadView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHeadView:Landroid/view/View;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    instance-of v3, v2, Landroidx/viewpager/widget/ViewPager;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    .line 35
    .line 36
    iput-object v2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->childViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v2

    .line 6
    iput-object v2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHeadView:Landroid/view/View;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move v3, p1

    .line 13
    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHeadView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHeadView:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mHeadHeight:I

    .line 31
    .line 32
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iget v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 37
    .line 38
    add-int/2addr p2, v0

    .line 39
    const/high16 v0, 0x40000000    # 2.0f

    .line 40
    .line 41
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public requestScrollableLayoutDisallowInterceptTouchEvent(Z)V
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
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mDisallowIntercept:Z

    .line 5
    .line 6
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr p2, v0

    .line 6
    iget v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 7
    .line 8
    if-lt p2, v1, :cond_0

    .line 9
    .line 10
    :goto_0
    move p2, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 13
    .line 14
    if-gt p2, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :goto_1
    sub-int/2addr p2, v0

    .line 18
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->maxY:I

    .line 2
    .line 3
    if-lt p2, v0, :cond_0

    .line 4
    .line 5
    move p2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->minY:I

    .line 8
    .line 9
    if-gt p2, v1, :cond_1

    .line 10
    .line 11
    move p2, v1

    .line 12
    :cond_1
    :goto_0
    iput p2, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mCurY:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->onScrollListener:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$OnScrollListener;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v1, p2, v0}, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$OnScrollListener;->onScroll(II)V

    .line 19
    .line 20
    .line 21
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setClickHeadExpand(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandHeight"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->mExpandHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollListener(Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$OnScrollListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScrollListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout;->onScrollListener:Lcom/cpoopc/scrollablelayoutlib/ScrollableLayout$OnScrollListener;

    .line 2
    .line 3
    return-void
.end method
