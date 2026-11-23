.class public Lcom/join/mgps/customview/SlideBottomPanel;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final F:Ljava/lang/String; = "SlideBottomPanel"

.field private static final G:I = 0x1

.field private static final H:I = 0x2

.field private static final I:I = -0x1

.field private static final J:I = 0x3c

.field private static final K:I = 0x17c

.field private static final L:I = 0x1e

.field private static final M:I = 0xfa

.field private static final N:I = 0x12c

.field private static final O:Z = true

.field private static final P:Z = true

.field private static final Q:Z = false

.field private static R:F = 5.0f


# instance fields
.field private A:Z

.field private B:Landroid/view/animation/Interpolator;

.field private C:Landroid/view/animation/Interpolator;

.field private D:Landroid/content/Context;

.field private E:Lcom/join/mgps/customview/DarkFrameLayout;

.field private b:I

.field private c:F

.field private d:Z

.field private e:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:Landroid/view/VelocityTracker;

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private r:Z

.field private s:I

.field private t:F

.field private u:F

.field private v:F

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlideBottomPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlideBottomPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->x:Z

    .line 8
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->y:Z

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Z

    .line 11
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->B:Landroid/view/animation/Interpolator;

    .line 12
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->C:Landroid/view/animation/Interpolator;

    .line 13
    iput-object p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->c:F

    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->i:I

    .line 17
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:I

    .line 18
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->h:F

    .line 19
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->SlideBottomPanel:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:I

    const/16 p2, 0x17c

    .line 21
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/SlideBottomPanel;->m(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x6

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    const/4 p2, 0x2

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->y:Z

    const/16 p2, 0x3c

    .line 23
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/SlideBottomPanel;->m(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    sput p2, Lcom/join/mgps/customview/SlideBottomPanel;->R:F

    const/16 p2, 0x1e

    .line 24
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/SlideBottomPanel;->m(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->v:F

    const/16 p2, 0xfa

    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->w:I

    const/4 p2, 0x4

    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    const/4 p2, 0x3

    .line 27
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->x:Z

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->u()V

    return-void
.end method

.method private A(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    return-void
.end method

.method private B(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    .line 18
    .line 19
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 20
    .line 21
    invoke-direct {p0, v0, v1, v3}, Lcom/join/mgps/customview/SlideBottomPanel;->n(Landroid/view/ViewGroup;FF)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    instance-of v1, v0, Landroid/widget/AbsListView;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Landroid/widget/AbsListView;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    instance-of v1, v0, Landroid/widget/ScrollView;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    check-cast v0, Landroid/widget/ScrollView;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_2
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    .line 56
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    .line 57
    .line 58
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 59
    .line 60
    invoke-direct {p0, v0, v1, v3}, Lcom/join/mgps/customview/SlideBottomPanel;->n(Landroid/view/ViewGroup;FF)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    instance-of v1, v0, Landroid/widget/AbsListView;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    check-cast v0, Landroid/widget/AbsListView;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_4
    instance-of v1, v0, Landroid/widget/ScrollView;

    .line 83
    .line 84
    if-eqz v1, :cond_5

    .line 85
    .line 86
    check-cast v0, Landroid/widget/ScrollView;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_5
    return v2
.end method

.method private a(Landroid/widget/AbsListView;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "absListView",
            "direction"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-lez p2, :cond_3

    .line 15
    .line 16
    add-int/lit8 p2, v0, -0x1

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    add-int/2addr v2, v0

    .line 27
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lt v2, v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    sub-int/2addr v0, p1

    .line 42
    if-le p2, v0, :cond_2

    .line 43
    .line 44
    :cond_1
    const/4 v1, 0x1

    .line 45
    :cond_2
    return v1

    .line 46
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-gtz v2, :cond_4

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ge p2, p1, :cond_5

    .line 61
    .line 62
    :cond_4
    const/4 v1, 0x1

    .line 63
    :cond_5
    return v1
.end method

.method static synthetic b(Lcom/join/mgps/customview/SlideBottomPanel;)Lcom/join/mgps/customview/DarkFrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/SlideBottomPanel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->x:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/join/mgps/customview/SlideBottomPanel;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->A(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lcom/join/mgps/customview/SlideBottomPanel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/join/mgps/customview/SlideBottomPanel;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 2
    .line 3
    return p0
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->i:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    const/16 v2, 0x3e8

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->f:F

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->g:F

    .line 26
    .line 27
    return-void
.end method

.method private j(Landroid/widget/ScrollView;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollView"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sub-int v1, v2, v1

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-gez p1, :cond_1

    .line 42
    .line 43
    sub-int/2addr v2, p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-le p1, v0, :cond_2

    .line 46
    .line 47
    sub-int/2addr p1, v0

    .line 48
    add-int/2addr v2, p1

    .line 49
    :cond_2
    :goto_0
    return v2
.end method

.method private l(FFFF)D
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "y1",
            "x2",
            "y2"
        }
    .end annotation

    .line 1
    sub-float/2addr p1, p3

    .line 2
    sub-float/2addr p2, p4

    .line 3
    mul-float p1, p1, p1

    .line 4
    .line 5
    mul-float p2, p2, p2

    .line 6
    .line 7
    add-float/2addr p1, p2

    .line 8
    float-to-double p1, p1

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method private m(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpValue"
        }
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->c:F

    .line 3
    .line 4
    mul-float p1, p1, v0

    .line 5
    .line 6
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    .line 8
    add-float/2addr p1, v0

    .line 9
    float-to-int p1, p1

    .line 10
    return p1
.end method

.method private n(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentView",
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    cmpl-float v2, p2, v2

    .line 19
    .line 20
    if-ltz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    cmpg-float v2, p2, v2

    .line 28
    .line 29
    if-gez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 36
    .line 37
    add-int/2addr v2, v3

    .line 38
    int-to-float v2, v2

    .line 39
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    .line 40
    .line 41
    sub-float/2addr v2, v3

    .line 42
    cmpl-float v2, p3, v2

    .line 43
    .line 44
    if-ltz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 51
    .line 52
    add-int/2addr v2, v3

    .line 53
    int-to-float v2, v2

    .line 54
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    .line 55
    .line 56
    sub-float/2addr v2, v3

    .line 57
    cmpg-float v2, p3, v2

    .line 58
    .line 59
    if-gez v2, :cond_0

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method private o(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:J

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->o:F

    .line 18
    .line 19
    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 30
    .line 31
    sub-float/2addr v2, v3

    .line 32
    cmpl-float v2, p1, v2

    .line 33
    .line 34
    if-lez v2, :cond_0

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 43
    .line 44
    int-to-float v3, v3

    .line 45
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 46
    .line 47
    sub-float/2addr v3, v4

    .line 48
    cmpg-float v3, p1, v3

    .line 49
    .line 50
    if-gtz v3, :cond_1

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Z

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 58
    .line 59
    int-to-float v3, v3

    .line 60
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    .line 61
    .line 62
    sub-float/2addr v3, v4

    .line 63
    cmpl-float v3, p1, v3

    .line 64
    .line 65
    if-lez v3, :cond_2

    .line 66
    .line 67
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Z

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 73
    .line 74
    int-to-float v0, v0

    .line 75
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    .line 76
    .line 77
    sub-float/2addr v0, v1

    .line 78
    cmpg-float p1, p1, v0

    .line 79
    .line 80
    if-gez p1, :cond_3

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->s()V

    .line 83
    .line 84
    .line 85
    iput-boolean v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Z

    .line 86
    .line 87
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 88
    :goto_1
    return v1
.end method

.method private p(Landroid/view/MotionEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-float/2addr v0, v1

    .line 17
    float-to-int v0, v0

    .line 18
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/SlideBottomPanel;->B(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->i()V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->f:F

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->g:F

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    cmpl-float v0, v0, v1

    .line 41
    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:Z

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 54
    .line 55
    sub-float/2addr v0, v1

    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->h:F

    .line 61
    .line 62
    cmpl-float v0, v0, v1

    .line 63
    .line 64
    if-lez v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    .line 71
    .line 72
    sub-float/2addr v0, v1

    .line 73
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->h:F

    .line 78
    .line 79
    cmpg-float v0, v0, v1

    .line 80
    .line 81
    if-gez v0, :cond_3

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:Z

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->o:F

    .line 91
    .line 92
    :cond_3
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:Z

    .line 93
    .line 94
    if-eqz v0, :cond_9

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->o:F

    .line 101
    .line 102
    sub-float/2addr v0, v1

    .line 103
    iput v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->p:F

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->o:F

    .line 110
    .line 111
    const/4 p1, 0x2

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->t(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->x:Z

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 144
    .line 145
    int-to-float v2, v1

    .line 146
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    .line 147
    .line 148
    sub-float/2addr v2, v3

    .line 149
    cmpl-float v2, v0, v2

    .line 150
    .line 151
    if-lez v2, :cond_5

    .line 152
    .line 153
    int-to-float v2, v1

    .line 154
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 155
    .line 156
    sub-float/2addr v2, v3

    .line 157
    cmpg-float v2, v0, v2

    .line 158
    .line 159
    if-gez v2, :cond_5

    .line 160
    .line 161
    iget-object v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 162
    .line 163
    int-to-float v1, v1

    .line 164
    sub-float/2addr v1, v3

    .line 165
    div-float/2addr v0, v1

    .line 166
    const/high16 v1, 0x3f800000    # 1.0f

    .line 167
    .line 168
    sub-float/2addr v1, v0

    .line 169
    const/high16 v0, 0x431f0000    # 159.0f

    .line 170
    .line 171
    mul-float v1, v1, v0

    .line 172
    .line 173
    float-to-int v0, v1

    .line 174
    invoke-virtual {v2, v0}, Lcom/join/mgps/customview/DarkFrameLayout;->b(I)V

    .line 175
    .line 176
    .line 177
    :cond_5
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->y:Z

    .line 178
    .line 179
    if-nez v0, :cond_6

    .line 180
    .line 181
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->p:F

    .line 182
    .line 183
    float-to-int v0, v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_6
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->p:F

    .line 193
    .line 194
    add-float v2, v0, v1

    .line 195
    .line 196
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 197
    .line 198
    int-to-float v4, v3

    .line 199
    iget v5, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    .line 200
    .line 201
    sub-float/2addr v4, v5

    .line 202
    cmpg-float v2, v2, v4

    .line 203
    .line 204
    if-gtz v2, :cond_7

    .line 205
    .line 206
    int-to-float v1, v3

    .line 207
    sub-float/2addr v1, v5

    .line 208
    sub-float/2addr v1, v0

    .line 209
    float-to-int v0, v1

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_7
    add-float v2, v0, v1

    .line 215
    .line 216
    int-to-float v4, v3

    .line 217
    iget v5, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 218
    .line 219
    sub-float/2addr v4, v5

    .line 220
    cmpl-float v2, v2, v4

    .line 221
    .line 222
    if-ltz v2, :cond_8

    .line 223
    .line 224
    int-to-float v1, v3

    .line 225
    sub-float/2addr v1, v5

    .line 226
    sub-float/2addr v1, v0

    .line 227
    float-to-int v0, v1

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_8
    float-to-int v0, v1

    .line 233
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 234
    .line 235
    .line 236
    :cond_9
    :goto_0
    return-void
.end method

.method private q(Landroid/view/MotionEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->q:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->i()V

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 26
    .line 27
    sub-float/2addr v2, v4

    .line 28
    cmpg-float v2, v2, v3

    .line 29
    .line 30
    if-gez v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 37
    .line 38
    sub-float/2addr v2, v4

    .line 39
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->v:F

    .line 44
    .line 45
    cmpl-float v2, v2, v4

    .line 46
    .line 47
    if-gtz v2, :cond_2

    .line 48
    .line 49
    :cond_1
    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->g:F

    .line 50
    .line 51
    cmpg-float v4, v2, v3

    .line 52
    .line 53
    if-gez v4, :cond_3

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->f:F

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    cmpl-float v2, v2, v4

    .line 66
    .line 67
    if-lez v2, :cond_3

    .line 68
    .line 69
    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->g:F

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->j:I

    .line 76
    .line 77
    int-to-float v4, v4

    .line 78
    cmpl-float v2, v2, v4

    .line 79
    .line 80
    if-lez v2, :cond_3

    .line 81
    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->k()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-boolean v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 87
    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    const-wide/16 v4, 0x12c

    .line 91
    .line 92
    cmp-long v2, v0, v4

    .line 93
    .line 94
    if-gez v2, :cond_4

    .line 95
    .line 96
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->m:F

    .line 97
    .line 98
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/join/mgps/customview/SlideBottomPanel;->l(FFFF)D

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    sget v2, Lcom/join/mgps/customview/SlideBottomPanel;->R:F

    .line 113
    .line 114
    float-to-double v4, v2

    .line 115
    cmpg-double v2, v0, v4

    .line 116
    .line 117
    if-gez v2, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->k()V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 124
    .line 125
    if-nez v0, :cond_6

    .line 126
    .line 127
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:Z

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 136
    .line 137
    sub-float/2addr v0, v1

    .line 138
    cmpl-float v0, v0, v3

    .line 139
    .line 140
    if-gtz v0, :cond_5

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->n:F

    .line 147
    .line 148
    sub-float/2addr p1, v0

    .line 149
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->v:F

    .line 154
    .line 155
    cmpg-float p1, p1, v0

    .line 156
    .line 157
    if-gez p1, :cond_6

    .line 158
    .line 159
    :cond_5
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->s()V

    .line 160
    .line 161
    .line 162
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 163
    .line 164
    const/4 v0, 0x0

    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    const/4 p1, 0x2

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 181
    .line 182
    int-to-float v5, v4

    .line 183
    iget v6, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    .line 184
    .line 185
    sub-float/2addr v5, v6

    .line 186
    cmpg-float v5, v2, v5

    .line 187
    .line 188
    if-ltz v5, :cond_8

    .line 189
    .line 190
    int-to-float v5, v4

    .line 191
    sub-float/2addr v5, v6

    .line 192
    iget v7, p0, Lcom/join/mgps/customview/SlideBottomPanel;->v:F

    .line 193
    .line 194
    add-float/2addr v5, v7

    .line 195
    cmpg-float v5, v2, v5

    .line 196
    .line 197
    if-gez v5, :cond_7

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :cond_7
    int-to-float p1, v4

    .line 201
    sub-float/2addr p1, v6

    .line 202
    add-float/2addr p1, v7

    .line 203
    cmpl-float p1, v2, p1

    .line 204
    .line 205
    if-lez p1, :cond_9

    .line 206
    .line 207
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->s()V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_8
    :goto_1
    new-array p1, p1, [F

    .line 212
    .line 213
    aput v2, p1, v0

    .line 214
    .line 215
    int-to-float v2, v4

    .line 216
    sub-float/2addr v2, v6

    .line 217
    const/4 v4, 0x1

    .line 218
    aput v2, p1, v4

    .line 219
    .line 220
    const-string v2, "y"

    .line 221
    .line 222
    invoke-static {v1, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iget v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->w:I

    .line 227
    .line 228
    int-to-long v1, v1

    .line 229
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 234
    .line 235
    .line 236
    :cond_9
    :goto_2
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->A:Z

    .line 237
    .line 238
    iput-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:Z

    .line 239
    .line 240
    iput v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->p:F

    .line 241
    .line 242
    return-void
.end method

.method private s()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 16
    .line 17
    int-to-float v2, v2

    .line 18
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 19
    .line 20
    sub-float/2addr v2, v3

    .line 21
    float-to-int v2, v2

    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    aput v4, v0, v3

    .line 30
    .line 31
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 32
    .line 33
    int-to-float v3, v3

    .line 34
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 35
    .line 36
    sub-float/2addr v3, v4

    .line 37
    const/4 v4, 0x1

    .line 38
    aput v3, v0, v4

    .line 39
    .line 40
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->C:Landroid/view/animation/Interpolator;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Lcom/join/mgps/customview/SlideBottomPanel$a;

    .line 53
    .line 54
    invoke-direct {v3, p0, v1, v2}, Lcom/join/mgps/customview/SlideBottomPanel$a;-><init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/join/mgps/customview/SlideBottomPanel$b;

    .line 61
    .line 62
    invoke-direct {v2, p0, v1}, Lcom/join/mgps/customview/SlideBottomPanel$b;-><init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private t(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panel"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->z:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method private u()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/customview/DarkFrameLayout;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/DarkFrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->D:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->s:I

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/DarkFrameLayout;->setSlideBottomPanel(Lcom/join/mgps/customview/SlideBottomPanel;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private v(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private x(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pxValue"
        }
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->c:F

    .line 3
    .line 4
    div-float/2addr p1, v0

    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 6
    .line 7
    add-float/2addr p1, v0

    .line 8
    float-to-int p1, p1

    .line 9
    return p1
.end method

.method private y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->k:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private z(Landroid/widget/ScrollView;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "direction"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->j(Landroid/widget/ScrollView;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sub-int/2addr v2, p1

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    const/4 p1, 0x1

    .line 23
    if-gez p2, :cond_2

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1
    return v1

    .line 29
    :cond_2
    sub-int/2addr v2, p1

    .line 30
    if-ge v0, v2, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    :cond_3
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->v(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->p(Landroid/view/MotionEvent;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->q(Landroid/view/MotionEvent;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->y()V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlideBottomPanel;->o(Landroid/view/MotionEvent;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, ""

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/4 v4, 0x0

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 56
    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    if-nez v0, :cond_6

    .line 60
    .line 61
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_5
    const/4 v1, 0x0

    .line 69
    :cond_6
    :goto_4
    return v1
.end method

.method public k()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->x:Z

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->E:Lcom/join/mgps/customview/DarkFrameLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DarkFrameLayout;->c(Z)V

    .line 22
    .line 23
    .line 24
    :cond_2
    const/4 v0, 0x2

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-array v0, v0, [F

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getY(Landroid/view/View;)F

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    aput v4, v0, v3

    .line 41
    .line 42
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 43
    .line 44
    int-to-float v3, v3

    .line 45
    iget v4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->t:F

    .line 46
    .line 47
    sub-float/2addr v3, v4

    .line 48
    aput v3, v0, v1

    .line 49
    .line 50
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->w:I

    .line 55
    .line 56
    int-to-long v3, v3

    .line 57
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/join/mgps/customview/SlideBottomPanel;->B:Landroid/view/animation/Interpolator;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/join/mgps/customview/SlideBottomPanel$c;

    .line 70
    .line 71
    invoke-direct {v3, p0, v2}, Lcom/join/mgps/customview/SlideBottomPanel$c;-><init>(Lcom/join/mgps/customview/SlideBottomPanel;Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Lcom/join/mgps/customview/SlideBottomPanel$d;

    .line 78
    .line 79
    invoke-direct {v3, p0}, Lcom/join/mgps/customview/SlideBottomPanel$d;-><init>(Lcom/join/mgps/customview/SlideBottomPanel;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 86
    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 89
    .line 90
    invoke-direct {p0, v2}, Lcom/join/mgps/customview/SlideBottomPanel;->t(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->r:Z

    .line 2
    .line 3
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->b:I

    .line 9
    .line 10
    iget p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 11
    .line 12
    int-to-float p1, p1

    .line 13
    iget p2, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 14
    .line 15
    sub-float/2addr p1, p2

    .line 16
    float-to-int p1, p1

    .line 17
    const/4 p2, 0x0

    .line 18
    const/4 p3, 0x0

    .line 19
    :goto_0
    iget p4, p0, Lcom/join/mgps/customview/SlideBottomPanel;->b:I

    .line 20
    .line 21
    if-ge p3, p4, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    if-eqz p5, :cond_1

    .line 32
    .line 33
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    check-cast p5, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    const/4 v0, 0x1

    .line 44
    if-eq p5, v0, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    new-instance p5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ""

    .line 60
    .line 61
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p5

    .line 68
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p5

    .line 72
    if-ne p5, v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    .line 76
    .line 77
    move-result p5

    .line 78
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 83
    .line 84
    .line 85
    iget p5, p0, Lcom/join/mgps/customview/SlideBottomPanel;->u:F

    .line 86
    .line 87
    float-to-int p5, p5

    .line 88
    invoke-virtual {p4, p2, p2, p2, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    :goto_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 93
    .line 94
    .line 95
    move-result p5

    .line 96
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    add-int/2addr v0, p1

    .line 101
    invoke-virtual {p4, p2, p1, p5, v0}, Landroid/view/View;->layout(IIII)V

    .line 102
    .line 103
    .line 104
    const/4 p5, 0x2

    .line 105
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p5

    .line 109
    invoke-virtual {p4, p5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
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
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/SlideBottomPanel;->l:I

    .line 9
    .line 10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/SlideBottomPanel;->s()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlideBottomPanel;->e:Z

    .line 2
    .line 3
    return v0
.end method
