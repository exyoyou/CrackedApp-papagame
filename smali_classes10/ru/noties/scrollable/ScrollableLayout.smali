.class public Lru/noties/scrollable/ScrollableLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/noties/scrollable/ScrollableLayout$i;,
        Lru/noties/scrollable/ScrollableLayout$f;,
        Lru/noties/scrollable/ScrollableLayout$g;,
        Lru/noties/scrollable/ScrollableLayout$h;,
        Lru/noties/scrollable/ScrollableLayout$j;,
        Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;
    }
.end annotation


# static fields
.field private static final M:J = 0xc8L

.field private static final N:I = 0x64

.field private static final O:F = 0.0565f


# instance fields
.field private A:Z

.field private B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private C:I

.field private D:Z

.field private E:Lru/noties/scrollable/l;

.field private F:I

.field private G:Landroid/view/View;

.field private H:Landroid/animation/ValueAnimator;

.field private I:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private J:Z

.field private final K:Ljava/lang/Runnable;

.field private final L:Ljava/lang/Runnable;

.field private final b:Landroid/graphics/Rect;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/noties/scrollable/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lru/noties/scrollable/n;

.field private e:Landroid/view/GestureDetector;

.field private f:Landroid/view/GestureDetector;

.field private g:Lru/noties/scrollable/b;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lru/noties/scrollable/ScrollableLayout$g;

.field private l:Lru/noties/scrollable/c;

.field private m:Landroid/animation/ValueAnimator;

.field private n:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lru/noties/scrollable/e;

.field private s:Lru/noties/scrollable/d;

.field private t:Landroid/view/View;

.field private u:Z

.field private v:J

.field private w:Z

.field private x:F

.field private y:F

.field private z:Lru/noties/scrollable/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->b:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->c:Ljava/util/List;

    .line 4
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$d;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$d;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->K:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$e;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$e;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lru/noties/scrollable/ScrollableLayout;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->b:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->c:Ljava/util/List;

    .line 10
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$d;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$d;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->K:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$e;

    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$e;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    .line 12
    invoke-direct {p0, p1, p2}, Lru/noties/scrollable/ScrollableLayout;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lru/noties/scrollable/ScrollableLayout;->b:Landroid/graphics/Rect;

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lru/noties/scrollable/ScrollableLayout;->c:Ljava/util/List;

    .line 16
    new-instance p3, Lru/noties/scrollable/ScrollableLayout$d;

    invoke-direct {p3, p0}, Lru/noties/scrollable/ScrollableLayout$d;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object p3, p0, Lru/noties/scrollable/ScrollableLayout;->K:Ljava/lang/Runnable;

    .line 17
    new-instance p3, Lru/noties/scrollable/ScrollableLayout$e;

    invoke-direct {p3, p0}, Lru/noties/scrollable/ScrollableLayout$e;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    iput-object p3, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    .line 18
    invoke-direct {p0, p1, p2}, Lru/noties/scrollable/ScrollableLayout;->C(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->E:Lru/noties/scrollable/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->D:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lru/noties/scrollable/l;->c(Lru/noties/scrollable/ScrollableLayout;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->D:Z

    .line 14
    .line 15
    return-void
.end method

.method private C(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributeSet"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->ScrollableLayout:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, p1, v2, v0}, Lru/noties/scrollable/ScrollableLayout;->D(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)Lru/noties/scrollable/n;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->d:Lru/noties/scrollable/n;

    .line 20
    .line 21
    const/4 v0, 0x6

    .line 22
    const v3, 0x3d676c8b    # 0.0565f

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Lru/noties/scrollable/ScrollableLayout;->setFriction(F)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x7

    .line 33
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->A:Z

    .line 50
    .line 51
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lru/noties/scrollable/ScrollableLayout;->C:I

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    const/16 v3, 0x64

    .line 59
    .line 60
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    int-to-long v3, v0

    .line 65
    invoke-virtual {p0, v3, v4}, Lru/noties/scrollable/ScrollableLayout;->setConsiderIdleMillis(J)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x5

    .line 69
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    new-instance v0, Lru/noties/scrollable/f;

    .line 76
    .line 77
    invoke-direct {v0}, Lru/noties/scrollable/f;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lru/noties/scrollable/ScrollableLayout;->setCloseUpAlgorithm(Lru/noties/scrollable/c;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    const/4 v0, 0x2

    .line 84
    const/4 v3, -0x1

    .line 85
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eq v0, v3, :cond_2

    .line 90
    .line 91
    new-instance v3, Lru/noties/scrollable/o;

    .line 92
    .line 93
    int-to-long v4, v0

    .line 94
    invoke-direct {v3, v4, v5}, Lru/noties/scrollable/o;-><init>(J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v3}, Lru/noties/scrollable/ScrollableLayout;->setCloseUpIdleAnimationTime(Lru/noties/scrollable/e;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    const/4 v0, 0x3

    .line 101
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v3, Lru/noties/scrollable/i;

    .line 112
    .line 113
    invoke-direct {v3, v0}, Lru/noties/scrollable/i;-><init>(Landroid/view/animation/Interpolator;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3}, Lru/noties/scrollable/ScrollableLayout;->setCloseAnimatorConfigurator(Lru/noties/scrollable/d;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    const/16 v0, 0x9

    .line 120
    .line 121
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, p0, Lru/noties/scrollable/ScrollableLayout;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    .line 129
    .line 130
    new-instance p2, Landroid/view/GestureDetector;

    .line 131
    .line 132
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$i;

    .line 133
    .line 134
    invoke-direct {v0, p0, v2}, Lru/noties/scrollable/ScrollableLayout$i;-><init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 138
    .line 139
    .line 140
    iput-object p2, p0, Lru/noties/scrollable/ScrollableLayout;->e:Landroid/view/GestureDetector;

    .line 141
    .line 142
    new-instance p2, Landroid/view/GestureDetector;

    .line 143
    .line 144
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$f;

    .line 145
    .line 146
    invoke-direct {v0, p0, p1}, Lru/noties/scrollable/ScrollableLayout$f;-><init>(Lru/noties/scrollable/ScrollableLayout;Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 150
    .line 151
    .line 152
    iput-object p2, p0, Lru/noties/scrollable/ScrollableLayout;->f:Landroid/view/GestureDetector;

    .line 153
    .line 154
    new-instance p2, Lru/noties/scrollable/ScrollableLayout$g;

    .line 155
    .line 156
    new-instance v0, Lru/noties/scrollable/ScrollableLayout$a;

    .line 157
    .line 158
    invoke-direct {v0, p0}, Lru/noties/scrollable/ScrollableLayout$a;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p2, v0}, Lru/noties/scrollable/ScrollableLayout$g;-><init>(Lru/noties/scrollable/ScrollableLayout$h;)V

    .line 162
    .line 163
    .line 164
    iput-object p2, p0, Lru/noties/scrollable/ScrollableLayout;->k:Lru/noties/scrollable/ScrollableLayout$g;

    .line 165
    .line 166
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    int-to-float p1, p1

    .line 175
    iput p1, p0, Lru/noties/scrollable/ScrollableLayout;->y:F

    .line 176
    .line 177
    return-void

    .line 178
    :catchall_0
    move-exception p1

    .line 179
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 180
    .line 181
    .line 182
    throw p1
.end method

.method static synthetic a(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->n:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lru/noties/scrollable/ScrollableLayout;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->n:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lru/noties/scrollable/ScrollableLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic d(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->r:Lru/noties/scrollable/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->s:Lru/noties/scrollable/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->E:Lru/noties/scrollable/l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lru/noties/scrollable/ScrollableLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lru/noties/scrollable/ScrollableLayout;->D:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lru/noties/scrollable/ScrollableLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->D:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic i(Lru/noties/scrollable/ScrollableLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lru/noties/scrollable/ScrollableLayout;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->z:Lru/noties/scrollable/j;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->g:Lru/noties/scrollable/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lru/noties/scrollable/ScrollableLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lru/noties/scrollable/ScrollableLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->d:Lru/noties/scrollable/n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lru/noties/scrollable/ScrollableLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lru/noties/scrollable/ScrollableLayout;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lru/noties/scrollable/ScrollableLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->p:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q(Lru/noties/scrollable/ScrollableLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->z(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lru/noties/scrollable/ScrollableLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lru/noties/scrollable/ScrollableLayout;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic t(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->l:Lru/noties/scrollable/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lru/noties/scrollable/ScrollableLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lru/noties/scrollable/ScrollableLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p1
.end method

.method private y(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private z(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removeCallbacks"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->n:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method


# virtual methods
.method protected B(I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sub-int v2, p1, v0

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-gez v2, :cond_1

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v4, 0x0

    .line 17
    :goto_0
    iget-object v5, p0, Lru/noties/scrollable/ScrollableLayout;->g:Lru/noties/scrollable/b;

    .line 18
    .line 19
    if-eqz v5, :cond_5

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->u:Z

    .line 24
    .line 25
    if-nez v0, :cond_5

    .line 26
    .line 27
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    .line 28
    .line 29
    if-nez v0, :cond_5

    .line 30
    .line 31
    invoke-interface {v5, v2}, Lru/noties/scrollable/b;->i(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    iget-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->u:Z

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    .line 42
    iget-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    .line 43
    .line 44
    if-nez v4, :cond_3

    .line 45
    .line 46
    invoke-direct {p0, v2}, Lru/noties/scrollable/ScrollableLayout;->y(I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    :cond_3
    iget v4, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 53
    .line 54
    if-ne v0, v4, :cond_5

    .line 55
    .line 56
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->g:Lru/noties/scrollable/b;

    .line 57
    .line 58
    invoke-interface {v0, v2}, Lru/noties/scrollable/b;->i(I)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    :cond_4
    return v1

    .line 65
    :cond_5
    if-gez p1, :cond_6

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    goto :goto_1

    .line 69
    :cond_6
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 70
    .line 71
    if-le p1, v0, :cond_7

    .line 72
    .line 73
    move p1, v0

    .line 74
    :cond_7
    :goto_1
    return p1
.end method

.method protected D(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)Lru/noties/scrollable/n;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "interpolator",
            "flywheel"
        }
    .end annotation

    .line 1
    new-instance v0, Lru/noties/scrollable/n;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lru/noties/scrollable/n;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->A:Z

    .line 2
    .line 3
    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method protected G(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoMaxScroll"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->C:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    if-nez v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    if-nez p1, :cond_3

    .line 26
    .line 27
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 28
    .line 29
    if-eqz p1, :cond_4

    .line 30
    .line 31
    invoke-static {v0, p1}, Lru/noties/scrollable/p;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 39
    .line 40
    if-nez p1, :cond_4

    .line 41
    .line 42
    new-instance p1, Lru/noties/scrollable/ScrollableLayout$c;

    .line 43
    .line 44
    invoke-direct {p1, p0, v0}, Lru/noties/scrollable/ScrollableLayout$c;-><init>(Lru/noties/scrollable/ScrollableLayout;Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->B:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_1
    return-void
.end method

.method public H(Lru/noties/scrollable/k;)V
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-gez p1, :cond_1

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    :cond_1
    if-lez p1, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->g:Lru/noties/scrollable/b;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lru/noties/scrollable/b;->i(I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    :cond_3
    :goto_1
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->q:Z

    .line 7
    .line 8
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->u:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->i:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->j:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->D:Z

    .line 15
    .line 16
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->K:Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x3

    .line 36
    const/4 v3, 0x1

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iput-boolean v3, p0, Lru/noties/scrollable/ScrollableLayout;->q:Z

    .line 40
    .line 41
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->d:Lru/noties/scrollable/n;

    .line 42
    .line 43
    invoke-virtual {v4}, Lru/noties/scrollable/n;->a()V

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->t:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iget-object v5, p0, Lru/noties/scrollable/ScrollableLayout;->b:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/high16 v5, 0x3f000000    # 0.5f

    .line 63
    .line 64
    add-float/2addr v4, v5

    .line 65
    float-to-int v4, v4

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    add-float/2addr v6, v5

    .line 71
    float-to-int v5, v6

    .line 72
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->b:Landroid/graphics/Rect;

    .line 73
    .line 74
    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    iput-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->u:Z

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->u:Z

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    if-eq v0, v3, :cond_3

    .line 85
    .line 86
    if-ne v0, v2, :cond_7

    .line 87
    .line 88
    :cond_3
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->q:Z

    .line 89
    .line 90
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->l:Lru/noties/scrollable/c;

    .line 91
    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    .line 95
    .line 96
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 97
    .line 98
    .line 99
    iget-object v4, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    .line 100
    .line 101
    iget-wide v5, p0, Lru/noties/scrollable/ScrollableLayout;->v:J

    .line 102
    .line 103
    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    .line 105
    .line 106
    :cond_4
    iget-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->w:Z

    .line 107
    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    if-ne v0, v3, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    iget v5, p0, Lru/noties/scrollable/ScrollableLayout;->x:F

    .line 117
    .line 118
    sub-float/2addr v4, v5

    .line 119
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    iget v5, p0, Lru/noties/scrollable/ScrollableLayout;->y:F

    .line 124
    .line 125
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-gez v4, :cond_5

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 132
    .line 133
    .line 134
    :cond_5
    iput-boolean v1, p0, Lru/noties/scrollable/ScrollableLayout;->w:Z

    .line 135
    .line 136
    :cond_6
    invoke-direct {p0}, Lru/noties/scrollable/ScrollableLayout;->A()V

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_0
    iget-boolean v4, p0, Lru/noties/scrollable/ScrollableLayout;->i:Z

    .line 140
    .line 141
    iget-boolean v5, p0, Lru/noties/scrollable/ScrollableLayout;->j:Z

    .line 142
    .line 143
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->f:Landroid/view/GestureDetector;

    .line 144
    .line 145
    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    iput-boolean v6, p0, Lru/noties/scrollable/ScrollableLayout;->j:Z

    .line 150
    .line 151
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->e:Landroid/view/GestureDetector;

    .line 152
    .line 153
    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    iput-boolean v6, p0, Lru/noties/scrollable/ScrollableLayout;->i:Z

    .line 158
    .line 159
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->K:Ljava/lang/Runnable;

    .line 160
    .line 161
    invoke-virtual {p0, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 162
    .line 163
    .line 164
    iget-object v6, p0, Lru/noties/scrollable/ScrollableLayout;->K:Ljava/lang/Runnable;

    .line 165
    .line 166
    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    iget-boolean v6, p0, Lru/noties/scrollable/ScrollableLayout;->i:Z

    .line 170
    .line 171
    if-nez v6, :cond_9

    .line 172
    .line 173
    iget-boolean v6, p0, Lru/noties/scrollable/ScrollableLayout;->j:Z

    .line 174
    .line 175
    if-eqz v6, :cond_8

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    const/4 v6, 0x0

    .line 179
    goto :goto_2

    .line 180
    :cond_9
    :goto_1
    const/4 v6, 0x1

    .line 181
    :goto_2
    if-nez v4, :cond_b

    .line 182
    .line 183
    if-eqz v5, :cond_a

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_a
    const/4 v4, 0x0

    .line 187
    goto :goto_4

    .line 188
    :cond_b
    :goto_3
    const/4 v4, 0x1

    .line 189
    :goto_4
    const/4 v5, 0x2

    .line 190
    if-ne v0, v5, :cond_c

    .line 191
    .line 192
    if-nez v6, :cond_c

    .line 193
    .line 194
    if-eqz v4, :cond_c

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iget v5, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 201
    .line 202
    if-ne v0, v5, :cond_c

    .line 203
    .line 204
    const/4 v0, 0x1

    .line 205
    goto :goto_5

    .line 206
    :cond_c
    const/4 v0, 0x0

    .line 207
    :goto_5
    if-nez v6, :cond_d

    .line 208
    .line 209
    if-eqz v4, :cond_e

    .line 210
    .line 211
    :cond_d
    iget-object v5, p0, Lru/noties/scrollable/ScrollableLayout;->k:Lru/noties/scrollable/ScrollableLayout$g;

    .line 212
    .line 213
    invoke-virtual {v5, p1, v2}, Lru/noties/scrollable/ScrollableLayout$g;->a(Landroid/view/MotionEvent;I)V

    .line 214
    .line 215
    .line 216
    if-nez v4, :cond_e

    .line 217
    .line 218
    return v3

    .line 219
    :cond_e
    if-eqz v0, :cond_f

    .line 220
    .line 221
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->k:Lru/noties/scrollable/ScrollableLayout$g;

    .line 222
    .line 223
    invoke-virtual {v0, p1, v1}, Lru/noties/scrollable/ScrollableLayout$g;->a(Landroid/view/MotionEvent;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iput v0, p0, Lru/noties/scrollable/ScrollableLayout;->x:F

    .line 231
    .line 232
    iput-boolean v3, p0, Lru/noties/scrollable/ScrollableLayout;->w:Z

    .line 233
    .line 234
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    .line 236
    .line 237
    return v3
.end method

.method public getConsiderIdleMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lru/noties/scrollable/ScrollableLayout;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxScrollY()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->m:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->A:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lru/noties/scrollable/ScrollableLayout;->G(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->F:I

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-lez v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    :goto_0
    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->G:Landroid/view/View;

    .line 35
    .line 36
    return-void
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
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    const/4 p5, 0x0

    .line 9
    :goto_0
    if-ge p3, p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, p5

    .line 20
    invoke-virtual {v0, p2, p5, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr p5, v0

    .line 28
    add-int/lit8 p3, p3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
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
    instance-of v0, p1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget v0, p1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;->b:I

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollY(I)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;->c:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->A:Z

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->G(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, v1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;->b:I

    .line 15
    .line 16
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->A:Z

    .line 17
    .line 18
    iput-boolean v0, v1, Lru/noties/scrollable/ScrollableLayout$ScrollableLayoutSavedState;->c:Z

    .line 19
    .line 20
    return-object v1
.end method

.method public onScrollChanged(IIII)V
    .locals 5
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
            "oldL",
            "oldT"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eq p2, p4, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    :goto_1
    if-lez v2, :cond_2

    .line 18
    .line 19
    :goto_2
    if-ge v0, v2, :cond_2

    .line 20
    .line 21
    iget-object v3, p0, Lru/noties/scrollable/ScrollableLayout;->c:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lru/noties/scrollable/k;

    .line 28
    .line 29
    iget v4, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 30
    .line 31
    invoke-interface {v3, p2, p4, v4}, Lru/noties/scrollable/k;->a(III)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->l:Lru/noties/scrollable/c;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout;->q:Z

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->L:Ljava/lang/Runnable;

    .line 57
    .line 58
    iget-wide v1, p0, Lru/noties/scrollable/ScrollableLayout;->v:J

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 64
    .line 65
    .line 66
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
    invoke-virtual {p0, p2}, Lru/noties/scrollable/ScrollableLayout;->B(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p2, 0x0

    .line 9
    invoke-super {p0, p2, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setAutoMaxScroll(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoMaxScroll"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->A:Z

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->G(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCanScrollVerticallyDelegate(Lru/noties/scrollable/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->g:Lru/noties/scrollable/b;

    .line 2
    .line 3
    return-void
.end method

.method public setCloseAnimatorConfigurator(Lru/noties/scrollable/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configurator"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->s:Lru/noties/scrollable/d;

    .line 2
    .line 3
    return-void
.end method

.method public setCloseUpAlgorithm(Lru/noties/scrollable/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeUpAlgorithm"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->l:Lru/noties/scrollable/c;

    .line 2
    .line 3
    return-void
.end method

.method public setCloseUpIdleAnimationTime(Lru/noties/scrollable/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeUpIdleAnimationTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->r:Lru/noties/scrollable/e;

    .line 2
    .line 3
    return-void
.end method

.method public setConsiderIdleMillis(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millis"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lru/noties/scrollable/ScrollableLayout;->v:J

    .line 2
    .line 3
    return-void
.end method

.method public setDraggableView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->t:Landroid/view/View;

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
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->d:Lru/noties/scrollable/n;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lru/noties/scrollable/n;->m(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIsIndex(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isIndex"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->J:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxY"
        }
    .end annotation

    .line 1
    iput p1, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->G(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setOnFlingOverListener(Lru/noties/scrollable/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFlingOverListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->z:Lru/noties/scrollable/j;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollChangedListener(Lru/noties/scrollable/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lru/noties/scrollable/ScrollableLayout;->w(Lru/noties/scrollable/k;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOverScrollListener(Lru/noties/scrollable/l;)V
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
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->E:Lru/noties/scrollable/l;

    .line 2
    .line 3
    return-void
.end method

.method public setSelfUpdateScroll(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public w(Lru/noties/scrollable/k;)V
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->c:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public x(I)Landroid/animation/ValueAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scrollY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    new-instance v1, Landroid/animation/FloatEvaluator;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/animation/FloatEvaluator;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    new-instance v1, Lru/noties/scrollable/ScrollableLayout$j;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, v2}, Lru/noties/scrollable/ScrollableLayout$j;-><init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout;->I:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    if-gez p1, :cond_3

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget v0, p0, Lru/noties/scrollable/ScrollableLayout;->h:I

    .line 62
    .line 63
    if-le p1, v0, :cond_4

    .line 64
    .line 65
    move p1, v0

    .line 66
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sub-int/2addr p1, v0

    .line 71
    new-instance v1, Lru/noties/scrollable/ScrollableLayout$b;

    .line 72
    .line 73
    invoke-direct {v1, p0, v0, p1}, Lru/noties/scrollable/ScrollableLayout$b;-><init>(Lru/noties/scrollable/ScrollableLayout;II)V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lru/noties/scrollable/ScrollableLayout;->I:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 77
    .line 78
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout;->H:Landroid/animation/ValueAnimator;

    .line 84
    .line 85
    return-object p1

    .line 86
    nop

    .line 87
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
