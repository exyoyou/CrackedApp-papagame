.class public Lcom/join/mgps/customview/InterceptEventViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/InterceptEventViewPager$c;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "InterceptEventViewPager"


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/view/View$OnTouchListener;

.field private m:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private n:Lcom/join/mgps/customview/InterceptEventViewPager$c;


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->d:Z

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->e:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->f:Z

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->g:Z

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->h:Z

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->j:Z

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->k:Z

    .line 10
    new-instance p1, Lcom/join/mgps/customview/InterceptEventViewPager$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/InterceptEventViewPager$a;-><init>(Lcom/join/mgps/customview/InterceptEventViewPager;)V

    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->l:Landroid/view/View$OnTouchListener;

    .line 11
    new-instance p1, Lcom/join/mgps/customview/InterceptEventViewPager$b;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/InterceptEventViewPager$b;-><init>(Lcom/join/mgps/customview/InterceptEventViewPager;)V

    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->m:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 12
    invoke-direct {p0}, Lcom/join/mgps/customview/InterceptEventViewPager;->m()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/InterceptEventViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/InterceptEventViewPager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->i:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/InterceptEventViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->n:Lcom/join/mgps/customview/InterceptEventViewPager$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/join/mgps/customview/InterceptEventViewPager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lcom/join/mgps/customview/InterceptEventViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/join/mgps/customview/InterceptEventViewPager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->c:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method private m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->m:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->l:Landroid/view/View$OnTouchListener;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "checkV",
            "dx",
            "x",
            "y"
        }
    .end annotation

    .line 1
    if-eq p1, p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    .line 4
    .line 5
    :cond_0
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public scrollTo(II)V
    .locals 0
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
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->b:I

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setCanScrollView(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollView"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->j:Z

    .line 2
    .line 3
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

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setIsAsParentViewPager(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asParentViewPager"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setViewPagerCallback(Lcom/join/mgps/customview/InterceptEventViewPager$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager;->n:Lcom/join/mgps/customview/InterceptEventViewPager$c;

    .line 2
    .line 3
    return-void
.end method
