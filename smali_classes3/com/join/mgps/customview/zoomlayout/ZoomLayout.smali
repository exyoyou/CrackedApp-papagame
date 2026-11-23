.class public Lcom/join/mgps/customview/zoomlayout/ZoomLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$i;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$h;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$e;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$f;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;,
        Lcom/join/mgps/customview/zoomlayout/ZoomLayout$j;
    }
.end annotation


# static fields
.field private static final DEF_ZOOM_DURATION:I = 0xfa

.field public static final DOUBLE_EPSILON:D = 0.001

.field public static final FLOAT_EPSILON:F = 0.001f

.field public static final TAG:Ljava/lang/String; = "ZoomLayout"


# instance fields
.field public DEBUG:Z

.field private mAllowOverScale:Z

.field mAllowParentInterceptOnEdge:Z

.field mAllowParentInterceptOnScaled:Z

.field private mAllowZoom:Z

.field private mAnimatedZoomRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

.field private mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mArray:[F

.field mDrawRect:Landroid/graphics/RectF;

.field private mFlingRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;

.field private mMatrixValues:[F

.field private mMaxScale:F

.field private mMinScale:F

.field private mOnDoubleTapListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/zoomlayout/ZoomLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLongTapListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/zoomlayout/ZoomLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPanListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTapListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/zoomlayout/ZoomLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/zoomlayout/ZoomLayout$i;",
            ">;"
        }
    .end annotation
.end field

.field private mOnZoomListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/customview/zoomlayout/ZoomLayout$j;",
            ">;"
        }
    .end annotation
.end field

.field private mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field private mScaleMatrixInverse:Landroid/graphics/Matrix;

.field private mSimpleOnGlobalLayoutChangedListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;

.field private mTranslateMatrix:Landroid/graphics/Matrix;

.field private mTranslateMatrixInverse:Landroid/graphics/Matrix;

.field mViewPortRect:Landroid/graphics/RectF;

.field private mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

.field private mZoomDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
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
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->DEBUG:Z

    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 4
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrixInverse:Landroid/graphics/Matrix;

    .line 5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrixInverse:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 7
    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMatrixValues:[F

    const/4 v1, 0x6

    new-array v1, v1, [F

    .line 8
    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowOverScale:Z

    .line 10
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 11
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 12
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/16 v2, 0xfa

    .line 13
    iput v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDuration:I

    .line 14
    iput-boolean v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnEdge:Z

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnScaled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    iput v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 17
    iput v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    .line 19
    new-instance v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 20
    new-instance v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 21
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->DEBUG:Z

    .line 24
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 25
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrixInverse:Landroid/graphics/Matrix;

    .line 26
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 27
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrixInverse:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 28
    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMatrixValues:[F

    const/4 v1, 0x6

    new-array v1, v1, [F

    .line 29
    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    const/4 v1, 0x1

    .line 30
    iput-boolean v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowOverScale:Z

    .line 31
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 32
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 33
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/16 v2, 0xfa

    .line 34
    iput v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDuration:I

    .line 35
    iput-boolean v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnEdge:Z

    .line 36
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnScaled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 37
    iput v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 38
    iput v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    .line 39
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    .line 40
    new-instance v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 41
    new-instance v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 44
    iput-boolean p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->DEBUG:Z

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrixInverse:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrixInverse:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 49
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMatrixValues:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 50
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowOverScale:Z

    .line 52
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 54
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/16 v1, 0xfa

    .line 55
    iput v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDuration:I

    .line 56
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnEdge:Z

    .line 57
    iput-boolean p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnScaled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 59
    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    .line 60
    iput-boolean p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    .line 61
    new-instance p3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    iput-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 62
    new-instance p3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    iput-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 65
    iput-boolean p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->DEBUG:Z

    .line 66
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    iput-object p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 67
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    iput-object p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrixInverse:Landroid/graphics/Matrix;

    .line 68
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    iput-object p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    iput-object p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrixInverse:Landroid/graphics/Matrix;

    const/16 p4, 0x9

    new-array p4, p4, [F

    .line 70
    iput-object p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMatrixValues:[F

    const/4 p4, 0x6

    new-array p4, p4, [F

    .line 71
    iput-object p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    const/4 p4, 0x1

    .line 72
    iput-boolean p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowOverScale:Z

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 75
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    const/16 v0, 0xfa

    .line 76
    iput v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDuration:I

    .line 77
    iput-boolean p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnEdge:Z

    .line 78
    iput-boolean p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnScaled:Z

    const/high16 p4, 0x3f800000    # 1.0f

    .line 79
    iput p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    const/high16 p4, 0x40400000    # 3.0f

    .line 80
    iput p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    .line 81
    iput-boolean p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    .line 82
    new-instance p3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    iput-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 83
    new-instance p3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    invoke-direct {p3, p0, p4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    iput-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->i(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFlingRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;->a()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFlingRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFlingRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1102(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFlingRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$c;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1200(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimatedZoomRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimatedZoomRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->g(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusX:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusY:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1900(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->l(FFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2300(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getClosestValidTranslationPoint()Landroid/graphics/PointF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$2400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFZ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->j(FFZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDuration:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2600(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2900(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;[F)[F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->t([F)[F

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->e(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3000(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnZoomListeners:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnPanListeners:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->c(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->d(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFZ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->k(FFZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$900(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    .line 2
    .line 3
    return p0
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimatedZoomRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->a()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimatedZoomRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnDoubleTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnDoubleTapListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$e;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v3, p0, p1, v4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, p0, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$e;->a(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public static clamp(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "min",
            "current",
            "max"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private d(Landroid/view/MotionEvent;)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnLongTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnLongTapListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$f;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v3, p0, p1, v4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, p0, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$f;->a(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method private e(Landroid/view/MotionEvent;)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTapListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$h;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v3, p0, p1, v4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, p0, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$h;->a(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method private f(ILandroid/view/MotionEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTouchListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTouchListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$i;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    new-instance v3, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-direct {v3, p0, p2, v4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$m;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Landroid/view/MotionEvent;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2, p0, p1, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$i;->a(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;ILcom/join/mgps/customview/zoomlayout/ZoomLayout$m;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method private g(FF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focusX",
            "focusY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    aput p2, v0, p1

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->t([F)[F

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-direct {p0, p2, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->h(Landroid/graphics/Matrix;I)F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 20
    .line 21
    const/4 v3, 0x5

    .line 22
    invoke-direct {p0, v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->h(Landroid/graphics/Matrix;I)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget-object v5, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 31
    .line 32
    aget v6, v5, v1

    .line 33
    .line 34
    aget p1, v5, p1

    .line 35
    .line 36
    invoke-direct {p0, v4, v6, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->l(FFF)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 40
    .line 41
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->h(Landroid/graphics/Matrix;I)F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    sub-float/2addr p1, p2

    .line 46
    iget-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 47
    .line 48
    invoke-direct {p0, p2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->h(Landroid/graphics/Matrix;I)F

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    sub-float/2addr p2, v2

    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-float/2addr p1, v0

    .line 58
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    add-float/2addr p2, v0

    .line 63
    invoke-direct {p0, p1, p2, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->j(FFZ)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method private getClosestValidTranslationPoint()Landroid/graphics/PointF;
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    cmpg-float v1, v1, v2

    .line 27
    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sub-float/2addr v2, v3

    .line 45
    add-float/2addr v1, v2

    .line 46
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 50
    .line 51
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 54
    .line 55
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 56
    .line 57
    cmpg-float v5, v2, v4

    .line 58
    .line 59
    if-gez v5, :cond_1

    .line 60
    .line 61
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 62
    .line 63
    sub-float/2addr v2, v4

    .line 64
    add-float/2addr v1, v2

    .line 65
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 69
    .line 70
    iget v2, v3, Landroid/graphics/RectF;->left:F

    .line 71
    .line 72
    cmpl-float v3, v1, v2

    .line 73
    .line 74
    if-lez v3, :cond_2

    .line 75
    .line 76
    iget v3, v0, Landroid/graphics/PointF;->x:F

    .line 77
    .line 78
    sub-float/2addr v1, v2

    .line 79
    add-float/2addr v3, v1

    .line 80
    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 81
    .line 82
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    cmpg-float v1, v1, v2

    .line 95
    .line 96
    if-gez v1, :cond_3

    .line 97
    .line 98
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 99
    .line 100
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    sub-float/2addr v2, v3

    .line 113
    add-float/2addr v1, v2

    .line 114
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 118
    .line 119
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 120
    .line 121
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 122
    .line 123
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 124
    .line 125
    cmpg-float v5, v2, v4

    .line 126
    .line 127
    if-gez v5, :cond_4

    .line 128
    .line 129
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 130
    .line 131
    sub-float/2addr v2, v4

    .line 132
    add-float/2addr v1, v2

    .line 133
    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 137
    .line 138
    iget v2, v3, Landroid/graphics/RectF;->top:F

    .line 139
    .line 140
    cmpl-float v3, v1, v2

    .line 141
    .line 142
    if-lez v3, :cond_5

    .line 143
    .line 144
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 145
    .line 146
    sub-float/2addr v1, v2

    .line 147
    add-float/2addr v3, v1

    .line 148
    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 149
    .line 150
    :cond_5
    :goto_1
    return-object v0
.end method

.method private getTranslateDeltaBounds()Landroid/graphics/RectF;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-float/2addr v1, v2

    .line 19
    const/high16 v2, 0x40000000    # 2.0f

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    cmpg-float v4, v1, v3

    .line 23
    .line 24
    if-gez v4, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-float/2addr v1, v4

    .line 39
    div-float/2addr v1, v2

    .line 40
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-float v1, v1

    .line 45
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 46
    .line 47
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 48
    .line 49
    cmpl-float v6, v1, v5

    .line 50
    .line 51
    if-lez v6, :cond_0

    .line 52
    .line 53
    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 54
    .line 55
    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 56
    .line 57
    sub-float/2addr v1, v4

    .line 58
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sub-float/2addr v1, v5

    .line 62
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 63
    .line 64
    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 68
    .line 69
    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 70
    .line 71
    iget-object v5, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 72
    .line 73
    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 74
    .line 75
    sub-float/2addr v4, v5

    .line 76
    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 77
    .line 78
    add-float/2addr v4, v1

    .line 79
    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 80
    .line 81
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 88
    .line 89
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    sub-float/2addr v1, v4

    .line 94
    cmpg-float v4, v1, v3

    .line 95
    .line 96
    if-gez v4, :cond_3

    .line 97
    .line 98
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    sub-float/2addr v1, v4

    .line 111
    div-float/2addr v1, v2

    .line 112
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    int-to-float v1, v1

    .line 117
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 118
    .line 119
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 120
    .line 121
    cmpl-float v4, v1, v2

    .line 122
    .line 123
    if-lez v4, :cond_2

    .line 124
    .line 125
    sub-float/2addr v2, v1

    .line 126
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 127
    .line 128
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    sub-float/2addr v1, v2

    .line 132
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 133
    .line 134
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 138
    .line 139
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 140
    .line 141
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 142
    .line 143
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 144
    .line 145
    sub-float/2addr v2, v3

    .line 146
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 147
    .line 148
    add-float/2addr v2, v1

    .line 149
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 150
    .line 151
    :goto_1
    return-object v0
.end method

.method private h(Landroid/graphics/Matrix;I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMatrixValues:[F

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMatrixValues:[F

    .line 7
    .line 8
    aget p1, p1, p2

    .line 9
    .line 10
    return p1
.end method

.method private i(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    new-instance p2, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;

    .line 2
    .line 3
    invoke-direct {p2, p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mGestureListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;

    .line 7
    .line 8
    new-instance p2, Landroid/view/ScaleGestureDetector;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mGestureListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;

    .line 11
    .line 12
    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, v0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Landroid/view/GestureDetector;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mGestureListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;

    .line 24
    .line 25
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 29
    .line 30
    new-instance p1, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;Lcom/join/mgps/customview/zoomlayout/ZoomLayout$a;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mSimpleOnGlobalLayoutChangedListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mSimpleOnGlobalLayoutChangedListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static isEqual(DD)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    move-wide v0, p0

    move-wide v2, p2

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isEqual(DDD)Z

    move-result p0

    return p0
.end method

.method public static isEqual(DDD)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs",
            "epsilon"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_1

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p2, p0, p4

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private j(FFZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY",
            "clamp"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-float/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sub-float/2addr p2, v0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->k(FFZ)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method private k(FFZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy",
            "clamp"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getTranslateDeltaBounds()Landroid/graphics/RectF;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget v0, p3, Landroid/graphics/RectF;->left:F

    .line 8
    .line 9
    iget v1, p3, Landroid/graphics/RectF;->right:F

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->clamp(FFF)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p3, Landroid/graphics/RectF;->top:F

    .line 16
    .line 17
    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    .line 18
    .line 19
    invoke-static {v0, p2, p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->clamp(FFF)F

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    add-float/2addr p1, p3

    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    add-float/2addr p2, p3

    .line 33
    float-to-double v0, p1

    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    float-to-double v2, p3

    .line 39
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isEqual(DD)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    float-to-double v0, p2

    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    float-to-double v2, p3

    .line 51
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isEqual(DD)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-nez p3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    return p1

    .line 60
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 61
    .line 62
    neg-float p1, p1

    .line 63
    neg-float p2, p2

    .line 64
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->n()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    return p1
.end method

.method private l(FFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "focusX",
            "focusY"
        }
    .end annotation

    .line 1
    iput p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusX:F

    .line 2
    .line 3
    iput p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusY:F

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->n()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrixInverse:Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrixInverse:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v0, v3, v3, v1, v2}, Lcom/join/mgps/customview/zoomlayout/c;->l(Landroid/graphics/RectF;FFFF)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    int-to-float v2, v2

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    int-to-float v3, v3

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    int-to-float v4, v4

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-float v0, v0

    .line 60
    invoke-static {v1, v2, v3, v4, v0}, Lcom/join/mgps/customview/zoomlayout/c;->l(Landroid/graphics/RectF;FFFF)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 64
    .line 65
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->r(Landroid/graphics/RectF;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 82
    .line 83
    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method private o(Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "regulare",
            "inverted"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    new-array p2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    aput-object p1, p2, v1

    .line 9
    .line 10
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 11
    .line 12
    invoke-static {v3}, Lcom/join/mgps/customview/zoomlayout/c;->e(Landroid/graphics/Matrix;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    aput-object v3, p2, v0

    .line 17
    .line 18
    const-string v3, "%s: mScaleMatrix            %s"

    .line 19
    .line 20
    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->m(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-array p2, v2, [Ljava/lang/Object;

    .line 28
    .line 29
    aput-object p1, p2, v1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 32
    .line 33
    invoke-static {v3}, Lcom/join/mgps/customview/zoomlayout/c;->e(Landroid/graphics/Matrix;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    aput-object v3, p2, v0

    .line 38
    .line 39
    const-string v3, "%s: mTranslateMatrix        %s"

    .line 40
    .line 41
    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->m(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    if-eqz p3, :cond_1

    .line 49
    .line 50
    new-array p2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p1, p2, v1

    .line 53
    .line 54
    iget-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrixInverse:Landroid/graphics/Matrix;

    .line 55
    .line 56
    invoke-static {p3}, Lcom/join/mgps/customview/zoomlayout/c;->e(Landroid/graphics/Matrix;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    aput-object p3, p2, v0

    .line 61
    .line 62
    const-string p3, "%s: mScaleMatrixInverse     %s"

    .line 63
    .line 64
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->m(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-array p2, v2, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object p1, p2, v1

    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrixInverse:Landroid/graphics/Matrix;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/c;->e(Landroid/graphics/Matrix;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    aput-object p1, p2, v0

    .line 82
    .line 83
    const-string p1, "%s: mTranslateMatrixInverse %s"

    .line 84
    .line 85
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->m(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    const-string v0, "ViewRect"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mViewPortRect:Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/join/mgps/customview/zoomlayout/c;->g(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->m(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "DrawRect"

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lcom/join/mgps/customview/zoomlayout/c;->g(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/RectF;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->m(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private q(Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/zoomlayout/c;->h([FLandroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->s([F)[F

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/join/mgps/customview/zoomlayout/c;->k(Landroid/graphics/Rect;[F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private r(Landroid/graphics/RectF;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/customview/zoomlayout/c;->i([FLandroid/graphics/RectF;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->s([F)[F

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/join/mgps/customview/zoomlayout/c;->m(Landroid/graphics/RectF;[F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static removeGlobal(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private s([F)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method private t([F)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrixInverse:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrixInverse:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method


# virtual methods
.method public addOnDoubleTapListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnDoubleTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnDoubleTapListeners:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnDoubleTapListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public addOnLongTapListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnLongTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnLongTapListeners:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnLongTapListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public addOnPanListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnPanListeners:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnPanListeners:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnPanListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public addOnTapListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTapListeners:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTapListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public addOnTouchListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTouchListeners:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTouchListeners:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTouchListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public addOnZoomListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnZoomListeners:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnZoomListeners:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnZoomListeners:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public clearOnDoubleTapListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnDoubleTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public clearOnLongTapListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnLongTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public clearOnPanListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnPanListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public clearOnTabListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public clearOnTouchListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTouchListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public clearOnZoomListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnZoomListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
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
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    neg-float v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    neg-float v1, v1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusX:F

    .line 22
    .line 23
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusY:F

    .line 24
    .line 25
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    nop

    .line 33
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget v5, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusX:F

    .line 50
    .line 51
    iget v6, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusY:F

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrixInverse:Landroid/graphics/Matrix;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->h(Landroid/graphics/Matrix;I)F

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    move-object v1, p1

    .line 61
    invoke-static/range {v1 .. v7}, Lcom/join/mgps/customview/zoomlayout/c;->a(Landroid/graphics/Canvas;Landroid/content/Context;FFFFF)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

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
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    aput v1, v0, v2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x1

    .line 17
    aput v1, v0, v3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->t([F)[F

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 25
    .line 26
    aget v1, v0, v2

    .line 27
    .line 28
    aget v0, v0, v3

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public getDrawRect()Landroid/graphics/RectF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mDrawRect:Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    .line 2
    .line 3
    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    .line 2
    .line 3
    return v0
.end method

.method public getPosX()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->h(Landroid/graphics/Matrix;I)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    neg-float v0, v0

    .line 9
    return v0
.end method

.method public getPosY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mTranslateMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->h(Landroid/graphics/Matrix;I)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    neg-float v0, v0

    .line 9
    return v0
.end method

.method public getScale()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->h(Landroid/graphics/Matrix;I)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public getZoomDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "location",
            "dirty"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->q(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    aget v2, p1, v1

    .line 10
    .line 11
    int-to-float v2, v2

    .line 12
    mul-float v2, v2, v0

    .line 13
    .line 14
    float-to-int v2, v2

    .line 15
    aput v2, p1, v1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aget v2, p1, v1

    .line 19
    .line 20
    int-to-float v2, v2

    .line 21
    mul-float v2, v2, v0

    .line 22
    .line 23
    float-to-int v0, v2

    .line 24
    aput v0, p1, v1

    .line 25
    .line 26
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public isAllowOverScale()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowOverScale:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAllowParentInterceptOnEdge()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnEdge:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAllowParentInterceptOnScaled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnScaled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isAllowZoom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    .line 2
    .line 3
    return v0
.end method

.method public isScaled()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v1, v0

    .line 6
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    const-wide v5, 0x3fa99999a0000000L    # 0.05000000074505806

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-static/range {v1 .. v6}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isEqual(DDD)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    return v0
.end method

.method public isScaling()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isTranslating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mGestureListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->a(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public moveBy(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dX",
            "dY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-float/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-float/2addr p2, v0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->moveTo(FF)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public moveTo(FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posX",
            "posY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->j(FFZ)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mPanDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->c()V

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mSimpleOnGlobalLayoutChangedListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$l;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->removeGlobal(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 7
    .line 8
    .line 9
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
    iget-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    .line 2
    .line 3
    return p1
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
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    aput v1, v0, v2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x1

    .line 17
    aput v1, v0, v3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->s([F)[F

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mArray:[F

    .line 25
    .line 26
    aget v1, v0, v2

    .line 27
    .line 28
    aget v0, v0, v3

    .line 29
    .line 30
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    return v2

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    and-int/lit16 v0, v0, 0xff

    .line 43
    .line 44
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->f(ILandroid/view/MotionEvent;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 54
    .line 55
    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 67
    :goto_1
    if-ne v0, v3, :cond_5

    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mGestureListener:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$d;->b(Landroid/view/MotionEvent;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    :cond_3
    const/4 v2, 0x1

    .line 80
    :cond_4
    move v1, v2

    .line 81
    :cond_5
    return v1
.end method

.method public removeOnDoubleTapListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnDoubleTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeOnLongTapListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnLongTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeOnPanListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnPanListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeOnTouchListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTapListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeOnTouchListeners(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnTouchListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeOnZoomListener(Lcom/join/mgps/customview/zoomlayout/ZoomLayout$j;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mOnZoomListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAllowOverScale(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowOverScale"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowOverScale:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowParentInterceptOnEdge"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnEdge:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAllowParentInterceptOnScaled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowParentInterceptOnScaled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowParentInterceptOnScaled:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAllowZoom(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowZoom"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaxScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxScale"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    .line 2
    .line 3
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    .line 4
    .line 5
    cmpg-float v0, p1, v0

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setMinScale(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setMinScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minScale"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    .line 2
    .line 3
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    .line 4
    .line 5
    cmpl-float v0, p1, v0

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setMaxScale(F)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Cannot set OnClickListener, please use OnTapListener."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Cannot set OnLongClickListener, please use OnLongTabListener."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Cannot set OnTouchListener."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public setScale(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "focusX",
            "focusY",
            "animate"
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowZoom:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->g(FF)V

    .line 6
    iget-boolean p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAllowOverScale:Z

    if-nez p2, :cond_1

    .line 7
    iget p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMinScale:F

    iget p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mMaxScale:F

    invoke-static {p2, p1, p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->clamp(FFF)F

    move-result p1

    :cond_1
    move v2, p1

    if-eqz p4, :cond_2

    .line 8
    new-instance v0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;-><init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    iput-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimatedZoomRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    move-result v1

    iget v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusX:F

    iget v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusY:F

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->h(FFFFZ)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimatedZoomRunnable:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->b(F)V

    .line 12
    iget p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusX:F

    iget p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mFocusY:F

    invoke-direct {p0, v2, p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->l(FFF)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->a(F)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDispatcher:Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    invoke-virtual {p1, v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->c(F)V

    :goto_0
    return-void
.end method

.method public setScale(FZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scale",
            "animate"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->setScale(FFFZ)V

    return-void
.end method

.method public setZoomDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomDuration"
        }
    .end annotation

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0xfa

    .line 4
    .line 5
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mZoomDuration:I

    .line 6
    .line 7
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomAnimationInterpolator"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-void
.end method
