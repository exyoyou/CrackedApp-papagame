.class public Lmoe/codeest/enviews/ENPlayView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static r:I = 0x0

.field public static s:I = 0x1

.field public static t:I = -0x1

.field public static u:I = -0x50506

.field public static v:I = 0x4

.field public static w:I = 0x4

.field public static x:I = 0x4b0


# instance fields
.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;

.field private l:F

.field private m:Landroid/graphics/Path;

.field private n:Landroid/graphics/Path;

.field private o:Landroid/graphics/PathMeasure;

.field private p:F

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lmoe/codeest/enviews/ENPlayView;->s:I

    iput p1, p0, Lmoe/codeest/enviews/ENPlayView;->b:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lmoe/codeest/enviews/ENPlayView;->l:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget v0, Lmoe/codeest/enviews/ENPlayView;->s:I

    iput v0, p0, Lmoe/codeest/enviews/ENPlayView;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 7
    sget-object v1, Lcom/papa/gsyvideoplayer/R$styleable;->play:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    sget p2, Lcom/papa/gsyvideoplayer/R$styleable;->play_play_line_color:I

    sget v1, Lmoe/codeest/enviews/ENPlayView;->t:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 9
    sget v1, Lcom/papa/gsyvideoplayer/R$styleable;->play_play_bg_line_color:I

    sget v2, Lmoe/codeest/enviews/ENPlayView;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 10
    sget v2, Lcom/papa/gsyvideoplayer/R$styleable;->play_play_line_width:I

    sget v3, Lmoe/codeest/enviews/ENPlayView;->v:I

    invoke-direct {p0, v3}, Lmoe/codeest/enviews/ENPlayView;->b(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 11
    sget v3, Lcom/papa/gsyvideoplayer/R$styleable;->play_play_bg_line_width:I

    sget v4, Lmoe/codeest/enviews/ENPlayView;->w:I

    invoke-direct {p0, v4}, Lmoe/codeest/enviews/ENPlayView;->b(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    const/4 v4, 0x1

    .line 13
    invoke-virtual {p0, v4, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 15
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 17
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    int-to-float p2, v2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/CornerPathEffect;

    invoke-direct {p2, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->d:Landroid/graphics/Paint;

    .line 21
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->d:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->d:Landroid/graphics/Paint;

    int-to-float p2, v3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->m:Landroid/graphics/Path;

    .line 26
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 27
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->o:Landroid/graphics/PathMeasure;

    .line 28
    sget p1, Lmoe/codeest/enviews/ENPlayView;->x:I

    iput p1, p0, Lmoe/codeest/enviews/ENPlayView;->q:I

    return-void
.end method

.method static synthetic a(Lmoe/codeest/enviews/ENPlayView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 2
    .line 3
    return p1
.end method

.method private b(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    return p1
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget v0, p0, Lmoe/codeest/enviews/ENPlayView;->b:I

    .line 2
    .line 3
    sget v1, Lmoe/codeest/enviews/ENPlayView;->s:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput v1, p0, Lmoe/codeest/enviews/ENPlayView;->b:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lmoe/codeest/enviews/ENPlayView;->q:I

    .line 21
    .line 22
    int-to-long v1, v1

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lmoe/codeest/enviews/ENPlayView$b;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENPlayView$b;-><init>(Lmoe/codeest/enviews/ENPlayView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public d()V
    .locals 3

    .line 1
    iget v0, p0, Lmoe/codeest/enviews/ENPlayView;->b:I

    .line 2
    .line 3
    sget v1, Lmoe/codeest/enviews/ENPlayView;->r:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput v1, p0, Lmoe/codeest/enviews/ENPlayView;->b:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lmoe/codeest/enviews/ENPlayView;->q:I

    .line 21
    .line 22
    int-to-long v1, v1

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lmoe/codeest/enviews/ENPlayView$a;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lmoe/codeest/enviews/ENPlayView$a;-><init>(Lmoe/codeest/enviews/ENPlayView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lmoe/codeest/enviews/ENPlayView;->b:I

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    iget v1, v0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    iget v2, v0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 12
    .line 13
    int-to-float v2, v2

    .line 14
    iget v3, v0, Lmoe/codeest/enviews/ENPlayView;->e:I

    .line 15
    .line 16
    div-int/lit8 v3, v3, 0x2

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    iget-object v4, v0, Lmoe/codeest/enviews/ENPlayView;->d:Landroid/graphics/Paint;

    .line 20
    .line 21
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 22
    .line 23
    .line 24
    iget v1, v0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 25
    .line 26
    const v8, 0x3fcccccd    # 1.6f

    .line 27
    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    cmpg-float v2, v1, v9

    .line 31
    .line 32
    if-gez v2, :cond_0

    .line 33
    .line 34
    iget v2, v0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 35
    .line 36
    iget v3, v0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 37
    .line 38
    add-int v4, v2, v3

    .line 39
    .line 40
    int-to-float v4, v4

    .line 41
    iget v5, v0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 42
    .line 43
    int-to-float v6, v5

    .line 44
    int-to-float v9, v3

    .line 45
    mul-float v9, v9, v8

    .line 46
    .line 47
    sub-float/2addr v6, v9

    .line 48
    mul-int/lit8 v9, v3, 0xa

    .line 49
    .line 50
    int-to-float v9, v9

    .line 51
    mul-float v9, v9, v1

    .line 52
    .line 53
    add-float/2addr v6, v9

    .line 54
    add-int/2addr v2, v3

    .line 55
    int-to-float v9, v2

    .line 56
    int-to-float v2, v5

    .line 57
    int-to-float v5, v3

    .line 58
    mul-float v5, v5, v8

    .line 59
    .line 60
    add-float/2addr v2, v5

    .line 61
    mul-int/lit8 v3, v3, 0xa

    .line 62
    .line 63
    int-to-float v3, v3

    .line 64
    mul-float v3, v3, v1

    .line 65
    .line 66
    add-float v5, v2, v3

    .line 67
    .line 68
    iget-object v10, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 69
    .line 70
    move-object/from16 v1, p1

    .line 71
    .line 72
    move v2, v4

    .line 73
    move v3, v6

    .line 74
    move v4, v9

    .line 75
    move-object v6, v10

    .line 76
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    .line 78
    .line 79
    iget v1, v0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 80
    .line 81
    iget v2, v0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 82
    .line 83
    sub-int v3, v1, v2

    .line 84
    .line 85
    int-to-float v3, v3

    .line 86
    iget v4, v0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 87
    .line 88
    int-to-float v5, v4

    .line 89
    int-to-float v6, v2

    .line 90
    mul-float v6, v6, v8

    .line 91
    .line 92
    sub-float/2addr v5, v6

    .line 93
    sub-int/2addr v1, v2

    .line 94
    int-to-float v6, v1

    .line 95
    int-to-float v1, v4

    .line 96
    int-to-float v2, v2

    .line 97
    mul-float v2, v2, v8

    .line 98
    .line 99
    add-float v8, v1, v2

    .line 100
    .line 101
    iget-object v9, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 102
    .line 103
    move-object/from16 v1, p1

    .line 104
    .line 105
    move v2, v3

    .line 106
    move v3, v5

    .line 107
    move v4, v6

    .line 108
    move v5, v8

    .line 109
    move-object v6, v9

    .line 110
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    .line 112
    .line 113
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->k:Landroid/graphics/RectF;

    .line 114
    .line 115
    const/high16 v3, -0x3d2e0000    # -105.0f

    .line 116
    .line 117
    const/high16 v4, 0x43b40000    # 360.0f

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    iget-object v6, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_0
    float-to-double v2, v1

    .line 128
    const-wide v4, 0x3fd3333333333333L    # 0.3

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    const/high16 v10, -0x3d2e0000    # -105.0f

    .line 134
    .line 135
    const/high16 v11, 0x44160000    # 600.0f

    .line 136
    .line 137
    const/high16 v12, 0x3f800000    # 1.0f

    .line 138
    .line 139
    const v13, 0x3e99999a    # 0.3f

    .line 140
    .line 141
    .line 142
    const/high16 v14, 0x43b40000    # 360.0f

    .line 143
    .line 144
    cmpg-double v6, v2, v4

    .line 145
    .line 146
    if-gtz v6, :cond_2

    .line 147
    .line 148
    iget v2, v0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 149
    .line 150
    iget v3, v0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 151
    .line 152
    add-int v4, v2, v3

    .line 153
    .line 154
    int-to-float v4, v4

    .line 155
    iget v5, v0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 156
    .line 157
    int-to-float v6, v5

    .line 158
    int-to-float v15, v3

    .line 159
    mul-float v15, v15, v8

    .line 160
    .line 161
    sub-float/2addr v6, v15

    .line 162
    int-to-float v15, v3

    .line 163
    const v16, 0x404ccccd    # 3.2f

    .line 164
    .line 165
    .line 166
    mul-float v15, v15, v16

    .line 167
    .line 168
    div-float/2addr v15, v13

    .line 169
    mul-float v15, v15, v1

    .line 170
    .line 171
    add-float/2addr v6, v15

    .line 172
    add-int/2addr v2, v3

    .line 173
    int-to-float v13, v2

    .line 174
    int-to-float v1, v5

    .line 175
    int-to-float v2, v3

    .line 176
    mul-float v2, v2, v8

    .line 177
    .line 178
    add-float v5, v1, v2

    .line 179
    .line 180
    iget-object v15, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 181
    .line 182
    move-object/from16 v1, p1

    .line 183
    .line 184
    move v2, v4

    .line 185
    move v3, v6

    .line 186
    move v4, v13

    .line 187
    move-object v6, v15

    .line 188
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 189
    .line 190
    .line 191
    iget v1, v0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 192
    .line 193
    iget v2, v0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 194
    .line 195
    sub-int v3, v1, v2

    .line 196
    .line 197
    int-to-float v3, v3

    .line 198
    iget v4, v0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 199
    .line 200
    int-to-float v5, v4

    .line 201
    int-to-float v6, v2

    .line 202
    mul-float v6, v6, v8

    .line 203
    .line 204
    sub-float/2addr v5, v6

    .line 205
    sub-int/2addr v1, v2

    .line 206
    int-to-float v6, v1

    .line 207
    int-to-float v1, v4

    .line 208
    int-to-float v2, v2

    .line 209
    mul-float v2, v2, v8

    .line 210
    .line 211
    add-float v8, v1, v2

    .line 212
    .line 213
    iget-object v13, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 214
    .line 215
    move-object/from16 v1, p1

    .line 216
    .line 217
    move v2, v3

    .line 218
    move v3, v5

    .line 219
    move v4, v6

    .line 220
    move v5, v8

    .line 221
    move-object v6, v13

    .line 222
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 223
    .line 224
    .line 225
    iget v1, v0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 226
    .line 227
    cmpl-float v2, v1, v9

    .line 228
    .line 229
    if-eqz v2, :cond_1

    .line 230
    .line 231
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->j:Landroid/graphics/RectF;

    .line 232
    .line 233
    const/4 v3, 0x0

    .line 234
    mul-float v4, v1, v11

    .line 235
    .line 236
    const/4 v5, 0x0

    .line 237
    iget-object v6, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 238
    .line 239
    move-object/from16 v1, p1

    .line 240
    .line 241
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 242
    .line 243
    .line 244
    :cond_1
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->k:Landroid/graphics/RectF;

    .line 245
    .line 246
    iget v1, v0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 247
    .line 248
    mul-float v3, v1, v14

    .line 249
    .line 250
    add-float/2addr v3, v10

    .line 251
    sub-float/2addr v12, v1

    .line 252
    mul-float v4, v12, v14

    .line 253
    .line 254
    const/4 v5, 0x0

    .line 255
    iget-object v6, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 256
    .line 257
    move-object/from16 v1, p1

    .line 258
    .line 259
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_2
    float-to-double v2, v1

    .line 265
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    const v8, 0x3ca3d70a    # 0.02f

    .line 271
    .line 272
    .line 273
    const/4 v9, 0x1

    .line 274
    cmpg-double v6, v2, v4

    .line 275
    .line 276
    if-gtz v6, :cond_3

    .line 277
    .line 278
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->j:Landroid/graphics/RectF;

    .line 279
    .line 280
    sub-float v3, v1, v13

    .line 281
    .line 282
    mul-float v3, v3, v11

    .line 283
    .line 284
    sub-float/2addr v1, v13

    .line 285
    mul-float v1, v1, v11

    .line 286
    .line 287
    const/high16 v4, 0x43340000    # 180.0f

    .line 288
    .line 289
    sub-float/2addr v4, v1

    .line 290
    const/4 v5, 0x0

    .line 291
    iget-object v6, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 292
    .line 293
    move-object/from16 v1, p1

    .line 294
    .line 295
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 299
    .line 300
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->o:Landroid/graphics/PathMeasure;

    .line 304
    .line 305
    iget v2, v0, Lmoe/codeest/enviews/ENPlayView;->p:F

    .line 306
    .line 307
    mul-float v8, v8, v2

    .line 308
    .line 309
    const v3, 0x3ec28f5c    # 0.38f

    .line 310
    .line 311
    .line 312
    mul-float v3, v3, v2

    .line 313
    .line 314
    const v4, 0x3ed70a3d    # 0.42f

    .line 315
    .line 316
    .line 317
    mul-float v2, v2, v4

    .line 318
    .line 319
    div-float/2addr v2, v13

    .line 320
    iget v4, v0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 321
    .line 322
    sub-float/2addr v4, v13

    .line 323
    mul-float v2, v2, v4

    .line 324
    .line 325
    add-float/2addr v3, v2

    .line 326
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 327
    .line 328
    invoke-virtual {v1, v8, v3, v2, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 329
    .line 330
    .line 331
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 332
    .line 333
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 334
    .line 335
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 336
    .line 337
    .line 338
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->k:Landroid/graphics/RectF;

    .line 339
    .line 340
    iget v1, v0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 341
    .line 342
    mul-float v3, v1, v14

    .line 343
    .line 344
    add-float/2addr v3, v10

    .line 345
    sub-float/2addr v12, v1

    .line 346
    mul-float v4, v12, v14

    .line 347
    .line 348
    iget-object v6, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 349
    .line 350
    move-object/from16 v1, p1

    .line 351
    .line 352
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 353
    .line 354
    .line 355
    goto :goto_0

    .line 356
    :cond_3
    float-to-double v1, v1

    .line 357
    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    cmpg-double v5, v1, v3

    .line 363
    .line 364
    if-gtz v5, :cond_4

    .line 365
    .line 366
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 367
    .line 368
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 369
    .line 370
    .line 371
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->o:Landroid/graphics/PathMeasure;

    .line 372
    .line 373
    iget v2, v0, Lmoe/codeest/enviews/ENPlayView;->p:F

    .line 374
    .line 375
    mul-float v8, v8, v2

    .line 376
    .line 377
    const v3, 0x3e4ccccd    # 0.2f

    .line 378
    .line 379
    .line 380
    mul-float v4, v2, v3

    .line 381
    .line 382
    div-float/2addr v4, v3

    .line 383
    iget v5, v0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 384
    .line 385
    const v6, 0x3f19999a    # 0.6f

    .line 386
    .line 387
    .line 388
    sub-float v11, v5, v6

    .line 389
    .line 390
    mul-float v4, v4, v11

    .line 391
    .line 392
    add-float/2addr v8, v4

    .line 393
    const v4, 0x3f4ccccd    # 0.8f

    .line 394
    .line 395
    .line 396
    mul-float v4, v4, v2

    .line 397
    .line 398
    mul-float v2, v2, v3

    .line 399
    .line 400
    div-float/2addr v2, v3

    .line 401
    sub-float/2addr v5, v6

    .line 402
    mul-float v2, v2, v5

    .line 403
    .line 404
    add-float/2addr v4, v2

    .line 405
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 406
    .line 407
    invoke-virtual {v1, v8, v4, v2, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 408
    .line 409
    .line 410
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 411
    .line 412
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 413
    .line 414
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 415
    .line 416
    .line 417
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->k:Landroid/graphics/RectF;

    .line 418
    .line 419
    iget v1, v0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 420
    .line 421
    mul-float v3, v1, v14

    .line 422
    .line 423
    add-float/2addr v3, v10

    .line 424
    sub-float/2addr v12, v1

    .line 425
    mul-float v4, v12, v14

    .line 426
    .line 427
    const/4 v5, 0x0

    .line 428
    iget-object v6, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 429
    .line 430
    move-object/from16 v1, p1

    .line 431
    .line 432
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 433
    .line 434
    .line 435
    goto :goto_0

    .line 436
    :cond_4
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 437
    .line 438
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 439
    .line 440
    .line 441
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->o:Landroid/graphics/PathMeasure;

    .line 442
    .line 443
    iget v2, v0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 444
    .line 445
    mul-int/lit8 v2, v2, 0xa

    .line 446
    .line 447
    int-to-float v2, v2

    .line 448
    iget v3, v0, Lmoe/codeest/enviews/ENPlayView;->l:F

    .line 449
    .line 450
    sub-float/2addr v3, v12

    .line 451
    mul-float v2, v2, v3

    .line 452
    .line 453
    iget v3, v0, Lmoe/codeest/enviews/ENPlayView;->p:F

    .line 454
    .line 455
    iget-object v4, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 456
    .line 457
    invoke-virtual {v1, v2, v3, v4, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 458
    .line 459
    .line 460
    iget-object v1, v0, Lmoe/codeest/enviews/ENPlayView;->n:Landroid/graphics/Path;

    .line 461
    .line 462
    iget-object v2, v0, Lmoe/codeest/enviews/ENPlayView;->c:Landroid/graphics/Paint;

    .line 463
    .line 464
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 465
    .line 466
    .line 467
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    mul-int/lit8 p3, p1, 0x9

    .line 5
    .line 6
    div-int/lit8 p3, p3, 0xa

    .line 7
    .line 8
    iput p3, p0, Lmoe/codeest/enviews/ENPlayView;->e:I

    .line 9
    .line 10
    mul-int/lit8 p4, p2, 0x9

    .line 11
    .line 12
    div-int/lit8 p4, p4, 0xa

    .line 13
    .line 14
    iput p4, p0, Lmoe/codeest/enviews/ENPlayView;->f:I

    .line 15
    .line 16
    const/4 p4, 0x4

    .line 17
    invoke-direct {p0, p4}, Lmoe/codeest/enviews/ENPlayView;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    div-int/2addr p3, p4

    .line 22
    iput p3, p0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 23
    .line 24
    div-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    iput p1, p0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 27
    .line 28
    div-int/lit8 p2, p2, 0x2

    .line 29
    .line 30
    iput p2, p0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/RectF;

    .line 33
    .line 34
    iget p2, p0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 35
    .line 36
    iget p3, p0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 37
    .line 38
    sub-int p4, p2, p3

    .line 39
    .line 40
    int-to-float p4, p4

    .line 41
    iget v0, p0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 42
    .line 43
    int-to-float v1, v0

    .line 44
    const v2, 0x3f19999a    # 0.6f

    .line 45
    .line 46
    .line 47
    int-to-float v3, p3

    .line 48
    mul-float v3, v3, v2

    .line 49
    .line 50
    add-float/2addr v1, v3

    .line 51
    add-int/2addr p2, p3

    .line 52
    int-to-float p2, p2

    .line 53
    int-to-float v0, v0

    .line 54
    const v2, 0x40266666    # 2.6f

    .line 55
    .line 56
    .line 57
    int-to-float p3, p3

    .line 58
    mul-float p3, p3, v2

    .line 59
    .line 60
    add-float/2addr v0, p3

    .line 61
    invoke-direct {p1, p4, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->j:Landroid/graphics/RectF;

    .line 65
    .line 66
    new-instance p1, Landroid/graphics/RectF;

    .line 67
    .line 68
    iget p2, p0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 69
    .line 70
    iget p3, p0, Lmoe/codeest/enviews/ENPlayView;->e:I

    .line 71
    .line 72
    div-int/lit8 p4, p3, 0x2

    .line 73
    .line 74
    sub-int p4, p2, p4

    .line 75
    .line 76
    int-to-float p4, p4

    .line 77
    iget v0, p0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 78
    .line 79
    iget v1, p0, Lmoe/codeest/enviews/ENPlayView;->f:I

    .line 80
    .line 81
    div-int/lit8 v2, v1, 0x2

    .line 82
    .line 83
    sub-int v2, v0, v2

    .line 84
    .line 85
    int-to-float v2, v2

    .line 86
    div-int/lit8 p3, p3, 0x2

    .line 87
    .line 88
    add-int/2addr p2, p3

    .line 89
    int-to-float p2, p2

    .line 90
    div-int/lit8 v1, v1, 0x2

    .line 91
    .line 92
    add-int/2addr v0, v1

    .line 93
    int-to-float p3, v0

    .line 94
    invoke-direct {p1, p4, v2, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->k:Landroid/graphics/RectF;

    .line 98
    .line 99
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->m:Landroid/graphics/Path;

    .line 100
    .line 101
    iget p2, p0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 102
    .line 103
    iget p3, p0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 104
    .line 105
    sub-int/2addr p2, p3

    .line 106
    int-to-float p2, p2

    .line 107
    iget p4, p0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 108
    .line 109
    int-to-float p4, p4

    .line 110
    int-to-float p3, p3

    .line 111
    const v0, 0x3fe66666    # 1.8f

    .line 112
    .line 113
    .line 114
    mul-float p3, p3, v0

    .line 115
    .line 116
    add-float/2addr p4, p3

    .line 117
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->m:Landroid/graphics/Path;

    .line 121
    .line 122
    iget p2, p0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 123
    .line 124
    iget p3, p0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 125
    .line 126
    sub-int/2addr p2, p3

    .line 127
    int-to-float p2, p2

    .line 128
    iget p4, p0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 129
    .line 130
    int-to-float p4, p4

    .line 131
    int-to-float p3, p3

    .line 132
    mul-float p3, p3, v0

    .line 133
    .line 134
    sub-float/2addr p4, p3

    .line 135
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->m:Landroid/graphics/Path;

    .line 139
    .line 140
    iget p2, p0, Lmoe/codeest/enviews/ENPlayView;->g:I

    .line 141
    .line 142
    iget p3, p0, Lmoe/codeest/enviews/ENPlayView;->i:I

    .line 143
    .line 144
    add-int/2addr p2, p3

    .line 145
    int-to-float p2, p2

    .line 146
    iget p3, p0, Lmoe/codeest/enviews/ENPlayView;->h:I

    .line 147
    .line 148
    int-to-float p3, p3

    .line 149
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->m:Landroid/graphics/Path;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->o:Landroid/graphics/PathMeasure;

    .line 158
    .line 159
    iget-object p2, p0, Lmoe/codeest/enviews/ENPlayView;->m:Landroid/graphics/Path;

    .line 160
    .line 161
    const/4 p3, 0x0

    .line 162
    invoke-virtual {p1, p2, p3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lmoe/codeest/enviews/ENPlayView;->o:Landroid/graphics/PathMeasure;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    iput p1, p0, Lmoe/codeest/enviews/ENPlayView;->p:F

    .line 172
    .line 173
    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmoe/codeest/enviews/ENPlayView;->q:I

    .line 2
    .line 3
    return-void
.end method
