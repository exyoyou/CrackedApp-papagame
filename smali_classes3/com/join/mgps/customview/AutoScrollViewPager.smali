.class public Lcom/join/mgps/customview/AutoScrollViewPager;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/AutoScrollViewPager$f;,
        Lcom/join/mgps/customview/AutoScrollViewPager$e;,
        Lcom/join/mgps/customview/AutoScrollViewPager$b;,
        Lcom/join/mgps/customview/AutoScrollViewPager$c;,
        Lcom/join/mgps/customview/AutoScrollViewPager$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private final f:I

.field private final g:I

.field private h:I

.field private i:I

.field private j:Lcom/join/mgps/customview/AutoScrollViewPager$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/customview/AutoScrollViewPager<",
            "TT;>.c;"
        }
    .end annotation
.end field

.field private k:Lcom/join/mgps/customview/AutoScrollViewPager$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/customview/AutoScrollViewPager<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private l:F

.field private m:F

.field private n:J

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private p:Landroid/os/Handler;

.field private q:Lcom/join/mgps/customview/AutoScrollViewPager$e;

.field private r:Lcom/join/mgps/customview/AutoScrollViewPager$f;


# direct methods
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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x1388

    .line 5
    .line 6
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->f:I

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    iput p2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->g:I

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/customview/AutoScrollViewPager$a;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/AutoScrollViewPager$a;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Landroid/os/Handler;

    .line 24
    .line 25
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 26
    .line 27
    iput-boolean p2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Z

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/customview/AutoScrollViewPager;->k()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/AutoScrollViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/AutoScrollViewPager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/mgps/customview/AutoScrollViewPager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/AutoScrollViewPager;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/AutoScrollViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/AutoScrollViewPager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/AutoScrollViewPager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/AutoScrollViewPager;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/AutoScrollViewPager;->j(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/AutoScrollViewPager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->i:I

    .line 2
    .line 3
    return p1
.end method

.method private j(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->q:Lcom/join/mgps/customview/AutoScrollViewPager$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/join/mgps/customview/AutoScrollViewPager$e;->a(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 11
    .line 12
    const-string v0, "view is not null"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method private k()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 3
    .line 4
    iput v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->i:I

    .line 5
    .line 6
    iget v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x1388

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iput v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->c:I

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    iget v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 21
    .line 22
    if-le v0, v1, :cond_1

    .line 23
    .line 24
    iput v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->c:I

    .line 25
    .line 26
    :cond_1
    return-void
.end method


# virtual methods
.method public l(IILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "marginLR",
            "pageMargin",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroidx/viewpager/widget/ViewPager;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 24
    .line 25
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    const/16 v2, 0x11

    .line 32
    .line 33
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    .line 35
    invoke-virtual {v1, p1, v0, p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 57
    .line 58
    new-instance p2, Lcom/join/mgps/customview/AutoScrollViewPager$d;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/join/mgps/customview/AutoScrollViewPager$d;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0, p2}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Ljava/util/List;

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-lez p1, :cond_0

    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->o:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit16 v0, v0, 0x3e8

    .line 8
    .line 9
    iput v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->i:I

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/customview/AutoScrollViewPager$b;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/AutoScrollViewPager$b;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;Lcom/join/mgps/customview/AutoScrollViewPager$a;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->k:Lcom/join/mgps/customview/AutoScrollViewPager$b;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/join/mgps/customview/AutoScrollViewPager$c;

    .line 28
    .line 29
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/AutoScrollViewPager$c;-><init>(Lcom/join/mgps/customview/AutoScrollViewPager;Lcom/join/mgps/customview/AutoScrollViewPager$a;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->j:Lcom/join/mgps/customview/AutoScrollViewPager$c;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->j:Lcom/join/mgps/customview/AutoScrollViewPager$c;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->e:Landroidx/viewpager/widget/ViewPager;

    .line 45
    .line 46
    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->h:I

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Landroid/os/Handler;

    .line 57
    .line 58
    iget v1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 59
    .line 60
    int-to-long v1, v1

    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x7

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    move-object v0, p1

    .line 23
    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->l:F

    .line 33
    .line 34
    sub-float/2addr v0, v2

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->m:F

    .line 43
    .line 44
    sub-float/2addr v0, v2

    .line 45
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    iget-wide v4, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:J

    .line 53
    .line 54
    sub-long/2addr v2, v4

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->l:F

    .line 63
    .line 64
    sub-float/2addr v0, v2

    .line 65
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/high16 v2, 0x41a00000    # 20.0f

    .line 70
    .line 71
    cmpg-float v0, v0, v2

    .line 72
    .line 73
    if-gez v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget v3, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->m:F

    .line 80
    .line 81
    sub-float/2addr v0, v3

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    cmpg-float v0, v0, v2

    .line 87
    .line 88
    if-gez v0, :cond_2

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    iget-wide v4, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:J

    .line 95
    .line 96
    sub-long/2addr v2, v4

    .line 97
    const-wide/16 v4, 0xc8

    .line 98
    .line 99
    cmp-long v0, v2, v4

    .line 100
    .line 101
    if-gez v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->r:Lcom/join/mgps/customview/AutoScrollViewPager$f;

    .line 104
    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget v2, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->i:I

    .line 108
    .line 109
    invoke-interface {v0, p1, v2}, Lcom/join/mgps/customview/AutoScrollViewPager$f;->a(Landroid/view/View;I)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 113
    .line 114
    if-lez p1, :cond_4

    .line 115
    .line 116
    iget-boolean v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Z

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Landroid/os/Handler;

    .line 121
    .line 122
    int-to-long v2, p1

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->l:F

    .line 137
    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->m:F

    .line 143
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    iput-wide v0, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->n:J

    .line 149
    .line 150
    iget p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 151
    .line 152
    if-lez p1, :cond_4

    .line 153
    .line 154
    iget-boolean p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->d:Z

    .line 155
    .line 156
    if-eqz p1, :cond_4

    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->p:Landroid/os/Handler;

    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_0
    invoke-super {p0, p2}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    return p1
.end method

.method public setLoopTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loopTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public setOnCreateItemViewListener(Lcom/join/mgps/customview/AutoScrollViewPager$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCreateItemViewListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->q:Lcom/join/mgps/customview/AutoScrollViewPager$e;

    .line 2
    .line 3
    return-void
.end method

.method public setOnItemClickListener(Lcom/join/mgps/customview/AutoScrollViewPager$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onItemClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/AutoScrollViewPager;->r:Lcom/join/mgps/customview/AutoScrollViewPager$f;

    .line 2
    .line 3
    return-void
.end method
