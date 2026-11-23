.class public Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;,
        Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;
    }
.end annotation


# static fields
.field public static final O:I = 0x0

.field public static final P:I = 0x1

.field static final Q:I = 0x32
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final R:I = 0x38
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final S:Ljava/lang/String; = "SwipeRefresh"

.field private static final T:I = 0xff

.field private static final U:I = 0x4c

.field private static final V:F = 2.0f

.field private static final W:I = -0x1

.field private static final b1:F = 0.8f

.field private static final f1:I = 0x96

.field private static final i1:I = 0x12c

.field private static final l1:I = 0xc8

.field private static final p0:F = 0.5f

.field private static final p1:I = 0xc8

.field private static final q1:I = 0xffffff

.field private static final r1:I = 0x40

.field private static final v1:[I


# instance fields
.field A:I

.field B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

.field private C:Landroid/view/animation/Animation;

.field private D:Landroid/view/animation/Animation;

.field private E:Landroid/view/animation/Animation;

.field private F:Landroid/view/animation/Animation;

.field private G:Landroid/view/animation/Animation;

.field H:Z

.field private I:I

.field J:Z

.field private K:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;

.field private L:Landroid/view/animation/Animation$AnimationListener;

.field private final M:Landroid/view/animation/Animation;

.field private final N:Landroid/view/animation/Animation;

.field private b:Landroid/view/View;

.field c:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;

.field d:Z

.field private e:I

.field private f:F

.field private g:F

.field private final h:Landroidx/core/view/NestedScrollingParentHelper;

.field private final i:Landroidx/core/view/NestedScrollingChildHelper;

.field private final j:[I

.field private final k:[I

.field private l:Z

.field private m:I

.field n:I

.field private o:F

.field private p:F

.field private q:Z

.field private r:I

.field s:Z

.field private t:Z

.field private final u:Landroid/view/animation/DecelerateInterpolator;

.field v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

.field private w:I

.field protected x:I

.field y:F

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x101000e

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v1:[I

    .line 9
    .line 10
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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
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
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 5
    iput-object v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j:[I

    new-array v1, v1, [I

    .line 6
    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k:[I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    .line 9
    new-instance v1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$a;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->L:Landroid/view/animation/Animation$AnimationListener;

    .line 10
    new-instance v1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$f;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->M:Landroid/view/animation/Animation;

    .line 11
    new-instance v1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$g;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->N:Landroid/view/animation/Animation;

    .line 12
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:I

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 15
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Landroid/view/animation/DecelerateInterpolator;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 17
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:I

    .line 18
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d()V

    const/4 v2, 0x1

    .line 19
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    const/high16 v3, 0x42800000    # 64.0f

    .line 20
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:I

    int-to-float v1, v1

    .line 21
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 22
    new-instance v1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingParentHelper;

    .line 23
    new-instance v1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

    .line 24
    invoke-virtual {p0, v2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setNestedScrollingEnabled(Z)V

    .line 25
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:I

    neg-int v1, v1

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k(F)V

    .line 27
    sget-object v1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v1:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setEnabled(Z)V

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "listener"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->x:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->M:Landroid/view/animation/Animation;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->M:Landroid/view/animation/Animation;

    .line 9
    .line 10
    const-wide/16 v0, 0xc8

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->M:Landroid/view/animation/Animation;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Landroid/view/animation/DecelerateInterpolator;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->M:Landroid/view/animation/Animation;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private b(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "listener"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->x:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->N:Landroid/view/animation/Animation;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->N:Landroid/view/animation/Animation;

    .line 17
    .line 18
    const-wide/16 v0, 0xc8

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->N:Landroid/view/animation/Animation;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->u:Landroid/view/animation/DecelerateInterpolator;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->N:Landroid/view/animation/Animation;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0xffffff

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1, p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x7f080c77

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 51
    .line 52
    const/16 v1, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    return-void
.end method

.method private f(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overscrollTop"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 2
    .line 3
    cmpl-float p1, p1, v0

    .line 4
    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n(ZZ)V

    .line 9
    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->k(FF)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$e;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$e;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 33
    .line 34
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->m(Z)V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void
.end method

.method private g()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method private h(Landroid/view/animation/Animation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private j(F)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overscrollTop"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->m(Z)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 8
    .line 9
    div-float v0, p1, v0

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    float-to-double v3, v0

    .line 22
    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    sub-double/2addr v3, v5

    .line 28
    const-wide/16 v5, 0x0

    .line 29
    .line 30
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    double-to-float v3, v3

    .line 35
    const/high16 v4, 0x40a00000    # 5.0f

    .line 36
    .line 37
    mul-float v3, v3, v4

    .line 38
    .line 39
    const/high16 v4, 0x40400000    # 3.0f

    .line 40
    .line 41
    div-float/2addr v3, v4

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 47
    .line 48
    sub-float/2addr v4, v5

    .line 49
    iget-boolean v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->J:Z

    .line 50
    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    iget v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:I

    .line 54
    .line 55
    iget v6, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 56
    .line 57
    sub-int/2addr v5, v6

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:I

    .line 60
    .line 61
    :goto_0
    int-to-float v5, v5

    .line 62
    const/high16 v6, 0x40000000    # 2.0f

    .line 63
    .line 64
    mul-float v7, v5, v6

    .line 65
    .line 66
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    div-float/2addr v4, v5

    .line 71
    const/4 v7, 0x0

    .line 72
    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const/high16 v8, 0x40800000    # 4.0f

    .line 77
    .line 78
    div-float/2addr v4, v8

    .line 79
    float-to-double v8, v4

    .line 80
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 81
    .line 82
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 83
    .line 84
    .line 85
    move-result-wide v10

    .line 86
    sub-double/2addr v8, v10

    .line 87
    double-to-float v4, v8

    .line 88
    mul-float v4, v4, v6

    .line 89
    .line 90
    mul-float v8, v5, v4

    .line 91
    .line 92
    mul-float v8, v8, v6

    .line 93
    .line 94
    iget v9, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 95
    .line 96
    mul-float v5, v5, v0

    .line 97
    .line 98
    add-float/2addr v5, v8

    .line 99
    float-to-int v0, v5

    .line 100
    add-int/2addr v9, v0

    .line 101
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 116
    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 120
    .line 121
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 125
    .line 126
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 127
    .line 128
    .line 129
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 134
    .line 135
    div-float v0, p1, v0

    .line 136
    .line 137
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setAnimationProgress(F)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 145
    .line 146
    cmpg-float p1, p1, v0

    .line 147
    .line 148
    if-gez p1, :cond_4

    .line 149
    .line 150
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    const/16 v0, 0x4c

    .line 157
    .line 158
    if-le p1, v0, :cond_5

    .line 159
    .line 160
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->E:Landroid/view/animation/Animation;

    .line 161
    .line 162
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h(Landroid/view/animation/Animation;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_5

    .line 167
    .line 168
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s()V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    const/16 v0, 0xff

    .line 179
    .line 180
    if-ge p1, v0, :cond_5

    .line 181
    .line 182
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->F:Landroid/view/animation/Animation;

    .line 183
    .line 184
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h(Landroid/view/animation/Animation;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-nez p1, :cond_5

    .line 189
    .line 190
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r()V

    .line 191
    .line 192
    .line 193
    :cond_5
    :goto_1
    const p1, 0x3f4ccccd    # 0.8f

    .line 194
    .line 195
    .line 196
    mul-float v0, v3, p1

    .line 197
    .line 198
    iget-object v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 199
    .line 200
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-virtual {v5, v7, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->k(FF)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 208
    .line 209
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->e(F)V

    .line 214
    .line 215
    .line 216
    const p1, 0x3ecccccd    # 0.4f

    .line 217
    .line 218
    .line 219
    mul-float v3, v3, p1

    .line 220
    .line 221
    const/high16 p1, -0x41800000    # -0.25f

    .line 222
    .line 223
    add-float/2addr v3, p1

    .line 224
    mul-float v4, v4, v6

    .line 225
    .line 226
    add-float/2addr v3, v4

    .line 227
    const/high16 p1, 0x3f000000    # 0.5f

    .line 228
    .line 229
    mul-float v3, v3, p1

    .line 230
    .line 231
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 232
    .line 233
    invoke-virtual {p1, v3}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h(F)V

    .line 234
    .line 235
    .line 236
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 237
    .line 238
    sub-int/2addr v9, p1

    .line 239
    invoke-virtual {p0, v9, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 240
    .line 241
    .line 242
    return-void
.end method

.method private l(Landroid/view/MotionEvent;)V
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
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private n(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "refreshing",
            "notify"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->L:Landroid/view/animation/Animation$AnimationListener;

    .line 17
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->L:Landroid/view/animation/Animation$AnimationListener;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t(Landroid/view/animation/Animation$AnimationListener;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method private p(II)Landroid/view/animation/Animation;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "startingAlpha",
            "endingAlpha"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$d;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;II)V

    .line 16
    .line 17
    .line 18
    const-wide/16 p1, 0x12c

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method private q(F)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:F

    .line 2
    .line 3
    sub-float/2addr p1, v0

    .line 4
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e:I

    .line 5
    .line 6
    int-to-float v2, v1

    .line 7
    cmpl-float p1, p1, v2

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    int-to-float p1, v1

    .line 16
    add-float/2addr v0, p1

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o:F

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 23
    .line 24
    const/16 v0, 0x4c

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private r()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xff

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p(II)Landroid/view/animation/Animation;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->F:Landroid/view/animation/Animation;

    .line 14
    .line 15
    return-void
.end method

.method private s()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x4c

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p(II)Landroid/view/animation/Animation;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->E:Landroid/view/animation/Animation;

    .line 14
    .line 15
    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetAlpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private u(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "listener"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->x:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->getAlpha()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:F

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 20
    .line 21
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->y:F

    .line 26
    .line 27
    :goto_0
    new-instance p1, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$h;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$h;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->G:Landroid/view/animation/Animation;

    .line 33
    .line 34
    const-wide/16 v0, 0x96

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->G:Landroid/view/animation/Animation;

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private v(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 8
    .line 9
    const/16 v1, 0xff

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->setAlpha(I)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$b;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->C:Landroid/view/animation/Animation;

    .line 20
    .line 21
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m:I

    .line 22
    .line 23
    int-to-long v1, v1

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->C:Landroid/view/animation/Animation;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->K:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 6
    .line 7
    invoke-interface {v0, p0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;->a(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;Landroid/view/View;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
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
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

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
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

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
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childCount",
            "i"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    return p2

    .line 6
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-ne p2, p1, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    if-lt p2, v0, :cond_2

    .line 12
    .line 13
    add-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingParentHelper;

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

.method public getProgressCircleDiameter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:I

    .line 2
    .line 3
    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

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

.method k(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolatedTime"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->x:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    int-to-float v1, v1

    .line 7
    mul-float v1, v1, p1

    .line 8
    .line 9
    float-to-int p1, v1

    .line 10
    add-int/2addr v0, p1

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    sub-int/2addr v0, p1

    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->stop()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0xff

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setColorViewAlpha(I)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setAnimationProgress(F)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 33
    .line 34
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 48
    .line 49
    return-void
.end method

.method o(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "requiresUpdate"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 7
    .line 8
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 18
    .line 19
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m()V

    .line 5
    .line 6
    .line 7
    return-void
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
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Z

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Z

    .line 24
    .line 25
    if-nez v1, :cond_9

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_9

    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 34
    .line 35
    if-nez v1, :cond_9

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l:Z

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v1, 0x1

    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-eq v0, v1, :cond_6

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq v0, v1, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    if-eq v0, v1, :cond_6

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    if-eq v0, v1, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l(Landroid/view/MotionEvent;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 63
    .line 64
    if-ne v0, v3, :cond_4

    .line 65
    .line 66
    return v2

    .line 67
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-gez v0, :cond_5

    .line 72
    .line 73
    return v2

    .line 74
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q(F)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_6
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 83
    .line 84
    iput v3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_7
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 88
    .line 89
    iget-object v3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    sub-int/2addr v0, v3

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 104
    .line 105
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-gez v0, :cond_8

    .line 112
    .line 113
    return v2

    .line 114
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->p:F

    .line 119
    .line 120
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 121
    .line 122
    return p1

    .line 123
    :cond_9
    :goto_1
    return v2
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
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 17
    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 24
    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 33
    .line 34
    .line 35
    move-result p5

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sub-int v0, p1, v0

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    sub-int/2addr v0, v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sub-int/2addr p2, v1

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    sub-int/2addr p2, v1

    .line 57
    add-int/2addr v0, p4

    .line 58
    add-int/2addr p2, p5

    .line 59
    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    iget-object p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 69
    .line 70
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    iget-object p4, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 75
    .line 76
    div-int/lit8 p1, p1, 0x2

    .line 77
    .line 78
    div-int/lit8 p2, p2, 0x2

    .line 79
    .line 80
    sub-int p5, p1, p2

    .line 81
    .line 82
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 83
    .line 84
    add-int/2addr p1, p2

    .line 85
    add-int/2addr p3, v0

    .line 86
    invoke-virtual {p4, p5, v0, p1, p3}, Landroid/view/View;->layout(IIII)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
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
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sub-int/2addr p2, v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sub-int/2addr p2, v0

    .line 30
    const/high16 v0, 0x40000000    # 2.0f

    .line 31
    .line 32
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    sub-int/2addr v1, v2

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    sub-int/2addr v1, v2

    .line 50
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 58
    .line 59
    iget p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:I

    .line 60
    .line 61
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:I

    .line 66
    .line 67
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 72
    .line 73
    .line 74
    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-ge p1, p2, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 89
    .line 90
    if-ne p2, v0, :cond_2

    .line 91
    .line 92
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->w:I

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    :goto_1
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0
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
    invoke-virtual {p0, p2, p3, p4}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->dispatchNestedFling(FFZ)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0
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
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->dispatchNestedPreFling(FF)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4
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

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-lez p3, :cond_1

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 6
    .line 7
    cmpl-float v2, v1, p1

    .line 8
    .line 9
    if-lez v2, :cond_1

    .line 10
    .line 11
    int-to-float v2, p3

    .line 12
    cmpl-float v3, v2, v1

    .line 13
    .line 14
    if-lez v3, :cond_0

    .line 15
    .line 16
    float-to-int v1, v1

    .line 17
    sub-int v1, p3, v1

    .line 18
    .line 19
    aput v1, p4, v0

    .line 20
    .line 21
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-float/2addr v1, v2

    .line 25
    iput v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 26
    .line 27
    aput p3, p4, v0

    .line 28
    .line 29
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j(F)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->J:Z

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-lez p3, :cond_2

    .line 39
    .line 40
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 41
    .line 42
    cmpl-float p1, v1, p1

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    aget p1, p4, v0

    .line 47
    .line 48
    sub-int p1, p3, p1

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-lez p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 57
    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j:[I

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    aget v2, p4, v1

    .line 67
    .line 68
    sub-int/2addr p2, v2

    .line 69
    aget v2, p4, v0

    .line 70
    .line 71
    sub-int/2addr p3, v2

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, p2, p3, p1, v2}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->dispatchNestedPreScroll(II[I[I)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    aget p2, p4, v1

    .line 80
    .line 81
    aget p3, p1, v1

    .line 82
    .line 83
    add-int/2addr p2, p3

    .line 84
    aput p2, p4, v1

    .line 85
    .line 86
    aget p2, p4, v0

    .line 87
    .line 88
    aget p1, p1, v0

    .line 89
    .line 90
    add-int/2addr p2, p1

    .line 91
    aput p2, p4, v0

    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed"
        }
    .end annotation

    .line 1
    iget-object v5, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k:[I

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p2

    .line 5
    move v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->dispatchNestedScroll(IIII[I)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->k:[I

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    aget p1, p1, p2

    .line 15
    .line 16
    add-int/2addr p5, p1

    .line 17
    if-gez p5, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 26
    .line 27
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    int-to-float p2, p2

    .line 32
    add-float/2addr p1, p2

    .line 33
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j(F)V

    .line 36
    .line 37
    .line 38
    :cond_0
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
            "axes"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 4
    .line 5
    .line 6
    and-int/lit8 p1, p3, 0x2

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->startNestedScroll(I)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l:Z

    .line 16
    .line 17
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0
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

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Z

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    and-int/lit8 p1, p3, 0x2

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->h:Landroidx/core/view/NestedScrollingParentHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l:Z

    .line 8
    .line 9
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    cmpl-float v1, p1, v0

    .line 13
    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f(F)V

    .line 17
    .line 18
    .line 19
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g:F

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->stopNestedScroll()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
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
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Z

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_e

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->t:Z

    .line 21
    .line 22
    if-nez v1, :cond_e

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_e

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 31
    .line 32
    if-nez v1, :cond_e

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_c

    .line 42
    .line 43
    const/high16 v3, 0x3f000000    # 0.5f

    .line 44
    .line 45
    if-eq v0, v1, :cond_9

    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    if-eq v0, v4, :cond_6

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    if-eq v0, v3, :cond_5

    .line 52
    .line 53
    const/4 v3, 0x5

    .line 54
    if-eq v0, v3, :cond_3

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    if-eq v0, v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->l(Landroid/view/MotionEvent;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-gez v0, :cond_4

    .line 69
    .line 70
    return v2

    .line 71
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    return v2

    .line 79
    :cond_6
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-gez v0, :cond_7

    .line 86
    .line 87
    return v2

    .line 88
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q(F)V

    .line 93
    .line 94
    .line 95
    iget-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 96
    .line 97
    if-eqz v0, :cond_d

    .line 98
    .line 99
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o:F

    .line 100
    .line 101
    sub-float/2addr p1, v0

    .line 102
    mul-float p1, p1, v3

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    cmpl-float v0, p1, v0

    .line 106
    .line 107
    if-lez v0, :cond_8

    .line 108
    .line 109
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->j(F)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_8
    return v2

    .line 114
    :cond_9
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-gez v0, :cond_a

    .line 121
    .line 122
    return v2

    .line 123
    :cond_a
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 124
    .line 125
    if-eqz v1, :cond_b

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o:F

    .line 132
    .line 133
    sub-float/2addr p1, v0

    .line 134
    mul-float p1, p1, v3

    .line 135
    .line 136
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 137
    .line 138
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f(F)V

    .line 139
    .line 140
    .line 141
    :cond_b
    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 143
    .line 144
    return v2

    .line 145
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->r:I

    .line 150
    .line 151
    iput-boolean v2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->q:Z

    .line 152
    .line 153
    :cond_d
    :goto_0
    return v1

    .line 154
    :cond_e
    :goto_1
    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method setAnimationProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x437f0000    # 255.0f

    .line 8
    .line 9
    mul-float p1, p1, v0

    .line 10
    .line 11
    float-to-int p1, p1

    .line 12
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setColorViewAlpha(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setColorSchemeResources([I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->g([I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorResIds"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    new-array v1, v1, [I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, p1

    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    aget v3, p1, v2

    .line 13
    .line 14
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    aput v3, v1, v2

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setColorSchemeColors([I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    .line 1
    int-to-float p1, p1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->f:F

    .line 3
    .line 4
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m()V

    .line 7
    .line 8
    .line 9
    :cond_0
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
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnChildScrollUpCallback(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;)V
    .locals 0
    .param p1    # Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->K:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$i;

    .line 2
    .line 3
    return-void
.end method

.method public setOnRefreshListener(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->c:Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;

    .line 2
    .line 3
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorRes"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setProgressBackgroundColorSchemeResource(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setBackgroundColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorRes"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->setProgressBackgroundColorSchemeColor(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scale",
            "end"
        }
    .end annotation

    .line 1
    iput p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "start",
            "end"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->s:Z

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->J:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->m()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 15
    .line 16
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshing"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_1

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->d:Z

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->J:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:I

    .line 15
    .line 16
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->z:I

    .line 17
    .line 18
    add-int/2addr p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->A:I

    .line 21
    .line 22
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n:I

    .line 23
    .line 24
    sub-int/2addr p1, v1

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->o(IZ)V

    .line 27
    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->H:Z

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->L:Landroid/view/animation/Animation$AnimationListener;

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v(Landroid/view/animation/Animation$AnimationListener;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->n(ZZ)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/high16 v1, 0x42600000    # 56.0f

    .line 18
    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 20
    .line 21
    mul-float v0, v0, v1

    .line 22
    .line 23
    float-to-int v0, v0

    .line 24
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/high16 v1, 0x42480000    # 50.0f

    .line 28
    .line 29
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 30
    .line 31
    mul-float v0, v0, v1

    .line 32
    .line 33
    float-to-int v0, v0

    .line 34
    iput v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->I:I

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->o(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->B:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axes"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->i:Landroidx/core/view/NestedScrollingChildHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method t(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$c;-><init>(Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->D:Landroid/view/animation/Animation;

    .line 7
    .line 8
    const-wide/16 v1, 0x96

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->v:Lcom/join/mgps/customview/swiperefresh/CircleImageView;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/SwipeRefresh;->D:Landroid/view/animation/Animation;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
