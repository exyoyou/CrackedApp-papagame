.class public Lcom/join/mgps/customview/CarouselViewPager2;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/CarouselViewPager2$LifeCycle;
    }
.end annotation


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2


# instance fields
.field private b:I

.field private c:Z

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
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
    iput p1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->b:I

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->c:Z

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->e:Z

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

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->b:I

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->c:Z

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CarouselViewPager2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/CarouselViewPager2;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/CarouselViewPager2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/CarouselViewPager2;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/CarouselViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/CarouselViewPager2;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2;->d:Ljava/util/concurrent/ScheduledExecutorService;

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
    iget-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/CarouselViewPager2;->d()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/CarouselViewPager2;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    new-instance v1, Lcom/join/mgps/customview/CarouselViewPager2$a;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/CarouselViewPager2$a;-><init>(Lcom/join/mgps/customview/CarouselViewPager2;)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0xfa0

    .line 19
    .line 20
    const-wide/16 v4, 0xfa0

    .line 21
    .line 22
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/CarouselViewPager2;->d()V

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
    iput-boolean v0, p0, Lcom/join/mgps/customview/CarouselViewPager2;->c:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iput-boolean v1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->c:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->e:Z

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
    iput p1, p0, Lcom/join/mgps/customview/CarouselViewPager2;->b:I

    .line 2
    .line 3
    return-void
.end method
