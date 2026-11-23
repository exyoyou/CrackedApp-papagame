.class public Lcom/join/mgps/customview/WaterProgressView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final E:I = 0x14

.field private static final F:I = 0xa


# instance fields
.field private A:I

.field B:Landroid/animation/ValueAnimator;

.field C:Landroid/animation/ValueAnimator;

.field D:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Path;

.field private s:Landroid/graphics/Path;

.field private t:Landroid/graphics/Rect;

.field private u:I

.field private v:F

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/WaterProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/WaterProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x12c

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->u:I

    const/high16 v1, 0x41f00000    # 30.0f

    .line 7
    iput v1, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    const/4 v1, 0x2

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    const/16 v2, 0x7d0

    .line 9
    iput v2, p0, Lcom/join/mgps/customview/WaterProgressView;->A:I

    .line 10
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->D:Landroid/graphics/Paint;

    .line 11
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->WaterProgressView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const p3, -0x777778

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->b:I

    const p2, -0xffff01

    .line 13
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/join/mgps/customview/WaterProgressView;->c:I

    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->d:I

    const/4 p2, 0x3

    const p3, -0xff0100

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->e:I

    const/4 p2, 0x4

    const/high16 p3, -0x1000000

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->f:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0713c2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x5

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->k:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0711b5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x7

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    const/4 p2, 0x6

    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-direct {p0}, Lcom/join/mgps/customview/WaterProgressView;->i()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/WaterProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->u:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/join/mgps/customview/WaterProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/WaterProgressView;->l:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/WaterProgressView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/WaterProgressView;->m:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/customview/WaterProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 2
    .line 3
    return p1
.end method

.method private e(Landroid/graphics/Canvas;)V
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
    const/4 v0, 0x0

    .line 5
    :goto_0
    const/16 v1, 0x64

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    .line 14
    .line 15
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->c:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    .line 22
    .line 23
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->b:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    :goto_1
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 29
    .line 30
    div-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    int-to-float v1, v1

    .line 33
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 34
    .line 35
    div-int/lit8 v2, v2, 0x2

    .line 36
    .line 37
    int-to-float v2, v2

    .line 38
    const v3, 0x40666666    # 3.6f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 45
    .line 46
    div-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    int-to-float v3, v1

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    int-to-float v4, v1

    .line 54
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 55
    .line 56
    div-int/lit8 v1, v1, 0x2

    .line 57
    .line 58
    int-to-float v5, v1

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/lit8 v1, v1, 0x14

    .line 64
    .line 65
    int-to-float v6, v1

    .line 66
    iget-object v7, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    .line 67
    .line 68
    move-object v2, p1

    .line 69
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
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
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Paint;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "%"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, p0, Lcom/join/mgps/customview/WaterProgressView;->t:Landroid/graphics/Rect;

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 67
    .line 68
    div-int/lit8 v1, v1, 0x2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->t:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    div-int/lit8 v2, v2, 0x2

    .line 77
    .line 78
    sub-int/2addr v1, v2

    .line 79
    int-to-float v1, v1

    .line 80
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 81
    .line 82
    div-int/lit8 v2, v2, 0x2

    .line 83
    .line 84
    int-to-float v2, v2

    .line 85
    iget-object v3, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Paint;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private g(Landroid/graphics/Canvas;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "isRight2Left"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 15
    .line 16
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 17
    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 22
    .line 23
    div-int/lit8 v2, v2, 0x2

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    .line 27
    .line 28
    int-to-float v3, v3

    .line 29
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 32
    .line 33
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v1, 0x1a

    .line 37
    .line 38
    if-lt v0, v1, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 47
    .line 48
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    .line 49
    .line 50
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    int-to-float v4, v3

    .line 65
    iget v5, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 66
    .line 67
    int-to-float v5, v5

    .line 68
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    const/4 p2, 0x1

    .line 75
    :goto_1
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 76
    .line 77
    mul-int/lit8 v1, v0, 0x3

    .line 78
    .line 79
    if-gt p2, v1, :cond_2

    .line 80
    .line 81
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 82
    .line 83
    mul-int v1, v0, p2

    .line 84
    .line 85
    add-int/2addr v1, v3

    .line 86
    div-int/lit8 v4, v0, 0x2

    .line 87
    .line 88
    sub-int/2addr v1, v4

    .line 89
    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->u:I

    .line 90
    .line 91
    sub-int/2addr v1, v4

    .line 92
    rem-int/lit8 v5, p2, 0x2

    .line 93
    .line 94
    if-eqz v5, :cond_1

    .line 95
    .line 96
    iget-object v5, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 97
    .line 98
    int-to-float v1, v1

    .line 99
    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 100
    .line 101
    int-to-float v7, v6

    .line 102
    iget v8, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 103
    .line 104
    sub-float/2addr v7, v8

    .line 105
    mul-int v0, v0, p2

    .line 106
    .line 107
    add-int/2addr v0, v3

    .line 108
    sub-int/2addr v0, v4

    .line 109
    int-to-float v0, v0

    .line 110
    int-to-float v4, v6

    .line 111
    invoke-virtual {v5, v1, v7, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    iget-object v5, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 116
    .line 117
    int-to-float v1, v1

    .line 118
    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 119
    .line 120
    int-to-float v7, v6

    .line 121
    iget v8, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 122
    .line 123
    add-float/2addr v7, v8

    .line 124
    mul-int v0, v0, p2

    .line 125
    .line 126
    add-int/2addr v0, v3

    .line 127
    sub-int/2addr v0, v4

    .line 128
    int-to-float v0, v0

    .line 129
    int-to-float v4, v6

    .line 130
    invoke-virtual {v5, v1, v7, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 131
    .line 132
    .line 133
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 137
    .line 138
    mul-int/lit8 v0, v0, 0x2

    .line 139
    .line 140
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 141
    .line 142
    mul-int v0, v0, v1

    .line 143
    .line 144
    add-int/2addr v3, v0

    .line 145
    int-to-float v0, v3

    .line 146
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 150
    .line 151
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 157
    .line 158
    .line 159
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 160
    .line 161
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    .line 162
    .line 163
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_6

    .line 167
    .line 168
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 174
    .line 175
    .line 176
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 179
    .line 180
    .line 181
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 182
    .line 183
    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 184
    .line 185
    div-int/lit8 v4, v4, 0x2

    .line 186
    .line 187
    int-to-float v4, v4

    .line 188
    iget v5, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 189
    .line 190
    div-int/lit8 v5, v5, 0x2

    .line 191
    .line 192
    int-to-float v5, v5

    .line 193
    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    .line 194
    .line 195
    int-to-float v6, v6

    .line 196
    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 197
    .line 198
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 199
    .line 200
    .line 201
    if-lt v0, v1, :cond_4

    .line 202
    .line 203
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 204
    .line 205
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 210
    .line 211
    sget-object v0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    .line 212
    .line 213
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 214
    .line 215
    .line 216
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 220
    .line 221
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 222
    .line 223
    .line 224
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 225
    .line 226
    int-to-float v0, v3

    .line 227
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 228
    .line 229
    int-to-float v1, v1

    .line 230
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    .line 232
    .line 233
    iget p2, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 234
    .line 235
    neg-int p2, p2

    .line 236
    mul-int/lit8 p2, p2, 0x2

    .line 237
    .line 238
    :goto_4
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 239
    .line 240
    if-gt p2, v0, :cond_6

    .line 241
    .line 242
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 243
    .line 244
    mul-int v1, v0, p2

    .line 245
    .line 246
    add-int/2addr v1, v3

    .line 247
    div-int/lit8 v4, v0, 0x2

    .line 248
    .line 249
    sub-int/2addr v1, v4

    .line 250
    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->u:I

    .line 251
    .line 252
    add-int/2addr v1, v4

    .line 253
    rem-int/lit8 v5, p2, 0x2

    .line 254
    .line 255
    if-eqz v5, :cond_5

    .line 256
    .line 257
    iget-object v5, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 258
    .line 259
    int-to-float v1, v1

    .line 260
    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 261
    .line 262
    int-to-float v7, v6

    .line 263
    iget v8, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 264
    .line 265
    sub-float/2addr v7, v8

    .line 266
    mul-int v0, v0, p2

    .line 267
    .line 268
    add-int/2addr v0, v3

    .line 269
    add-int/2addr v0, v4

    .line 270
    int-to-float v0, v0

    .line 271
    int-to-float v4, v6

    .line 272
    invoke-virtual {v5, v1, v7, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 273
    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_5
    iget-object v5, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 277
    .line 278
    int-to-float v1, v1

    .line 279
    iget v6, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 280
    .line 281
    int-to-float v7, v6

    .line 282
    iget v8, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 283
    .line 284
    add-float/2addr v7, v8

    .line 285
    mul-int v0, v0, p2

    .line 286
    .line 287
    add-int/2addr v0, v3

    .line 288
    add-int/2addr v0, v4

    .line 289
    int-to-float v0, v0

    .line 290
    int-to-float v4, v6

    .line 291
    invoke-virtual {v5, v1, v7, v0, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 292
    .line 293
    .line 294
    :goto_5
    add-int/lit8 p2, p2, 0x1

    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 298
    .line 299
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 300
    .line 301
    mul-int v0, v0, v1

    .line 302
    .line 303
    mul-int/lit8 v0, v0, 0x2

    .line 304
    .line 305
    add-int/2addr v3, v0

    .line 306
    int-to-float v0, v3

    .line 307
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 308
    .line 309
    .line 310
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 311
    .line 312
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 313
    .line 314
    .line 315
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 316
    .line 317
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 318
    .line 319
    .line 320
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 321
    .line 322
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    .line 323
    .line 324
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 325
    .line 326
    .line 327
    :goto_6
    return-void
.end method

.method private h(Landroid/graphics/Canvas;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "isRight2Left"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->D:Landroid/graphics/Paint;

    .line 2
    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->D:Landroid/graphics/Paint;

    .line 9
    .line 10
    const/high16 v1, -0x10000

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    new-instance v2, Landroid/graphics/Path;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 26
    .line 27
    .line 28
    div-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    div-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    int-to-float v1, v1

    .line 34
    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 38
    .line 39
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Landroid/graphics/Path;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 65
    .line 66
    int-to-float v1, v0

    .line 67
    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    invoke-virtual {p2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 75
    .line 76
    mul-int/lit8 v3, v1, 0x3

    .line 77
    .line 78
    if-gt p2, v3, :cond_1

    .line 79
    .line 80
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 81
    .line 82
    mul-int v3, v1, p2

    .line 83
    .line 84
    add-int/2addr v3, v0

    .line 85
    div-int/lit8 v5, v1, 0x2

    .line 86
    .line 87
    sub-int/2addr v3, v5

    .line 88
    iget v5, p0, Lcom/join/mgps/customview/WaterProgressView;->u:I

    .line 89
    .line 90
    sub-int/2addr v3, v5

    .line 91
    rem-int/lit8 v6, p2, 0x2

    .line 92
    .line 93
    if-eqz v6, :cond_0

    .line 94
    .line 95
    iget-object v6, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 96
    .line 97
    int-to-float v3, v3

    .line 98
    iget v7, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 99
    .line 100
    int-to-float v8, v7

    .line 101
    iget v9, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 102
    .line 103
    sub-float/2addr v8, v9

    .line 104
    mul-int v1, v1, p2

    .line 105
    .line 106
    add-int/2addr v1, v0

    .line 107
    sub-int/2addr v1, v5

    .line 108
    int-to-float v1, v1

    .line 109
    int-to-float v5, v7

    .line 110
    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_0
    iget-object v6, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 115
    .line 116
    int-to-float v3, v3

    .line 117
    iget v7, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 118
    .line 119
    int-to-float v8, v7

    .line 120
    iget v9, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 121
    .line 122
    add-float/2addr v8, v9

    .line 123
    mul-int v1, v1, p2

    .line 124
    .line 125
    add-int/2addr v1, v0

    .line 126
    sub-int/2addr v1, v5

    .line 127
    int-to-float v1, v1

    .line 128
    int-to-float v5, v7

    .line 129
    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 130
    .line 131
    .line 132
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 136
    .line 137
    mul-int/lit8 v1, v1, 0x2

    .line 138
    .line 139
    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 140
    .line 141
    mul-int v1, v1, v3

    .line 142
    .line 143
    add-int/2addr v0, v1

    .line 144
    int-to-float v0, v0

    .line 145
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 149
    .line 150
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 159
    .line 160
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 161
    .line 162
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 163
    .line 164
    .line 165
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    .line 166
    .line 167
    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 174
    .line 175
    .line 176
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 177
    .line 178
    int-to-float v1, v0

    .line 179
    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 180
    .line 181
    int-to-float v3, v3

    .line 182
    invoke-virtual {p2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 183
    .line 184
    .line 185
    iget p2, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 186
    .line 187
    neg-int p2, p2

    .line 188
    mul-int/lit8 p2, p2, 0x2

    .line 189
    .line 190
    :goto_2
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 191
    .line 192
    if-gt p2, v1, :cond_4

    .line 193
    .line 194
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 195
    .line 196
    mul-int v3, v1, p2

    .line 197
    .line 198
    add-int/2addr v3, v0

    .line 199
    div-int/lit8 v5, v1, 0x2

    .line 200
    .line 201
    sub-int/2addr v3, v5

    .line 202
    iget v5, p0, Lcom/join/mgps/customview/WaterProgressView;->u:I

    .line 203
    .line 204
    add-int/2addr v3, v5

    .line 205
    rem-int/lit8 v6, p2, 0x2

    .line 206
    .line 207
    if-eqz v6, :cond_3

    .line 208
    .line 209
    iget-object v6, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 210
    .line 211
    int-to-float v3, v3

    .line 212
    iget v7, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 213
    .line 214
    int-to-float v8, v7

    .line 215
    iget v9, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 216
    .line 217
    sub-float/2addr v8, v9

    .line 218
    mul-int v1, v1, p2

    .line 219
    .line 220
    add-int/2addr v1, v0

    .line 221
    add-int/2addr v1, v5

    .line 222
    int-to-float v1, v1

    .line 223
    int-to-float v5, v7

    .line 224
    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_3
    iget-object v6, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 229
    .line 230
    int-to-float v3, v3

    .line 231
    iget v7, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 232
    .line 233
    int-to-float v8, v7

    .line 234
    iget v9, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 235
    .line 236
    add-float/2addr v8, v9

    .line 237
    mul-int v1, v1, p2

    .line 238
    .line 239
    add-int/2addr v1, v0

    .line 240
    add-int/2addr v1, v5

    .line 241
    int-to-float v1, v1

    .line 242
    int-to-float v5, v7

    .line 243
    invoke-virtual {v6, v3, v8, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 244
    .line 245
    .line 246
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 250
    .line 251
    iget v3, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 252
    .line 253
    mul-int v1, v1, v3

    .line 254
    .line 255
    mul-int/lit8 v1, v1, 0x2

    .line 256
    .line 257
    add-int/2addr v0, v1

    .line 258
    int-to-float v0, v0

    .line 259
    invoke-virtual {p2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    .line 261
    .line 262
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 263
    .line 264
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    .line 266
    .line 267
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 268
    .line 269
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 270
    .line 271
    .line 272
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 273
    .line 274
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 275
    .line 276
    invoke-virtual {v2, p2, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 277
    .line 278
    .line 279
    iget-object p2, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    .line 280
    .line 281
    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 282
    .line 283
    .line 284
    :goto_4
    return-void
.end method

.method private i()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->b:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->n:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/graphics/Paint;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    .line 37
    .line 38
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->d:I

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    .line 44
    .line 45
    const/high16 v2, 0x40400000    # 3.0f

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->o:Landroid/graphics/Paint;

    .line 51
    .line 52
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    .line 63
    .line 64
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    .line 70
    .line 71
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->e:I

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->p:Landroid/graphics/Paint;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Paint;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Paint;

    .line 92
    .line 93
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->f:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Paint;

    .line 99
    .line 100
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->k:I

    .line 101
    .line 102
    int-to-float v1, v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Landroid/graphics/Rect;

    .line 107
    .line 108
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->t:Landroid/graphics/Rect;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->q:Landroid/graphics/Paint;

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    iget v2, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, "%"

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    iget v4, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    iget-object v3, p0, Lcom/join/mgps/customview/WaterProgressView;->t:Landroid/graphics/Rect;

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Landroid/graphics/Path;

    .line 162
    .line 163
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->r:Landroid/graphics/Path;

    .line 167
    .line 168
    new-instance v0, Landroid/graphics/Path;

    .line 169
    .line 170
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->s:Landroid/graphics/Path;

    .line 174
    .line 175
    return-void
.end method

.method private j()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    const/high16 v2, 0x41f00000    # 30.0f

    .line 6
    .line 7
    const v3, 0x3f333333    # 0.7f

    .line 8
    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    iput v2, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    int-to-float v0, v0

    .line 20
    mul-float v0, v0, v3

    .line 21
    .line 22
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v1, 0x50

    .line 26
    .line 27
    if-le v0, v1, :cond_2

    .line 28
    .line 29
    iput v2, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    rsub-int/lit8 v0, v0, 0x64

    .line 33
    .line 34
    int-to-float v0, v0

    .line 35
    mul-float v0, v0, v3

    .line 36
    .line 37
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->v:F

    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    filled-new-array {v1, v0}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->A:I

    .line 21
    .line 22
    int-to-long v1, v1

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    new-instance v1, Lcom/join/mgps/customview/WaterProgressView$a;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/WaterProgressView$a;-><init>(Lcom/join/mgps/customview/WaterProgressView;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public k()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
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
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->m:I

    .line 5
    .line 6
    iget v1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 7
    .line 8
    mul-int v1, v1, v0

    .line 9
    .line 10
    div-int/lit8 v1, v1, 0x64

    .line 11
    .line 12
    sub-int/2addr v0, v1

    .line 13
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->z:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/WaterProgressView;->h(Landroid/graphics/Canvas;Z)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/WaterProgressView;->h(Landroid/graphics/Canvas;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/high16 p2, 0x40000000    # 2.0f

    .line 25
    .line 26
    if-ne v0, p2, :cond_0

    .line 27
    .line 28
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    .line 32
    .line 33
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 34
    .line 35
    :goto_0
    if-ne v1, p2, :cond_1

    .line 36
    .line 37
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/WaterProgressView;->g:I

    .line 41
    .line 42
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 43
    .line 44
    :goto_1
    iget p1, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 45
    .line 46
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->l:I

    .line 47
    .line 48
    iget p2, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 49
    .line 50
    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->m:I

    .line 51
    .line 52
    iget v0, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 53
    .line 54
    div-int v0, p1, v0

    .line 55
    .line 56
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 57
    .line 58
    div-int/lit8 v0, p1, 0x2

    .line 59
    .line 60
    iput v0, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 63
    .line 64
    .line 65
    return-void
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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    iput p3, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 9
    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->j:I

    .line 15
    .line 16
    iget p2, p0, Lcom/join/mgps/customview/WaterProgressView;->i:I

    .line 17
    .line 18
    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->l:I

    .line 19
    .line 20
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->m:I

    .line 21
    .line 22
    iget p1, p0, Lcom/join/mgps/customview/WaterProgressView;->w:I

    .line 23
    .line 24
    div-int p1, p2, p1

    .line 25
    .line 26
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->y:I

    .line 27
    .line 28
    div-int/lit8 p2, p2, 0x2

    .line 29
    .line 30
    iput p2, p0, Lcom/join/mgps/customview/WaterProgressView;->x:I

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/mgps/customview/WaterProgressView;->m()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->h:I

    .line 8
    .line 9
    filled-new-array {p1, p1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/mgps/customview/WaterProgressView;->C:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    const-wide/16 v0, 0x7d0

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView;->C:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    new-instance v0, Lcom/join/mgps/customview/WaterProgressView$b;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/WaterProgressView$b;-><init>(Lcom/join/mgps/customview/WaterProgressView;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView;->C:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public setWaveTime(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/WaterProgressView;->A:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    int-to-long v1, p1

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/WaterProgressView;->B:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
