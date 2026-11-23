.class public Lcom/join/mgps/customview/PictureHProgress;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Landroid/graphics/Bitmap;

.field j:I

.field k:I

.field l:Landroid/graphics/Paint;

.field m:Landroid/graphics/Paint;

.field n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/PorterDuffXfermode;

.field p:F

.field q:I

.field r:I


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/PictureHProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/PictureHProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->b:I

    const p1, -0x333334

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->c:I

    const p1, 0x7f0809d5

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    const/16 p1, 0x38

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    const/16 p1, 0x19

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    const/16 p3, 0x64

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/PictureHProgress;->h:I

    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lcom/join/mgps/customview/PictureHProgress;->i:Landroid/graphics/Bitmap;

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->j:I

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->k:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->p:F

    .line 15
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/PictureHProgress;->a(Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 17
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->o:Landroid/graphics/PorterDuffXfermode;

    .line 18
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->m:Landroid/graphics/Paint;

    .line 19
    iget p3, p0, Lcom/join/mgps/customview/PictureHProgress;->c:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->m:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    .line 22
    iget p3, p0, Lcom/join/mgps/customview/PictureHProgress;->b:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->n:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
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
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->PictureHProgress:[I

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x3

    .line 12
    iget v1, p0, Lcom/join/mgps/customview/PictureHProgress;->b:I

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->b:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iget v1, p0, Lcom/join/mgps/customview/PictureHProgress;->c:I

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->c:I

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    iget v1, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    .line 37
    .line 38
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    .line 39
    .line 40
    int-to-float v0, v0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    float-to-int v0, v0

    .line 47
    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    .line 48
    .line 49
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    .line 50
    .line 51
    int-to-float v0, v0

    .line 52
    const/4 v1, 0x4

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    float-to-int v0, v0

    .line 58
    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    .line 59
    .line 60
    const/4 v0, 0x6

    .line 61
    iget v1, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    .line 68
    .line 69
    const/4 v0, 0x5

    .line 70
    iget v1, p0, Lcom/join/mgps/customview/PictureHProgress;->h:I

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->h:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    .line 2
    .line 3
    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    .line 8
    .line 9
    int-to-float v3, v0

    .line 10
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->r:I

    .line 11
    .line 12
    int-to-float v4, v0

    .line 13
    iget-object v5, p0, Lcom/join/mgps/customview/PictureHProgress;->m:Landroid/graphics/Paint;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    .line 21
    .line 22
    int-to-float v1, v1

    .line 23
    iget v2, p0, Lcom/join/mgps/customview/PictureHProgress;->p:F

    .line 24
    .line 25
    mul-float v1, v1, v2

    .line 26
    .line 27
    float-to-int v1, v1

    .line 28
    div-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/customview/PictureHProgress;->i:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v3, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    .line 39
    .line 40
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    mul-int/lit8 v3, v1, 0x2

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-static {v2, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, p0, Lcom/join/mgps/customview/PictureHProgress;->i:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    .line 54
    .line 55
    div-int/lit8 v2, v2, 0x2

    .line 56
    .line 57
    iget v3, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    .line 58
    .line 59
    sub-int/2addr v3, v1

    .line 60
    iget v4, p0, Lcom/join/mgps/customview/PictureHProgress;->r:I

    .line 61
    .line 62
    div-int/lit8 v5, v4, 0x2

    .line 63
    .line 64
    sub-int/2addr v5, v2

    .line 65
    div-int/lit8 v4, v4, 0x2

    .line 66
    .line 67
    add-int/2addr v4, v2

    .line 68
    new-instance v6, Landroid/graphics/RectF;

    .line 69
    .line 70
    int-to-float v7, v1

    .line 71
    int-to-float v5, v5

    .line 72
    int-to-float v8, v3

    .line 73
    int-to-float v4, v4

    .line 74
    invoke-direct {v6, v7, v5, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    .line 76
    .line 77
    int-to-float v2, v2

    .line 78
    iget-object v8, p0, Lcom/join/mgps/customview/PictureHProgress;->m:Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-virtual {p1, v6, v2, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    .line 84
    .line 85
    iget-object v6, p0, Lcom/join/mgps/customview/PictureHProgress;->o:Landroid/graphics/PorterDuffXfermode;

    .line 86
    .line 87
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    .line 89
    .line 90
    new-instance v2, Landroid/graphics/RectF;

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/join/mgps/customview/PictureHProgress;->getProgress()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    mul-int v3, v3, v6

    .line 97
    .line 98
    iget v6, p0, Lcom/join/mgps/customview/PictureHProgress;->h:I

    .line 99
    .line 100
    div-int/2addr v3, v6

    .line 101
    int-to-float v3, v3

    .line 102
    invoke-direct {v2, v7, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 108
    .line 109
    .line 110
    iget v2, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    .line 111
    .line 112
    iget-object v3, p0, Lcom/join/mgps/customview/PictureHProgress;->i:Landroid/graphics/Bitmap;

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    sub-int/2addr v2, v3

    .line 119
    invoke-virtual {p0}, Lcom/join/mgps/customview/PictureHProgress;->getProgress()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    mul-int v2, v2, v3

    .line 124
    .line 125
    iget v3, p0, Lcom/join/mgps/customview/PictureHProgress;->h:I

    .line 126
    .line 127
    div-int/2addr v2, v3

    .line 128
    int-to-float v2, v2

    .line 129
    iget v3, p0, Lcom/join/mgps/customview/PictureHProgress;->r:I

    .line 130
    .line 131
    div-int/lit8 v3, v3, 0x2

    .line 132
    .line 133
    sub-int/2addr v3, v1

    .line 134
    int-to-float v1, v3

    .line 135
    iget-object v3, p0, Lcom/join/mgps/customview/PictureHProgress;->i:Landroid/graphics/Bitmap;

    .line 136
    .line 137
    if-eqz v3, :cond_1

    .line 138
    .line 139
    iget-object v4, p0, Lcom/join/mgps/customview/PictureHProgress;->n:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    .line 145
    .line 146
    const/4 v2, 0x0

    .line 147
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .line 152
    .line 153
    monitor-exit p0

    .line 154
    return-void

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    monitor-exit p0

    .line 157
    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0
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
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    .line 7
    .line 8
    iget p1, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    .line 9
    .line 10
    iget p2, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    .line 11
    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->r:I

    .line 17
    .line 18
    iget p2, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    .line 19
    .line 20
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public setMaxProgress(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxProgress"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->h:I

    .line 2
    .line 3
    if-le p1, v0, :cond_0

    .line 4
    .line 5
    move p1, v0

    .line 6
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
