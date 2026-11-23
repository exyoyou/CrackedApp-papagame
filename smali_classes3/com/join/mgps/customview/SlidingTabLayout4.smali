.class public Lcom/join/mgps/customview/SlidingTabLayout4;
.super Lcom/join/mgps/customview/SlidingTabLayout1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayout4$c;,
        Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;
    }
.end annotation


# instance fields
.field private K:Landroid/os/Handler;

.field private L:Lcom/join/mgps/customview/SlidingTabLayout4$c;

.field private M:I

.field private N:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

.field private O:I

.field private P:Ljava/lang/Runnable;


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
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;)V

    const v0, -0x98967f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->M:I

    .line 3
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->N:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    const/16 v0, 0x32

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->O:I

    .line 5
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout4$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/SlidingTabLayout4$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout4;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->P:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4;->q(Landroid/content/Context;)V

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

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, -0x98967f

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->M:I

    .line 9
    sget-object p2, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->N:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    const/16 p2, 0x32

    .line 10
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->O:I

    .line 11
    new-instance p2, Lcom/join/mgps/customview/SlidingTabLayout4$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabLayout4$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout4;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->P:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4;->q(Landroid/content/Context;)V

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
            "defStyle"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x98967f

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->M:I

    .line 15
    sget-object p2, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->N:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    const/16 p2, 0x32

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->O:I

    .line 17
    new-instance p2, Lcom/join/mgps/customview/SlidingTabLayout4$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabLayout4$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout4;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->P:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4;->q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic j(Lcom/join/mgps/customview/SlidingTabLayout4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->M:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/join/mgps/customview/SlidingTabLayout4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->M:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->N:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/join/mgps/customview/SlidingTabLayout4;Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;)Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->N:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic n(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->L:Lcom/join/mgps/customview/SlidingTabLayout4$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/customview/SlidingTabLayout4;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->K:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/customview/SlidingTabLayout4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->O:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method protected b(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "resId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->c(ILandroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected c(ILandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "tab"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout4$a;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4$a;-><init>(Lcom/join/mgps/customview/SlidingTabLayout4;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected d(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "title"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x11

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->c(ILandroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x4

    .line 15
    if-gt v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->TOUCH_SCROLL:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->N:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->L:Lcom/join/mgps/customview/SlidingTabLayout4$c;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout4$c;->a(Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->K:Landroid/os/Handler;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->P:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->K:Landroid/os/Handler;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->P:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method q(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const p1, -0xb8b00

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4;->setHandler(Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x1

    .line 26
    const/high16 v1, 0x41b00000    # 22.0f

    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    float-to-int p1, p1

    .line 33
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 34
    .line 35
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->K:Landroid/os/Handler;

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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/join/mgps/customview/SlidingTabLayout4$c;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->L:Lcom/join/mgps/customview/SlidingTabLayout4$c;

    .line 2
    .line 3
    return-void
.end method
