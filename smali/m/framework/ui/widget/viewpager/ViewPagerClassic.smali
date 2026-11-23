.class public Lm/framework/ui/widget/viewpager/ViewPagerClassic;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

.field private currentScreen:I

.field private lastMotionX:F

.field private lastMotionY:F

.field private mMaximumVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private scroller:Landroid/widget/Scroller;

.field private touchSlop:I

.field private touchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 5
    invoke-direct {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->init(Landroid/content/Context;)V

    return-void
.end method

.method private handleInterceptMove(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    .line 10
    .line 11
    sub-float v1, v0, v1

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    float-to-int v1, v1

    .line 18
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionY:F

    .line 19
    .line 20
    sub-float/2addr p1, v2

    .line 21
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    float-to-int p1, p1

    .line 26
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchSlop:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-le v1, v2, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    if-le p1, v2, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    :cond_1
    if-nez v1, :cond_2

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    :cond_2
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iput v4, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 45
    .line 46
    iput v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method private handleScrollMove(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    .line 11
    .line 12
    sub-float/2addr v0, p1

    .line 13
    float-to-int v0, v0

    .line 14
    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-lez v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    neg-int v1, v1

    .line 30
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-lez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    sub-int/2addr v1, v2

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    sub-int/2addr v1, v2

    .line 70
    if-lez v1, :cond_2

    .line 71
    .line 72
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollBy(II)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lm/framework/ui/widget/viewpager/ViewPagerClassic$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic$1;-><init>(Lm/framework/ui/widget/viewpager/ViewPagerClassic;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchSlop:I

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mMaximumVelocity:I

    .line 32
    .line 33
    return-void
.end method

.method private scrollToScreen(IZ)V
    .locals 8

    .line 2
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v2, v0, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int p1, p1, v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int v5, p1, v0

    .line 8
    iget-object v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    div-int/lit8 v1, p1, 0x2

    move v7, v1

    :goto_1
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 34
    .line 35
    iget-object v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    div-int v3, v1, v2

    .line 46
    .line 47
    rem-int/2addr v1, v2

    .line 48
    div-int/lit8 v2, v2, 0x2

    .line 49
    .line 50
    if-le v1, v2, :cond_2

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iput v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 70
    .line 71
    if-eq v0, v1, :cond_3

    .line 72
    .line 73
    iget-object v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-virtual {v2, v1, v0}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;->onScreenChange(II)V

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 17
    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/lit8 v3, v3, -0x1

    .line 45
    .line 46
    if-ge v2, v3, :cond_2

    .line 47
    .line 48
    iget v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/16 v0, 0x11

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne p2, v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 16
    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const/16 v0, 0x42

    .line 25
    .line 26
    if-ne p2, v0, :cond_2

    .line 27
    .line 28
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    sub-int/2addr v2, v1

    .line 35
    if-ge v0, v2, :cond_2

    .line 36
    .line 37
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 38
    .line 39
    add-int/2addr p1, v1

    .line 40
    invoke-virtual {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public getCurrentScreen()I
    .locals 1

    .line 1
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 2
    .line 3
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

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
    iget v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    iget-object v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x3

    .line 37
    if-eq v0, p1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->handleInterceptMove(Landroid/view/MotionEvent;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 45
    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 53
    .line 54
    :cond_4
    iput v3, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    .line 66
    .line 67
    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionY:F

    .line 68
    .line 69
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    xor-int/2addr p1, v1

    .line 76
    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 77
    .line 78
    :goto_0
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 79
    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    return v1

    .line 83
    :cond_6
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sub-int/2addr p4, p2

    .line 7
    sub-int/2addr p5, p3

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x0

    .line 13
    const/4 p3, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-lt p3, p1, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    add-int v2, v0, p4

    .line 31
    .line 32
    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 33
    .line 34
    .line 35
    move v0, v2

    .line 36
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 37
    .line 38
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p2}, Lm/framework/utils/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    .line 23
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-lt v2, p1, :cond_2

    .line 31
    .line 32
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-super {p0, p2, v4}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 37
    .line 38
    .line 39
    :goto_1
    if-lt v1, p1, :cond_1

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p2, v4}, Landroid/view/View;->measure(II)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4, p2, v1}, Landroid/view/View;->measure(II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-le v4, v3, :cond_3

    .line 64
    .line 65
    move v3, v4

    .line 66
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v0, :cond_9

    .line 32
    .line 33
    if-eq v0, v3, :cond_5

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-eq v0, v2, :cond_3

    .line 37
    .line 38
    const/4 p1, 0x3

    .line 39
    if-eq v0, p1, :cond_2

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_2
    iput v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_3
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 48
    .line 49
    if-ne v0, v3, :cond_4

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->handleScrollMove(Landroid/view/MotionEvent;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_4
    invoke-virtual {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_b

    .line 61
    .line 62
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 63
    .line 64
    if-ne v0, v3, :cond_b

    .line 65
    .line 66
    invoke-direct {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->handleScrollMove(Landroid/view/MotionEvent;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 71
    .line 72
    if-ne p1, v3, :cond_8

    .line 73
    .line 74
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 75
    .line 76
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mMaximumVelocity:I

    .line 77
    .line 78
    int-to-float v0, v0

    .line 79
    const/16 v2, 0x3e8

    .line 80
    .line 81
    invoke-virtual {p1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    float-to-int p1, p1

    .line 89
    const/16 v0, 0x1f4

    .line 90
    .line 91
    if-le p1, v0, :cond_6

    .line 92
    .line 93
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 94
    .line 95
    if-lez v0, :cond_6

    .line 96
    .line 97
    sub-int/2addr v0, v3

    .line 98
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    const/16 v0, -0x1f4

    .line 103
    .line 104
    if-ge p1, v0, :cond_7

    .line 105
    .line 106
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    sub-int/2addr v0, v3

    .line 113
    if-ge p1, v0, :cond_7

    .line 114
    .line 115
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 116
    .line 117
    add-int/2addr p1, v3

    .line 118
    invoke-virtual {p0, p1}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    div-int/lit8 v2, p1, 0x2

    .line 131
    .line 132
    add-int/2addr v0, v2

    .line 133
    div-int/2addr v0, p1

    .line 134
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    .line 135
    .line 136
    .line 137
    :goto_0
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 142
    .line 143
    .line 144
    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 146
    .line 147
    :cond_8
    iput v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_9
    iget p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->touchState:I

    .line 151
    .line 152
    if-eqz p1, :cond_b

    .line 153
    .line 154
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_a

    .line 161
    .line 162
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 165
    .line 166
    .line 167
    :cond_a
    iput v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->lastMotionX:F

    .line 168
    .line 169
    :cond_b
    :goto_1
    return v3
.end method

.method public scrollLeft()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 7
    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scrollToScreen(IZ)V

    return-void
.end method

.method public setAdapter(Lm/framework/ui/widget/viewpager/ViewPagerAdapter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 8
    .line 9
    iget-object v1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1, v0, p0}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 35
    .line 36
    iget-object v2, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->adapter:Lm/framework/ui/widget/viewpager/ViewPagerAdapter;

    .line 37
    .line 38
    invoke-virtual {v2, p1, v0}, Lm/framework/ui/widget/viewpager/ViewPagerAdapter;->onScreenChange(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lm/framework/utils/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget v0, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->currentScreen:I

    .line 50
    .line 51
    mul-int v0, v0, p1

    .line 52
    .line 53
    iget-object p1, p0, Lm/framework/ui/widget/viewpager/ViewPagerClassic;->scroller:Landroid/widget/Scroller;

    .line 54
    .line 55
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
