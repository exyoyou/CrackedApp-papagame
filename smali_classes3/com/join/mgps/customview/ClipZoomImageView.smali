.class public Lcom/join/mgps/customview/ClipZoomImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ClipZoomImageView$b;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String; = "ClipZoomImageView"

.field public static q:F = 4.0f

.field private static r:F = 2.0f


# instance fields
.field private b:F

.field private c:Z

.field private final d:[F

.field private e:Landroid/view/ScaleGestureDetector;

.field private final f:Landroid/graphics/Matrix;

.field private g:Landroid/view/GestureDetector;

.field private h:Z

.field private i:I

.field private j:F

.field private k:F

.field private l:Z

.field private m:I

.field private n:I

.field private o:I


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/ClipZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->b:F

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->c:Z

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 5
    iput-object p2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->d:[F

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->e:Landroid/view/ScaleGestureDetector;

    .line 7
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 8
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/join/mgps/customview/ClipZoomImageView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ClipZoomImageView$a;-><init>(Lcom/join/mgps/customview/ClipZoomImageView;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->g:Landroid/view/GestureDetector;

    .line 10
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->e:Landroid/view/ScaleGestureDetector;

    .line 11
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ClipZoomImageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ClipZoomImageView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c()F
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/customview/ClipZoomImageView;->r:F

    .line 2
    .line 3
    return v0
.end method

.method static synthetic d(Lcom/join/mgps/customview/ClipZoomImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->b:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/ClipZoomImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/customview/ClipZoomImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ClipZoomImageView;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ClipZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v4, "rect.width() =  "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, " , width - 2 * mHorizontalPadding ="

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v4, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 36
    .line 37
    mul-int/lit8 v4, v4, 0x2

    .line 38
    .line 39
    sub-int v4, v1, v4

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    float-to-double v3, v3

    .line 49
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    add-double/2addr v3, v5

    .line 55
    iget v7, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 56
    .line 57
    mul-int/lit8 v8, v7, 0x2

    .line 58
    .line 59
    sub-int v8, v1, v8

    .line 60
    .line 61
    int-to-double v8, v8

    .line 62
    const/4 v10, 0x0

    .line 63
    cmpl-double v11, v3, v8

    .line 64
    .line 65
    if-ltz v11, :cond_1

    .line 66
    .line 67
    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 68
    .line 69
    int-to-float v4, v7

    .line 70
    cmpl-float v4, v3, v4

    .line 71
    .line 72
    if-lez v4, :cond_0

    .line 73
    .line 74
    neg-float v3, v3

    .line 75
    int-to-float v4, v7

    .line 76
    add-float/2addr v3, v4

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v3, 0x0

    .line 79
    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 80
    .line 81
    sub-int v8, v1, v7

    .line 82
    .line 83
    int-to-float v8, v8

    .line 84
    cmpg-float v8, v4, v8

    .line 85
    .line 86
    if-gez v8, :cond_2

    .line 87
    .line 88
    sub-int/2addr v1, v7

    .line 89
    int-to-float v1, v1

    .line 90
    sub-float v3, v1, v4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const/4 v3, 0x0

    .line 94
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    float-to-double v7, v1

    .line 99
    add-double/2addr v7, v5

    .line 100
    iget v1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 101
    .line 102
    mul-int/lit8 v4, v1, 0x2

    .line 103
    .line 104
    sub-int v4, v2, v4

    .line 105
    .line 106
    int-to-double v4, v4

    .line 107
    cmpl-double v6, v7, v4

    .line 108
    .line 109
    if-ltz v6, :cond_4

    .line 110
    .line 111
    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 112
    .line 113
    int-to-float v5, v1

    .line 114
    cmpl-float v5, v4, v5

    .line 115
    .line 116
    if-lez v5, :cond_3

    .line 117
    .line 118
    neg-float v4, v4

    .line 119
    int-to-float v5, v1

    .line 120
    add-float v10, v4, v5

    .line 121
    .line 122
    :cond_3
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 123
    .line 124
    sub-int v4, v2, v1

    .line 125
    .line 126
    int-to-float v4, v4

    .line 127
    cmpg-float v4, v0, v4

    .line 128
    .line 129
    if-gez v4, :cond_4

    .line 130
    .line 131
    sub-int/2addr v2, v1

    .line 132
    int-to-float v1, v2

    .line 133
    sub-float v10, v1, v0

    .line 134
    .line 135
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 136
    .line 137
    invoke-virtual {v0, v3, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/RectF;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    int-to-float v3, v3

    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v1
.end method

.method private i(FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    mul-float p1, p1, p1

    .line 2
    .line 3
    mul-float p2, p2, p2

    .line 4
    .line 5
    add-float/2addr p1, p2

    .line 6
    float-to-double p1, p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    iget v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->i:I

    .line 12
    .line 13
    int-to-double v0, v0

    .line 14
    cmpl-double v2, p1, v0

    .line 15
    .line 16
    if-ltz v2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method


# virtual methods
.method public final getScale()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->d:[F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->d:[F

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget v0, v0, v1

    .line 12
    .line 13
    return v0
.end method

.method public h()Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-gt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f07157f

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    float-to-int v0, v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Landroid/graphics/Canvas;

    .line 31
    .line 32
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 39
    .line 40
    iget v3, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 41
    .line 42
    mul-int/lit8 v4, v2, 0x2

    .line 43
    .line 44
    sub-int v4, v0, v4

    .line 45
    .line 46
    mul-int/lit8 v5, v2, 0x2

    .line 47
    .line 48
    sub-int/2addr v0, v5

    .line 49
    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 21
    .line 22
    mul-int/lit8 v3, v3, 0x2

    .line 23
    .line 24
    sub-int/2addr v2, v3

    .line 25
    sub-int/2addr v1, v2

    .line 26
    div-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    iput v1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget v5, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 51
    .line 52
    mul-int/lit8 v5, v5, 0x2

    .line 53
    .line 54
    sub-int/2addr v4, v5

    .line 55
    const/high16 v5, 0x3f800000    # 1.0f

    .line 56
    .line 57
    if-ge v3, v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget v6, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 64
    .line 65
    mul-int/lit8 v6, v6, 0x2

    .line 66
    .line 67
    sub-int/2addr v4, v6

    .line 68
    if-le v0, v4, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    int-to-float v4, v4

    .line 75
    mul-float v4, v4, v5

    .line 76
    .line 77
    iget v6, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 78
    .line 79
    mul-int/lit8 v6, v6, 0x2

    .line 80
    .line 81
    int-to-float v6, v6

    .line 82
    sub-float/2addr v4, v6

    .line 83
    int-to-float v6, v3

    .line 84
    div-float/2addr v4, v6

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    .line 87
    .line 88
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    iget v7, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 93
    .line 94
    mul-int/lit8 v7, v7, 0x2

    .line 95
    .line 96
    sub-int/2addr v6, v7

    .line 97
    if-ge v0, v6, :cond_2

    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    iget v7, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 104
    .line 105
    mul-int/lit8 v7, v7, 0x2

    .line 106
    .line 107
    sub-int/2addr v6, v7

    .line 108
    if-le v3, v6, :cond_2

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    int-to-float v4, v4

    .line 115
    mul-float v4, v4, v5

    .line 116
    .line 117
    iget v6, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 118
    .line 119
    mul-int/lit8 v6, v6, 0x2

    .line 120
    .line 121
    int-to-float v6, v6

    .line 122
    sub-float/2addr v4, v6

    .line 123
    int-to-float v6, v0

    .line 124
    div-float/2addr v4, v6

    .line 125
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    iget v7, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 130
    .line 131
    mul-int/lit8 v7, v7, 0x2

    .line 132
    .line 133
    sub-int/2addr v6, v7

    .line 134
    if-ge v3, v6, :cond_3

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    iget v7, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 141
    .line 142
    mul-int/lit8 v7, v7, 0x2

    .line 143
    .line 144
    sub-int/2addr v6, v7

    .line 145
    if-ge v0, v6, :cond_3

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    int-to-float v4, v4

    .line 152
    mul-float v4, v4, v5

    .line 153
    .line 154
    iget v6, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 155
    .line 156
    mul-int/lit8 v6, v6, 0x2

    .line 157
    .line 158
    int-to-float v6, v6

    .line 159
    sub-float/2addr v4, v6

    .line 160
    int-to-float v6, v3

    .line 161
    div-float/2addr v4, v6

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    int-to-float v6, v6

    .line 167
    mul-float v6, v6, v5

    .line 168
    .line 169
    iget v5, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 170
    .line 171
    mul-int/lit8 v5, v5, 0x2

    .line 172
    .line 173
    int-to-float v5, v5

    .line 174
    sub-float/2addr v6, v5

    .line 175
    int-to-float v5, v0

    .line 176
    div-float/2addr v6, v5

    .line 177
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    :cond_3
    iput v4, p0, Lcom/join/mgps/customview/ClipZoomImageView;->b:F

    .line 182
    .line 183
    const/high16 v5, 0x40000000    # 2.0f

    .line 184
    .line 185
    mul-float v5, v5, v4

    .line 186
    .line 187
    sput v5, Lcom/join/mgps/customview/ClipZoomImageView;->r:F

    .line 188
    .line 189
    const/high16 v5, 0x40800000    # 4.0f

    .line 190
    .line 191
    mul-float v5, v5, v4

    .line 192
    .line 193
    sput v5, Lcom/join/mgps/customview/ClipZoomImageView;->q:F

    .line 194
    .line 195
    iget-object v5, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 196
    .line 197
    sub-int/2addr v1, v3

    .line 198
    div-int/lit8 v1, v1, 0x2

    .line 199
    .line 200
    int-to-float v1, v1

    .line 201
    sub-int/2addr v2, v0

    .line 202
    div-int/lit8 v2, v2, 0x2

    .line 203
    .line 204
    int-to-float v0, v2

    .line 205
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    div-int/lit8 v1, v1, 0x2

    .line 215
    .line 216
    int-to-float v1, v1

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    div-int/lit8 v2, v2, 0x2

    .line 222
    .line 223
    int-to-float v2, v2

    .line 224
    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 228
    .line 229
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 230
    .line 231
    .line 232
    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->c:Z

    .line 234
    .line 235
    :cond_4
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/ClipZoomImageView;->getScale()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    sget v2, Lcom/join/mgps/customview/ClipZoomImageView;->q:F

    .line 18
    .line 19
    const/high16 v4, 0x3f800000    # 1.0f

    .line 20
    .line 21
    cmpg-float v5, v0, v2

    .line 22
    .line 23
    if-gez v5, :cond_1

    .line 24
    .line 25
    cmpl-float v5, v1, v4

    .line 26
    .line 27
    if-gtz v5, :cond_2

    .line 28
    .line 29
    :cond_1
    iget v5, p0, Lcom/join/mgps/customview/ClipZoomImageView;->b:F

    .line 30
    .line 31
    cmpl-float v5, v0, v5

    .line 32
    .line 33
    if-lez v5, :cond_5

    .line 34
    .line 35
    cmpg-float v4, v1, v4

    .line 36
    .line 37
    if-gez v4, :cond_5

    .line 38
    .line 39
    :cond_2
    mul-float v4, v1, v0

    .line 40
    .line 41
    iget v5, p0, Lcom/join/mgps/customview/ClipZoomImageView;->b:F

    .line 42
    .line 43
    cmpg-float v4, v4, v5

    .line 44
    .line 45
    if-gez v4, :cond_3

    .line 46
    .line 47
    div-float v1, v5, v0

    .line 48
    .line 49
    :cond_3
    mul-float v4, v1, v0

    .line 50
    .line 51
    cmpl-float v4, v4, v2

    .line 52
    .line 53
    if-lez v4, :cond_4

    .line 54
    .line 55
    div-float v1, v2, v0

    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/join/mgps/customview/ClipZoomImageView;->g()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->g:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->e:Landroid/view/ScaleGestureDetector;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_0
    if-ge v3, p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-float/2addr v4, v6

    .line 32
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    add-float/2addr v5, v6

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    int-to-float v3, p1

    .line 41
    div-float/2addr v4, v3

    .line 42
    div-float/2addr v5, v3

    .line 43
    iget v3, p0, Lcom/join/mgps/customview/ClipZoomImageView;->m:I

    .line 44
    .line 45
    if-eq p1, v3, :cond_2

    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->l:Z

    .line 48
    .line 49
    iput v4, p0, Lcom/join/mgps/customview/ClipZoomImageView;->j:F

    .line 50
    .line 51
    iput v5, p0, Lcom/join/mgps/customview/ClipZoomImageView;->k:F

    .line 52
    .line 53
    :cond_2
    iput p1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->m:I

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eq p1, v0, :cond_8

    .line 60
    .line 61
    const/4 p2, 0x2

    .line 62
    if-eq p1, p2, :cond_3

    .line 63
    .line 64
    const/4 p2, 0x3

    .line 65
    if-eq p1, p2, :cond_8

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iget p1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->j:F

    .line 69
    .line 70
    sub-float p1, v4, p1

    .line 71
    .line 72
    iget v1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->k:F

    .line 73
    .line 74
    sub-float v1, v5, v1

    .line 75
    .line 76
    iget-boolean v3, p0, Lcom/join/mgps/customview/ClipZoomImageView;->l:Z

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    invoke-direct {p0, p1, v1}, Lcom/join/mgps/customview/ClipZoomImageView;->i(FF)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    iput-boolean v3, p0, Lcom/join/mgps/customview/ClipZoomImageView;->l:Z

    .line 85
    .line 86
    :cond_4
    iget-boolean v3, p0, Lcom/join/mgps/customview/ClipZoomImageView;->l:Z

    .line 87
    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    invoke-direct {p0}, Lcom/join/mgps/customview/ClipZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    iget v8, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 109
    .line 110
    mul-int/lit8 v8, v8, 0x2

    .line 111
    .line 112
    sub-int/2addr v7, v8

    .line 113
    int-to-float v7, v7

    .line 114
    cmpg-float v6, v6, v7

    .line 115
    .line 116
    if-gtz v6, :cond_5

    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    iget v7, p0, Lcom/join/mgps/customview/ClipZoomImageView;->o:I

    .line 128
    .line 129
    mul-int/lit8 v7, v7, 0x2

    .line 130
    .line 131
    sub-int/2addr v6, v7

    .line 132
    int-to-float p2, v6

    .line 133
    cmpg-float p2, v3, p2

    .line 134
    .line 135
    if-gtz p2, :cond_6

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    move v2, v1

    .line 139
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 140
    .line 141
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/join/mgps/customview/ClipZoomImageView;->g()V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->f:Landroid/graphics/Matrix;

    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    iput v4, p0, Lcom/join/mgps/customview/ClipZoomImageView;->j:F

    .line 153
    .line 154
    iput v5, p0, Lcom/join/mgps/customview/ClipZoomImageView;->k:F

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_8
    iput v1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->m:I

    .line 158
    .line 159
    :goto_2
    return v0
.end method

.method public setHorizontalPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mHorizontalPadding"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ClipZoomImageView;->n:I

    .line 2
    .line 3
    return-void
.end method
