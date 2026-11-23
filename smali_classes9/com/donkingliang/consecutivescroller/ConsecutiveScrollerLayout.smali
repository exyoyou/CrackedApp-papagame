.class public Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/ScrollingView;
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Landroidx/core/view/NestedScrollingChild2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;,
        Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;,
        Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$g;,
        Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$e;
    }
.end annotation


# static fields
.field private static final W:I = 0x0

.field private static final b1:I = 0x2

.field private static final f1:I = 0x3e8

.field public static final i1:I = 0x0

.field public static final l1:I = 0x1

.field private static final p0:I = 0x1

.field public static final p1:I = 0x2

.field static final q1:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Landroid/widget/EdgeEffect;

.field private E:Landroid/widget/EdgeEffect;

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:I

.field private K:I

.field private L:Landroid/view/View;

.field private final M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private O:I

.field private final P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private Q:I

.field private R:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$g;

.field private S:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$e;

.field private T:I

.field private U:Z

.field private V:Z

.field private b:I

.field c:I

.field private d:Landroid/widget/OverScroller;

.field private e:Landroid/view/VelocityTracker;

.field private f:Landroid/view/VelocityTracker;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final o:[I

.field private p:Z

.field private q:I

.field protected r:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;

.field private s:I

.field private t:Landroidx/core/view/NestedScrollingParentHelper;

.field private u:Landroidx/core/view/NestedScrollingChildHelper;

.field private final v:[I

.field private final w:[I

.field private x:Landroid/view/View;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q1:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
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
    invoke-direct {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 5
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->p:Z

    .line 7
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    new-array v2, p3, [I

    .line 9
    iput-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->v:[I

    new-array v2, p3, [I

    .line 10
    iput-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->w:[I

    .line 11
    iput v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 12
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 13
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B:I

    .line 14
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 15
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J:I

    .line 16
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K:I

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N:Ljava/util/List;

    .line 19
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->O:I

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->P:Ljava/util/List;

    .line 21
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 22
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 23
    iput-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->U:Z

    .line 24
    iput-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->V:Z

    const/4 v1, 0x0

    .line 25
    :try_start_0
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->ConsecutiveScrollerLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 p2, 0x3

    .line 26
    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G:Z

    .line 27
    invoke-virtual {v1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->H:Z

    const/4 p2, 0x4

    .line 28
    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K:I

    const/4 p2, 0x1

    .line 29
    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->I:Z

    .line 30
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    new-instance p3, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q1:Landroid/view/animation/Interpolator;

    invoke-direct {p3, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->h:I

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->i:I

    .line 36
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j:I

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 38
    invoke-virtual {p0, p2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 39
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->t:Landroidx/core/view/NestedScrollingParentHelper;

    .line 40
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 41
    invoke-virtual {p0, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setNestedScrollingEnabled(Z)V

    .line 42
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    :cond_0
    throw p1
.end method

.method private A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

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

.method private B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

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

.method private C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private F(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchX",
            "touchY"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->x(II)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method private G(Landroid/view/MotionEvent;)Z
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
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->j(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->k(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-direct {p0, v1, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->F(II)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 30
    return p1
.end method

.method private H()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eq v3, v4, :cond_0

    .line 38
    .line 39
    return v2

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 44
    return v0

    .line 45
    :cond_2
    return v2
.end method

.method private N(II)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "measureSpec",
            "size"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    move p2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v2, -0x80000000

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p2, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method private O(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dyUnconsumed",
            "type"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j(I)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 7
    .line 8
    sub-int v4, v1, v0

    .line 9
    .line 10
    sub-int v6, p1, v4

    .line 11
    .line 12
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    move v8, p2

    .line 18
    invoke-virtual/range {v2 .. v8}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private P(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCurrentStickyViews"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->S:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$e;->a(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private Q(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "children"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/View;

    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->w(Ljava/util/List;I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getStickyY()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    add-int/2addr v4, v2

    .line 32
    if-gt v3, v4, :cond_0

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getStickyY()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/2addr v3, v2

    .line 39
    int-to-float v2, v3

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->H()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->P(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private T()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getNonGoneChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/View;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->x:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->x:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sub-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->y:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private V()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getStickyChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_7

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Landroid/view/View;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G:Z

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->g()V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    move v3, v1

    .line 49
    :goto_1
    const/4 v4, 0x0

    .line 50
    if-ltz v3, :cond_4

    .line 51
    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Landroid/view/View;

    .line 57
    .line 58
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getStickyY()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-gt v6, v7, :cond_3

    .line 67
    .line 68
    if-eq v3, v1, :cond_2

    .line 69
    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v4, v0

    .line 77
    check-cast v4, Landroid/view/View;

    .line 78
    .line 79
    :cond_2
    move-object v0, v4

    .line 80
    move-object v4, v5

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move-object v0, v4

    .line 86
    :goto_2
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L:Landroid/view/View;

    .line 87
    .line 88
    if-eqz v4, :cond_6

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L(Landroid/view/View;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-nez v3, :cond_5

    .line 97
    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getStickyY()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    sub-int/2addr v0, v5

    .line 111
    sub-int/2addr v3, v0

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j0(Landroid/view/View;I)V

    .line 117
    .line 118
    .line 119
    :cond_6
    if-eq v1, v4, :cond_8

    .line 120
    .line 121
    iput-object v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L:Landroid/view/View;

    .line 122
    .line 123
    invoke-direct {p0, v1, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->i0(Landroid/view/View;Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f()V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->g()V

    .line 131
    .line 132
    .line 133
    :cond_8
    :goto_3
    return-void
.end method

.method private W(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrollY",
            "oldScrollY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->r:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 6
    .line 7
    invoke-interface {v0, p0, p1, p2, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;->a(Landroid/view/View;III)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private X(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "y"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->p(Landroid/view/View;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/widget/AbsListView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroid/widget/AbsListView;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move-object v0, p1

    .line 21
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/donkingliang/consecutivescroller/e;->x(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    new-instance p2, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$b;

    .line 37
    .line 38
    invoke-direct {p2, p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$b;-><init>(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a0(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v1, v2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B:I

    .line 20
    .line 21
    sub-int/2addr v4, v5

    .line 22
    invoke-direct {p0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-int/2addr v4, v1

    .line 27
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->y(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 34
    .line 35
    const/16 v6, 0x3e8

    .line 36
    .line 37
    if-ge v5, v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    add-int/2addr v5, v6

    .line 48
    add-int/2addr v5, v1

    .line 49
    if-le v5, v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    :cond_1
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 58
    .line 59
    iput v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 60
    .line 61
    iput v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B:I

    .line 62
    .line 63
    iput v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 64
    .line 65
    invoke-virtual {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_2
    const/4 v1, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_8

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iget v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 83
    .line 84
    if-ge v5, v6, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n()Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getBottomView()Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :goto_0
    if-eqz v5, :cond_8

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, Lcom/donkingliang/consecutivescroller/e;->o(Landroid/view/View;)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-gez v3, :cond_6

    .line 105
    .line 106
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    iget v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 111
    .line 112
    if-eq v6, v2, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    add-int/2addr v2, v6

    .line 123
    add-int/2addr v2, v1

    .line 124
    sub-int/2addr v4, v2

    .line 125
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    :cond_5
    invoke-direct {p0, v5, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->X(Landroid/view/View;I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    add-int/2addr v5, v6

    .line 146
    sub-int/2addr v5, v3

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    sub-int/2addr v5, v6

    .line 152
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    neg-int v6, v3

    .line 157
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    iget v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 162
    .line 163
    if-eq v6, v2, :cond_7

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    add-int/2addr v2, v6

    .line 174
    add-int/2addr v2, v1

    .line 175
    sub-int/2addr v4, v2

    .line 176
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    :cond_7
    add-int/2addr v3, v5

    .line 181
    invoke-direct {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b0(I)V

    .line 182
    .line 183
    .line 184
    move v3, v5

    .line 185
    :goto_1
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 186
    .line 187
    add-int/2addr v1, v3

    .line 188
    iput v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 189
    .line 190
    sub-int/2addr p1, v3

    .line 191
    :cond_8
    if-gez v3, :cond_9

    .line 192
    .line 193
    if-ltz p1, :cond_0

    .line 194
    .line 195
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eq v0, p1, :cond_a

    .line 200
    .line 201
    invoke-direct {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->W(II)V

    .line 202
    .line 203
    .line 204
    :cond_a
    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method private b0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 7
    .line 8
    if-le p1, v1, :cond_1

    .line 9
    .line 10
    move p1, v1

    .line 11
    :cond_1
    :goto_0
    invoke-super {p0, v0, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private d(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "changed",
            "isForce"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->x:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->x:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->y:I

    .line 23
    .line 24
    add-int/2addr p1, v1

    .line 25
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b0(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b0(I)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e(ZZ)V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    if-eq v0, p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->x:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eq p1, v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, p2, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->scrollTo(II)V

    .line 54
    .line 55
    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->x:Landroid/view/View;

    .line 58
    .line 59
    iput p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->y:I

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T()V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->V()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private e(ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLayoutChange",
            "isForce"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-boolean p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->p:Z

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/widget/OverScroller;->isFinished()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    if-eq p2, v0, :cond_1

    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    :goto_0
    invoke-static {v0}, Lcom/donkingliang/consecutivescroller/e;->l(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    sub-int/2addr v3, v4

    .line 51
    if-lez v2, :cond_3

    .line 52
    .line 53
    if-gez v3, :cond_3

    .line 54
    .line 55
    neg-int v3, v3

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    sub-int/2addr v3, v2

    .line 65
    invoke-direct {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b0(I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v0, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->X(Landroid/view/View;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v0, 0x0

    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_1
    const/16 v3, 0x8

    .line 75
    .line 76
    if-ge v2, v1, :cond_7

    .line 77
    .line 78
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-ne v5, v3, :cond_4

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->m(Landroid/view/View;)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    instance-of v4, v3, Lcom/donkingliang/consecutivescroller/a;

    .line 100
    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    check-cast v3, Lcom/donkingliang/consecutivescroller/a;

    .line 104
    .line 105
    invoke-interface {v3}, Lcom/donkingliang/consecutivescroller/a;->getScrolledViews()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_6

    .line 116
    .line 117
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const/4 v5, 0x0

    .line 122
    :goto_2
    if-ge v5, v4, :cond_6

    .line 123
    .line 124
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {p0, v6}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Y(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    invoke-virtual {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Y(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-ge v1, v2, :cond_b

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-ne v4, v3, :cond_8

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_8
    invoke-static {v2}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_7

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    add-int/lit8 v4, v4, -0x1

    .line 172
    .line 173
    if-ne v1, v4, :cond_9

    .line 174
    .line 175
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-ge v4, v5, :cond_9

    .line 184
    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 190
    .line 191
    if-lt v4, v5, :cond_9

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    invoke-static {v2}, Lcom/donkingliang/consecutivescroller/e;->m(Landroid/view/View;)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    instance-of v4, v2, Lcom/donkingliang/consecutivescroller/a;

    .line 199
    .line 200
    if-eqz v4, :cond_a

    .line 201
    .line 202
    check-cast v2, Lcom/donkingliang/consecutivescroller/a;

    .line 203
    .line 204
    invoke-interface {v2}, Lcom/donkingliang/consecutivescroller/a;->getScrolledViews()Ljava/util/List;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    if-eqz v2, :cond_7

    .line 209
    .line 210
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-nez v4, :cond_7

    .line 215
    .line 216
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    const/4 v5, 0x0

    .line 221
    :goto_5
    if-ge v5, v4, :cond_7

    .line 222
    .line 223
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Landroid/view/View;

    .line 228
    .line 229
    invoke-virtual {p0, v6}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Z(Landroid/view/View;)V

    .line 230
    .line 231
    .line 232
    add-int/lit8 v5, v5, 0x1

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_a
    invoke-virtual {p0, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Z(Landroid/view/View;)V

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_b
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->h()V

    .line 240
    .line 241
    .line 242
    if-eqz p1, :cond_c

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-eq p2, p1, :cond_c

    .line 249
    .line 250
    invoke-direct {p0, p1, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->W(II)V

    .line 251
    .line 252
    .line 253
    :cond_c
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->V()V

    .line 254
    .line 255
    .line 256
    return-void
.end method

.method private e0(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v1, v2, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B:I

    .line 20
    .line 21
    sub-int/2addr v4, v5

    .line 22
    invoke-direct {p0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s(Landroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sub-int/2addr v4, v1

    .line 27
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B:I

    .line 28
    .line 29
    if-gez v1, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->y(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 40
    .line 41
    const/16 v6, 0x3e8

    .line 42
    .line 43
    if-ge v5, v6, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    add-int/2addr v5, v6

    .line 54
    add-int/2addr v5, v1

    .line 55
    if-ge v5, v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    :cond_2
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 64
    .line 65
    iput v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 66
    .line 67
    iput v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B:I

    .line 68
    .line 69
    iput v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_3
    const/4 v1, 0x0

    .line 77
    const/4 v4, 0x0

    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_9

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    iget v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 89
    .line 90
    if-ge v5, v6, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m()Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    goto :goto_1

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getBottomView()Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :goto_1
    if-eqz v5, :cond_9

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 104
    .line 105
    .line 106
    invoke-static {v5}, Lcom/donkingliang/consecutivescroller/e;->l(Landroid/view/View;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-lez v3, :cond_7

    .line 111
    .line 112
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    iget v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 117
    .line 118
    if-eq v6, v2, :cond_6

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    add-int/2addr v2, v6

    .line 129
    add-int/2addr v2, v1

    .line 130
    sub-int/2addr v4, v2

    .line 131
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    :cond_6
    invoke-direct {p0, v5, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->X(Landroid/view/View;I)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    sub-int/2addr v3, v5

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    sub-int/2addr v3, v5

    .line 153
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 158
    .line 159
    if-eq v5, v2, :cond_8

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    add-int/2addr v2, v5

    .line 170
    add-int/2addr v2, v1

    .line 171
    sub-int/2addr v4, v2

    .line 172
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    add-int/2addr v1, v3

    .line 181
    invoke-direct {p0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b0(I)V

    .line 182
    .line 183
    .line 184
    :goto_2
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 185
    .line 186
    add-int/2addr v1, v3

    .line 187
    iput v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 188
    .line 189
    sub-int/2addr p1, v3

    .line 190
    :cond_9
    if-lez v3, :cond_a

    .line 191
    .line 192
    if-gtz p1, :cond_0

    .line 193
    .line 194
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-eq v0, p1, :cond_b

    .line 199
    .line 200
    invoke-direct {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->W(II)V

    .line 201
    .line 202
    .line 203
    :cond_b
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L:Landroid/view/View;

    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->i0(Landroid/view/View;Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->P(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private getAdjustHeight()I
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getStickyChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J:I

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-boolean v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G:Z

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_3

    .line 17
    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    add-int/2addr v1, v4

    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    :goto_1
    if-ltz v2, :cond_3

    .line 41
    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L(Landroid/view/View;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v1, v0

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    :goto_2
    return v1
.end method

.method private getBottomView()Landroid/view/View;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getEffectiveChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/View;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method private getEffectiveChildren()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-lez v4, :cond_0

    .line 30
    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method private getNonGoneChildren()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object v0
.end method

.method private getScrollRange()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollRange()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sub-int/2addr v2, v3

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sub-int/2addr v2, v3

    .line 26
    sub-int/2addr v0, v2

    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :cond_0
    return v1
.end method

.method private getStickyChildren()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x8

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M(Landroid/view/View;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method private getStickyY()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method private h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 6
    .line 7
    return-void
.end method

.method private h0()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p0, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    if-ge v2, v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M(Landroid/view/View;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L(Landroid/view/View;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_3

    .line 53
    .line 54
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->P:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->P:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private i0(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldStickyView",
            "newStickyView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->R:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$g;->a(Landroid/view/View;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private j(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e0(I)V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-gez p1, :cond_1

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->a0(I)V

    .line 10
    .line 11
    .line 12
    :cond_1
    :goto_0
    return-void
.end method

.method private j0(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "offset"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getStickyY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr v0, p2

    .line 6
    int-to-float p2, v0

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 22
    .line 23
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method private o(I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocityY"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->i:I

    .line 6
    .line 7
    if-le v0, v1, :cond_3

    .line 8
    .line 9
    int-to-float v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedPreFling(FF)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_3

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-gez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    :cond_0
    if-lez p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    :cond_1
    const/4 v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v3, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedFling(FFZ)Z

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    iget v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    const/high16 v9, -0x80000000

    .line 47
    .line 48
    const/high16 v10, -0x80000000

    .line 49
    .line 50
    const/high16 v11, -0x80000000

    .line 51
    .line 52
    const v12, 0x7fffffff

    .line 53
    .line 54
    .line 55
    move v8, p1

    .line 56
    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x2

    .line 60
    invoke-virtual {p0, p1, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->startNestedScroll(II)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 64
    .line 65
    .line 66
    iget p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 67
    .line 68
    iput p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->F:I

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method private s(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getAdjustHeight()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method private t(Landroid/view/View;III)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "parentWidth",
            "paddingLeft",
            "paddingRight"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 6
    .line 7
    sget-object v1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$d;->a:[I

    .line 8
    .line 9
    iget-object v2, v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;->g:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams$Align;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aget v1, v1, v2

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 24
    .line 25
    add-int/2addr p3, p1

    .line 26
    return p3

    .line 27
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 28
    .line 29
    add-int/2addr v1, p3

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    sub-int/2addr p2, p1

    .line 35
    sub-int/2addr p2, p3

    .line 36
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 37
    .line 38
    sub-int/2addr p2, p1

    .line 39
    sub-int/2addr p2, p4

    .line 40
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 41
    .line 42
    sub-int/2addr p2, p1

    .line 43
    div-int/2addr p2, v2

    .line 44
    add-int/2addr v1, p2

    .line 45
    return v1

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sub-int/2addr p2, p1

    .line 51
    sub-int/2addr p2, p4

    .line 52
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 53
    .line 54
    sub-int/2addr p2, p1

    .line 55
    return p2
.end method

.method private u(Landroid/view/View;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 10
    .line 11
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 15
    .line 16
    add-int/2addr v0, p1

    .line 17
    return v0
.end method

.method private w(Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "children",
            "currentPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v0, p2, :cond_1

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L(Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/2addr v1, v2

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return v1
.end method

.method private x(II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchX",
            "touchY"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getNonGoneChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/View;

    .line 20
    .line 21
    invoke-static {v1, p1, p2}, Lcom/donkingliang/consecutivescroller/e;->w(Landroid/view/View;II)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    return-object v1
.end method

.method private y(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge p1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/16 v4, 0x8

    .line 17
    .line 18
    if-eq v3, v4, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-static {v2}, Lcom/donkingliang/consecutivescroller/e;->f(Landroid/view/View;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v1, v2

    .line 31
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v1
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->H:Z

    .line 2
    .line 3
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getEffectiveChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-lez v1, :cond_3

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    sub-int/2addr v3, v2

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    if-lt v4, v5, :cond_0

    .line 31
    .line 32
    invoke-static {v3, v2}, Lcom/donkingliang/consecutivescroller/e;->d(Landroid/view/View;I)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :goto_0
    if-eqz v3, :cond_2

    .line 42
    .line 43
    sub-int/2addr v1, v2

    .line 44
    :goto_1
    if-ltz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroid/view/View;

    .line 51
    .line 52
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    invoke-static {v4, v2}, Lcom/donkingliang/consecutivescroller/e;->d(Landroid/view/View;I)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    return v6

    .line 65
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    return v3

    .line 69
    :cond_3
    return v2
.end method

.method public K()Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getEffectiveChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-lez v1, :cond_3

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, -0x1

    .line 24
    if-gtz v5, :cond_0

    .line 25
    .line 26
    invoke-static {v4, v6}, Lcom/donkingliang/consecutivescroller/e;->d(Landroid/view/View;I)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :goto_0
    if-eqz v4, :cond_2

    .line 36
    .line 37
    sub-int/2addr v1, v2

    .line 38
    :goto_1
    if-ltz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/view/View;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-static {v2, v6}, Lcom/donkingliang/consecutivescroller/e;->d(Landroid/view/View;I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    return v3

    .line 59
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    return v4

    .line 63
    :cond_3
    return v2
.end method

.method public L(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stickyView"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 10
    .line 11
    iget-boolean p1, p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;->e:Z

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method public M(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of v0, p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 10
    .line 11
    iget-boolean p1, p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;->c:Z

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1
.end method

.method Y(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->l(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->f(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->X(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->f(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr v1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-void
.end method

.method Z(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->o(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->f(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->X(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->f(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int/2addr v1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-nez v1, :cond_0

    .line 22
    .line 23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "index",
            "params"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/donkingliang/consecutivescroller/b;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 p3, 0x0

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Lcom/donkingliang/consecutivescroller/e;->m(Landroid/view/View;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {p0, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->i(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    instance-of v0, p2, Lcom/donkingliang/consecutivescroller/a;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    check-cast p2, Lcom/donkingliang/consecutivescroller/a;

    .line 33
    .line 34
    invoke-interface {p2}, Lcom/donkingliang/consecutivescroller/a;->getScrolledViews()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    if-ge v1, v0, :cond_1

    .line 52
    .line 53
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/view/View;

    .line 58
    .line 59
    invoke-direct {p0, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->i(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    instance-of p2, p1, Landroid/view/ViewGroup;

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    check-cast p1, Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    new-instance v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$c;-><init>(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x14

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c0(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d0(Landroid/view/View;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public canScrollVertically(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeHorizontalScrollExtent()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeHorizontalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeHorizontalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public computeScroll()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0xc8

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x5

    .line 18
    .line 19
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 22
    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    const/16 v1, -0xc8

    .line 26
    .line 27
    if-le v0, v1, :cond_1

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x5

    .line 30
    .line 31
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 34
    .line 35
    invoke-direct {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j(I)V

    .line 36
    .line 37
    .line 38
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 39
    .line 40
    add-int/2addr v0, v2

    .line 41
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_d

    .line 56
    .line 57
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->F:I

    .line 64
    .line 65
    sub-int v3, v0, v3

    .line 66
    .line 67
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->F:I

    .line 68
    .line 69
    iget-object v7, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->w:[I

    .line 70
    .line 71
    aput v1, v7, v2

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v9, 0x1

    .line 76
    move-object v4, p0

    .line 77
    move v6, v3

    .line 78
    invoke-virtual/range {v4 .. v9}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedPreScroll(II[I[II)Z

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->w:[I

    .line 82
    .line 83
    aget v0, v0, v2

    .line 84
    .line 85
    sub-int/2addr v3, v0

    .line 86
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 87
    .line 88
    invoke-direct {p0, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j(I)V

    .line 89
    .line 90
    .line 91
    iget v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 92
    .line 93
    sub-int v7, v4, v0

    .line 94
    .line 95
    sub-int/2addr v3, v7

    .line 96
    if-gez v3, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    :cond_3
    if-lez v3, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    :cond_4
    const/4 v6, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    iget-object v10, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->v:[I

    .line 115
    .line 116
    const/4 v11, 0x1

    .line 117
    move-object v5, p0

    .line 118
    move v9, v3

    .line 119
    invoke-virtual/range {v5 .. v11}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedScroll(IIII[II)Z

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->v:[I

    .line 123
    .line 124
    aget v0, v0, v2

    .line 125
    .line 126
    add-int/2addr v3, v0

    .line 127
    :cond_5
    if-gez v3, :cond_6

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    :cond_6
    if-lez v3, :cond_c

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_c

    .line 142
    .line 143
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    if-ne v0, v2, :cond_8

    .line 150
    .line 151
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getScrollRange()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-lez v0, :cond_8

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_8
    const/4 v0, 0x0

    .line 159
    goto :goto_1

    .line 160
    :cond_9
    :goto_0
    const/4 v0, 0x1

    .line 161
    :goto_1
    if-eqz v0, :cond_b

    .line 162
    .line 163
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->l()V

    .line 164
    .line 165
    .line 166
    if-gez v3, :cond_a

    .line 167
    .line 168
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_b

    .line 175
    .line 176
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 177
    .line 178
    iget-object v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 179
    .line 180
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    float-to-int v3, v3

    .line 185
    invoke-virtual {v0, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_a
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_b

    .line 196
    .line 197
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 198
    .line 199
    iget-object v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 200
    .line 201
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    float-to-int v3, v3

    .line 206
    invoke-virtual {v0, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 207
    .line 208
    .line 209
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k0()V

    .line 210
    .line 211
    .line 212
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 213
    .line 214
    .line 215
    :cond_d
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 216
    .line 217
    const/4 v3, 0x2

    .line 218
    if-ne v0, v3, :cond_e

    .line 219
    .line 220
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_e

    .line 227
    .line 228
    invoke-virtual {p0, v2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->stopNestedScroll(I)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p0, v1, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e(ZZ)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 235
    .line 236
    .line 237
    :cond_e
    :goto_3
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getNonGoneChildren()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/view/View;

    .line 21
    .line 22
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->f(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    add-int/2addr v0, v4

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getNonGoneChildren()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/view/View;

    .line 18
    .line 19
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->t(Landroid/view/View;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    :goto_1
    add-int/2addr v3, v4

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->c(Landroid/view/View;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->p(Landroid/view/View;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Lcom/donkingliang/consecutivescroller/e;->g(Landroid/view/View;)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    add-int/2addr v5, v6

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    add-int/2addr v5, v4

    .line 55
    add-int/2addr v3, v5

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    goto :goto_1

    .line 62
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return v3
.end method

.method public d0(Landroid/view/View;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "offset"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_7

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sub-int/2addr v2, p2

    .line 13
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ltz p2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    add-int/2addr v4, v5

    .line 30
    if-le v4, v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    add-int/2addr v4, v5

    .line 42
    if-ge v4, v2, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {p1, v1}, Lcom/donkingliang/consecutivescroller/e;->d(Landroid/view/View;I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-direct {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->y(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    add-int/2addr v4, v5

    .line 65
    add-int/2addr v4, p1

    .line 66
    if-le v4, v2, :cond_3

    .line 67
    .line 68
    :goto_0
    const/4 p1, -0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    add-int/2addr v4, v5

    .line 79
    add-int/2addr v4, p1

    .line 80
    if-ge v4, v2, :cond_4

    .line 81
    .line 82
    :goto_1
    const/4 p1, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const/4 p1, 0x0

    .line 85
    :goto_2
    if-eqz p1, :cond_7

    .line 86
    .line 87
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k0()V

    .line 90
    .line 91
    .line 92
    iput p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B:I

    .line 93
    .line 94
    const/4 p2, 0x2

    .line 95
    invoke-virtual {p0, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 96
    .line 97
    .line 98
    :cond_5
    if-gez p1, :cond_6

    .line 99
    .line 100
    const/16 p2, -0xc8

    .line 101
    .line 102
    invoke-direct {p0, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_6
    const/16 p2, 0xc8

    .line 107
    .line 108
    invoke-direct {p0, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j(I)V

    .line 109
    .line 110
    .line 111
    :goto_3
    iget p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 112
    .line 113
    add-int/2addr p2, v3

    .line 114
    iput p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->C:I

    .line 115
    .line 116
    iget p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 117
    .line 118
    if-ne p2, v1, :cond_5

    .line 119
    .line 120
    :cond_7
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "consumed",
            "offsetInWindow",
            "type"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow",
            "type"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    if-ne v1, v5, :cond_2

    .line 12
    .line 13
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 14
    .line 15
    if-eq v1, v3, :cond_2

    .line 16
    .line 17
    iget-object v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ltz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-lt v1, v6, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 45
    .line 46
    iget v7, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 47
    .line 48
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/lang/Float;

    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    sub-float/2addr v6, v1

    .line 67
    invoke-virtual {p1, v2, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    return v4

    .line 72
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_3

    .line 81
    .line 82
    iput v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 83
    .line 84
    :cond_3
    iget v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 85
    .line 86
    int-to-float v6, v6

    .line 87
    invoke-virtual {v1, v2, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    const/4 v7, 0x3

    .line 95
    const/4 v8, 0x1

    .line 96
    if-eqz v6, :cond_14

    .line 97
    .line 98
    if-eq v6, v8, :cond_10

    .line 99
    .line 100
    if-eq v6, v5, :cond_8

    .line 101
    .line 102
    if-eq v6, v7, :cond_10

    .line 103
    .line 104
    const/4 v2, 0x5

    .line 105
    if-eq v6, v2, :cond_7

    .line 106
    .line 107
    const/4 v2, 0x6

    .line 108
    if-eq v6, v2, :cond_4

    .line 109
    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :cond_4
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-ne v2, v5, :cond_6

    .line 132
    .line 133
    if-nez v0, :cond_5

    .line 134
    .line 135
    const/4 v0, 0x1

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    const/4 v0, 0x0

    .line 138
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 143
    .line 144
    iget-object v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    float-to-int v2, v2

    .line 166
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m:I

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    float-to-int v2, v2

    .line 173
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->l:I

    .line 174
    .line 175
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 176
    .line 177
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->j(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    aput v5, v2, v4

    .line 182
    .line 183
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 184
    .line 185
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->k(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    aput v0, v2, v8

    .line 190
    .line 191
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 192
    .line 193
    aget v2, v0, v4

    .line 194
    .line 195
    aget v0, v0, v8

    .line 196
    .line 197
    invoke-static {p0, v2, v0}, Lcom/donkingliang/consecutivescroller/e;->v(Landroid/view/View;II)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    iput-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->U:Z

    .line 202
    .line 203
    :cond_6
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z()V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_6

    .line 212
    .line 213
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 218
    .line 219
    iget-object v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 220
    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    float-to-int v2, v2

    .line 241
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m:I

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    float-to-int v2, v2

    .line 248
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->l:I

    .line 249
    .line 250
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 251
    .line 252
    .line 253
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 254
    .line 255
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->j(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    aput v5, v2, v4

    .line 260
    .line 261
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 262
    .line 263
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->k(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    aput v0, v2, v8

    .line 268
    .line 269
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 270
    .line 271
    aget v2, v0, v4

    .line 272
    .line 273
    aget v0, v0, v8

    .line 274
    .line 275
    invoke-static {p0, v2, v0}, Lcom/donkingliang/consecutivescroller/e;->v(Landroid/view/View;II)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    iput-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->U:Z

    .line 280
    .line 281
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z()V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 287
    .line 288
    .line 289
    goto/16 :goto_6

    .line 290
    .line 291
    :cond_8
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-ltz v0, :cond_f

    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-lt v0, v6, :cond_9

    .line 304
    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :cond_9
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z()V

    .line 308
    .line 309
    .line 310
    iget-object v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 311
    .line 312
    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    float-to-int v6, v6

    .line 320
    iget v9, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m:I

    .line 321
    .line 322
    sub-int/2addr v6, v9

    .line 323
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    float-to-int v9, v9

    .line 328
    iget v10, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->l:I

    .line 329
    .line 330
    sub-int/2addr v9, v10

    .line 331
    iget v10, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 332
    .line 333
    if-nez v10, :cond_e

    .line 334
    .line 335
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G(Landroid/view/MotionEvent;)Z

    .line 336
    .line 337
    .line 338
    move-result v10

    .line 339
    if-nez v10, :cond_a

    .line 340
    .line 341
    iget-object v10, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 342
    .line 343
    aget v11, v10, v4

    .line 344
    .line 345
    aget v10, v10, v8

    .line 346
    .line 347
    invoke-direct {p0, v11, v10}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->F(II)Z

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-eqz v10, :cond_e

    .line 352
    .line 353
    :cond_a
    iget-boolean v10, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->H:Z

    .line 354
    .line 355
    if-eqz v10, :cond_b

    .line 356
    .line 357
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j:I

    .line 362
    .line 363
    if-lt v2, v5, :cond_d

    .line 364
    .line 365
    iput v8, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_b
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    if-le v10, v11, :cond_c

    .line 377
    .line 378
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 379
    .line 380
    .line 381
    move-result v6

    .line 382
    iget v9, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j:I

    .line 383
    .line 384
    if-lt v6, v9, :cond_d

    .line 385
    .line 386
    iput v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 387
    .line 388
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 389
    .line 390
    if-eq v5, v3, :cond_d

    .line 391
    .line 392
    iget-object v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 393
    .line 394
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    if-eqz v5, :cond_d

    .line 403
    .line 404
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 405
    .line 406
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    if-ltz v5, :cond_d

    .line 411
    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    if-ge v0, v6, :cond_d

    .line 417
    .line 418
    iget-object v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 419
    .line 420
    iget v9, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 421
    .line 422
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    check-cast v6, Ljava/lang/Float;

    .line 431
    .line 432
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 433
    .line 434
    .line 435
    move-result v6

    .line 436
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 437
    .line 438
    .line 439
    move-result v5

    .line 440
    sub-float/2addr v6, v5

    .line 441
    invoke-virtual {p1, v2, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 442
    .line 443
    .line 444
    goto :goto_3

    .line 445
    :cond_c
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j:I

    .line 450
    .line 451
    if-lt v2, v5, :cond_d

    .line 452
    .line 453
    iput v8, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 454
    .line 455
    :cond_d
    :goto_3
    iget v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 456
    .line 457
    if-nez v2, :cond_e

    .line 458
    .line 459
    return v8

    .line 460
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 461
    .line 462
    .line 463
    move-result v2

    .line 464
    float-to-int v2, v2

    .line 465
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m:I

    .line 466
    .line 467
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    float-to-int v0, v0

    .line 472
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->l:I

    .line 473
    .line 474
    goto/16 :goto_6

    .line 475
    .line 476
    :cond_f
    :goto_4
    return v4

    .line 477
    :cond_10
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 478
    .line 479
    if-eqz v2, :cond_13

    .line 480
    .line 481
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 482
    .line 483
    .line 484
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 485
    .line 486
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->h:I

    .line 487
    .line 488
    int-to-float v5, v5

    .line 489
    const/16 v6, 0x3e8

    .line 490
    .line 491
    invoke-virtual {v2, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 492
    .line 493
    .line 494
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 495
    .line 496
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    float-to-int v2, v2

    .line 501
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->h:I

    .line 502
    .line 503
    neg-int v6, v5

    .line 504
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 509
    .line 510
    .line 511
    move-result v5

    .line 512
    iput v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->g:I

    .line 513
    .line 514
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->R()V

    .line 515
    .line 516
    .line 517
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->j(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 518
    .line 519
    .line 520
    move-result v5

    .line 521
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->k(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    invoke-direct {p0, v5, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->x(II)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    invoke-static {v6}, Lcom/donkingliang/consecutivescroller/e;->c(Landroid/view/View;)Z

    .line 530
    .line 531
    .line 532
    move-result v6

    .line 533
    invoke-static {p0, v5, v0}, Lcom/donkingliang/consecutivescroller/e;->u(Landroid/view/View;II)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 538
    .line 539
    if-eq v5, v8, :cond_11

    .line 540
    .line 541
    if-eqz v6, :cond_11

    .line 542
    .line 543
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 544
    .line 545
    .line 546
    move-result v5

    .line 547
    iget v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->i:I

    .line 548
    .line 549
    if-lt v5, v6, :cond_11

    .line 550
    .line 551
    if-nez v0, :cond_11

    .line 552
    .line 553
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 554
    .line 555
    .line 556
    :cond_11
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 557
    .line 558
    if-eq v5, v8, :cond_13

    .line 559
    .line 560
    invoke-static {p0}, Lcom/donkingliang/consecutivescroller/e;->s(Landroid/view/View;)Z

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    if-nez v5, :cond_13

    .line 565
    .line 566
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G(Landroid/view/MotionEvent;)Z

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    if-eqz v5, :cond_13

    .line 571
    .line 572
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    iget v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->i:I

    .line 577
    .line 578
    if-lt v2, v5, :cond_13

    .line 579
    .line 580
    iget v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 581
    .line 582
    if-eqz v2, :cond_12

    .line 583
    .line 584
    if-nez v0, :cond_13

    .line 585
    .line 586
    :cond_12
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->g:I

    .line 587
    .line 588
    neg-int v0, v0

    .line 589
    invoke-direct {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o(I)V

    .line 590
    .line 591
    .line 592
    :cond_13
    iput v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m:I

    .line 593
    .line 594
    iput v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->l:I

    .line 595
    .line 596
    iput-boolean v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->p:Z

    .line 597
    .line 598
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 599
    .line 600
    aput v4, v0, v4

    .line 601
    .line 602
    aput v4, v0, v8

    .line 603
    .line 604
    iput-boolean v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->U:Z

    .line 605
    .line 606
    goto :goto_6

    .line 607
    :cond_14
    iget v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 608
    .line 609
    if-ne v2, v5, :cond_15

    .line 610
    .line 611
    const/4 v2, 0x1

    .line 612
    goto :goto_5

    .line 613
    :cond_15
    const/4 v2, 0x0

    .line 614
    :goto_5
    iput-boolean v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->V:Z

    .line 615
    .line 616
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k0()V

    .line 617
    .line 618
    .line 619
    invoke-direct {p0, v4, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e(ZZ)V

    .line 620
    .line 621
    .line 622
    iput-boolean v8, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->p:Z

    .line 623
    .line 624
    iput v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 625
    .line 626
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 631
    .line 632
    iget-object v6, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 633
    .line 634
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 639
    .line 640
    .line 641
    move-result v9

    .line 642
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    float-to-int v2, v2

    .line 654
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->m:I

    .line 655
    .line 656
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    float-to-int v2, v2

    .line 661
    iput v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->l:I

    .line 662
    .line 663
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A()V

    .line 664
    .line 665
    .line 666
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->f:Landroid/view/VelocityTracker;

    .line 667
    .line 668
    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p0, v5, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->startNestedScroll(II)Z

    .line 672
    .line 673
    .line 674
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 675
    .line 676
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->j(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    aput v5, v2, v4

    .line 681
    .line 682
    iget-object v2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 683
    .line 684
    invoke-static {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/e;->k(Landroid/view/View;Landroid/view/MotionEvent;I)I

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    aput v0, v2, v8

    .line 689
    .line 690
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 691
    .line 692
    aget v2, v0, v4

    .line 693
    .line 694
    aget v0, v0, v8

    .line 695
    .line 696
    invoke-static {p0, v2, v0}, Lcom/donkingliang/consecutivescroller/e;->v(Landroid/view/View;II)Z

    .line 697
    .line 698
    .line 699
    move-result v0

    .line 700
    iput-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->U:Z

    .line 701
    .line 702
    :goto_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 703
    .line 704
    .line 705
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 710
    .line 711
    .line 712
    move-result p1

    .line 713
    if-eq p1, v8, :cond_16

    .line 714
    .line 715
    if-eq p1, v7, :cond_16

    .line 716
    .line 717
    goto :goto_7

    .line 718
    :cond_16
    iput v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 719
    .line 720
    iput v4, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->g:I

    .line 721
    .line 722
    iget-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->n:Ljava/util/HashMap;

    .line 723
    .line 724
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 725
    .line 726
    .line 727
    iput v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 728
    .line 729
    iget-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 730
    .line 731
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 732
    .line 733
    .line 734
    move-result p1

    .line 735
    if-eqz p1, :cond_17

    .line 736
    .line 737
    invoke-virtual {p0, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 738
    .line 739
    .line 740
    :cond_17
    :goto_7
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->O:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->O:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->V()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 22
    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    add-int/2addr v5, v6

    .line 65
    sub-int/2addr v3, v5

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    add-int/2addr v5, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v5, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    add-int/2addr v6, v7

    .line 88
    sub-int/2addr v4, v6

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    add-int/2addr v6, v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move v6, v0

    .line 96
    :goto_1
    int-to-float v5, v5

    .line 97
    int-to-float v6, v6

    .line 98
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    .line 100
    .line 101
    iget-object v5, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 102
    .line 103
    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 107
    .line 108
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_8

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    add-int/2addr v0, v4

    .line 141
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_5

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    add-int/2addr v5, v6

    .line 156
    sub-int/2addr v3, v5

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    add-int/2addr v2, v5

    .line 162
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_6

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    add-int/2addr v5, v6

    .line 177
    sub-int/2addr v4, v5

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    sub-int/2addr v0, v5

    .line 183
    :cond_6
    sub-int/2addr v2, v3

    .line 184
    int-to-float v2, v2

    .line 185
    int-to-float v0, v0

    .line 186
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    .line 188
    .line 189
    int-to-float v0, v3

    .line 190
    const/4 v2, 0x0

    .line 191
    const/high16 v5, 0x43340000    # 180.0f

    .line 192
    .line 193
    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 197
    .line 198
    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 202
    .line 203
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 210
    .line 211
    .line 212
    :cond_7
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 213
    .line 214
    .line 215
    :cond_8
    return-void
.end method

.method public f0(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->g0(Landroid/view/View;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public g0(Landroid/view/View;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "offset"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sub-int/2addr v2, p2

    .line 13
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ltz p2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    add-int/2addr v4, v5

    .line 30
    if-le v4, v2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    add-int/2addr v4, v5

    .line 42
    if-ge v4, v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p1, v1}, Lcom/donkingliang/consecutivescroller/e;->d(Landroid/view/View;I)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-direct {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->y(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    add-int/2addr v4, v5

    .line 65
    add-int/2addr v4, p1

    .line 66
    if-le v4, v2, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    add-int/2addr v1, v4

    .line 78
    add-int/2addr v1, p1

    .line 79
    if-ge v1, v2, :cond_4

    .line 80
    .line 81
    :goto_0
    const/4 v1, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const/4 v1, 0x0

    .line 84
    :goto_1
    if-eqz v1, :cond_6

    .line 85
    .line 86
    iput v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k0()V

    .line 89
    .line 90
    .line 91
    iput p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B:I

    .line 92
    .line 93
    const/4 p1, 0x2

    .line 94
    invoke-virtual {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 95
    .line 96
    .line 97
    if-gez v1, :cond_5

    .line 98
    .line 99
    const/16 p1, -0x32

    .line 100
    .line 101
    iput p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    const/16 p1, 0x32

    .line 105
    .line 106
    iput p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->A:I

    .line 107
    .line 108
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 109
    .line 110
    .line 111
    :cond_6
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->p()Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q(Landroid/util/AttributeSet;)Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->r(Landroid/view/ViewGroup$LayoutParams;)Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdjustHeightOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J:I

    .line 2
    .line 3
    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childCount",
            "drawingPosition"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->P:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-le v0, p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->P:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public getCurrentStickyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentStickyViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->t:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOnPermanentStickyChangeListener()Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->S:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnStickyChangeListener()Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->R:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnVerticalScrollChangeListener()Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->r:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOwnScrollY()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 2
    .line 3
    return v0
.end method

.method public getStickyOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K:I

    .line 2
    .line 3
    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d:Landroid/widget/OverScroller;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->stopNestedScroll(I)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->z:I

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public l0(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->L:Landroid/view/View;

    .line 6
    .line 7
    if-eq v1, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->M:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    :cond_1
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public m()Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v0, v1

    .line 10
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getEffectiveChildren()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-gt v5, v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-le v5, v0, :cond_0

    .line 38
    .line 39
    return-object v4

    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    return-object v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
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
            "child",
            "parentWidthMeasureSpec",
            "widthUsed",
            "parentHeightMeasureSpec",
            "heightUsed"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/donkingliang/consecutivescroller/b;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public n()Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getEffectiveChildren()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-ge v5, v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-lt v5, v0, :cond_0

    .line 43
    .line 44
    return-object v4

    .line 45
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_2

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    if-eq v0, v3, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 19
    .line 20
    if-eq v0, v3, :cond_4

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o:[I

    .line 29
    .line 30
    aget v1, v0, v1

    .line 31
    .line 32
    aget v0, v0, v2

    .line 33
    .line 34
    invoke-direct {p0, v1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->F(II)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    :cond_1
    return v2

    .line 41
    :cond_2
    invoke-virtual {p0, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->stopNestedScroll(I)V

    .line 42
    .line 43
    .line 44
    iget-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->V:Z

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->q:I

    .line 49
    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    return v2

    .line 53
    :cond_3
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->B()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 8
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
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    .line 14
    .line 15
    move-result p5

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getNonGoneChildren()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    add-int/2addr v5, p3

    .line 42
    invoke-direct {p0, v4, v0, p4, p5}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->t(Landroid/view/View;III)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    add-int/2addr v7, v6

    .line 51
    invoke-virtual {v4, v6, p3, v7, v5}, Landroid/view/View;->layout(IIII)V

    .line 52
    .line 53
    .line 54
    iget p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/2addr p3, v4

    .line 61
    iput p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    move p3, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 70
    .line 71
    .line 72
    move-result p4

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 74
    .line 75
    .line 76
    move-result p5

    .line 77
    sub-int/2addr p4, p5

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 79
    .line 80
    .line 81
    move-result p5

    .line 82
    sub-int/2addr p4, p5

    .line 83
    sub-int/2addr p3, p4

    .line 84
    iput p3, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 85
    .line 86
    if-gez p3, :cond_1

    .line 87
    .line 88
    iput p2, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->c:I

    .line 89
    .line 90
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->d(ZZ)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->h0()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
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
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->U()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getNonGoneChildren()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroid/view/View;

    .line 22
    .line 23
    invoke-direct {p0, v5}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    const/4 v9, 0x0

    .line 28
    move-object v6, p0

    .line 29
    move-object v7, v5

    .line 30
    move v8, p1

    .line 31
    move v10, p2

    .line 32
    invoke-virtual/range {v6 .. v11}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v5}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    add-int/2addr v4, v5

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/2addr v3, v0

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/2addr v3, v0

    .line 61
    invoke-direct {p0, p1, v3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N(II)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v4, v0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/2addr v4, v0

    .line 75
    invoke-direct {p0, p2, v4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->N(II)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p3, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedFling(FFZ)Z

    .line 6
    .line 7
    .line 8
    float-to-int p1, p3

    .line 9
    invoke-direct {p0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o(I)V

    .line 10
    .line 11
    .line 12
    return p2

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedPreFling(FF)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed",
            "type"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedPreScroll(II[I[II)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed"
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p5, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->O(II)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "type"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p5, p6}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->O(II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "nestedScrollAxes"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->t:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e(ZZ)V

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1, p4}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->startNestedScroll(II)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "nestedScrollAxes"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    iget-boolean p1, p1, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;->b:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    :cond_1
    return p4
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->t:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->stopNestedScroll(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-static/range {p0 .. p0}, Lcom/donkingliang/consecutivescroller/e;->s(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_18

    .line 10
    .line 11
    iget-boolean v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->U:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v10, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iput v10, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 29
    .line 30
    :cond_1
    iget v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 31
    .line 32
    int-to-float v0, v0

    .line 33
    const/4 v11, 0x0

    .line 34
    invoke-virtual {v9, v11, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 35
    .line 36
    .line 37
    iget v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->s:I

    .line 38
    .line 39
    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    if-ltz v12, :cond_17

    .line 44
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lt v12, v0, :cond_2

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x2

    .line 58
    const/4 v13, 0x1

    .line 59
    if-eqz v0, :cond_13

    .line 60
    .line 61
    if-eq v0, v13, :cond_11

    .line 62
    .line 63
    if-eq v0, v1, :cond_4

    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    if-eq v0, v1, :cond_3

    .line 67
    .line 68
    const/4 v1, 0x5

    .line 69
    if-eq v0, v1, :cond_14

    .line 70
    .line 71
    const/4 v1, 0x6

    .line 72
    if-eq v0, v1, :cond_14

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k()V

    .line 77
    .line 78
    .line 79
    iput v10, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 80
    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->S()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v10}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_4
    iget v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    invoke-virtual {v8, v12}, Landroid/view/MotionEvent;->getY(I)F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    float-to-int v0, v0

    .line 98
    iput v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 99
    .line 100
    return v13

    .line 101
    :cond_5
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->w:[I

    .line 102
    .line 103
    aput v10, v0, v13

    .line 104
    .line 105
    invoke-virtual {v8, v12}, Landroid/view/MotionEvent;->getY(I)F

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    float-to-int v0, v0

    .line 110
    iget v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 111
    .line 112
    sub-int v6, v1, v0

    .line 113
    .line 114
    iput v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    iget-object v3, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->w:[I

    .line 118
    .line 119
    iget-object v4, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->v:[I

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    move-object/from16 v0, p0

    .line 123
    .line 124
    move v2, v6

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedPreScroll(II[I[II)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->w:[I

    .line 132
    .line 133
    aget v0, v0, v13

    .line 134
    .line 135
    sub-int/2addr v6, v0

    .line 136
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->v:[I

    .line 137
    .line 138
    aget v0, v0, v13

    .line 139
    .line 140
    int-to-float v0, v0

    .line 141
    invoke-virtual {v8, v11, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 142
    .line 143
    .line 144
    iget v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 145
    .line 146
    iget-object v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->v:[I

    .line 147
    .line 148
    aget v1, v1, v13

    .line 149
    .line 150
    add-int/2addr v0, v1

    .line 151
    iput v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 152
    .line 153
    iget v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 154
    .line 155
    sub-int/2addr v0, v1

    .line 156
    iput v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 157
    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-interface {v0, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 163
    .line 164
    .line 165
    :cond_6
    iget v14, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 166
    .line 167
    iget v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 168
    .line 169
    if-eq v0, v13, :cond_8

    .line 170
    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_7

    .line 176
    .line 177
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-lez v0, :cond_7

    .line 182
    .line 183
    const/4 v0, 0x1

    .line 184
    goto :goto_0

    .line 185
    :cond_7
    const/4 v0, 0x0

    .line 186
    :goto_0
    if-eqz v0, :cond_8

    .line 187
    .line 188
    invoke-virtual {v7, v13}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->setScrollState(I)V

    .line 189
    .line 190
    .line 191
    :cond_8
    iget v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 192
    .line 193
    if-ne v0, v13, :cond_9

    .line 194
    .line 195
    invoke-direct {v7, v6}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j(I)V

    .line 196
    .line 197
    .line 198
    :cond_9
    iget v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 199
    .line 200
    sub-int v2, v0, v14

    .line 201
    .line 202
    if-eqz v2, :cond_a

    .line 203
    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-interface {v0, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 209
    .line 210
    .line 211
    :cond_a
    sub-int v15, v6, v2

    .line 212
    .line 213
    const/4 v1, 0x0

    .line 214
    const/4 v3, 0x0

    .line 215
    iget-object v5, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->v:[I

    .line 216
    .line 217
    const/4 v6, 0x0

    .line 218
    move-object/from16 v0, p0

    .line 219
    .line 220
    move v4, v15

    .line 221
    invoke-virtual/range {v0 .. v6}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->dispatchNestedScroll(IIII[II)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_b

    .line 226
    .line 227
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->v:[I

    .line 228
    .line 229
    aget v0, v0, v13

    .line 230
    .line 231
    add-int/2addr v15, v0

    .line 232
    iget v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 233
    .line 234
    sub-int/2addr v1, v0

    .line 235
    iput v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 236
    .line 237
    iget v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 238
    .line 239
    add-int/2addr v1, v0

    .line 240
    iput v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->Q:I

    .line 241
    .line 242
    int-to-float v0, v0

    .line 243
    invoke-virtual {v8, v11, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 244
    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-interface {v0, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 251
    .line 252
    .line 253
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->getScrollRange()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_c

    .line 262
    .line 263
    if-ne v1, v13, :cond_d

    .line 264
    .line 265
    if-lez v0, :cond_d

    .line 266
    .line 267
    :cond_c
    const/4 v10, 0x1

    .line 268
    :cond_d
    if-eqz v10, :cond_15

    .line 269
    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->l()V

    .line 271
    .line 272
    .line 273
    add-int/2addr v14, v15

    .line 274
    if-gez v14, :cond_e

    .line 275
    .line 276
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 277
    .line 278
    int-to-float v1, v15

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    int-to-float v2, v2

    .line 284
    div-float/2addr v1, v2

    .line 285
    invoke-virtual {v8, v12}, Landroid/view/MotionEvent;->getX(I)F

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    int-to-float v3, v3

    .line 294
    div-float/2addr v2, v3

    .line 295
    invoke-static {v0, v1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 296
    .line 297
    .line 298
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 299
    .line 300
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_f

    .line 305
    .line 306
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_e
    if-le v14, v0, :cond_f

    .line 313
    .line 314
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 315
    .line 316
    int-to-float v1, v15

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    int-to-float v2, v2

    .line 322
    div-float/2addr v1, v2

    .line 323
    invoke-virtual {v8, v12}, Landroid/view/MotionEvent;->getX(I)F

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    int-to-float v3, v3

    .line 332
    div-float/2addr v2, v3

    .line 333
    const/high16 v3, 0x3f800000    # 1.0f

    .line 334
    .line 335
    sub-float/2addr v3, v2

    .line 336
    invoke-static {v0, v1, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 337
    .line 338
    .line 339
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 340
    .line 341
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-nez v0, :cond_f

    .line 346
    .line 347
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 348
    .line 349
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 350
    .line 351
    .line 352
    :cond_f
    :goto_1
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->D:Landroid/widget/EdgeEffect;

    .line 353
    .line 354
    if-eqz v0, :cond_15

    .line 355
    .line 356
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eqz v0, :cond_10

    .line 361
    .line 362
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->E:Landroid/widget/EdgeEffect;

    .line 363
    .line 364
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_15

    .line 369
    .line 370
    :cond_10
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 371
    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k()V

    .line 375
    .line 376
    .line 377
    iput v10, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 378
    .line 379
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

    .line 380
    .line 381
    if-eqz v0, :cond_15

    .line 382
    .line 383
    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 384
    .line 385
    .line 386
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

    .line 387
    .line 388
    iget v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->h:I

    .line 389
    .line 390
    int-to-float v1, v1

    .line 391
    const/16 v2, 0x3e8

    .line 392
    .line 393
    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 394
    .line 395
    .line 396
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

    .line 397
    .line 398
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    float-to-int v0, v0

    .line 403
    iget v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->h:I

    .line 404
    .line 405
    neg-int v2, v1

    .line 406
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-nez v0, :cond_12

    .line 415
    .line 416
    iget v1, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->g:I

    .line 417
    .line 418
    if-eqz v1, :cond_12

    .line 419
    .line 420
    move v0, v1

    .line 421
    :cond_12
    neg-int v0, v0

    .line 422
    invoke-direct {v7, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->o(I)V

    .line 423
    .line 424
    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->S()V

    .line 426
    .line 427
    .line 428
    goto :goto_2

    .line 429
    :cond_13
    invoke-virtual {v7, v1, v10}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->startNestedScroll(II)Z

    .line 430
    .line 431
    .line 432
    :cond_14
    invoke-virtual {v8, v12}, Landroid/view/MotionEvent;->getY(I)F

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    float-to-int v0, v0

    .line 437
    iput v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->k:I

    .line 438
    .line 439
    :cond_15
    :goto_2
    iget-object v0, v7, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->e:Landroid/view/VelocityTracker;

    .line 440
    .line 441
    if-eqz v0, :cond_16

    .line 442
    .line 443
    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 444
    .line 445
    .line 446
    :cond_16
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 447
    .line 448
    .line 449
    return v13

    .line 450
    :cond_17
    :goto_3
    return v10

    .line 451
    :cond_18
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 452
    .line 453
    .line 454
    move-result v0

    .line 455
    return v0
.end method

.method protected p()Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public q(Landroid/util/AttributeSet;)Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method protected r(Landroid/view/ViewGroup$LayoutParams;)Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public requestLayout()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public scrollBy(II)V
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
    iget p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 2
    .line 3
    add-int/2addr p1, p2

    .line 4
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->scrollTo(II)V

    .line 6
    .line 7
    .line 8
    return-void
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
    iget p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->b:I

    .line 2
    .line 3
    sub-int/2addr p2, p1

    .line 4
    invoke-direct {p0, p2}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->j(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setAdjustHeightOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adjustHeightOffset"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->J:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setAutoAdjustHeightAtBottomView(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoAdjustHeightAtBottomView"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->I:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->I:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDisableChildHorizontalScroll(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disableChildHorizontalScroll"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->H:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnPermanentStickyChangeListener(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->S:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$e;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setOnStickyChangeListener(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->R:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$g;

    .line 2
    .line 3
    return-void
.end method

.method public setOnVerticalScrollChangeListener(Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->r:Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout$f;

    .line 2
    .line 3
    return-void
.end method

.method public setPermanent(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPermanent"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->G:Z

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->I:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->requestLayout()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->V()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method setScrollState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->T:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->computeVerticalScrollOffset()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-direct {p0, p1, p1}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->W(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setStickyOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->K:I

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->V()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public startNestedScroll(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axes",
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->u:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method v(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/donkingliang/consecutivescroller/ConsecutiveScrollerLayout;->P:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
