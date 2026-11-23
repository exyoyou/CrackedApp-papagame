.class public Lcom/join/mgps/customview/CircleDownloadProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static n:I = 0x64


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/content/Context;

.field private h:Landroid/graphics/Paint;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/CircleDownloadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CircleDownloadProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    const/16 p3, 0x64

    .line 4
    iput p3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    const/16 p3, -0x5a

    .line 5
    iput p3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->k:I

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/content/Context;

    .line 7
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
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

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p3, 0x64

    .line 9
    iput p3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    const/16 p3, -0x5a

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->k:I

    .line 11
    iput-object p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CircleDownloadProgressBar;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->d:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->n:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public c(Landroid/util/AttributeSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:Landroid/graphics/Paint;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/graphics/Paint;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/content/Context;

    .line 16
    .line 17
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->CircleDownloadProgressBar:[I

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const v1, 0x7f0600c1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const v1, 0x7f0600bd

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x4

    .line 53
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->l:I

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    const/16 v2, 0x14

    .line 61
    .line 62
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->j:I

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput-boolean v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c:Z

    .line 75
    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v3, 0x7f0600c0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    const/4 v3, 0x5

    .line 92
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->m:I

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->g:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->b:I

    .line 113
    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
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
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->j:I

    .line 19
    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    sub-int v1, v0, v1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/graphics/Paint;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/graphics/Paint;

    .line 31
    .line 32
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget v4, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->j:I

    .line 40
    .line 41
    sub-int/2addr v4, v3

    .line 42
    int-to-float v4, v4

    .line 43
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/graphics/Paint;

    .line 47
    .line 48
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:Landroid/graphics/Paint;

    .line 59
    .line 60
    iget v3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->e:I

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:Landroid/graphics/Paint;

    .line 66
    .line 67
    iget v3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->j:I

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:Landroid/graphics/Paint;

    .line 74
    .line 75
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:Landroid/graphics/Paint;

    .line 81
    .line 82
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    .line 86
    .line 87
    new-instance v5, Landroid/graphics/RectF;

    .line 88
    .line 89
    sub-int v2, v0, v1

    .line 90
    .line 91
    int-to-float v2, v2

    .line 92
    add-int v3, v0, v1

    .line 93
    .line 94
    int-to-float v4, v3

    .line 95
    invoke-direct {v5, v2, v2, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 96
    .line 97
    .line 98
    iget-boolean v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->c:Z

    .line 99
    .line 100
    if-eqz v2, :cond_0

    .line 101
    .line 102
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 103
    .line 104
    div-int/lit8 v3, v3, 0x2

    .line 105
    .line 106
    int-to-float v3, v3

    .line 107
    const/4 v8, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    int-to-float v10, v4

    .line 113
    iget v4, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->b:I

    .line 114
    .line 115
    iget v6, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->m:I

    .line 116
    .line 117
    filled-new-array {v4, v6}, [I

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    const/4 v12, 0x0

    .line 122
    sget-object v13, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 123
    .line 124
    move-object v6, v2

    .line 125
    move v7, v3

    .line 126
    move v9, v3

    .line 127
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 128
    .line 129
    .line 130
    new-instance v4, Landroid/graphics/Matrix;

    .line 131
    .line 132
    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 133
    .line 134
    .line 135
    const/high16 v6, -0x3cc90000    # -183.0f

    .line 136
    .line 137
    invoke-virtual {v4, v6, v3, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 141
    .line 142
    .line 143
    iget-object v3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/graphics/Paint;

    .line 144
    .line 145
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/graphics/Paint;

    .line 150
    .line 151
    iget v3, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->l:I

    .line 152
    .line 153
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    .line 155
    .line 156
    :goto_0
    int-to-float v0, v0

    .line 157
    int-to-float v1, v1

    .line 158
    iget-object v2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->f:Landroid/graphics/Paint;

    .line 159
    .line 160
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    iget v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->k:I

    .line 164
    .line 165
    int-to-float v6, v0

    .line 166
    iget v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->d:I

    .line 167
    .line 168
    neg-int v0, v0

    .line 169
    int-to-float v7, v0

    .line 170
    const/4 v8, 0x0

    .line 171
    iget-object v9, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->h:Landroid/graphics/Paint;

    .line 172
    .line 173
    move-object v4, p1

    .line 174
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    .line 9
    sget v1, Lcom/join/mgps/customview/CircleDownloadProgressBar;->n:I

    if-le p1, v1, :cond_0

    .line 10
    iput v1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    .line 11
    iput v1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    :goto_0
    sub-int/2addr p1, v0

    .line 12
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    sget v1, Lcom/join/mgps/customview/CircleDownloadProgressBar;->n:I

    div-int/2addr p1, v1

    .line 13
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 14
    iget v1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 15
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    new-instance p1, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/CircleDownloadProgressBar$a;-><init>(Lcom/join/mgps/customview/CircleDownloadProgressBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setProgress(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "anim"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CircleDownloadProgressBar;->setProgress(I)V

    return-void

    .line 2
    :cond_0
    sget p2, Lcom/join/mgps/customview/CircleDownloadProgressBar;->n:I

    const/16 v0, 0x168

    if-le p1, p2, :cond_1

    .line 3
    iput p2, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->d:I

    goto :goto_0

    .line 5
    :cond_1
    iput p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->i:I

    mul-int/lit16 p1, p1, 0x168

    .line 6
    div-int/2addr p1, p2

    iput p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->d:I

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStartAngle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startAngle"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleDownloadProgressBar;->k:I

    .line 2
    .line 3
    return-void
.end method
