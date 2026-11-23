.class public Lcom/join/mgps/customview/LoopViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/LoopViewPager$LifeCycle;
    }
.end annotation


# static fields
.field public static final l:I = 0x5

.field private static final m:Z = false

.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x2


# instance fields
.field b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private c:Lcom/join/mgps/customview/n;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Ljava/util/concurrent/ScheduledExecutorService;

.field h:Z

.field private i:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private j:F

.field private k:Z


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
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->d:Z

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/LoopViewPager;->e:I

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->f:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->h:Z

    .line 6
    new-instance v0, Lcom/join/mgps/customview/LoopViewPager$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/LoopViewPager$a;-><init>(Lcom/join/mgps/customview/LoopViewPager;)V

    iput-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->i:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/LoopViewPager;->j:F

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->k:Z

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/LoopViewPager;->f()V

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

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->d:Z

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/LoopViewPager;->e:I

    .line 13
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->f:Z

    .line 14
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->h:Z

    .line 15
    new-instance p2, Lcom/join/mgps/customview/LoopViewPager$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/LoopViewPager$a;-><init>(Lcom/join/mgps/customview/LoopViewPager;)V

    iput-object p2, p0, Lcom/join/mgps/customview/LoopViewPager;->i:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/LoopViewPager;->j:F

    .line 17
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->k:Z

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/customview/LoopViewPager;->f()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/LoopViewPager;)Lcom/join/mgps/customview/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LoopViewPager;->c:Lcom/join/mgps/customview/n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/LoopViewPager;)I
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/LoopViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LoopViewPager;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/LoopViewPager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LoopViewPager;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/LoopViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/LoopViewPager;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->i:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    return-void
.end method

.method public static j(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "count"
        }
    .end annotation

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    if-gez p0, :cond_0

    .line 4
    .line 5
    add-int/2addr p0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    rem-int/2addr p0, p1

    .line 8
    :goto_0
    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
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
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v3, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/LoopViewPager;->j:F

    .line 17
    .line 18
    cmpl-float v1, v0, v2

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-float/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/join/mgps/customview/LoopViewPager;->j:F

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/LoopViewPager;->j:F

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/high16 v1, 0x40a00000    # 5.0f

    .line 36
    .line 37
    cmpl-float v0, v0, v1

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    iput-boolean v3, p0, Lcom/join/mgps/customview/LoopViewPager;->k:Z

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-boolean v1, p0, Lcom/join/mgps/customview/LoopViewPager;->k:Z

    .line 48
    .line 49
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/join/mgps/customview/LoopViewPager;->j:F

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iput v2, p0, Lcom/join/mgps/customview/LoopViewPager;->j:F

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/join/mgps/customview/LoopViewPager;->k:Z

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/LoopViewPager;->j:F

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/join/mgps/customview/LoopViewPager;->k:Z

    .line 67
    .line 68
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->c:Lcom/join/mgps/customview/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->c:Lcom/join/mgps/customview/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/n;->h(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/LoopViewPager;->i(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public i(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delay"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/LoopViewPager;->g()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/customview/LoopViewPager$b;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/LoopViewPager$b;-><init>(Lcom/join/mgps/customview/LoopViewPager;)V

    .line 13
    .line 14
    .line 15
    mul-int/lit16 p1, p1, 0x3e8

    .line 16
    .line 17
    int-to-long v4, p1

    .line 18
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    move-wide v2, v4

    .line 21
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/LoopViewPager;->g()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
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
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/customview/LoopViewPager;->f:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/customview/LoopViewPager;->f:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/customview/LoopViewPager;->h:Z

    .line 24
    .line 25
    :goto_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/n;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/n;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->c:Lcom/join/mgps/customview/n;

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->d:Z

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/n;->f(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/LoopViewPager;->c:Lcom/join/mgps/customview/n;

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1, p1}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(IZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setBoundaryCaching(Z)V
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
    iput-boolean p1, p0, Lcom/join/mgps/customview/LoopViewPager;->d:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->c:Lcom/join/mgps/customview/n;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/n;->f(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/LoopViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "smoothScroll"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/LoopViewPager;->c:Lcom/join/mgps/customview/n;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/n;->g(I)I

    move-result p1

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setLifeCycle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifeCycle"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LoopViewPager;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoopViewPager;->b:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method
