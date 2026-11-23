.class public Lme/relex/photodraweeview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/relex/photodraweeview/d;
.implements Landroid/view/View$OnTouchListener;
.implements Lme/relex/photodraweeview/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/photodraweeview/a$c;,
        Lme/relex/photodraweeview/a$b;
    }
.end annotation


# static fields
.field private static final w:I = -0x1

.field private static final x:I = 0x0

.field private static final y:I = 0x1

.field private static final z:I = 0x2


# instance fields
.field private final b:[F

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/view/animation/Interpolator;

.field private e:F

.field private f:F

.field private g:F

.field private h:J

.field private i:Lme/relex/photodraweeview/i;

.field private j:Landroidx/core/view/GestureDetectorCompat;

.field private k:Z

.field private l:Z

.field private m:I

.field private final n:Landroid/graphics/Matrix;

.field private o:I

.field private p:I

.field private q:Lme/relex/photodraweeview/a$c;

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:Lme/relex/photodraweeview/e;

.field private t:Lme/relex/photodraweeview/h;

.field private u:Landroid/view/View$OnLongClickListener;

.field private v:Lme/relex/photodraweeview/f;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/view/DraweeView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    iput-object v0, p0, Lme/relex/photodraweeview/a;->b:[F

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/RectF;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    .line 16
    .line 17
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lme/relex/photodraweeview/a;->d:Landroid/view/animation/Interpolator;

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Lme/relex/photodraweeview/a;->e:F

    .line 27
    .line 28
    const/high16 v0, 0x3fe00000    # 1.75f

    .line 29
    .line 30
    iput v0, p0, Lme/relex/photodraweeview/a;->f:F

    .line 31
    .line 32
    const/high16 v0, 0x40400000    # 3.0f

    .line 33
    .line 34
    iput v0, p0, Lme/relex/photodraweeview/a;->g:F

    .line 35
    .line 36
    const-wide/16 v0, 0xc8

    .line 37
    .line 38
    iput-wide v0, p0, Lme/relex/photodraweeview/a;->h:J

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lme/relex/photodraweeview/a;->k:Z

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lme/relex/photodraweeview/a;->l:Z

    .line 45
    .line 46
    const/4 v0, 0x2

    .line 47
    iput v0, p0, Lme/relex/photodraweeview/a;->m:I

    .line 48
    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lme/relex/photodraweeview/a;->o:I

    .line 58
    .line 59
    iput v0, p0, Lme/relex/photodraweeview/a;->p:I

    .line 60
    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lme/relex/photodraweeview/a;->r:Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 73
    .line 74
    sget-object v1, Lcom/facebook/drawee/drawable/s$c;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->y(Lcom/facebook/drawee/drawable/s$c;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lme/relex/photodraweeview/i;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-direct {v0, v1, p0}, Lme/relex/photodraweeview/i;-><init>(Landroid/content/Context;Lme/relex/photodraweeview/g;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/i;

    .line 92
    .line 93
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v1, Lme/relex/photodraweeview/a$a;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lme/relex/photodraweeview/a$a;-><init>(Lme/relex/photodraweeview/a;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lme/relex/photodraweeview/a;->j:Landroidx/core/view/GestureDetectorCompat;

    .line 108
    .line 109
    new-instance p1, Lme/relex/photodraweeview/c;

    .line 110
    .line 111
    invoke-direct {p1, p0}, Lme/relex/photodraweeview/c;-><init>(Lme/relex/photodraweeview/a;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method static synthetic e(Lme/relex/photodraweeview/a;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/photodraweeview/a;->u:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lme/relex/photodraweeview/a;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lme/relex/photodraweeview/a;->w(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lme/relex/photodraweeview/a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lme/relex/photodraweeview/a;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic h(Lme/relex/photodraweeview/a;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/photodraweeview/a;->d:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lme/relex/photodraweeview/a;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->q:Lme/relex/photodraweeview/a$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lme/relex/photodraweeview/a$c;->a()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lme/relex/photodraweeview/a;->q:Lme/relex/photodraweeview/a$c;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private m()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->getScale()F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget v2, p0, Lme/relex/photodraweeview/a;->e:F

    .line 13
    .line 14
    cmpg-float v1, v1, v2

    .line 15
    .line 16
    if-gez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->o()Landroid/graphics/RectF;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    new-instance v8, Lme/relex/photodraweeview/a$b;

    .line 25
    .line 26
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->getScale()F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget v5, p0, Lme/relex/photodraweeview/a;->e:F

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    move-object v2, v8

    .line 41
    move-object v3, p0

    .line 42
    invoke-direct/range {v2 .. v7}, Lme/relex/photodraweeview/a$b;-><init>(Lme/relex/photodraweeview/a;FFFF)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method private static n(FFF)V
    .locals 0

    .line 1
    cmpl-float p0, p0, p1

    .line 2
    .line 3
    if-gez p0, :cond_1

    .line 4
    .line 5
    cmpl-float p0, p1, p2

    .line 6
    .line 7
    if-gez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p1, "MidZoom has to be less than MaxZoom"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p1, "MinZoom has to be less than MidZoom"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method private p(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lme/relex/photodraweeview/a;->p:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget v3, p0, Lme/relex/photodraweeview/a;->o:I

    .line 13
    .line 14
    if-ne v3, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    iget v3, p0, Lme/relex/photodraweeview/a;->o:I

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v4, v4, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 32
    .line 33
    iget-object v1, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->k(Landroid/graphics/RectF;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lme/relex/photodraweeview/a;->c:Landroid/graphics/RectF;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method private s(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->b:[F

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lme/relex/photodraweeview/a;->b:[F

    .line 7
    .line 8
    aget p1, p1, p2

    .line 9
    .line 10
    return p1
.end method

.method private t()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sub-int/2addr v1, v2

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sub-int/2addr v1, v0

    .line 21
    return v1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method private u()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sub-int/2addr v1, v2

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    sub-int/2addr v1, v0

    .line 21
    return v1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method private w(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->l()Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->p:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lme/relex/photodraweeview/a;->o:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->x()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p2, Lme/relex/photodraweeview/a$c;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p2, p0, v0}, Lme/relex/photodraweeview/a$c;-><init>(Lme/relex/photodraweeview/a;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lme/relex/photodraweeview/a;->q:Lme/relex/photodraweeview/a$c;

    .line 18
    .line 19
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->u()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->t()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    float-to-int p3, p3

    .line 28
    float-to-int p4, p4

    .line 29
    invoke-virtual {p2, v0, v1, p3, p4}, Lme/relex/photodraweeview/a$c;->b(IIII)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lme/relex/photodraweeview/a;->q:Lme/relex/photodraweeview/a$c;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public b(FF)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v1, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/i;

    .line 8
    .line 9
    invoke-virtual {v1}, Lme/relex/photodraweeview/i;->d()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_4

    .line 14
    .line 15
    iget-object v1, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 16
    .line 17
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-boolean v0, p0, Lme/relex/photodraweeview/a;->l:Z

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/i;

    .line 36
    .line 37
    invoke-virtual {v0}, Lme/relex/photodraweeview/i;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iget-boolean v0, p0, Lme/relex/photodraweeview/a;->k:Z

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget v0, p0, Lme/relex/photodraweeview/a;->m:I

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    const/high16 v2, 0x3f800000    # 1.0f

    .line 55
    .line 56
    cmpl-float v2, p1, v2

    .line 57
    .line 58
    if-gez v2, :cond_2

    .line 59
    .line 60
    :cond_1
    if-ne v0, v1, :cond_4

    .line 61
    .line 62
    const/high16 v0, -0x40800000    # -1.0f

    .line 63
    .line 64
    cmpg-float p1, p1, v0

    .line 65
    .line 66
    if-gtz p1, :cond_4

    .line 67
    .line 68
    :cond_2
    const/4 p1, 0x0

    .line 69
    invoke-interface {p2, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(FFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lme/relex/photodraweeview/a;->g:F

    .line 6
    .line 7
    cmpg-float v0, v0, v1

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    cmpg-float v0, p1, v0

    .line 14
    .line 15
    if-gez v0, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lme/relex/photodraweeview/a;->v:Lme/relex/photodraweeview/f;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3}, Lme/relex/photodraweeview/f;->a(FFF)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 25
    .line 26
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public getMaximumScale()F
    .locals 1

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public getOnPhotoTapListener()Lme/relex/photodraweeview/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->s:Lme/relex/photodraweeview/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnViewTapListener()Lme/relex/photodraweeview/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->t:Lme/relex/photodraweeview/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale()F
    .locals 6

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lme/relex/photodraweeview/a;->s(Landroid/graphics/Matrix;I)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    float-to-double v0, v0

    .line 9
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    double-to-float v0, v0

    .line 16
    iget-object v1, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    invoke-direct {p0, v1, v4}, Lme/relex/photodraweeview/a;->s(Landroid/graphics/Matrix;I)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    float-to-double v4, v1

    .line 24
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-float v1, v1

    .line 29
    add-float/2addr v0, v1

    .line 30
    float-to-double v0, v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    double-to-float v0, v0

    .line 36
    return v0
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->l()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public l()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->q()Landroid/graphics/Matrix;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lme/relex/photodraweeview/a;->p(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->t()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    int-to-float v4, v4

    .line 26
    const/high16 v5, 0x40000000    # 2.0f

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    cmpg-float v7, v2, v4

    .line 30
    .line 31
    if-gtz v7, :cond_1

    .line 32
    .line 33
    sub-float/2addr v4, v2

    .line 34
    div-float/2addr v4, v5

    .line 35
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 36
    .line 37
    :goto_0
    sub-float/2addr v4, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 40
    .line 41
    cmpl-float v7, v2, v6

    .line 42
    .line 43
    if-lez v7, :cond_2

    .line 44
    .line 45
    neg-float v4, v2

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 48
    .line 49
    cmpg-float v7, v2, v4

    .line 50
    .line 51
    if-gez v7, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v4, 0x0

    .line 55
    :goto_1
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->u()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    const/4 v7, 0x1

    .line 61
    cmpg-float v8, v3, v2

    .line 62
    .line 63
    if-gtz v8, :cond_4

    .line 64
    .line 65
    sub-float/2addr v2, v3

    .line 66
    div-float/2addr v2, v5

    .line 67
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 68
    .line 69
    sub-float v6, v2, v0

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    iput v0, p0, Lme/relex/photodraweeview/a;->m:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 76
    .line 77
    cmpl-float v5, v3, v6

    .line 78
    .line 79
    if-lez v5, :cond_5

    .line 80
    .line 81
    neg-float v6, v3

    .line 82
    iput v1, p0, Lme/relex/photodraweeview/a;->m:I

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 86
    .line 87
    cmpg-float v1, v0, v2

    .line 88
    .line 89
    if-gez v1, :cond_6

    .line 90
    .line 91
    sub-float v6, v2, v0

    .line 92
    .line 93
    iput v7, p0, Lme/relex/photodraweeview/a;->m:I

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lme/relex/photodraweeview/a;->m:I

    .line 98
    .line 99
    :goto_2
    iget-object v0, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 100
    .line 101
    invoke-virtual {v0, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 102
    .line 103
    .line 104
    return v7
.end method

.method public o()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->l()Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->q()Landroid/graphics/Matrix;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lme/relex/photodraweeview/a;->p(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->j()V

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_0
    iget-object p1, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/i;

    .line 38
    .line 39
    invoke-virtual {p1}, Lme/relex/photodraweeview/i;->d()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v0, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/i;

    .line 44
    .line 45
    invoke-virtual {v0}, Lme/relex/photodraweeview/i;->c()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v3, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/i;

    .line 50
    .line 51
    invoke-virtual {v3, p2}, Lme/relex/photodraweeview/i;->g(Landroid/view/MotionEvent;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    iget-object p1, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/i;

    .line 58
    .line 59
    invoke-virtual {p1}, Lme/relex/photodraweeview/i;->d()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const/4 p1, 0x0

    .line 68
    :goto_1
    if-nez v0, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Lme/relex/photodraweeview/a;->i:Lme/relex/photodraweeview/i;

    .line 71
    .line 72
    invoke-virtual {v0}, Lme/relex/photodraweeview/i;->c()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_5
    const/4 v0, 0x0

    .line 81
    :goto_2
    if-eqz p1, :cond_6

    .line 82
    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    const/4 v1, 0x1

    .line 86
    :cond_6
    iput-boolean v1, p0, Lme/relex/photodraweeview/a;->k:Z

    .line 87
    .line 88
    iget-object p1, p0, Lme/relex/photodraweeview/a;->j:Landroidx/core/view/GestureDetectorCompat;

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_7

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_7
    move v2, v3

    .line 98
    :goto_3
    return v2
.end method

.method public q()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Lcom/facebook/drawee/view/DraweeView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/view/DraweeView<",
            "Lcom/facebook/drawee/generic/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lme/relex/photodraweeview/a;->r:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/facebook/drawee/view/DraweeView;

    .line 8
    .line 9
    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lme/relex/photodraweeview/a;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    .line 2
    .line 3
    iget v1, p0, Lme/relex/photodraweeview/a;->f:F

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lme/relex/photodraweeview/a;->n(FFF)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lme/relex/photodraweeview/a;->g:F

    .line 9
    .line 10
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->e:F

    .line 2
    .line 3
    iget v1, p0, Lme/relex/photodraweeview/a;->g:F

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lme/relex/photodraweeview/a;->n(FFF)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lme/relex/photodraweeview/a;->f:F

    .line 9
    .line 10
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    .line 1
    iget v0, p0, Lme/relex/photodraweeview/a;->f:F

    .line 2
    .line 3
    iget v1, p0, Lme/relex/photodraweeview/a;->g:F

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lme/relex/photodraweeview/a;->n(FFF)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lme/relex/photodraweeview/a;->e:F

    .line 9
    .line 10
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lme/relex/photodraweeview/a;->j:Landroidx/core/view/GestureDetectorCompat;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lme/relex/photodraweeview/a;->j:Landroidx/core/view/GestureDetectorCompat;

    .line 10
    .line 11
    new-instance v0, Lme/relex/photodraweeview/c;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lme/relex/photodraweeview/c;-><init>(Lme/relex/photodraweeview/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a;->u:Landroid/view/View$OnLongClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPhotoTapListener(Lme/relex/photodraweeview/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a;->s:Lme/relex/photodraweeview/e;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScaleChangeListener(Lme/relex/photodraweeview/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a;->v:Lme/relex/photodraweeview/f;

    .line 2
    .line 3
    return-void
.end method

.method public setOnViewTapListener(Lme/relex/photodraweeview/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a;->t:Lme/relex/photodraweeview/h;

    .line 2
    .line 3
    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lme/relex/photodraweeview/a;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 8

    .line 4
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget v1, p0, Lme/relex/photodraweeview/a;->e:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lme/relex/photodraweeview/a;->g:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 6
    new-instance p4, Lme/relex/photodraweeview/a$b;

    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->getScale()F

    move-result v4

    move-object v2, p4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lme/relex/photodraweeview/a$b;-><init>(Lme/relex/photodraweeview/a;FFFF)V

    invoke-virtual {v0, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p4, p0, Lme/relex/photodraweeview/a;->n:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 8
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setScale(FZ)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lme/relex/photodraweeview/a;->setScale(FFFZ)V

    :cond_0
    return-void
.end method

.method public setZoomTransitionDuration(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    const-wide/16 p1, 0xc8

    .line 8
    .line 9
    :cond_0
    iput-wide p1, p0, Lme/relex/photodraweeview/a;->h:J

    .line 10
    .line 11
    return-void
.end method

.method public update(II)V
    .locals 0

    .line 1
    iput p1, p0, Lme/relex/photodraweeview/a;->p:I

    .line 2
    .line 3
    iput p2, p0, Lme/relex/photodraweeview/a;->o:I

    .line 4
    .line 5
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->y()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected v()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/relex/photodraweeview/a;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
