.class public final Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;
.super Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;",
        "B:",
        "Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;",
        ":",
        "Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;",
        ">",
        "Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final FLING_MAX_VELOCITY:I = 0x2710

.field private static final INVALID_POINTER:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtraFixedSize:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "TB;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 7
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    .line 8
    iput-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 3
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    .line 4
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Landroid/widget/OverScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mExtraFixedSize:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;)Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    .line 2
    .line 3
    return-object p0
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private fling(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIF)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    iget-object v3, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mFlingRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    iput-object v3, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mFlingRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    :cond_0
    iget-object v3, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    new-instance v3, Landroid/widget/OverScroller;

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-direct {v3, v4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object v3, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 29
    .line 30
    :cond_1
    iget-object v5, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/KSViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    move/from16 v12, p3

    .line 45
    .line 46
    move/from16 v13, p4

    .line 47
    .line 48
    invoke-virtual/range {v5 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    new-instance v3, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;

    .line 60
    .line 61
    iget-object v4, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-direct {v3, p0, p1, v2, v4}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx$a;-><init>(Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;I)V

    .line 68
    .line 69
    .line 70
    iput-object v3, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mFlingRunnable:Ljava/lang/Runnable;

    .line 71
    .line 72
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    return v1

    .line 77
    :cond_2
    iget-object v3, v0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    .line 78
    .line 79
    invoke-virtual {v3, p1, v2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    return v1
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onInterceptTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 8
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const/4 p1, -0x1

    if-eq v4, v2, :cond_3

    if-eq v4, v1, :cond_2

    const/4 p2, 0x3

    if-eq v4, p2, :cond_3

    goto :goto_0

    .line 9
    :cond_2
    iget p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    if-eq p2, p1, :cond_5

    .line 10
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    if-eq p2, p1, :cond_5

    .line 11
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 12
    iget p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 13
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    if-le p2, v0, :cond_5

    .line 14
    iput-boolean v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    .line 15
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    goto :goto_0

    .line 16
    :cond_3
    iput-boolean v5, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    .line 17
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 18
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 21
    :cond_4
    iput-boolean v5, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    .line 22
    invoke-virtual {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->stopFling()V

    .line 23
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    invoke-virtual {v1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->canDragView(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, p2, v0, v3}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iput v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    .line 25
    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 26
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->ensureVelocityTracker()V

    .line 27
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    check-cast p1, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;

    invoke-interface {p1}, Lcom/kwad/sdk/lib/ad/desigin/CustomAppBarFlingConsumer;->onAppBarTouchDown()V

    .line 28
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    .line 29
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 30
    :cond_6
    iget-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    return p1
.end method

.method public final bridge synthetic onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onTouchEvent(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    if-gez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    const/4 v0, -0x1

    if-eq v2, v3, :cond_5

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 p1, 0x3

    if-eq v2, p1, :cond_8

    goto/16 :goto_3

    .line 7
    :cond_1
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v0, :cond_2

    return v4

    .line 8
    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 9
    iget v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    sub-int/2addr v1, v0

    .line 10
    iget-boolean v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mTouchSlop:I

    if-le v2, v4, :cond_4

    .line 11
    iput-boolean v3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    if-lez v1, :cond_3

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_3
    add-int/2addr v1, v4

    :cond_4
    :goto_0
    move v7, v1

    .line 12
    iget-boolean v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    if-eqz v1, :cond_a

    .line 13
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    .line 14
    iget-object v4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    invoke-virtual {v4, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->getMaxDragOffset(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)I

    move-result v8

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->scroll(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;III)I

    goto :goto_3

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 17
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 18
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gez v1, :cond_6

    const/16 v2, -0x2710

    const/16 v8, -0x2710

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    if-gez v1, :cond_7

    const/4 v9, 0x0

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    move v9, v1

    :goto_2
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    .line 20
    invoke-direct/range {v5 .. v10}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->fling(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;IIF)Z

    .line 21
    :cond_8
    iput-boolean v4, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mIsBeingDragged:Z

    .line 22
    iput v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 23
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_3

    .line 26
    :cond_9
    invoke-virtual {p1, p2, v0, v1}, Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mBehavior:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$a;->canDragView(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 27
    iput v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mLastMotionY:I

    .line 28
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mActivePointerId:I

    .line 29
    invoke-direct {p0}, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->ensureVelocityTracker()V

    .line 30
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b

    .line 31
    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_b
    return v3

    :cond_c
    return v4
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setExtraFixedSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mExtraFixedSize:I

    .line 2
    .line 3
    return-void
.end method

.method public final stopFling()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mFlingRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomHeaderBehaviorEx;->mScroller:Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
