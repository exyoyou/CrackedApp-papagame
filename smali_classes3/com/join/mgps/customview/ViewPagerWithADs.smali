.class public Lcom/join/mgps/customview/ViewPagerWithADs;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ViewPagerWithADs$a;
    }
.end annotation


# static fields
.field public static final l:I = 0x5


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/join/mgps/customview/ViewPagerWithADs$a;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroidx/viewpager/widget/PagerAdapter;

.field private j:F

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    const/16 v1, 0x32

    .line 3
    iput v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->d:I

    .line 4
    iput-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->e:Ljava/util/List;

    const/16 v0, 0x28

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->f:I

    const/16 v0, 0x7d0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->g:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->h:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:F

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->k:Z

    .line 10
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    const/16 v1, 0x32

    .line 13
    iput v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->d:I

    .line 14
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->e:Ljava/util/List;

    const/16 p2, 0x28

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->f:I

    const/16 p2, 0x7d0

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->g:I

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->h:I

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:F

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->k:Z

    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ViewPagerWithADs;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ViewPagerWithADs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->h:I

    .line 2
    .line 3
    return p0
.end method

.method private c(Landroid/content/Context;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dpValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    int-to-float p2, p2

    .line 12
    mul-float p2, p2, p1

    .line 13
    .line 14
    const/high16 p1, 0x3f000000    # 0.5f

    .line 15
    .line 16
    add-float/2addr p2, p1

    .line 17
    float-to-int p1, p2

    .line 18
    return p1
.end method

.method private d()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0x11

    .line 15
    .line 16
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    .line 18
    iget v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->d:I

    .line 19
    .line 20
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v2, p0, v3}, Lcom/join/mgps/customview/ViewPagerWithADs$a;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs;Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->e:Ljava/util/List;

    .line 48
    .line 49
    iget v3, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->f:I

    .line 50
    .line 51
    iget v4, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->g:I

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i(Landroid/content/Context;Ljava/util/List;II)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    return-void
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
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:F

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
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:F

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:F

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
    iput-boolean v3, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->k:Z

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-boolean v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->k:Z

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
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:F

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iput v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:F

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->k:Z

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:F

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->k:Z

    .line 67
    .line 68
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    return p1
.end method

.method public e(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h(Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAll(Landroid/content/Context;Landroidx/viewpager/widget/PagerAdapter;Ljava/util/List;III)V
    .locals 0
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
            "context",
            "mAdapter",
            "banners",
            "pageMargin",
            "marginLR",
            "times"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/viewpager/widget/PagerAdapter;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:Landroidx/viewpager/widget/PagerAdapter;

    .line 3
    iput p5, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->d:I

    .line 4
    iput-object p3, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->e:Ljava/util/List;

    .line 5
    iput p4, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->f:I

    .line 6
    iput p6, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->g:I

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/ViewPagerWithADs;->d()V

    return-void
.end method

.method public setAll(Landroid/content/Context;Ljava/util/List;IIII)V
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
            "context",
            "banners",
            "pageMargin",
            "marginLR",
            "times",
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;IIII)V"
        }
    .end annotation

    .line 8
    iput p6, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->h:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/ViewPagerWithADs;->setAll(Landroid/content/Context;Landroidx/viewpager/widget/PagerAdapter;Ljava/util/List;III)V

    return-void
.end method
