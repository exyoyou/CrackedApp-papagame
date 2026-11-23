.class public Lcom/kongzue/dialogx/util/views/BlurView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static A:I

.field private static B:Z

.field public static C:Z


# instance fields
.field private b:F

.field private c:I

.field private d:F

.field private e:Z

.field private f:F

.field private g:Z

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Canvas;

.field private k:Landroidx/renderscript/RenderScript;

.field private l:Landroidx/renderscript/ScriptIntrinsicBlur;

.field private m:Landroidx/renderscript/Allocation;

.field private n:Landroidx/renderscript/Allocation;

.field private o:Z

.field private final p:Landroid/graphics/Rect;

.field private final q:Landroid/graphics/Rect;

.field private r:Landroid/view/View;

.field private s:Z

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/RectF;

.field private v:Z

.field w:Landroid/graphics/Paint;

.field x:Landroid/graphics/Paint;

.field private final y:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kongzue/dialogx/util/views/BlurView$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kongzue/dialogx/util/views/BlurView$c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Lcom/kongzue/dialogx/util/views/BlurView;->C:Z

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 13
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->b:F

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    const/high16 v0, 0x420c0000    # 35.0f

    .line 15
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->d:F

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->e:Z

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 18
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->p:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 19
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->v:Z

    .line 20
    new-instance v0, Lcom/kongzue/dialogx/util/views/BlurView$b;

    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/BlurView$b;-><init>(Lcom/kongzue/dialogx/util/views/BlurView;)V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->y:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/kongzue/dialogx/util/views/BlurView;->r(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->b:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    const/high16 v0, 0x420c0000    # 35.0f

    .line 4
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->d:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->e:Z

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->p:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 8
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->v:Z

    .line 9
    new-instance v0, Lcom/kongzue/dialogx/util/views/BlurView$b;

    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/views/BlurView$b;-><init>(Lcom/kongzue/dialogx/util/views/BlurView;)V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->y:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/util/views/BlurView;->r(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x40800000    # 4.0f

    .line 24
    iput p3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->b:F

    const/4 p3, -0x1

    .line 25
    iput p3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    const/high16 p3, 0x420c0000    # 35.0f

    .line 26
    iput p3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->d:F

    const/4 p3, 0x0

    .line 27
    iput-boolean p3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->e:Z

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->p:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 30
    iput-boolean p3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->v:Z

    .line 31
    new-instance p3, Lcom/kongzue/dialogx/util/views/BlurView$b;

    invoke-direct {p3, p0}, Lcom/kongzue/dialogx/util/views/BlurView$b;-><init>(Lcom/kongzue/dialogx/util/views/BlurView;)V

    iput-object p3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->y:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 p3, 0x1

    .line 32
    iput-boolean p3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/kongzue/dialogx/util/views/BlurView;->r(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->k:Landroidx/renderscript/RenderScript;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/renderscript/RenderScript;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->k:Landroidx/renderscript/RenderScript;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->l:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->l:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method private static B(I)I
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/16 v2, 0xff

    .line 14
    .line 15
    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method private static C(II)I
    .locals 2
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method private D(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    int-to-float p2, p2

    .line 12
    int-to-float v0, v3

    .line 13
    div-float/2addr p2, v0

    .line 14
    int-to-float p3, p3

    .line 15
    int-to-float v0, v4

    .line 16
    div-float/2addr p3, v0

    .line 17
    new-instance v5, Landroid/graphics/Matrix;

    .line 18
    .line 19
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v6, 0x1

    .line 28
    move-object v0, p1

    .line 29
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method static synthetic a(Lcom/kongzue/dialogx/util/views/BlurView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->r:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/kongzue/dialogx/util/views/BlurView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->h:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/kongzue/dialogx/util/views/BlurView;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->j:Landroid/graphics/Canvas;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/kongzue/dialogx/util/views/BlurView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->o:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic h()I
    .locals 2

    .line 1
    sget v0, Lcom/kongzue/dialogx/util/views/BlurView;->A:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    sput v1, Lcom/kongzue/dialogx/util/views/BlurView;->A:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic i()I
    .locals 2

    .line 1
    sget v0, Lcom/kongzue/dialogx/util/views/BlurView;->A:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    sput v1, Lcom/kongzue/dialogx/util/views/BlurView;->A:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic j(Lcom/kongzue/dialogx/util/views/BlurView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kongzue/dialogx/util/views/BlurView;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method private n(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-direct {p0, v0, v3, v4}, Lcom/kongzue/dialogx/util/views/BlurView;->D(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-direct {p0, v0, v3}, Lcom/kongzue/dialogx/util/views/BlurView;->q(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 70
    .line 71
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/BlurView;->o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 94
    .line 95
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/kongzue/dialogx/util/views/BlurView;->o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    return-void
.end method

.method private o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Landroid/graphics/Canvas;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->x:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->w()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    iget p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 51
    .line 52
    invoke-static {p1}, Lcom/kongzue/dialogx/util/views/BlurView;->B(I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 58
    .line 59
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_1
    const/4 p1, 0x0

    .line 64
    return-object p1
.end method

.method public static p(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/util/views/BlurView;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private q(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/kongzue/dialogx/util/views/BlurView;->D(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/BlurView;->o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Landroid/graphics/Canvas;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Landroid/graphics/BitmapShader;

    .line 41
    .line 42
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 43
    .line 44
    invoke-direct {v2, p1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 57
    .line 58
    .line 59
    new-instance v2, Landroid/graphics/RectF;

    .line 60
    .line 61
    invoke-direct {v2, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 62
    .line 63
    .line 64
    iget p2, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 65
    .line 66
    invoke-virtual {v1, v2, p2, p2, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method private r(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->v:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/kongzue/dialogx/R$styleable;->RealtimeBlurView:[I

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    sget v0, Lcom/kongzue/dialogx/R$styleable;->RealtimeBlurView_realtimeBlurRadius:I

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    const/high16 v3, 0x420c0000    # 35.0f

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->d:F

    .line 35
    .line 36
    sget v0, Lcom/kongzue/dialogx/R$styleable;->RealtimeBlurView_realtimeDownsampleFactor:I

    .line 37
    .line 38
    const/high16 v1, 0x40800000    # 4.0f

    .line 39
    .line 40
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->b:F

    .line 45
    .line 46
    sget v0, Lcom/kongzue/dialogx/R$styleable;->RealtimeBlurView_realtimeOverlayColor:I

    .line 47
    .line 48
    const v1, 0xffffff

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 56
    .line 57
    new-instance v0, Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->t:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Landroid/graphics/RectF;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->u:Landroid/graphics/RectF;

    .line 73
    .line 74
    new-instance v0, Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->w:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->w:Landroid/graphics/Paint;

    .line 85
    .line 86
    iget v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Landroid/graphics/Paint;

    .line 92
    .line 93
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->x:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    .line 100
    .line 101
    sget v0, Lcom/kongzue/dialogx/R$styleable;->RealtimeBlurView_realtimeRadius:I

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const/high16 v1, 0x41700000    # 15.0f

    .line 112
    .line 113
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    iput p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    .line 125
    .line 126
    iput-boolean v2, p0, Lcom/kongzue/dialogx/util/views/BlurView;->v:Z

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->s()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_0

    .line 133
    .line 134
    new-instance p1, Lcom/kongzue/dialogx/util/views/BlurView$a;

    .line 135
    .line 136
    invoke-direct {p1, p0}, Lcom/kongzue/dialogx/util/views/BlurView$a;-><init>(Lcom/kongzue/dialogx/util/views/BlurView;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 143
    .line 144
    .line 145
    :cond_0
    return-void
.end method

.method private s()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method static t()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/kongzue/dialogx/util/views/BlurView;->C:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

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
    return v0
.end method

.method private static v(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/kongzue/dialogx/util/views/BlurView;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "DialogX.BlurView: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private w()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/kongzue/dialogx/util/views/BlurView;->B:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_1
    const/4 v1, 0x1

    .line 16
    :cond_2
    return v1
.end method

.method private z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->m:Landroidx/renderscript/Allocation;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->m:Landroidx/renderscript/Allocation;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->n:Landroidx/renderscript/Allocation;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/renderscript/Allocation;->destroy()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->n:Landroidx/renderscript/Allocation;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->h:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->h:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    :cond_3
    return-void
.end method


# virtual methods
.method public E(Z)Lcom/kongzue/dialogx/util/views/BlurView;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setOverrideOverlayColor: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/BlurView;->v(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->e:Z

    .line 22
    .line 23
    return-object p0
.end method

.method public F(Z)Lcom/kongzue/dialogx/util/views/BlurView;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/kongzue/dialogx/util/views/BlurView;->B:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->o:Z

    .line 11
    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    sget v0, Lcom/kongzue/dialogx/util/views/BlurView;->A:I

    .line 15
    .line 16
    if-gtz v0, :cond_3

    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->u:Landroid/graphics/RectF;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-float v1, v1

    .line 29
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 30
    .line 31
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->u:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 39
    .line 40
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->x:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->w()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 49
    .line 50
    invoke-static {v1}, Lcom/kongzue/dialogx/util/views/BlurView;->B(I)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 56
    .line 57
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->u:Landroid/graphics/RectF;

    .line 61
    .line 62
    iget v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 63
    .line 64
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/BlurView;->x:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_2
    return-void
.end method

.method protected l(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->m:Landroidx/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->l:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->m:Landroidx/renderscript/Allocation;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->setInput(Landroidx/renderscript/Allocation;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->l:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->n:Landroidx/renderscript/Allocation;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroidx/renderscript/ScriptIntrinsicBlur;->forEach(Landroidx/renderscript/Allocation;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->n:Landroidx/renderscript/Allocation;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroidx/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected m(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->p:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->p:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->p:Landroid/graphics/Rect;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/kongzue/dialogx/util/views/BlurView;->q:Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->w()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    iget p2, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 50
    .line 51
    invoke-static {p2}, Lcom/kongzue/dialogx/util/views/BlurView;->B(I)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget p2, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 57
    .line 58
    :goto_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 71
    .line 72
    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/util/views/BlurView;->o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/BlurView;->v(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Landroid/app/Activity;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/Activity;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->X()Landroid/app/Activity;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    if-lt v1, v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->r:Landroid/view/View;

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->r:Landroid/view/View;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const-string v0, "mDecorView is ok."

    .line 59
    .line 60
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/BlurView;->v(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->r:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->y:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->r:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eq v0, v1, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    const/4 v2, 0x0

    .line 88
    :goto_1
    iput-boolean v2, p0, Lcom/kongzue/dialogx/util/views/BlurView;->s:Z

    .line 89
    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->r:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const-string v0, "mDecorView is NULL."

    .line 99
    .line 100
    invoke-static {v0}, Lcom/kongzue/dialogx/util/views/BlurView;->v(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iput-boolean v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->s:Z

    .line 104
    .line 105
    :cond_4
    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->r:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->y:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->y()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->s()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/kongzue/dialogx/util/views/BlurView;->n(Landroid/graphics/Canvas;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/kongzue/dialogx/util/views/BlurView;->m(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->d:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->d:F

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->g:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->b:F

    .line 7
    .line 8
    cmpl-float v0, v0, p1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->b:F

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->g:Z

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->z()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v0, "Downsample factor must be greater than 0."

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->c:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setRadiusPx(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->f:F

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->g:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method protected x()Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->d:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->y()V

    .line 10
    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->b:F

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->g:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->k:Landroidx/renderscript/RenderScript;

    .line 20
    .line 21
    if-nez v1, :cond_4

    .line 22
    .line 23
    :cond_1
    sget-boolean v1, Lcom/kongzue/dialogx/util/views/BlurView;->B:Z

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    iget-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->k:Landroidx/renderscript/RenderScript;

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroidx/renderscript/RenderScript;->create(Landroid/content/Context;)Landroidx/renderscript/RenderScript;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->k:Landroidx/renderscript/RenderScript;

    .line 44
    .line 45
    invoke-static {v1}, Landroidx/renderscript/Element;->U8_4(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v1, v3}, Landroidx/renderscript/ScriptIntrinsicBlur;->create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;)Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->l:Landroidx/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    sput-boolean v2, Lcom/kongzue/dialogx/util/views/BlurView;->B:Z

    .line 58
    .line 59
    invoke-static {}, Lcom/kongzue/dialogx/util/views/BlurView;->t()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/kongzue/dialogx/util/views/BlurView;->g:Z

    .line 69
    .line 70
    iget v1, p0, Lcom/kongzue/dialogx/util/views/BlurView;->d:F

    .line 71
    .line 72
    div-float/2addr v1, v0

    .line 73
    const/high16 v3, 0x41c80000    # 25.0f

    .line 74
    .line 75
    cmpl-float v4, v1, v3

    .line 76
    .line 77
    if-lez v4, :cond_3

    .line 78
    .line 79
    mul-float v0, v0, v1

    .line 80
    .line 81
    div-float/2addr v0, v3

    .line 82
    const/high16 v1, 0x41c80000    # 25.0f

    .line 83
    .line 84
    :cond_3
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->l:Landroidx/renderscript/ScriptIntrinsicBlur;

    .line 85
    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Landroidx/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    int-to-float v1, v1

    .line 100
    div-float/2addr v1, v0

    .line 101
    float-to-int v1, v1

    .line 102
    const/4 v4, 0x1

    .line 103
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    int-to-float v3, v3

    .line 108
    div-float/2addr v3, v0

    .line 109
    float-to-int v0, v3

    .line 110
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->j:Landroid/graphics/Canvas;

    .line 115
    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;

    .line 119
    .line 120
    if-eqz v3, :cond_5

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-ne v3, v1, :cond_5

    .line 127
    .line 128
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;

    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eq v3, v0, :cond_8

    .line 135
    .line 136
    :cond_5
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->z()V

    .line 137
    .line 138
    .line 139
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 140
    .line 141
    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iput-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->h:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->z()V

    .line 150
    .line 151
    .line 152
    return v2

    .line 153
    :cond_6
    :try_start_2
    new-instance v3, Landroid/graphics/Canvas;

    .line 154
    .line 155
    iget-object v5, p0, Lcom/kongzue/dialogx/util/views/BlurView;->h:Landroid/graphics/Bitmap;

    .line 156
    .line 157
    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .line 159
    .line 160
    iput-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->j:Landroid/graphics/Canvas;

    .line 161
    .line 162
    sget-boolean v3, Lcom/kongzue/dialogx/util/views/BlurView;->B:Z

    .line 163
    .line 164
    if-eqz v3, :cond_9

    .line 165
    .line 166
    iget-boolean v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->z:Z

    .line 167
    .line 168
    if-nez v3, :cond_7

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_7
    iget-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->k:Landroidx/renderscript/RenderScript;

    .line 172
    .line 173
    iget-object v5, p0, Lcom/kongzue/dialogx/util/views/BlurView;->h:Landroid/graphics/Bitmap;

    .line 174
    .line 175
    sget-object v6, Landroidx/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroidx/renderscript/Allocation$MipmapControl;

    .line 176
    .line 177
    invoke-static {v3, v5, v6, v4}, Landroidx/renderscript/Allocation;->createFromBitmap(Landroidx/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroidx/renderscript/Allocation$MipmapControl;I)Landroidx/renderscript/Allocation;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iput-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->m:Landroidx/renderscript/Allocation;

    .line 182
    .line 183
    iget-object v5, p0, Lcom/kongzue/dialogx/util/views/BlurView;->k:Landroidx/renderscript/RenderScript;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroidx/renderscript/Allocation;->getType()Landroidx/renderscript/Type;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-static {v5, v3}, Landroidx/renderscript/Allocation;->createTyped(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Type;)Landroidx/renderscript/Allocation;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iput-object v3, p0, Lcom/kongzue/dialogx/util/views/BlurView;->n:Landroidx/renderscript/Allocation;

    .line 194
    .line 195
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 196
    .line 197
    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/kongzue/dialogx/util/views/BlurView;->i:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    .line 203
    if-nez v0, :cond_8

    .line 204
    .line 205
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->z()V

    .line 206
    .line 207
    .line 208
    return v2

    .line 209
    :cond_8
    return v4

    .line 210
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->z()V

    .line 211
    .line 212
    .line 213
    return v2

    .line 214
    :catch_1
    move-exception v0

    .line 215
    :try_start_3
    invoke-static {}, Lcom/kongzue/dialogx/util/views/BlurView;->t()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_a

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    .line 223
    .line 224
    :cond_a
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->z()V

    .line 225
    .line 226
    .line 227
    return v2

    .line 228
    :catchall_0
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->z()V

    .line 229
    .line 230
    .line 231
    return v2
.end method

.method protected y()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->z()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/kongzue/dialogx/util/views/BlurView;->A()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
