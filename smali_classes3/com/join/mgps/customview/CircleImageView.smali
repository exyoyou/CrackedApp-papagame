.class public Lcom/join/mgps/customview/CircleImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final s:Landroid/widget/ImageView$ScaleType;

.field private static final t:Landroid/graphics/Bitmap$Config;

.field private static final u:I = 0x2

.field private static final v:I = 0x0

.field private static final w:I = -0x1000000

.field private static final x:Z


# instance fields
.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Matrix;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/BitmapShader;

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:Landroid/graphics/ColorFilter;

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    sput-object v0, Lcom/join/mgps/customview/CircleImageView;->s:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    .line 7
    sput-object v0, Lcom/join/mgps/customview/CircleImageView;->t:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/RectF;

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Matrix;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->f:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->b()V

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

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
            "defStyle"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 19
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 20
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/CircleImageView;->r:Z

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->b()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    sget-object v1, Lcom/join/mgps/customview/CircleImageView;->t:Landroid/graphics/Bitmap$Config;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sget-object v3, Lcom/join/mgps/customview/CircleImageView;->t:Landroid/graphics/Bitmap$Config;

    .line 37
    .line 38
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :catch_0
    return-object v0
.end method

.method private b()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/CircleImageView;->s:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->p:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->q:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->q:Z

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->p:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/join/mgps/customview/CircleImageView;->q:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 19
    .line 20
    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->j:Landroid/graphics/BitmapShader;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->j:Landroid/graphics/BitmapShader;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:Landroid/graphics/Paint;

    .line 38
    .line 39
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:Landroid/graphics/Paint;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:Landroid/graphics/Paint;

    .line 50
    .line 51
    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 59
    .line 60
    int-to-float v1, v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/Bitmap;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->l:I

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->k:I

    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/RectF;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    int-to-float v1, v1

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    int-to-float v2, v2

    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/RectF;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 103
    .line 104
    int-to-float v1, v1

    .line 105
    sub-float/2addr v0, v1

    .line 106
    const/high16 v1, 0x40000000    # 2.0f

    .line 107
    .line 108
    div-float/2addr v0, v1

    .line 109
    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/RectF;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget v3, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 116
    .line 117
    int-to-float v3, v3

    .line 118
    sub-float/2addr v2, v3

    .line 119
    div-float/2addr v2, v1

    .line 120
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->n:F

    .line 125
    .line 126
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/RectF;

    .line 129
    .line 130
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 131
    .line 132
    .line 133
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->r:Z

    .line 134
    .line 135
    if-nez v0, :cond_2

    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 138
    .line 139
    iget v2, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 140
    .line 141
    int-to-float v3, v2

    .line 142
    int-to-float v2, v2

    .line 143
    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 144
    .line 145
    .line 146
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    div-float/2addr v0, v1

    .line 153
    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 154
    .line 155
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    div-float/2addr v2, v1

    .line 160
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->m:F

    .line 165
    .line 166
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->e()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Matrix;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->k:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    mul-float v0, v0, v1

    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget v2, p0, Lcom/join/mgps/customview/CircleImageView;->l:I

    .line 25
    .line 26
    int-to-float v2, v2

    .line 27
    mul-float v1, v1, v2

    .line 28
    .line 29
    const/high16 v2, 0x3f000000    # 0.5f

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    cmpl-float v0, v0, v1

    .line 33
    .line 34
    if-lez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->l:I

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    div-float/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget v4, p0, Lcom/join/mgps/customview/CircleImageView;->k:I

    .line 53
    .line 54
    int-to-float v4, v4

    .line 55
    mul-float v4, v4, v0

    .line 56
    .line 57
    sub-float/2addr v1, v4

    .line 58
    mul-float v1, v1, v2

    .line 59
    .line 60
    move v3, v1

    .line 61
    const/4 v1, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->k:I

    .line 70
    .line 71
    int-to-float v1, v1

    .line 72
    div-float/2addr v0, v1

    .line 73
    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget v4, p0, Lcom/join/mgps/customview/CircleImageView;->l:I

    .line 80
    .line 81
    int-to-float v4, v4

    .line 82
    mul-float v4, v4, v0

    .line 83
    .line 84
    sub-float/2addr v1, v4

    .line 85
    mul-float v1, v1, v2

    .line 86
    .line 87
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Matrix;

    .line 88
    .line 89
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Matrix;

    .line 93
    .line 94
    add-float/2addr v3, v2

    .line 95
    float-to-int v3, v3

    .line 96
    int-to-float v3, v3

    .line 97
    iget-object v4, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 98
    .line 99
    iget v5, v4, Landroid/graphics/RectF;->left:F

    .line 100
    .line 101
    add-float/2addr v3, v5

    .line 102
    add-float/2addr v1, v2

    .line 103
    float-to-int v1, v1

    .line 104
    int-to-float v1, v1

    .line 105
    iget v2, v4, Landroid/graphics/RectF;->top:F

    .line 106
    .line 107
    add-float/2addr v1, v2

    .line 108
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->j:Landroid/graphics/BitmapShader;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Matrix;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/CircleImageView;->s:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

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
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    div-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    iget v2, p0, Lcom/join/mgps/customview/CircleImageView;->m:F

    .line 23
    .line 24
    iget-object v3, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    div-int/lit8 v1, v1, 0x2

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    iget v2, p0, Lcom/join/mgps/customview/CircleImageView;->n:F

    .line 48
    .line 49
    iget-object v3, p0, Lcom/join/mgps/customview/CircleImageView;->f:Landroid/graphics/Paint;

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    .line 53
    .line 54
    :cond_1
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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adjustViewBounds"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v0, "adjustViewBounds not supported."

    .line 7
    .line 8
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderColor"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setBorderColorResource(I)V
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
            "borderColorRes"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CircleImageView;->setBorderColor(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderOverlay"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->r:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/join/mgps/customview/CircleImageView;->r:Z

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderWidth"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/CircleImageView;->h:I

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cf"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->o:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->o:Landroid/graphics/ColorFilter;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bm"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/customview/CircleImageView;->s:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object p1, v1, v2

    .line 13
    .line 14
    const-string p1, "ScaleType %s not supported."

    .line 15
    .line 16
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method
