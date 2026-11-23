.class public abstract Lit/sephiroth/android/library/widget/AbsHListView;
.super Lit/sephiroth/android/library/widget/AdapterView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/AbsHListView$k;,
        Lit/sephiroth/android/library/widget/AbsHListView$e;,
        Lit/sephiroth/android/library/widget/AbsHListView$l;,
        Lit/sephiroth/android/library/widget/AbsHListView$i;,
        Lit/sephiroth/android/library/widget/AbsHListView$SavedState;,
        Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;,
        Lit/sephiroth/android/library/widget/AbsHListView$h;,
        Lit/sephiroth/android/library/widget/AbsHListView$n;,
        Lit/sephiroth/android/library/widget/AbsHListView$d;,
        Lit/sephiroth/android/library/widget/AbsHListView$c;,
        Lit/sephiroth/android/library/widget/AbsHListView$g;,
        Lit/sephiroth/android/library/widget/AbsHListView$j;,
        Lit/sephiroth/android/library/widget/AbsHListView$f;,
        Lit/sephiroth/android/library/widget/AbsHListView$m;,
        Lit/sephiroth/android/library/widget/AbsHListView$o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final A3:I = 0x14

.field private static final B3:I = -0x1

.field private static final C3:I = 0x0

.field private static final D3:I = 0x1

.field private static final E3:I = -0x1

.field static final F3:Landroid/view/animation/Interpolator;

.field public static final G3:[I

.field private static final g3:Ljava/lang/String; = "AbsListView"

.field public static final h3:I = 0x0

.field public static final i3:I = 0x1

.field public static final j3:I = 0x2

.field public static final k3:I = -0x1

.field public static final l3:I = 0x0

.field public static final m3:I = 0x1

.field public static final n3:I = 0x2

.field public static final o3:I = 0x3

.field public static final p3:I = 0x4

.field public static final q3:I = 0x5

.field public static final r3:I = 0x6

.field public static final s3:I = 0x0

.field public static final t3:I = 0x1

.field public static final u3:I = 0x2

.field public static final v3:I = 0x3

.field public static final w3:I = 0x4

.field public static final x3:I = 0x5

.field public static final y3:I = 0x6

.field protected static final z3:I = 0x3


# instance fields
.field private A2:Lit/sephiroth/android/library/widget/AbsHListView$d;

.field private B2:Lit/sephiroth/android/library/widget/AbsHListView$j;

.field private C2:Ljava/lang/Runnable;

.field private D2:I

.field private E2:I

.field private F2:Z

.field private G2:I

.field private H2:I

.field private I2:Ljava/lang/Runnable;

.field protected J2:Ljava/lang/Runnable;

.field private K2:I

.field L:Lit/sephiroth/android/library/util/b$a;

.field protected L1:I

.field private L2:I

.field protected M:I

.field private M2:F

.field public N:Ljava/lang/Object;

.field protected final N2:[Z

.field O:Ljava/lang/Object;

.field private O2:I

.field P:I

.field P2:I

.field protected Q:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field Q2:I

.field R:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field R1:Landroid/view/View;

.field private R2:Landroidx/core/widget/EdgeEffectCompat;

.field protected S:I

.field private S2:Landroidx/core/widget/EdgeEffectCompat;

.field protected T:Lit/sephiroth/android/library/widget/AbsHListView$c;

.field private T2:I

.field protected U:Landroid/widget/ListAdapter;

.field private U2:I

.field V:Z

.field V1:Landroid/view/View;

.field private V2:I

.field W:Z

.field private W2:Z

.field private X2:I

.field private Y2:I

.field private Z2:Lit/sephiroth/android/library/widget/AbsHListView$h;

.field protected a2:Z

.field private a3:I

.field b1:I

.field protected b2:Z

.field private b3:I

.field protected c2:I

.field protected c3:Z

.field d2:I

.field private d3:I

.field e2:I

.field private e3:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

.field protected f1:Landroid/graphics/Rect;

.field f2:I

.field private f3:F

.field g2:I

.field protected h2:I

.field protected final i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

.field i2:I

.field j2:I

.field private k2:Landroid/view/VelocityTracker;

.field l1:I

.field private l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

.field protected m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

.field protected n2:I

.field protected o2:Z

.field p0:Landroid/graphics/drawable/Drawable;

.field p1:I

.field p2:Z

.field q1:I

.field q2:Z

.field r1:I

.field private r2:Lit/sephiroth/android/library/widget/AbsHListView$i;

.field private s2:Z

.field private t2:Landroid/graphics/Rect;

.field protected u2:I

.field protected v1:Landroid/graphics/Rect;

.field private v2:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected w2:I

.field private x2:I

.field private y2:Lit/sephiroth/android/library/widget/AbsHListView$e;

.field private z2:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->F3:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    filled-new-array {v0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->G3:[I

    .line 14
    .line 15
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
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 3
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 4
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:I

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 7
    new-instance v1, Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-direct {v1, p0}, Lit/sephiroth/android/library/widget/AbsHListView$l;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 8
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:I

    .line 9
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p1:I

    .line 10
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    .line 11
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 13
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L1:I

    .line 14
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 15
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s2:Z

    .line 17
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v2:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 19
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x2:I

    .line 20
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G2:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M2:F

    new-array v1, v1, [Z

    .line 22
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 23
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 24
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V2:I

    .line 25
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e0()V

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

    const v0, 0x7f040311

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 29
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 30
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:Z

    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:I

    .line 32
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 33
    new-instance v2, Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-direct {v2, p0}, Lit/sephiroth/android/library/widget/AbsHListView$l;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 34
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:I

    .line 35
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p1:I

    .line 36
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    .line 37
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    .line 38
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 39
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L1:I

    .line 40
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 41
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s2:Z

    .line 43
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    const/4 v3, 0x0

    .line 44
    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v2:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 45
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x2:I

    .line 46
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G2:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 47
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M2:F

    new-array v4, v2, [Z

    .line 48
    iput-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N2:[Z

    .line 49
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 50
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V2:I

    .line 51
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e0()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 53
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->AbsHListView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 55
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 p3, 0x6

    .line 56
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/4 v1, 0x2

    .line 57
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v4, 0x7

    .line 58
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x3

    .line 59
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v6, 0x5

    .line 60
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v6, 0x4

    .line 61
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v0

    move v0, p2

    move p2, v2

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_1
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:Z

    .line 65
    invoke-virtual {p0, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->setStackFromRight(Z)V

    .line 66
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 67
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->setTranscriptMode(I)V

    .line 68
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 69
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSmoothScrollbarEnabled(Z)V

    .line 70
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChoiceMode(I)V

    return-void
.end method

.method static synthetic A(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic B(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private B0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method static synthetic C(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic D(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic E(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic F(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static H0(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scrapViews",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 21
    .line 22
    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    .line 23
    .line 24
    if-ne v3, p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/view/View;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method static synthetic I(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private I0(I)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    iget v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 6
    .line 7
    sub-int v12, v11, v0

    .line 8
    .line 9
    iget v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 10
    .line 11
    sub-int v0, v12, v0

    .line 12
    .line 13
    iget v1, v10, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 14
    .line 15
    const/high16 v2, -0x80000000

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    sub-int v2, v11, v1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v0

    .line 23
    :goto_0
    iget v3, v10, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 24
    .line 25
    const/4 v14, 0x3

    .line 26
    const/4 v15, 0x1

    .line 27
    const/4 v9, 0x0

    .line 28
    if-ne v3, v14, :cond_c

    .line 29
    .line 30
    if-eq v11, v1, :cond_1b

    .line 31
    .line 32
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v3, v10, Lit/sephiroth/android/library/widget/AbsHListView;->H2:I

    .line 37
    .line 38
    if-le v1, v3, :cond_1

    .line 39
    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {v1, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget v1, v10, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 50
    .line 51
    if-ltz v1, :cond_2

    .line 52
    .line 53
    iget v3, v10, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 54
    .line 55
    sub-int/2addr v1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    div-int/lit8 v1, v1, 0x2

    .line 62
    .line 63
    :goto_1
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v3, 0x0

    .line 75
    :goto_2
    if-eqz v2, :cond_4

    .line 76
    .line 77
    invoke-virtual {v10, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->V0(II)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    const/4 v0, 0x0

    .line 83
    :goto_3
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_b

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    neg-int v0, v2

    .line 96
    sub-int/2addr v1, v3

    .line 97
    sub-int v14, v0, v1

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/4 v4, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v6, 0x0

    .line 107
    iget v7, v10, Lit/sephiroth/android/library/widget/AbsHListView;->P2:I

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    const/16 v16, 0x1

    .line 111
    .line 112
    move-object/from16 v0, p0

    .line 113
    .line 114
    move v1, v14

    .line 115
    const/4 v13, 0x0

    .line 116
    move/from16 v9, v16

    .line 117
    .line 118
    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 119
    .line 120
    .line 121
    iget v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->P2:I

    .line 122
    .line 123
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ne v0, v1, :cond_5

    .line 136
    .line 137
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    if-ne v0, v15, :cond_a

    .line 151
    .line 152
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->T()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_a

    .line 157
    .line 158
    :cond_6
    iput v13, v10, Lit/sephiroth/android/library/widget/AbsHListView;->V2:I

    .line 159
    .line 160
    const/4 v0, 0x5

    .line 161
    iput v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 162
    .line 163
    if-lez v12, :cond_8

    .line 164
    .line 165
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 166
    .line 167
    int-to-float v1, v14

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    int-to-float v2, v2

    .line 173
    div-float/2addr v1, v2

    .line 174
    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 175
    .line 176
    .line 177
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 178
    .line 179
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_7

    .line 184
    .line 185
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 188
    .line 189
    .line 190
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    if-gez v12, :cond_a

    .line 195
    .line 196
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 197
    .line 198
    int-to-float v1, v14

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    int-to-float v2, v2

    .line 204
    div-float/2addr v1, v2

    .line 205
    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 206
    .line 207
    .line 208
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_9

    .line 215
    .line 216
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 217
    .line 218
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 219
    .line 220
    .line 221
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 222
    .line 223
    .line 224
    :cond_a
    :goto_4
    iput v11, v10, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 225
    .line 226
    :cond_b
    iput v11, v10, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 227
    .line 228
    goto/16 :goto_a

    .line 229
    .line 230
    :cond_c
    const/4 v0, 0x5

    .line 231
    const/4 v13, 0x0

    .line 232
    if-ne v3, v0, :cond_1b

    .line 233
    .line 234
    if-eq v11, v1, :cond_1b

    .line 235
    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    sub-int v1, v0, v2

    .line 241
    .line 242
    iget v3, v10, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 243
    .line 244
    if-le v11, v3, :cond_d

    .line 245
    .line 246
    const/4 v9, 0x1

    .line 247
    goto :goto_5

    .line 248
    :cond_d
    const/4 v3, -0x1

    .line 249
    const/4 v9, -0x1

    .line 250
    :goto_5
    iget v3, v10, Lit/sephiroth/android/library/widget/AbsHListView;->V2:I

    .line 251
    .line 252
    if-nez v3, :cond_e

    .line 253
    .line 254
    iput v9, v10, Lit/sephiroth/android/library/widget/AbsHListView;->V2:I

    .line 255
    .line 256
    :cond_e
    neg-int v3, v2

    .line 257
    if-gez v1, :cond_f

    .line 258
    .line 259
    if-gez v0, :cond_10

    .line 260
    .line 261
    :cond_f
    if-lez v1, :cond_11

    .line 262
    .line 263
    if-gtz v0, :cond_11

    .line 264
    .line 265
    :cond_10
    neg-int v3, v0

    .line 266
    add-int v0, v2, v3

    .line 267
    .line 268
    move v7, v0

    .line 269
    move v8, v3

    .line 270
    goto :goto_6

    .line 271
    :cond_11
    move v8, v3

    .line 272
    const/4 v7, 0x0

    .line 273
    :goto_6
    if-eqz v8, :cond_16

    .line 274
    .line 275
    const/4 v2, 0x0

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    const/4 v4, 0x0

    .line 281
    const/4 v5, 0x0

    .line 282
    const/4 v6, 0x0

    .line 283
    iget v1, v10, Lit/sephiroth/android/library/widget/AbsHListView;->P2:I

    .line 284
    .line 285
    const/16 v16, 0x0

    .line 286
    .line 287
    const/16 v17, 0x1

    .line 288
    .line 289
    move-object/from16 v0, p0

    .line 290
    .line 291
    move/from16 v18, v1

    .line 292
    .line 293
    move v1, v8

    .line 294
    move v14, v7

    .line 295
    move/from16 v7, v18

    .line 296
    .line 297
    move v13, v8

    .line 298
    move/from16 v8, v16

    .line 299
    .line 300
    move/from16 v19, v9

    .line 301
    .line 302
    move/from16 v9, v17

    .line 303
    .line 304
    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_12

    .line 312
    .line 313
    if-ne v0, v15, :cond_17

    .line 314
    .line 315
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->T()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_17

    .line 320
    .line 321
    :cond_12
    if-lez v12, :cond_14

    .line 322
    .line 323
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 324
    .line 325
    int-to-float v1, v13

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    int-to-float v2, v2

    .line 331
    div-float/2addr v1, v2

    .line 332
    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 333
    .line 334
    .line 335
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-nez v0, :cond_13

    .line 342
    .line 343
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 346
    .line 347
    .line 348
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 349
    .line 350
    .line 351
    goto :goto_7

    .line 352
    :cond_14
    if-gez v12, :cond_17

    .line 353
    .line 354
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 355
    .line 356
    int-to-float v1, v13

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    int-to-float v2, v2

    .line 362
    div-float/2addr v1, v2

    .line 363
    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 364
    .line 365
    .line 366
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 367
    .line 368
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-nez v0, :cond_15

    .line 373
    .line 374
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 377
    .line 378
    .line 379
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 380
    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_16
    move v14, v7

    .line 384
    move/from16 v19, v9

    .line 385
    .line 386
    :cond_17
    :goto_7
    if-eqz v14, :cond_1a

    .line 387
    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_18

    .line 393
    .line 394
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 395
    .line 396
    const/4 v1, 0x0

    .line 397
    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/util/b$a;->c(I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h0()V

    .line 401
    .line 402
    .line 403
    goto :goto_8

    .line 404
    :cond_18
    const/4 v1, 0x0

    .line 405
    :goto_8
    invoke-virtual {v10, v14, v14}, Lit/sephiroth/android/library/widget/AbsHListView;->V0(II)Z

    .line 406
    .line 407
    .line 408
    const/4 v0, 0x3

    .line 409
    iput v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 410
    .line 411
    invoke-virtual/range {p0 .. p1}, Lit/sephiroth/android/library/widget/AbsHListView;->Y(I)I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    iput v1, v10, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 416
    .line 417
    iget v2, v10, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 418
    .line 419
    sub-int v2, v0, v2

    .line 420
    .line 421
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    if-eqz v2, :cond_19

    .line 426
    .line 427
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 428
    .line 429
    .line 430
    move-result v9

    .line 431
    goto :goto_9

    .line 432
    :cond_19
    const/4 v9, 0x0

    .line 433
    :goto_9
    iput v9, v10, Lit/sephiroth/android/library/widget/AbsHListView;->d2:I

    .line 434
    .line 435
    iput v11, v10, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 436
    .line 437
    iput v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 438
    .line 439
    :cond_1a
    iput v11, v10, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 440
    .line 441
    move/from16 v15, v19

    .line 442
    .line 443
    iput v15, v10, Lit/sephiroth/android/library/widget/AbsHListView;->V2:I

    .line 444
    .line 445
    :cond_1b
    :goto_a
    return-void
.end method

.method static synthetic J(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic K(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic L(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic M(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/AbsHListView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y2:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$e;)Lit/sephiroth/android/library/widget/AbsHListView$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y2:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic O(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic P(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/view/VelocityTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    return-object p0
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lit/sephiroth/android/library/util/b$a;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I2:Ljava/lang/Runnable;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I2:Ljava/lang/Runnable;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I2:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private T()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    if-lt v2, v4, :cond_2

    .line 28
    .line 29
    sub-int/2addr v0, v1

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    sub-int/2addr v2, v4

    .line 47
    if-gt v0, v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1
.end method

.method private T0(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 2
    .line 3
    sub-int v0, p1, v0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-nez v2, :cond_2

    .line 21
    .line 22
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H2:I

    .line 23
    .line 24
    if-le v1, v5, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    return v4

    .line 28
    :cond_2
    :goto_1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->V()V

    .line 29
    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 35
    .line 36
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    const/4 v1, 0x3

    .line 40
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 41
    .line 42
    if-lez v0, :cond_4

    .line 43
    .line 44
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H2:I

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H2:I

    .line 48
    .line 49
    neg-int v0, v0

    .line 50
    :goto_2
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 51
    .line 52
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y2:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    :cond_5
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 67
    .line 68
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 69
    .line 70
    sub-int/2addr v0, v1

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 78
    .line 79
    .line 80
    :cond_6
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 90
    .line 91
    .line 92
    :cond_7
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->I0(I)V

    .line 93
    .line 94
    .line 95
    return v3
.end method

.method private V()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a2:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lit/sephiroth/android/library/util/b$a;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 24
    .line 25
    .line 26
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b2:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a2:Z

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private W(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private W0()V
    .locals 7

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int v4, v0, v2

    .line 15
    .line 16
    instance-of v5, v3, Landroid/widget/Checkable;

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    check-cast v3, Landroid/widget/Checkable;

    .line 21
    .line 22
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 23
    .line 24
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {v5, v4, v6}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 41
    .line 42
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-virtual {v5, v4, v6}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method private Z0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x1080062

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static c0(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "dest",
            "direction"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p2, v0, :cond_4

    .line 4
    .line 5
    if-eq p2, v1, :cond_4

    .line 6
    .line 7
    const/16 v0, 0x11

    .line 8
    .line 9
    if-eq p2, v0, :cond_3

    .line 10
    .line 11
    const/16 v0, 0x21

    .line 12
    .line 13
    if-eq p2, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x42

    .line 16
    .line 17
    if-eq p2, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x82

    .line 20
    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    div-int/2addr v0, v1

    .line 30
    add-int/2addr p2, v0

    .line 31
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    div-int/2addr v2, v1

    .line 40
    add-int/2addr v0, v2

    .line 41
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    div-int/2addr p0, v1

    .line 61
    add-int/2addr p0, v0

    .line 62
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    div-int/2addr p1, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    div-int/2addr v0, v1

    .line 79
    add-int/2addr p2, v0

    .line 80
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 81
    .line 82
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    div-int/2addr v2, v1

    .line 89
    add-int/2addr v0, v2

    .line 90
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    div-int/2addr p0, v1

    .line 102
    add-int/2addr p0, v0

    .line 103
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 104
    .line 105
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    div-int/2addr p1, v1

    .line 112
    goto :goto_0

    .line 113
    :cond_4
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    div-int/2addr v0, v1

    .line 120
    add-int/2addr p2, v0

    .line 121
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    div-int/2addr p0, v1

    .line 128
    add-int/2addr p0, v0

    .line 129
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    div-int/2addr v2, v1

    .line 136
    add-int/2addr v0, v2

    .line 137
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    div-int/2addr p1, v1

    .line 144
    :goto_0
    add-int/2addr p1, v2

    .line 145
    :goto_1
    sub-int/2addr v0, p2

    .line 146
    sub-int/2addr p1, p0

    .line 147
    mul-int p1, p1, p1

    .line 148
    .line 149
    mul-int v0, v0, v0

    .line 150
    .line 151
    add-int/2addr p1, v0

    .line 152
    return p1
.end method

.method private e0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H2:I

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K2:I

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L2:I

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P2:I

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q2:I

    .line 55
    .line 56
    invoke-static {p0}, Lit/sephiroth/android/library/util/b;->a(Landroid/view/View;)Lit/sephiroth/android/library/util/b$a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 61
    .line 62
    return-void
.end method

.method private f0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

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

.method private g0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

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
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private s0(Landroid/view/MotionEvent;)V
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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xff00

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    shr-int/lit8 v0, v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    float-to-int v2, v2

    .line 37
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g2:I

    .line 38
    .line 39
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method static synthetic u(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L2:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic v(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K2:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lit/sephiroth/android/library/widget/AbsHListView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->T()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic x(Lit/sephiroth/android/library/widget/AbsHListView;)Landroidx/core/widget/EdgeEffectCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 2
    .line 3
    return-object p0
.end method

.method private x0(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:I

    .line 4
    .line 5
    sub-int/2addr p1, v1

    .line 6
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p1:I

    .line 7
    .line 8
    sub-int/2addr p2, v1

    .line 9
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    .line 10
    .line 11
    add-int/2addr p3, v1

    .line 12
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    .line 13
    .line 14
    add-int/2addr p4, v1

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method static synthetic y(Lit/sephiroth/android/library/widget/AbsHListView;)Landroidx/core/widget/EdgeEffectCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic z(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected A0()I
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method C0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G2:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r2:Lit/sephiroth/android/library/widget/AbsHListView$i;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G2:I

    .line 10
    .line 11
    invoke-interface {v0, p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$i;->b(Lit/sephiroth/android/library/widget/AbsHListView;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method D0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E0()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected E0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J2:Ljava/lang/Runnable;

    .line 11
    .line 12
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 13
    .line 14
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e3:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:I

    .line 18
    .line 19
    const-wide/high16 v2, -0x8000000000000000L

    .line 20
    .line 21
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->x:J

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 27
    .line 28
    .line 29
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    .line 30
    .line 31
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:I

    .line 32
    .line 33
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method F0()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 23
    .line 24
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    sub-int/2addr v3, v4

    .line 27
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 28
    .line 29
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-lt v5, v4, :cond_2

    .line 33
    .line 34
    add-int v7, v4, v0

    .line 35
    .line 36
    if-ge v5, v7, :cond_2

    .line 37
    .line 38
    sub-int v0, v5, v4

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-ge v7, v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int v7, v2, v0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    if-le v8, v3, :cond_8

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sub-int/2addr v3, v0

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sub-int v7, v3, v0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    if-ge v5, v4, :cond_9

    .line 76
    .line 77
    const/4 v3, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    :goto_0
    if-ge v3, v0, :cond_7

    .line 80
    .line 81
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-nez v3, :cond_5

    .line 90
    .line 91
    if-gtz v4, :cond_3

    .line 92
    .line 93
    if-ge v7, v2, :cond_4

    .line 94
    .line 95
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    add-int/2addr v2, v5

    .line 100
    :cond_4
    move v5, v7

    .line 101
    :cond_5
    if-lt v7, v2, :cond_6

    .line 102
    .line 103
    add-int/2addr v3, v4

    .line 104
    move v5, v3

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_7
    move v7, v5

    .line 110
    move v5, v4

    .line 111
    :cond_8
    :goto_1
    const/4 v0, 0x1

    .line 112
    goto :goto_4

    .line 113
    :cond_9
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 114
    .line 115
    add-int v5, v4, v0

    .line 116
    .line 117
    add-int/lit8 v7, v5, -0x1

    .line 118
    .line 119
    sub-int/2addr v0, v6

    .line 120
    move v9, v0

    .line 121
    const/4 v8, 0x0

    .line 122
    :goto_2
    if-ltz v9, :cond_e

    .line 123
    .line 124
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-ne v9, v0, :cond_c

    .line 137
    .line 138
    if-lt v5, v2, :cond_a

    .line 139
    .line 140
    if-le v10, v3, :cond_b

    .line 141
    .line 142
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    sub-int/2addr v3, v8

    .line 147
    :cond_b
    move v8, v11

    .line 148
    :cond_c
    if-gt v10, v3, :cond_d

    .line 149
    .line 150
    add-int v5, v4, v9

    .line 151
    .line 152
    move v7, v11

    .line 153
    goto :goto_3

    .line 154
    :cond_d
    add-int/lit8 v9, v9, -0x1

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_e
    move v5, v7

    .line 158
    move v7, v8

    .line 159
    :goto_3
    const/4 v0, 0x0

    .line 160
    :goto_4
    const/4 v2, -0x1

    .line 161
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 162
    .line 163
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 164
    .line 165
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 166
    .line 167
    .line 168
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 169
    .line 170
    if-eqz v3, :cond_f

    .line 171
    .line 172
    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 173
    .line 174
    .line 175
    :cond_f
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 176
    .line 177
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    .line 178
    .line 179
    .line 180
    iput v7, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 181
    .line 182
    invoke-virtual {p0, v5, v0}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-lt v0, v4, :cond_10

    .line 187
    .line 188
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-gt v0, v3, :cond_10

    .line 193
    .line 194
    const/4 v2, 0x4

    .line 195
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 196
    .line 197
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectionInt(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    .line 204
    .line 205
    .line 206
    move v2, v0

    .line 207
    :cond_10
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 208
    .line 209
    .line 210
    if-ltz v2, :cond_11

    .line 211
    .line 212
    const/4 v1, 0x1

    .line 213
    :cond_11
    return v1
.end method

.method protected G0()Z
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 2
    .line 3
    if-gez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method protected J0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected K0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->U0()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public L0(FFI)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "metaState"
        }
    .end annotation

    .line 1
    float-to-int v0, p1

    .line 2
    float-to-int v1, p2

    .line 3
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 17
    .line 18
    sub-int v3, v0, v3

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v3, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v2:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 31
    .line 32
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->L0(FFI)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public M0(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "distance",
            "duration"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public N0(IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "distance",
            "duration",
            "linear"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int v2, v0, v1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    sub-int/2addr v4, v5

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 36
    .line 37
    if-eqz v5, :cond_3

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ne v0, v3, :cond_1

    .line 53
    .line 54
    if-ltz p1, :cond_3

    .line 55
    .line 56
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 57
    .line 58
    if-ne v2, v0, :cond_2

    .line 59
    .line 60
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ne v0, v4, :cond_2

    .line 71
    .line 72
    if-lez p1, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x2

    .line 76
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 80
    .line 81
    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView$g;->h(IIZ)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 86
    .line 87
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_1
    return-void
.end method

.method protected O0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-lez p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, -0x1

    .line 17
    :goto_0
    if-le v1, v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int v0, v1, v0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    new-instance v2, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    mul-int v3, v3, v0

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    mul-int v0, v0, v2

    .line 61
    .line 62
    int-to-float v0, v0

    .line 63
    int-to-float v2, v3

    .line 64
    div-float/2addr v0, v2

    .line 65
    const/high16 v2, 0x3f400000    # 0.75f

    .line 66
    .line 67
    if-gez p1, :cond_2

    .line 68
    .line 69
    cmpg-float v3, v0, v2

    .line 70
    .line 71
    if-gez v3, :cond_2

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    if-lez p1, :cond_3

    .line 77
    .line 78
    cmpg-float v0, v0, v2

    .line 79
    .line 80
    if-gez v0, :cond_3

    .line 81
    .line 82
    add-int/lit8 v1, v1, -0x1

    .line 83
    .line 84
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    add-int/2addr v1, p1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->P0(I)V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public P0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 17
    .line 18
    return-void
.end method

.method public Q0(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "boundPosition"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView$k;->c(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public R0(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "offset"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView$k;->d(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method S()V
    .locals 13

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v1, v3, :cond_5

    .line 16
    .line 17
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v7

    .line 23
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 36
    .line 37
    invoke-interface {v3, v6}, Landroid/widget/Adapter;->getItemId(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    const/4 v10, 0x1

    .line 42
    cmp-long v5, v7, v3

    .line 43
    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    add-int/lit8 v3, v6, -0x14

    .line 47
    .line 48
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/lit8 v4, v6, 0x14

    .line 53
    .line 54
    iget v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 55
    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    :goto_1
    if-ge v3, v4, :cond_1

    .line 61
    .line 62
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 63
    .line 64
    invoke-interface {v5, v3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    cmp-long v5, v7, v11

    .line 69
    .line 70
    if-nez v5, :cond_0

    .line 71
    .line 72
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 73
    .line 74
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v4, v3, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v4, v1, v3}, Landroidx/collection/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    goto :goto_2

    .line 90
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const/4 v3, 0x0

    .line 94
    :goto_2
    if-nez v3, :cond_4

    .line 95
    .line 96
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 97
    .line 98
    invoke-virtual {v2, v7, v8}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, -0x1

    .line 102
    .line 103
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 104
    .line 105
    sub-int/2addr v2, v10

    .line 106
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 107
    .line 108
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 109
    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 113
    .line 114
    if-eqz v3, :cond_2

    .line 115
    .line 116
    move-object v4, v3

    .line 117
    check-cast v4, Lqb/b;

    .line 118
    .line 119
    move-object v5, v2

    .line 120
    check-cast v5, Landroid/view/ActionMode;

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    invoke-virtual/range {v4 .. v9}, Lqb/b;->a(Landroid/view/ActionMode;IJZ)V

    .line 124
    .line 125
    .line 126
    :cond_2
    const/4 v2, 0x1

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 129
    .line 130
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    .line 132
    invoke-virtual {v3, v6, v4}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_3
    add-int/2addr v1, v10

    .line 136
    goto :goto_0

    .line 137
    :cond_5
    if-eqz v2, :cond_6

    .line 138
    .line 139
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 140
    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    check-cast v0, Landroid/view/ActionMode;

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 146
    .line 147
    .line 148
    :cond_6
    return-void
.end method

.method public S0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "offset",
            "duration"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView$k;->e(III)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "id"
        }
    .end annotation

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/AdapterView$b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView$b;-><init>(Landroid/view/View;IJ)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method U0()Z
    .locals 3

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    return v1
.end method

.method V0(II)Z
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deltaX",
            "incrementalDeltaX"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v4

    .line 15
    :cond_0
    const/4 v5, 0x0

    .line 16
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    add-int/lit8 v7, v3, -0x1

    .line 25
    .line 26
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    iget-object v9, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 35
    .line 36
    rsub-int/lit8 v10, v6, 0x0

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    sub-int/2addr v11, v5

    .line 43
    sub-int v11, v8, v11

    .line 44
    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 50
    .line 51
    .line 52
    move-result v13

    .line 53
    sub-int/2addr v12, v13

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    sub-int/2addr v12, v13

    .line 59
    if-gez v1, :cond_1

    .line 60
    .line 61
    add-int/lit8 v13, v12, -0x1

    .line 62
    .line 63
    neg-int v13, v13

    .line 64
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    add-int/lit8 v13, v12, -0x1

    .line 70
    .line 71
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :goto_0
    if-gez v2, :cond_2

    .line 76
    .line 77
    sub-int/2addr v12, v4

    .line 78
    neg-int v12, v12

    .line 79
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    sub-int/2addr v12, v4

    .line 85
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_1
    iget v12, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 90
    .line 91
    if-nez v12, :cond_3

    .line 92
    .line 93
    iget v13, v9, Landroid/graphics/Rect;->left:I

    .line 94
    .line 95
    sub-int v13, v6, v13

    .line 96
    .line 97
    iput v13, v0, Lit/sephiroth/android/library/widget/AbsHListView;->T2:I

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    iget v13, v0, Lit/sephiroth/android/library/widget/AbsHListView;->T2:I

    .line 101
    .line 102
    add-int/2addr v13, v2

    .line 103
    iput v13, v0, Lit/sephiroth/android/library/widget/AbsHListView;->T2:I

    .line 104
    .line 105
    :goto_2
    add-int v13, v12, v3

    .line 106
    .line 107
    iget v14, v0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 108
    .line 109
    if-ne v13, v14, :cond_4

    .line 110
    .line 111
    iget v15, v9, Landroid/graphics/Rect;->right:I

    .line 112
    .line 113
    add-int/2addr v15, v8

    .line 114
    iput v15, v0, Lit/sephiroth/android/library/widget/AbsHListView;->U2:I

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    iget v15, v0, Lit/sephiroth/android/library/widget/AbsHListView;->U2:I

    .line 118
    .line 119
    add-int/2addr v15, v2

    .line 120
    iput v15, v0, Lit/sephiroth/android/library/widget/AbsHListView;->U2:I

    .line 121
    .line 122
    :goto_3
    if-nez v12, :cond_5

    .line 123
    .line 124
    iget v15, v9, Landroid/graphics/Rect;->left:I

    .line 125
    .line 126
    if-lt v6, v15, :cond_5

    .line 127
    .line 128
    if-ltz v2, :cond_5

    .line 129
    .line 130
    const/4 v6, 0x1

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    const/4 v6, 0x0

    .line 133
    :goto_4
    if-ne v13, v14, :cond_6

    .line 134
    .line 135
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 140
    .line 141
    sub-int/2addr v13, v9

    .line 142
    if-gt v8, v13, :cond_6

    .line 143
    .line 144
    if-gtz v2, :cond_6

    .line 145
    .line 146
    const/4 v8, 0x1

    .line 147
    goto :goto_5

    .line 148
    :cond_6
    const/4 v8, 0x0

    .line 149
    :goto_5
    if-nez v6, :cond_19

    .line 150
    .line 151
    if-eqz v8, :cond_7

    .line 152
    .line 153
    goto/16 :goto_d

    .line 154
    .line 155
    :cond_7
    if-gez v2, :cond_8

    .line 156
    .line 157
    const/4 v6, 0x1

    .line 158
    goto :goto_6

    .line 159
    :cond_8
    const/4 v6, 0x0

    .line 160
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_9

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d0()V

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeaderViewsCount()I

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    iget v13, v0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFooterViewsCount()I

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    sub-int/2addr v13, v14

    .line 180
    if-eqz v6, :cond_d

    .line 181
    .line 182
    neg-int v7, v2

    .line 183
    const/4 v14, 0x0

    .line 184
    const/4 v15, 0x0

    .line 185
    :goto_7
    if-ge v14, v3, :cond_c

    .line 186
    .line 187
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-lt v4, v7, :cond_a

    .line 196
    .line 197
    goto :goto_9

    .line 198
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 199
    .line 200
    add-int v4, v12, v14

    .line 201
    .line 202
    if-lt v4, v9, :cond_b

    .line 203
    .line 204
    if-ge v4, v13, :cond_b

    .line 205
    .line 206
    move/from16 v16, v3

    .line 207
    .line 208
    iget-object v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 209
    .line 210
    invoke-virtual {v3, v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 211
    .line 212
    .line 213
    goto :goto_8

    .line 214
    :cond_b
    move/from16 v16, v3

    .line 215
    .line 216
    :goto_8
    add-int/lit8 v14, v14, 0x1

    .line 217
    .line 218
    move/from16 v3, v16

    .line 219
    .line 220
    const/4 v4, 0x1

    .line 221
    const/4 v5, 0x0

    .line 222
    goto :goto_7

    .line 223
    :cond_c
    :goto_9
    const/4 v4, 0x0

    .line 224
    goto :goto_b

    .line 225
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    sub-int/2addr v3, v2

    .line 230
    const/4 v4, 0x0

    .line 231
    const/4 v15, 0x0

    .line 232
    :goto_a
    if-ltz v7, :cond_10

    .line 233
    .line 234
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 239
    .line 240
    .line 241
    move-result v14

    .line 242
    if-gt v14, v3, :cond_e

    .line 243
    .line 244
    goto :goto_b

    .line 245
    :cond_e
    add-int/lit8 v15, v15, 0x1

    .line 246
    .line 247
    add-int v4, v12, v7

    .line 248
    .line 249
    if-lt v4, v9, :cond_f

    .line 250
    .line 251
    if-ge v4, v13, :cond_f

    .line 252
    .line 253
    iget-object v14, v0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 254
    .line 255
    invoke-virtual {v14, v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 256
    .line 257
    .line 258
    :cond_f
    add-int/lit8 v4, v7, -0x1

    .line 259
    .line 260
    move/from16 v17, v7

    .line 261
    .line 262
    move v7, v4

    .line 263
    move/from16 v4, v17

    .line 264
    .line 265
    goto :goto_a

    .line 266
    :cond_10
    :goto_b
    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->d2:I

    .line 267
    .line 268
    add-int/2addr v3, v1

    .line 269
    iput v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->e2:I

    .line 270
    .line 271
    const/4 v1, 0x1

    .line 272
    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 273
    .line 274
    if-lez v15, :cond_11

    .line 275
    .line 276
    invoke-virtual {v0, v4, v15}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 280
    .line 281
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->m()V

    .line 282
    .line 283
    .line 284
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_12

    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 291
    .line 292
    .line 293
    :cond_12
    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->r0(I)V

    .line 294
    .line 295
    .line 296
    if-eqz v6, :cond_13

    .line 297
    .line 298
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 299
    .line 300
    add-int/2addr v1, v15

    .line 301
    iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 302
    .line 303
    :cond_13
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-lt v10, v1, :cond_14

    .line 308
    .line 309
    if-ge v11, v1, :cond_15

    .line 310
    .line 311
    :cond_14
    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->X(Z)V

    .line 312
    .line 313
    .line 314
    :cond_15
    const/4 v1, -0x1

    .line 315
    if-nez v8, :cond_16

    .line 316
    .line 317
    iget v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 318
    .line 319
    if-eq v2, v1, :cond_16

    .line 320
    .line 321
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 322
    .line 323
    sub-int/2addr v2, v1

    .line 324
    if-ltz v2, :cond_18

    .line 325
    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-ge v2, v1, :cond_18

    .line 331
    .line 332
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 333
    .line 334
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 339
    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_16
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:I

    .line 343
    .line 344
    if-eq v2, v1, :cond_17

    .line 345
    .line 346
    iget v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 347
    .line 348
    sub-int/2addr v2, v3

    .line 349
    if-ltz v2, :cond_18

    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    if-ge v2, v3, :cond_18

    .line 356
    .line 357
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 362
    .line 363
    .line 364
    goto :goto_c

    .line 365
    :cond_17
    iget-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 366
    .line 367
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 368
    .line 369
    .line 370
    :cond_18
    :goto_c
    const/4 v3, 0x0

    .line 371
    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 372
    .line 373
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    .line 374
    .line 375
    .line 376
    return v3

    .line 377
    :cond_19
    :goto_d
    const/4 v1, 0x1

    .line 378
    const/4 v3, 0x0

    .line 379
    if-eqz v2, :cond_1a

    .line 380
    .line 381
    const/4 v4, 0x1

    .line 382
    goto :goto_e

    .line 383
    :cond_1a
    const/4 v4, 0x0

    .line 384
    :goto_e
    return v4
.end method

.method protected abstract X(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "after"
        }
    .end annotation
.end method

.method protected X0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R1:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-lez v4, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 32
    .line 33
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    if-ge v0, v4, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :cond_2
    :goto_1
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R1:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 v0, 0x4

    .line 47
    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V1:Landroid/view/View;

    .line 51
    .line 52
    if-eqz v0, :cond_9

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 59
    .line 60
    add-int/2addr v4, v0

    .line 61
    iget v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 62
    .line 63
    if-ge v4, v5, :cond_5

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    const/4 v4, 0x0

    .line 68
    :goto_3
    if-nez v4, :cond_7

    .line 69
    .line 70
    if-lez v0, :cond_7

    .line 71
    .line 72
    sub-int/2addr v0, v2

    .line 73
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 86
    .line 87
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    sub-int/2addr v4, v5

    .line 90
    if-le v0, v4, :cond_6

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    const/4 v2, 0x0

    .line 94
    :goto_4
    move v4, v2

    .line 95
    :cond_7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V1:Landroid/view/View;

    .line 96
    .line 97
    if-eqz v4, :cond_8

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_9
    return-void
.end method

.method protected Y(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->Z(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 17
    .line 18
    add-int/2addr p1, v0

    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    :goto_0
    return p1
.end method

.method Y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->K0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    sget-object v1, Lit/sephiroth/android/library/widget/AbsHListView;->G3:[I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract Z(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 6
    .line 7
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    add-int v5, v1, v3

    .line 20
    .line 21
    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method public b0(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
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
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1
    instance-of p1, p1, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_3

    .line 7
    .line 8
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s2:Z

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    mul-int/lit8 v2, v0, 0x64

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_0

    .line 28
    .line 29
    mul-int/lit8 v4, v4, 0x64

    .line 30
    .line 31
    div-int/2addr v4, v1

    .line 32
    add-int/2addr v2, v4

    .line 33
    :cond_0
    sub-int/2addr v0, v3

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    sub-int/2addr v1, v3

    .line 53
    mul-int/lit8 v1, v1, 0x64

    .line 54
    .line 55
    div-int/2addr v1, v0

    .line 56
    sub-int/2addr v2, v1

    .line 57
    :cond_1
    return v2

    .line 58
    :cond_2
    return v3

    .line 59
    :cond_3
    return v1
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ltz v0, :cond_3

    .line 9
    .line 10
    if-lez v1, :cond_3

    .line 11
    .line 12
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s2:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_3

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x64

    .line 31
    .line 32
    mul-int/lit8 v3, v3, 0x64

    .line 33
    .line 34
    div-int/2addr v3, v1

    .line 35
    sub-int/2addr v0, v3

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    int-to-float v1, v1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    int-to-float v3, v3

    .line 46
    div-float/2addr v1, v3

    .line 47
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 48
    .line 49
    int-to-float v3, v3

    .line 50
    mul-float v1, v1, v3

    .line 51
    .line 52
    const/high16 v3, 0x42c80000    # 100.0f

    .line 53
    .line 54
    mul-float v1, v1, v3

    .line 55
    .line 56
    float-to-int v1, v1

    .line 57
    add-int/2addr v0, v1

    .line 58
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    return v0

    .line 63
    :cond_0
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    add-int v2, v0, v1

    .line 69
    .line 70
    if-ne v2, v3, :cond_2

    .line 71
    .line 72
    move v2, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    div-int/lit8 v2, v1, 0x2

    .line 75
    .line 76
    add-int/2addr v2, v0

    .line 77
    :goto_0
    int-to-float v0, v0

    .line 78
    int-to-float v1, v1

    .line 79
    int-to-float v2, v2

    .line 80
    int-to-float v3, v3

    .line 81
    div-float/2addr v2, v3

    .line 82
    mul-float v1, v1, v2

    .line 83
    .line 84
    add-float/2addr v0, v1

    .line 85
    float-to-int v0, v0

    .line 86
    return v0

    .line 87
    :cond_3
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x64

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    div-float/2addr v1, v2

    .line 31
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    mul-float v1, v1, v2

    .line 35
    .line 36
    const/high16 v2, 0x42c80000    # 100.0f

    .line 37
    .line 38
    mul-float v1, v1, v2

    .line 39
    .line 40
    float-to-int v1, v1

    .line 41
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    add-int/2addr v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 48
    .line 49
    :cond_1
    :goto_0
    return v0
.end method

.method protected d0()V
    .locals 4

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 7
    .line 8
    const/4 v3, 0x4

    .line 9
    if-eq v2, v3, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 12
    .line 13
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 14
    .line 15
    if-ltz v2, :cond_1

    .line 16
    .line 17
    if-eq v2, v0, :cond_1

    .line 18
    .line 19
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->W(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->W(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressed"
        }
    .end annotation

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
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
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->X2:I

    .line 29
    .line 30
    add-int/2addr v3, v4

    .line 31
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Y2:I

    .line 34
    .line 35
    add-int/2addr v2, v4

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int/2addr v4, v3

    .line 41
    sub-int/2addr v4, v2

    .line 42
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T2:I

    .line 43
    .line 44
    add-int/2addr v2, v0

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 51
    .line 52
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    neg-int v5, v5

    .line 60
    add-int/2addr v5, v3

    .line 61
    int-to-float v3, v5

    .line 62
    int-to-float v2, v2

    .line 63
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 67
    .line 68
    invoke-virtual {v2, v4, v4}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 98
    .line 99
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->X2:I

    .line 102
    .line 103
    add-int/2addr v3, v4

    .line 104
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 105
    .line 106
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Y2:I

    .line 107
    .line 108
    add-int/2addr v2, v4

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    sub-int/2addr v4, v3

    .line 114
    sub-int/2addr v4, v2

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U2:I

    .line 120
    .line 121
    add-int/2addr v0, v5

    .line 122
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/high16 v2, 0x42b40000    # 90.0f

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 129
    .line 130
    .line 131
    neg-int v2, v3

    .line 132
    int-to-float v2, v2

    .line 133
    neg-int v0, v0

    .line 134
    int-to-float v0, v0

    .line 135
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 139
    .line 140
    invoke-virtual {v0, v4, v4}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 144
    .line 145
    invoke-virtual {v0, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 152
    .line 153
    .line 154
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 155
    .line 156
    .line 157
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x2

    .line 6
    invoke-direct {v0, v3, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(III)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b0(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E2:I

    .line 2
    .line 3
    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 2
    .line 3
    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-array v3, v2, [J

    .line 20
    .line 21
    :goto_0
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    aput-wide v4, v3, v1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v3

    .line 33
    :cond_2
    :goto_1
    new-array v0, v1, [J

    .line 34
    .line 35
    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, -0x1

    .line 25
    return v0
.end method

.method public getCheckedItemPositions()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v2:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v1, p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method protected getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 4

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f3:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Landroid/util/TypedValue;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, 0x7f04031f

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f3:F

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "Expected theme to define hlv_listPreferredItemWidth."

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    :goto_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f3:F

    .line 59
    .line 60
    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getHorizontalScrollbarHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Landroid/view/ViewGroup;->getLeftFadingEdgeStrength()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ge v0, v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v0, v1

    .line 44
    neg-int v0, v0

    .line 45
    int-to-float v0, v0

    .line 46
    div-float v1, v0, v2

    .line 47
    .line 48
    :cond_2
    return v1
.end method

.method public getListPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 4
    .line 5
    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 4
    .line 5
    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 4
    .line 5
    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 4
    .line 5
    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Landroid/view/ViewGroup;->getRightFadingEdgeStrength()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 16
    .line 17
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 18
    .line 19
    add-int/lit8 v3, v3, -0x1

    .line 20
    .line 21
    if-ge v2, v3, :cond_1

    .line 22
    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    int-to-float v3, v3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    sub-int v4, v2, v4

    .line 50
    .line 51
    if-le v0, v4, :cond_2

    .line 52
    .line 53
    sub-int/2addr v0, v2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 59
    int-to-float v0, v0

    .line 60
    div-float v1, v0, v3

    .line 61
    .line 62
    :cond_2
    return v1
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E2:I

    .line 2
    .line 3
    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D2:I

    .line 2
    .line 3
    return v0
.end method

.method protected h0()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lit/sephiroth/android/library/util/b$a;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v0, v0, Landroid/view/View;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public i0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->r()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected j0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r2:Lit/sephiroth/android/library/widget/AbsHListView$i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 12
    .line 13
    invoke-interface {v0, p0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$i;->a(Lit/sephiroth/android/library/widget/AbsHListView;III)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public k0(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

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

.method protected l()V
    .locals 11

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 2
    .line 3
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d3:I

    .line 4
    .line 5
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d3:I

    .line 6
    .line 7
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->S()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 25
    .line 26
    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView$l;->e()V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x3

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-lez v0, :cond_f

    .line 34
    .line 35
    iget-boolean v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 36
    .line 37
    if-eqz v6, :cond_a

    .line 38
    .line 39
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 40
    .line 41
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e3:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 42
    .line 43
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D2:I

    .line 44
    .line 45
    const/4 v7, 0x2

    .line 46
    if-ne v6, v7, :cond_1

    .line 47
    .line 48
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    if-ne v6, v5, :cond_5

    .line 52
    .line 53
    iget-boolean v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W2:Z

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W2:Z

    .line 58
    .line 59
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    sub-int/2addr v8, v9

    .line 75
    add-int/lit8 v9, v6, -0x1

    .line 76
    .line 77
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    if-eqz v9, :cond_3

    .line 82
    .line 83
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move v9, v8

    .line 89
    :goto_0
    iget v10, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 90
    .line 91
    add-int/2addr v10, v6

    .line 92
    if-lt v10, v1, :cond_4

    .line 93
    .line 94
    if-gt v9, v8, :cond_4

    .line 95
    .line 96
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 100
    .line 101
    .line 102
    :cond_5
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->h:I

    .line 103
    .line 104
    const/4 v6, 0x5

    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    if-eq v1, v5, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 111
    .line 112
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 113
    .line 114
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sub-int/2addr v0, v5

    .line 119
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 124
    .line 125
    return-void

    .line 126
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 133
    .line 134
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 135
    .line 136
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    sub-int/2addr v0, v5

    .line 141
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 146
    .line 147
    return-void

    .line 148
    :cond_8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-ltz v1, :cond_a

    .line 153
    .line 154
    invoke-virtual {p0, v1, v5}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-ne v8, v1, :cond_a

    .line 159
    .line 160
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 161
    .line 162
    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:J

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    int-to-long v4, v0

    .line 169
    cmp-long v0, v2, v4

    .line 170
    .line 171
    if-nez v0, :cond_9

    .line 172
    .line 173
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 177
    .line 178
    :goto_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_e

    .line 187
    .line 188
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-lt v1, v0, :cond_b

    .line 193
    .line 194
    add-int/lit8 v1, v0, -0x1

    .line 195
    .line 196
    :cond_b
    if-gez v1, :cond_c

    .line 197
    .line 198
    const/4 v1, 0x0

    .line 199
    :cond_c
    invoke-virtual {p0, v1, v5}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-ltz v0, :cond_d

    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_d
    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-ltz v0, :cond_f

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_e
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 220
    .line 221
    if-ltz v0, :cond_f

    .line 222
    .line 223
    return-void

    .line 224
    :cond_f
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 225
    .line 226
    if-eqz v0, :cond_10

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_10
    const/4 v3, 0x1

    .line 230
    :goto_3
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 231
    .line 232
    const/4 v0, -0x1

    .line 233
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 234
    .line 235
    const-wide/high16 v5, -0x8000000000000000L

    .line 236
    .line 237
    iput-wide v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 238
    .line 239
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:I

    .line 240
    .line 241
    iput-wide v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:J

    .line 242
    .line 243
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 244
    .line 245
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e3:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 246
    .line 247
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:I

    .line 248
    .line 249
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public l0()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p2:Z

    .line 2
    .line 3
    return v0
.end method

.method public m0()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s2:Z

    .line 2
    .line 3
    return v0
.end method

.method public n0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 2
    .line 3
    return v0
.end method

.method protected o0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->U0()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_7

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_7

    .line 38
    .line 39
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 40
    .line 41
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 42
    .line 43
    sub-int/2addr v1, v2

    .line 44
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 81
    .line 82
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    .line 96
    .line 97
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 98
    .line 99
    if-nez v0, :cond_7

    .line 100
    .line 101
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A2:Lit/sephiroth/android/library/widget/AbsHListView$d;

    .line 102
    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$d;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$d;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A2:Lit/sephiroth/android/library/widget/AbsHListView$d;

    .line 112
    .line 113
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A2:Lit/sephiroth/android/library/widget/AbsHListView$d;

    .line 114
    .line 115
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$o;->a()V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A2:Lit/sephiroth/android/library/widget/AbsHListView$d;

    .line 119
    .line 120
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    int-to-long v1, v1

    .line 125
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 26
    .line 27
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 28
    .line 29
    invoke-interface {v2, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 30
    .line 31
    .line 32
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 33
    .line 34
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 35
    .line 36
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->u:I

    .line 37
    .line 38
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 39
    .line 40
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 45
    .line 46
    :cond_0
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c3:Z

    .line 47
    .line 48
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraSpace"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget v0, v0, v1

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    array-length v1, p1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_0
    if-ltz v1, :cond_2

    .line 25
    .line 26
    aget v2, p1, v1

    .line 27
    .line 28
    if-ne v2, v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, -0x1

    .line 35
    :goto_1
    if-ltz v1, :cond_3

    .line 36
    .line 37
    add-int/lit8 v0, v1, 0x1

    .line 38
    .line 39
    array-length v2, p1

    .line 40
    sub-int/2addr v2, v1

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outAttrs"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 5
    .line 6
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->d()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v0, v2}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I2:Ljava/lang/Runnable;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B2:Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C2:Ljava/lang/Runnable;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C2:Ljava/lang/Runnable;

    .line 66
    .line 67
    :cond_5
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c3:Z

    .line 69
    .line 70
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gainFocus",
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 7
    .line 8
    if-gez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c3:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 26
    .line 27
    iget p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 28
    .line 29
    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->u:I

    .line 30
    .line 31
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F0()Z

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    const/16 v0, 0xa

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    cmpl-float v1, v0, v1

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalScrollFactor()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    mul-float v0, v0, v1

    .line 39
    .line 40
    float-to-int v0, v0

    .line 41
    invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->V0(II)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x2000

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    const/16 v0, 0x1000

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
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
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c3:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v0, :cond_7

    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    if-eq v0, v3, :cond_6

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    if-eq v0, v5, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    if-eq v0, v3, :cond_6

    .line 32
    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->s0(Landroid/view/MotionEvent;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_3
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-ne v0, v4, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    float-to-int v0, v0

    .line 68
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g0()V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->T0(I)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_a

    .line 81
    .line 82
    return v3

    .line 83
    :cond_6
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 84
    .line 85
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 86
    .line 87
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B0()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 95
    .line 96
    if-eq v0, v1, :cond_b

    .line 97
    .line 98
    const/4 v1, 0x5

    .line 99
    if-ne v0, v1, :cond_8

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    float-to-int v1, v1

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    float-to-int v4, v4

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 117
    .line 118
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->Z(I)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    const/4 v6, 0x4

    .line 123
    if-eq v0, v6, :cond_9

    .line 124
    .line 125
    if-ltz v5, :cond_9

    .line 126
    .line 127
    iget v7, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 128
    .line 129
    sub-int v7, v5, v7

    .line 130
    .line 131
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d2:I

    .line 140
    .line 141
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 142
    .line 143
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g2:I

    .line 144
    .line 145
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 146
    .line 147
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 148
    .line 149
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    .line 150
    .line 151
    .line 152
    :cond_9
    const/high16 v1, -0x80000000

    .line 153
    .line 154
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 155
    .line 156
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->f0()V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 160
    .line 161
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 162
    .line 163
    .line 164
    if-ne v0, v6, :cond_a

    .line 165
    .line 166
    return v3

    .line 167
    :cond_a
    :goto_0
    return v2

    .line 168
    :cond_b
    :goto_1
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 169
    .line 170
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x42

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 31
    .line 32
    if-ltz v0, :cond_3

    .line 33
    .line 34
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v0, v2, :cond_3

    .line 43
    .line 44
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 45
    .line 46
    iget p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 47
    .line 48
    sub-int/2addr p1, p2

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 p2, 0x0

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 57
    .line 58
    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->r:J

    .line 59
    .line 60
    invoke-virtual {p0, p1, v0, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->q(Landroid/view/View;IJ)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1
.end method

.method protected onLayout(ZIIII)V
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
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lit/sephiroth/android/library/widget/AdapterView;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p5, 0x0

    .line 15
    :goto_0
    if-ge p5, p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p5, p5, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 28
    .line 29
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->j()V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 33
    .line 34
    .line 35
    iput-boolean p3, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    .line 36
    .line 37
    sub-int/2addr p4, p2

    .line 38
    div-int/lit8 p4, p4, 0x3

    .line 39
    .line 40
    iput p4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w2:I

    .line 41
    .line 42
    return-void
.end method

.method protected onMeasure(II)V
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
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Z0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int/2addr p2, v0

    .line 17
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p1:I

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr p2, v0

    .line 26
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr p2, v0

    .line 35
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/2addr p2, v0

    .line 44
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 45
    .line 46
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D2:I

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    if-ne p1, p2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sub-int/2addr v0, v1

    .line 64
    add-int/lit8 v1, p1, -0x1

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move v1, v0

    .line 78
    :goto_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 79
    .line 80
    add-int/2addr v2, p1

    .line 81
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d3:I

    .line 82
    .line 83
    if-lt v2, p1, :cond_2

    .line 84
    .line 85
    if-gt v1, v0, :cond_2

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/4 p2, 0x0

    .line 89
    :goto_1
    iput-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W2:Z

    .line 90
    .line 91
    :cond_3
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollX",
            "scrollY",
            "clampedX",
            "clampedY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lit/sephiroth/android/library/util/b$a;->c(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h0()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    check-cast p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 12
    .line 13
    iget v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:I

    .line 14
    .line 15
    int-to-long v1, v1

    .line 16
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:J

    .line 17
    .line 18
    iget-wide v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    cmp-long v5, v1, v3

    .line 23
    .line 24
    if-ltz v5, :cond_0

    .line 25
    .line 26
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 27
    .line 28
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e3:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 29
    .line 30
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 31
    .line 32
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 33
    .line 34
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 35
    .line 36
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 37
    .line 38
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->h:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-wide v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:J

    .line 45
    .line 46
    cmp-long v5, v1, v3

    .line 47
    .line 48
    if-ltz v5, :cond_1

    .line 49
    .line 50
    const/4 v1, -0x1

    .line 51
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 55
    .line 56
    .line 57
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:I

    .line 58
    .line 59
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:Z

    .line 60
    .line 61
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e3:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 62
    .line 63
    iget-wide v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:J

    .line 64
    .line 65
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 66
    .line 67
    iget v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 68
    .line 69
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:I

    .line 70
    .line 71
    iget v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 72
    .line 73
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 74
    .line 75
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->h:I

    .line 76
    .line 77
    :cond_1
    :goto_0
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/SparseArrayCompat;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 82
    .line 83
    :cond_2
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->k:Landroidx/collection/LongSparseArray;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 88
    .line 89
    :cond_3
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:I

    .line 90
    .line 91
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 92
    .line 93
    iget-boolean p1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:Z

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 98
    .line 99
    const/4 v0, 0x3

    .line 100
    if-ne p1, v0, :cond_4

    .line 101
    .line 102
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    check-cast p1, Lqb/b;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e3:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 15
    .line 16
    iput-wide v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 17
    .line 18
    iget-wide v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:J

    .line 19
    .line 20
    iput-wide v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:J

    .line 21
    .line 22
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 23
    .line 24
    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 25
    .line 26
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 27
    .line 28
    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 29
    .line 30
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:I

    .line 31
    .line 32
    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:I

    .line 33
    .line 34
    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Ljava/lang/String;

    .line 37
    .line 38
    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:Z

    .line 39
    .line 40
    iput-boolean v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:Z

    .line 41
    .line 42
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:I

    .line 43
    .line 44
    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:I

    .line 45
    .line 46
    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/SparseArrayCompat;

    .line 47
    .line 48
    iput-object v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/SparseArrayCompat;

    .line 49
    .line 50
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->k:Landroidx/collection/LongSparseArray;

    .line 51
    .line 52
    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->k:Landroidx/collection/LongSparseArray;

    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v2, 0x1

    .line 60
    const/4 v3, 0x0

    .line 61
    if-lez v0, :cond_1

    .line 62
    .line 63
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 64
    .line 65
    if-lez v0, :cond_1

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemId()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    iput-wide v4, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    iput v6, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:I

    .line 81
    .line 82
    const-wide/16 v6, 0x0

    .line 83
    .line 84
    const-wide/16 v8, -0x1

    .line 85
    .line 86
    cmp-long v10, v4, v6

    .line 87
    .line 88
    if-ltz v10, :cond_2

    .line 89
    .line 90
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n2:I

    .line 91
    .line 92
    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 93
    .line 94
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 99
    .line 100
    iput-wide v8, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:J

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    if-eqz v0, :cond_4

    .line 104
    .line 105
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 106
    .line 107
    if-lez v0, :cond_4

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 118
    .line 119
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 120
    .line 121
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 122
    .line 123
    if-lt v0, v4, :cond_3

    .line 124
    .line 125
    add-int/lit8 v0, v4, -0x1

    .line 126
    .line 127
    :cond_3
    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 128
    .line 129
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 130
    .line 131
    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemId(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    iput-wide v4, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:J

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    iput v3, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 139
    .line 140
    iput-wide v8, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:J

    .line 141
    .line 142
    iput v3, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 143
    .line 144
    :goto_1
    const/4 v0, 0x0

    .line 145
    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Ljava/lang/String;

    .line 146
    .line 147
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 148
    .line 149
    const/4 v4, 0x3

    .line 150
    if-ne v0, v4, :cond_5

    .line 151
    .line 152
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 153
    .line 154
    if-eqz v0, :cond_5

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    const/4 v2, 0x0

    .line 158
    :goto_2
    iput-boolean v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:Z

    .line 159
    .line 160
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 161
    .line 162
    if-eqz v0, :cond_6

    .line 163
    .line 164
    :try_start_0
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/SparseArrayCompat;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 176
    .line 177
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/SparseArrayCompat;

    .line 181
    .line 182
    :cond_6
    :goto_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 183
    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 187
    .line 188
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 189
    .line 190
    .line 191
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 192
    .line 193
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    :goto_4
    if-ge v3, v2, :cond_7

    .line 198
    .line 199
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 200
    .line 201
    invoke-virtual {v4, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    .line 202
    .line 203
    .line 204
    move-result-wide v4

    .line 205
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 206
    .line 207
    invoke-virtual {v6, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-virtual {v0, v4, v5, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v3, v3, 0x1

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_7
    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->k:Landroidx/collection/LongSparseArray;

    .line 220
    .line 221
    :cond_8
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 222
    .line 223
    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:I

    .line 224
    .line 225
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->r()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    return v1

    .line 24
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 29
    .line 30
    .line 31
    :cond_3
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c3:Z

    .line 32
    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g0()V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 46
    .line 47
    .line 48
    and-int/lit16 v0, v0, 0xff

    .line 49
    .line 50
    const/4 v3, 0x6

    .line 51
    const/4 v4, 0x3

    .line 52
    const/4 v5, 0x5

    .line 53
    if-eqz v0, :cond_30

    .line 54
    .line 55
    const/4 v6, 0x2

    .line 56
    const/4 v7, -0x1

    .line 57
    if-eq v0, v1, :cond_15

    .line 58
    .line 59
    if-eq v0, v6, :cond_10

    .line 60
    .line 61
    if-eq v0, v4, :cond_9

    .line 62
    .line 63
    if-eq v0, v5, :cond_7

    .line 64
    .line 65
    if-eq v0, v3, :cond_5

    .line 66
    .line 67
    goto/16 :goto_b

    .line 68
    .line 69
    :cond_5
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->s0(Landroid/view/MotionEvent;)V

    .line 70
    .line 71
    .line 72
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 73
    .line 74
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g2:I

    .line 75
    .line 76
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-ltz v0, :cond_6

    .line 81
    .line 82
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 83
    .line 84
    sub-int v2, v0, v2

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d2:I

    .line 95
    .line 96
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 97
    .line 98
    :cond_6
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 99
    .line 100
    goto/16 :goto_b

    .line 101
    .line 102
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    float-to-int v4, v4

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    float-to-int p1, p1

    .line 120
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 121
    .line 122
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 123
    .line 124
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 125
    .line 126
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g2:I

    .line 127
    .line 128
    invoke-virtual {p0, v4, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-ltz p1, :cond_8

    .line 133
    .line 134
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 135
    .line 136
    sub-int v0, p1, v0

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d2:I

    .line 147
    .line 148
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 149
    .line 150
    :cond_8
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 151
    .line 152
    goto/16 :goto_b

    .line 153
    .line 154
    :cond_9
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 155
    .line 156
    if-eq p1, v5, :cond_c

    .line 157
    .line 158
    if-eq p1, v3, :cond_e

    .line 159
    .line 160
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 161
    .line 162
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 163
    .line 164
    .line 165
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 166
    .line 167
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 168
    .line 169
    sub-int/2addr p1, v0

    .line 170
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-eqz p1, :cond_a

    .line 175
    .line 176
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 177
    .line 178
    .line 179
    :cond_a
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eqz p1, :cond_b

    .line 187
    .line 188
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y2:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    .line 192
    .line 193
    :cond_b
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B0()V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_c
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 198
    .line 199
    if-nez p1, :cond_d

    .line 200
    .line 201
    new-instance p1, Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 202
    .line 203
    invoke-direct {p1, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 204
    .line 205
    .line 206
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 207
    .line 208
    :cond_d
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 209
    .line 210
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->i()V

    .line 211
    .line 212
    .line 213
    :cond_e
    :goto_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 214
    .line 215
    if-eqz p1, :cond_f

    .line 216
    .line 217
    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 223
    .line 224
    .line 225
    :cond_f
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 226
    .line 227
    goto/16 :goto_b

    .line 228
    .line 229
    :cond_10
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-ne v0, v7, :cond_11

    .line 236
    .line 237
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_11
    move v2, v0

    .line 245
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    float-to-int p1, p1

    .line 250
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 251
    .line 252
    if-eqz v0, :cond_12

    .line 253
    .line 254
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 255
    .line 256
    .line 257
    :cond_12
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 258
    .line 259
    if-eqz v0, :cond_14

    .line 260
    .line 261
    if-eq v0, v1, :cond_14

    .line 262
    .line 263
    if-eq v0, v6, :cond_14

    .line 264
    .line 265
    if-eq v0, v4, :cond_13

    .line 266
    .line 267
    if-eq v0, v5, :cond_13

    .line 268
    .line 269
    goto/16 :goto_b

    .line 270
    .line 271
    :cond_13
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->I0(I)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_b

    .line 275
    .line 276
    :cond_14
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->T0(I)Z

    .line 277
    .line 278
    .line 279
    goto/16 :goto_b

    .line 280
    .line 281
    :cond_15
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 282
    .line 283
    if-eqz v0, :cond_21

    .line 284
    .line 285
    if-eq v0, v1, :cond_21

    .line 286
    .line 287
    if-eq v0, v6, :cond_21

    .line 288
    .line 289
    const/16 p1, 0x3e8

    .line 290
    .line 291
    if-eq v0, v4, :cond_19

    .line 292
    .line 293
    if-eq v0, v5, :cond_16

    .line 294
    .line 295
    goto/16 :goto_8

    .line 296
    .line 297
    :cond_16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 298
    .line 299
    if-nez v0, :cond_17

    .line 300
    .line 301
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 302
    .line 303
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 304
    .line 305
    .line 306
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 307
    .line 308
    :cond_17
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 309
    .line 310
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L2:I

    .line 311
    .line 312
    int-to-float v3, v3

    .line 313
    invoke-virtual {v0, p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 314
    .line 315
    .line 316
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 317
    .line 318
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    float-to-int p1, p1

    .line 323
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 324
    .line 325
    .line 326
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K2:I

    .line 331
    .line 332
    if-le v0, v3, :cond_18

    .line 333
    .line 334
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 335
    .line 336
    neg-int p1, p1

    .line 337
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->g(I)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_8

    .line 341
    .line 342
    :cond_18
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 343
    .line 344
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->i()V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_8

    .line 348
    .line 349
    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-lez v0, :cond_20

    .line 354
    .line 355
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    add-int/lit8 v4, v0, -0x1

    .line 364
    .line 365
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 374
    .line 375
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 376
    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 382
    .line 383
    iget v9, v9, Landroid/graphics/Rect;->right:I

    .line 384
    .line 385
    sub-int/2addr v8, v9

    .line 386
    iget v9, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 387
    .line 388
    if-nez v9, :cond_1a

    .line 389
    .line 390
    if-lt v3, v5, :cond_1a

    .line 391
    .line 392
    add-int/2addr v9, v0

    .line 393
    iget v10, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 394
    .line 395
    if-ge v9, v10, :cond_1a

    .line 396
    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 398
    .line 399
    .line 400
    move-result v9

    .line 401
    sub-int/2addr v9, v8

    .line 402
    if-gt v4, v9, :cond_1a

    .line 403
    .line 404
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 405
    .line 406
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_8

    .line 410
    .line 411
    :cond_1a
    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k2:Landroid/view/VelocityTracker;

    .line 412
    .line 413
    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L2:I

    .line 414
    .line 415
    int-to-float v10, v10

    .line 416
    invoke-virtual {v9, p1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 417
    .line 418
    .line 419
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 420
    .line 421
    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M2:F

    .line 426
    .line 427
    mul-float p1, p1, v9

    .line 428
    .line 429
    float-to-int p1, p1

    .line 430
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K2:I

    .line 435
    .line 436
    if-le v9, v10, :cond_1e

    .line 437
    .line 438
    iget v9, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 439
    .line 440
    if-nez v9, :cond_1b

    .line 441
    .line 442
    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P2:I

    .line 443
    .line 444
    sub-int/2addr v5, v10

    .line 445
    if-eq v3, v5, :cond_1e

    .line 446
    .line 447
    :cond_1b
    add-int/2addr v9, v0

    .line 448
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 449
    .line 450
    if-ne v9, v0, :cond_1c

    .line 451
    .line 452
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P2:I

    .line 453
    .line 454
    add-int/2addr v8, v0

    .line 455
    if-eq v4, v8, :cond_1e

    .line 456
    .line 457
    :cond_1c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 458
    .line 459
    if-nez v0, :cond_1d

    .line 460
    .line 461
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 462
    .line 463
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 464
    .line 465
    .line 466
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 467
    .line 468
    :cond_1d
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 469
    .line 470
    .line 471
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 472
    .line 473
    neg-int p1, p1

    .line 474
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->e(I)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_8

    .line 478
    .line 479
    :cond_1e
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 480
    .line 481
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 482
    .line 483
    .line 484
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 485
    .line 486
    if-eqz p1, :cond_1f

    .line 487
    .line 488
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 489
    .line 490
    .line 491
    :cond_1f
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 492
    .line 493
    if-eqz p1, :cond_2d

    .line 494
    .line 495
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_8

    .line 499
    .line 500
    :cond_20
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 501
    .line 502
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_8

    .line 506
    .line 507
    :cond_21
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 508
    .line 509
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 510
    .line 511
    sub-int v3, v0, v3

    .line 512
    .line 513
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 518
    .line 519
    .line 520
    move-result p1

    .line 521
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 522
    .line 523
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 524
    .line 525
    int-to-float v4, v4

    .line 526
    cmpl-float v4, p1, v4

    .line 527
    .line 528
    if-lez v4, :cond_22

    .line 529
    .line 530
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 535
    .line 536
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 537
    .line 538
    sub-int/2addr v4, v5

    .line 539
    int-to-float v4, v4

    .line 540
    cmpg-float p1, p1, v4

    .line 541
    .line 542
    if-gez p1, :cond_22

    .line 543
    .line 544
    const/4 p1, 0x1

    .line 545
    goto :goto_3

    .line 546
    :cond_22
    const/4 p1, 0x0

    .line 547
    :goto_3
    if-eqz v3, :cond_2c

    .line 548
    .line 549
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    if-nez v4, :cond_2c

    .line 554
    .line 555
    if-eqz p1, :cond_2c

    .line 556
    .line 557
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 558
    .line 559
    if-eqz p1, :cond_23

    .line 560
    .line 561
    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 562
    .line 563
    .line 564
    :cond_23
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B2:Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 565
    .line 566
    if-nez p1, :cond_24

    .line 567
    .line 568
    new-instance p1, Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 569
    .line 570
    const/4 v4, 0x0

    .line 571
    invoke-direct {p1, p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView$j;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    .line 572
    .line 573
    .line 574
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B2:Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 575
    .line 576
    :cond_24
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B2:Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 577
    .line 578
    iput v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$j;->d:I

    .line 579
    .line 580
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$o;->a()V

    .line 581
    .line 582
    .line 583
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 584
    .line 585
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 586
    .line 587
    if-eqz v4, :cond_26

    .line 588
    .line 589
    if-ne v4, v1, :cond_25

    .line 590
    .line 591
    goto :goto_4

    .line 592
    :cond_25
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 593
    .line 594
    if-nez v3, :cond_2c

    .line 595
    .line 596
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 597
    .line 598
    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-eqz v0, :cond_2c

    .line 603
    .line 604
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$j;->run()V

    .line 605
    .line 606
    .line 607
    goto :goto_7

    .line 608
    :cond_26
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    if-eqz v4, :cond_28

    .line 613
    .line 614
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 615
    .line 616
    if-nez v5, :cond_27

    .line 617
    .line 618
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z2:Ljava/lang/Runnable;

    .line 619
    .line 620
    goto :goto_5

    .line 621
    :cond_27
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y2:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 622
    .line 623
    :goto_5
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 624
    .line 625
    .line 626
    :cond_28
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 627
    .line 628
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 629
    .line 630
    if-nez v2, :cond_2b

    .line 631
    .line 632
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 633
    .line 634
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_2b

    .line 639
    .line 640
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 641
    .line 642
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 643
    .line 644
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 651
    .line 652
    .line 653
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 654
    .line 655
    invoke-virtual {p0, v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 659
    .line 660
    .line 661
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 662
    .line 663
    if-eqz v0, :cond_29

    .line 664
    .line 665
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    if-eqz v0, :cond_29

    .line 670
    .line 671
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 672
    .line 673
    if-eqz v2, :cond_29

    .line 674
    .line 675
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 676
    .line 677
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 678
    .line 679
    .line 680
    :cond_29
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C2:Ljava/lang/Runnable;

    .line 681
    .line 682
    if-eqz v0, :cond_2a

    .line 683
    .line 684
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 685
    .line 686
    .line 687
    :cond_2a
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$a;

    .line 688
    .line 689
    invoke-direct {v0, p0, v3, p1}, Lit/sephiroth/android/library/widget/AbsHListView$a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/AbsHListView$j;)V

    .line 690
    .line 691
    .line 692
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C2:Ljava/lang/Runnable;

    .line 693
    .line 694
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 695
    .line 696
    .line 697
    move-result p1

    .line 698
    int-to-long v2, p1

    .line 699
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 700
    .line 701
    .line 702
    goto :goto_6

    .line 703
    :cond_2b
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 704
    .line 705
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    .line 706
    .line 707
    .line 708
    :goto_6
    return v1

    .line 709
    :cond_2c
    :goto_7
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 710
    .line 711
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    .line 712
    .line 713
    .line 714
    :cond_2d
    :goto_8
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 715
    .line 716
    .line 717
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 718
    .line 719
    if-eqz p1, :cond_2e

    .line 720
    .line 721
    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 722
    .line 723
    .line 724
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 725
    .line 726
    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 727
    .line 728
    .line 729
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 733
    .line 734
    .line 735
    move-result-object p1

    .line 736
    if-eqz p1, :cond_2f

    .line 737
    .line 738
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y2:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 739
    .line 740
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 741
    .line 742
    .line 743
    :cond_2f
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B0()V

    .line 744
    .line 745
    .line 746
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 747
    .line 748
    goto/16 :goto_b

    .line 749
    .line 750
    :cond_30
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 751
    .line 752
    if-eq v0, v3, :cond_35

    .line 753
    .line 754
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 759
    .line 760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 761
    .line 762
    .line 763
    move-result v0

    .line 764
    float-to-int v0, v0

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 766
    .line 767
    .line 768
    move-result v3

    .line 769
    float-to-int v3, v3

    .line 770
    invoke-virtual {p0, v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    .line 771
    .line 772
    .line 773
    move-result v5

    .line 774
    iget-boolean v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 775
    .line 776
    if-nez v6, :cond_33

    .line 777
    .line 778
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 779
    .line 780
    const/4 v7, 0x4

    .line 781
    if-eq v6, v7, :cond_32

    .line 782
    .line 783
    if-ltz v5, :cond_32

    .line 784
    .line 785
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 786
    .line 787
    .line 788
    move-result-object v6

    .line 789
    check-cast v6, Landroid/widget/ListAdapter;

    .line 790
    .line 791
    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 792
    .line 793
    .line 794
    move-result v6

    .line 795
    if-eqz v6, :cond_32

    .line 796
    .line 797
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 798
    .line 799
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z2:Ljava/lang/Runnable;

    .line 800
    .line 801
    if-nez v2, :cond_31

    .line 802
    .line 803
    new-instance v2, Lit/sephiroth/android/library/widget/AbsHListView$f;

    .line 804
    .line 805
    invoke-direct {v2, p0}, Lit/sephiroth/android/library/widget/AbsHListView$f;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 806
    .line 807
    .line 808
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z2:Ljava/lang/Runnable;

    .line 809
    .line 810
    :cond_31
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z2:Ljava/lang/Runnable;

    .line 811
    .line 812
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    int-to-long v6, v4

    .line 817
    invoke-virtual {p0, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    .line 819
    .line 820
    goto :goto_9

    .line 821
    :cond_32
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 822
    .line 823
    if-ne v6, v7, :cond_33

    .line 824
    .line 825
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->V()V

    .line 826
    .line 827
    .line 828
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 829
    .line 830
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 831
    .line 832
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->Z(I)I

    .line 833
    .line 834
    .line 835
    move-result v5

    .line 836
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 837
    .line 838
    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView$g;->d()V

    .line 839
    .line 840
    .line 841
    :cond_33
    :goto_9
    if-ltz v5, :cond_34

    .line 842
    .line 843
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 844
    .line 845
    sub-int v2, v5, v2

    .line 846
    .line 847
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 852
    .line 853
    .line 854
    move-result v2

    .line 855
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d2:I

    .line 856
    .line 857
    :cond_34
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 858
    .line 859
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g2:I

    .line 860
    .line 861
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c2:I

    .line 862
    .line 863
    const/high16 v0, -0x80000000

    .line 864
    .line 865
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 866
    .line 867
    goto :goto_a

    .line 868
    :cond_35
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 869
    .line 870
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 871
    .line 872
    .line 873
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 874
    .line 875
    if-eqz v0, :cond_36

    .line 876
    .line 877
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 878
    .line 879
    .line 880
    :cond_36
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 881
    .line 882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    float-to-int v0, v0

    .line 887
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g2:I

    .line 888
    .line 889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 890
    .line 891
    .line 892
    move-result v0

    .line 893
    float-to-int v0, v0

    .line 894
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i2:I

    .line 895
    .line 896
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f2:I

    .line 897
    .line 898
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j2:I

    .line 899
    .line 900
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 901
    .line 902
    .line 903
    move-result v0

    .line 904
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O2:I

    .line 905
    .line 906
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V2:I

    .line 907
    .line 908
    :goto_a
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->t0(Landroid/view/MotionEvent;)Z

    .line 909
    .line 910
    .line 911
    move-result p1

    .line 912
    if-eqz p1, :cond_37

    .line 913
    .line 914
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 915
    .line 916
    if-nez p1, :cond_37

    .line 917
    .line 918
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z2:Ljava/lang/Runnable;

    .line 919
    .line 920
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 921
    .line 922
    .line 923
    :cond_37
    :goto_b
    return v1
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isInTouchMode"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h2:I

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    if-eq p1, v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x6

    .line 31
    if-ne p1, v0, :cond_5

    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 45
    .line 46
    .line 47
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/util/b$a;->c(I)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->a0()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasWindowFocus"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    xor-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 24
    .line 25
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m2:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->g()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Lit/sephiroth/android/library/util/b$a;

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Lit/sephiroth/android/library/util/b$a;->c(I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->a0()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 50
    .line 51
    .line 52
    :cond_1
    if-ne v0, v1, :cond_4

    .line 53
    .line 54
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:I

    .line 55
    .line 56
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u2:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x2:I

    .line 60
    .line 61
    if-eq v0, p1, :cond_4

    .line 62
    .line 63
    const/4 v3, -0x1

    .line 64
    if-eq p1, v3, :cond_4

    .line 65
    .line 66
    if-ne v0, v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F0()Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d0()V

    .line 73
    .line 74
    .line 75
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 76
    .line 77
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_0
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x2:I

    .line 81
    .line 82
    return-void
.end method

.method protected p0()V
    .locals 0

    .line 1
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "arguments"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/16 p2, 0x1000

    .line 10
    .line 11
    const/16 v1, 0xc8

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq p1, p2, :cond_3

    .line 15
    .line 16
    const/16 p2, 0x2000

    .line 17
    .line 18
    if-eq p1, p2, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 28
    .line 29
    if-lez p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    sub-int/2addr p1, v2

    .line 40
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    sub-int/2addr p1, p2

    .line 43
    neg-int p1, p1

    .line 44
    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->M0(II)V

    .line 45
    .line 46
    .line 47
    return v0

    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    sub-int/2addr p2, v0

    .line 64
    if-ge p1, p2, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:Landroid/graphics/Rect;

    .line 71
    .line 72
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    sub-int/2addr p1, v2

    .line 75
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 76
    .line 77
    sub-int/2addr p1, p2

    .line 78
    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->M0(II)V

    .line 79
    .line 80
    .line 81
    return v0

    .line 82
    :cond_4
    return v2
.end method

.method public q(Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "id"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_6

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    if-ne v0, v3, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    if-ne v0, v2, :cond_5

    .line 19
    .line 20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 21
    .line 22
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0, p2, v3}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    xor-int/2addr v0, v2

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 43
    .line 44
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v0, p2, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 54
    .line 55
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 67
    .line 68
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 69
    .line 70
    invoke-interface {v1, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    :cond_3
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 107
    .line 108
    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 109
    goto :goto_5

    .line 110
    :cond_5
    const/4 v0, 0x1

    .line 111
    goto :goto_6

    .line 112
    :cond_6
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 113
    .line 114
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v0, p2, v3}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    xor-int/lit8 v8, v0, 0x1

    .line 127
    .line 128
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 129
    .line 130
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v0, p2, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 142
    .line 143
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    if-eqz v8, :cond_7

    .line 150
    .line 151
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 152
    .line 153
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 154
    .line 155
    invoke-interface {v3, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 156
    .line 157
    .line 158
    move-result-wide v3

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v0, v3, v4, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 168
    .line 169
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 170
    .line 171
    invoke-interface {v3, p2}, Landroid/widget/Adapter;->getItemId(I)J

    .line 172
    .line 173
    .line 174
    move-result-wide v3

    .line 175
    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 176
    .line 177
    .line 178
    :cond_8
    :goto_2
    if-eqz v8, :cond_9

    .line 179
    .line 180
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 181
    .line 182
    add-int/2addr v0, v2

    .line 183
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_9
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 187
    .line 188
    sub-int/2addr v0, v2

    .line 189
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 190
    .line 191
    :goto_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 192
    .line 193
    if-eqz v0, :cond_a

    .line 194
    .line 195
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v3, Lqb/b;

    .line 198
    .line 199
    move-object v4, v0

    .line 200
    check-cast v4, Landroid/view/ActionMode;

    .line 201
    .line 202
    move v5, p2

    .line 203
    move-wide v6, p3

    .line 204
    invoke-virtual/range {v3 .. v8}, Lqb/b;->a(Landroid/view/ActionMode;IJZ)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_a
    const/4 v1, 0x1

    .line 209
    :goto_4
    move v0, v1

    .line 210
    :goto_5
    const/4 v1, 0x1

    .line 211
    :goto_6
    if-eqz v1, :cond_b

    .line 212
    .line 213
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->W0()V

    .line 214
    .line 215
    .line 216
    :cond_b
    move v2, v0

    .line 217
    const/4 v1, 0x1

    .line 218
    :cond_c
    if-eqz v2, :cond_d

    .line 219
    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView;->q(Landroid/view/View;IJ)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    or-int/2addr v1, p1

    .line 225
    :cond_d
    return v1
.end method

.method protected q0(I[Z)Landroid/view/View;
    .locals 5
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
            "position",
            "isScrap"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aput-boolean v0, p2, v0

    .line 3
    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->i(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->h(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 23
    .line 24
    invoke-interface {v3, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eq v3, v1, :cond_2

    .line 40
    .line 41
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 42
    .line 43
    invoke-virtual {p2, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E2:I

    .line 47
    .line 48
    if-eqz p2, :cond_5

    .line 49
    .line 50
    invoke-virtual {v3, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    aput-boolean v2, p2, v0

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-interface {p2, p1, v0, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v3, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E2:I

    .line 79
    .line 80
    if-eqz p2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v3, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_0
    iget-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:Z

    .line 86
    .line 87
    if-eqz p2, :cond_8

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-nez p2, :cond_6

    .line 94
    .line 95
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_7
    check-cast p2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 116
    .line 117
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 118
    .line 119
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    iput-wide v0, p2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->e:J

    .line 124
    .line 125
    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    :cond_8
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:Landroid/view/accessibility/AccessibilityManager;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_9

    .line 135
    .line 136
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z2:Lit/sephiroth/android/library/widget/AbsHListView$h;

    .line 137
    .line 138
    if-nez p1, :cond_9

    .line 139
    .line 140
    new-instance p1, Lit/sephiroth/android/library/widget/AbsHListView$h;

    .line 141
    .line 142
    invoke-direct {p1, p0}, Lit/sephiroth/android/library/widget/AbsHListView$h;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z2:Lit/sephiroth/android/library/widget/AbsHListView$h;

    .line 146
    .line 147
    :cond_9
    return-object v3
.end method

.method public r0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
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
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disallowIntercept"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B0()V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventType"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a3:I

    .line 14
    .line 15
    if-ne v2, v0, :cond_0

    .line 16
    .line 17
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b3:I

    .line 18
    .line 19
    if-ne v2, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a3:I

    .line 23
    .line 24
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b3:I

    .line 25
    .line 26
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result p1

    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V:Z

    .line 3
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 5
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 7
    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E2:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E2:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->o(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choiceMode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroid/view/ActionMode;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    .line 24
    .line 25
    invoke-direct {p1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-interface {p1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    new-instance p1, Landroidx/collection/LongSparseArray;

    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 50
    .line 51
    :cond_2
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 52
    .line 53
    const/4 v0, 0x3

    .line 54
    if-ne p1, v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Q()V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTop"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFriction(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l2:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 13
    .line 14
    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->a(Lit/sephiroth/android/library/widget/AbsHListView$g;)Lit/sephiroth/android/library/widget/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/c;->v(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x3

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast v0, Lqb/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lqb/b;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lqb/b;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string p2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    :goto_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    const/4 v3, 0x1

    .line 50
    if-eq v0, v2, :cond_a

    .line 51
    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 61
    .line 62
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    :goto_1
    if-nez p2, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->k0(I)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_6

    .line 78
    .line 79
    :cond_5
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->clear()V

    .line 89
    .line 90
    .line 91
    :cond_6
    if-eqz p2, :cond_8

    .line 92
    .line 93
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 94
    .line 95
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {p2, p1, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 103
    .line 104
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 105
    .line 106
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :cond_8
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_9

    .line 128
    .line 129
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_f

    .line 142
    .line 143
    :cond_9
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_a
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 147
    .line 148
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 149
    .line 150
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:Landroidx/collection/SparseArrayCompat;

    .line 161
    .line 162
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, p1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 170
    .line 171
    if-eqz v1, :cond_c

    .line 172
    .line 173
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 174
    .line 175
    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_c

    .line 180
    .line 181
    if-eqz p2, :cond_b

    .line 182
    .line 183
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 184
    .line 185
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 186
    .line 187
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 188
    .line 189
    .line 190
    move-result-wide v4

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v1, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_b
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:Landroidx/collection/LongSparseArray;

    .line 200
    .line 201
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 202
    .line 203
    invoke-interface {v2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 204
    .line 205
    .line 206
    move-result-wide v4

    .line 207
    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->delete(J)V

    .line 208
    .line 209
    .line 210
    :cond_c
    :goto_3
    if-eq v0, p2, :cond_e

    .line 211
    .line 212
    if-eqz p2, :cond_d

    .line 213
    .line 214
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 215
    .line 216
    add-int/2addr v0, v3

    .line 217
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_d
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 221
    .line 222
    sub-int/2addr v0, v3

    .line 223
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:I

    .line 224
    .line 225
    :cond_e
    :goto_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 226
    .line 227
    if-eqz v0, :cond_f

    .line 228
    .line 229
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 230
    .line 231
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 232
    .line 233
    .line 234
    move-result-wide v7

    .line 235
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 236
    .line 237
    move-object v4, v0

    .line 238
    check-cast v4, Lqb/b;

    .line 239
    .line 240
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 241
    .line 242
    move-object v5, v0

    .line 243
    check-cast v5, Landroid/view/ActionMode;

    .line 244
    .line 245
    move v6, p1

    .line 246
    move v9, p2

    .line 247
    invoke-virtual/range {v4 .. v9}, Lqb/b;->a(Landroid/view/ActionMode;IJZ)V

    .line 248
    .line 249
    .line 250
    :cond_f
    :goto_5
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->j:Z

    .line 251
    .line 252
    if-nez p1, :cond_10

    .line 253
    .line 254
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->B:Z

    .line 255
    .line 256
    if-nez p1, :cond_10

    .line 257
    .line 258
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:Z

    .line 259
    .line 260
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->r()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 264
    .line 265
    .line 266
    :cond_10
    return-void
.end method

.method public setMultiChoiceModeListener(Lqb/a;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
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
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lqb/b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lqb/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lqb/b;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lqb/b;->c(Lqb/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setOnScrollListener(Lit/sephiroth/android/library/widget/AbsHListView$i;)V
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
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r2:Lit/sephiroth/android/library/widget/AbsHListView$i;

    .line 2
    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "topPadding",
            "bottomPadding"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->X2:I

    .line 2
    .line 3
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Y2:I

    .line 4
    .line 5
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 18
    .line 19
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R2:Landroidx/core/widget/EdgeEffectCompat;

    .line 29
    .line 30
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S2:Landroidx/core/widget/EdgeEffectCompat;

    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setRecyclerListener(Lit/sephiroth/android/library/widget/AbsHListView$m;)V
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
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->b(Lit/sephiroth/android/library/widget/AbsHListView$l;Lit/sephiroth/android/library/widget/AbsHListView$m;)Lit/sephiroth/android/library/widget/AbsHListView$m;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R1:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V1:Landroid/view/View;

    .line 4
    .line 5
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
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
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p2:Z

    .line 11
    .line 12
    return-void
.end method

.method public abstract setSelectionInt(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public setSelector(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resID"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sel"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:I

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p1:I

    .line 10
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    .line 11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
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
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s2:Z

    .line 2
    .line 3
    return-void
.end method

.method public setStackFromRight(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stackFromRight"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o2:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->D0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D2:I

    .line 2
    .line 3
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M2:F

    .line 2
    .line 3
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalView"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->k(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    const/4 v0, 0x0

    .line 6
    if-ltz v6, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 9
    .line 10
    invoke-interface {v1, v6}, Landroid/widget/Adapter;->getItemId(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v7

    .line 14
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Lit/sephiroth/android/library/widget/AdapterView$e;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move-object v0, v1

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move v3, v6

    .line 22
    move-wide v4, v7

    .line 23
    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView$e;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 30
    .line 31
    sub-int v0, v6, v0

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0, v6, v7, v8}, Lit/sephiroth/android/library/widget/AbsHListView;->U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v2:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 42
    .line 43
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    :cond_1
    return v0
.end method

.method protected t0(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, v0, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->L0(FFI)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method u0(Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "child",
            "longPressPosition",
            "longPressId"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p3, 0x1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Lqb/b;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->setItemChecked(IZ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return p3

    .line 31
    :cond_1
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Lit/sephiroth/android/library/widget/AdapterView$e;

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    move-object v4, p0

    .line 36
    move-object v5, p1

    .line 37
    move v6, p2

    .line 38
    move-wide v7, p3

    .line 39
    invoke-interface/range {v3 .. v8}, Lit/sephiroth/android/library/widget/AdapterView$e;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v2:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 52
    .line 53
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :cond_3
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 60
    .line 61
    .line 62
    :cond_4
    return v0
.end method

.method public v0(II)J
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
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/widget/ListAdapter;

    .line 8
    .line 9
    invoke-interface {p2, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1

    .line 14
    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    .line 15
    .line 16
    return-wide p1
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dr"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public w0(II)I
    .locals 4
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
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t2:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t2:Landroid/graphics/Rect;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 40
    .line 41
    add-int/2addr p1, v1

    .line 42
    return p1

    .line 43
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p1, -0x1

    .line 47
    return p1
.end method

.method protected y0(ILandroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "sel"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:I

    .line 5
    .line 6
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    .line 26
    .line 27
    instance-of v1, p2, Lit/sephiroth/android/library/widget/AbsHListView$n;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    move-object v1, p2

    .line 32
    check-cast v1, Lit/sephiroth/android/library/widget/AbsHListView$n;

    .line 33
    .line 34
    invoke-interface {v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$n;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    invoke-direct {p0, v1, v2, v3, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->x0(IIII)V

    .line 46
    .line 47
    .line 48
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F2:Z

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eq p2, p1, :cond_2

    .line 55
    .line 56
    xor-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F2:Z

    .line 59
    .line 60
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eq p1, v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void
.end method

.method public z0(Ljava/util/List;)V
    .locals 6
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
            "views"
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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 6
    .line 7
    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->a(Lit/sephiroth/android/library/widget/AbsHListView$l;)Lit/sephiroth/android/library/widget/AbsHListView$m;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 27
    .line 28
    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    .line 29
    .line 30
    invoke-virtual {v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-interface {v1, v3}, Lit/sephiroth/android/library/widget/AbsHListView$m;->a(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->l(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
