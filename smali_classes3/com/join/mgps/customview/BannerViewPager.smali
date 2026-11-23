.class public Lcom/join/mgps/customview/BannerViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# static fields
.field public static final f:I = 0x5


# instance fields
.field protected b:Landroidx/viewpager/widget/ViewPager;

.field private c:I

.field private d:F

.field private e:Z


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
    iput-object p1, p0, Lcom/join/mgps/customview/BannerViewPager;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/BannerViewPager;->d:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/BannerViewPager;->e:Z

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
    iput-object p1, p0, Lcom/join/mgps/customview/BannerViewPager;->b:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/BannerViewPager;->d:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/BannerViewPager;->e:Z

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
    iget v0, p0, Lcom/join/mgps/customview/BannerViewPager;->d:F

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
    iput v0, p0, Lcom/join/mgps/customview/BannerViewPager;->d:F

    .line 28
    .line 29
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/BannerViewPager;->d:F

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
    iput-boolean v3, p0, Lcom/join/mgps/customview/BannerViewPager;->e:Z

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-boolean v1, p0, Lcom/join/mgps/customview/BannerViewPager;->e:Z

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
    iput v0, p0, Lcom/join/mgps/customview/BannerViewPager;->d:F

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iput v2, p0, Lcom/join/mgps/customview/BannerViewPager;->d:F

    .line 60
    .line 61
    iput-boolean v1, p0, Lcom/join/mgps/customview/BannerViewPager;->e:Z

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/BannerViewPager;->d:F

    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/join/mgps/customview/BannerViewPager;->e:Z

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

.method public getTotalSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/BannerViewPager;->c:I

    .line 2
    .line 3
    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setTotalSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalSize"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/BannerViewPager;->c:I

    .line 2
    .line 3
    return-void
.end method
