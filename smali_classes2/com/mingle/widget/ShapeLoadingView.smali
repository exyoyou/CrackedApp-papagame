.class public Lcom/mingle/widget/ShapeLoadingView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mingle/widget/ShapeLoadingView$Shape;
    }
.end annotation


# static fields
.field private static final n:F = 1.7320508f

.field private static final o:F = 0.25555554f


# instance fields
.field private b:Lcom/mingle/widget/ShapeLoadingView$Shape;

.field private c:Landroid/view/animation/Interpolator;

.field private d:Lcom/nineoldandroids/animation/e;

.field private e:I

.field private f:I

.field private g:I

.field private h:F

.field public i:Z

.field private j:Landroid/graphics/Paint;

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 3
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->c:Landroid/view/animation/Interpolator;

    .line 4
    new-instance p1, Lcom/nineoldandroids/animation/e;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/e;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->d:Lcom/nineoldandroids/animation/e;

    const p1, 0x3f0d6289

    .line 5
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->h:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 8
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 9
    invoke-direct {p0}, Lcom/mingle/widget/ShapeLoadingView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    sget-object p1, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 12
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->c:Landroid/view/animation/Interpolator;

    .line 13
    new-instance p1, Lcom/nineoldandroids/animation/e;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/e;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->d:Lcom/nineoldandroids/animation/e;

    const p1, 0x3f0d6289

    .line 14
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->h:F

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 17
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 18
    invoke-direct {p0}, Lcom/mingle/widget/ShapeLoadingView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget-object p1, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 21
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->c:Landroid/view/animation/Interpolator;

    .line 22
    new-instance p1, Lcom/nineoldandroids/animation/e;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/e;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->d:Lcom/nineoldandroids/animation/e;

    const p1, 0x3f0d6289

    .line 23
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->h:F

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 26
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    sget-object p1, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 29
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->c:Landroid/view/animation/Interpolator;

    .line 30
    new-instance p1, Lcom/nineoldandroids/animation/e;

    invoke-direct {p1}, Lcom/nineoldandroids/animation/e;-><init>()V

    iput-object p1, p0, Lcom/mingle/widget/ShapeLoadingView;->d:Lcom/nineoldandroids/animation/e;

    const p1, 0x3f0d6289

    .line 31
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->h:F

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 34
    iput p1, p0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 35
    invoke-direct {p0}, Lcom/mingle/widget/ShapeLoadingView;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget v2, Lcom/mingle/shapeloading/R$color;->triangle:I

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 28
    .line 29
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget v1, Lcom/mingle/shapeloading/R$color;->view_bg:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/mingle/widget/ShapeLoadingView;->e:I

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget v1, Lcom/mingle/shapeloading/R$color;->circle:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lcom/mingle/widget/ShapeLoadingView;->f:I

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lcom/mingle/widget/ShapeLoadingView;->g:I

    .line 78
    .line 79
    return-void
.end method

.method private c(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float v0, v0, p1

    .line 7
    .line 8
    return v0
.end method

.method private d(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float v0, v0, p1

    .line 7
    .line 8
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getShape()Lcom/mingle/widget/ShapeLoadingView$Shape;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v2, Lcom/mingle/widget/ShapeLoadingView$a;->a:[I

    .line 18
    .line 19
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    aget v2, v2, v3

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const v4, 0x3d8930a4

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/high16 v6, 0x40000000    # 2.0f

    .line 33
    .line 34
    const/high16 v7, 0x3f400000    # 0.75f

    .line 35
    .line 36
    const/high16 v8, 0x3f000000    # 0.5f

    .line 37
    .line 38
    const/high16 v9, 0x3f800000    # 1.0f

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    if-eq v2, v3, :cond_7

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-eq v2, v3, :cond_4

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    if-eq v2, v3, :cond_1

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_1
    iget-boolean v2, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    iget v2, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 56
    .line 57
    float-to-double v2, v2

    .line 58
    const-wide v6, 0x3fc3333333333333L    # 0.15

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    add-double/2addr v2, v6

    .line 64
    double-to-float v2, v2

    .line 65
    iput v2, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 66
    .line 67
    cmpl-float v2, v2, v9

    .line 68
    .line 69
    if-ltz v2, :cond_2

    .line 70
    .line 71
    sget-object v2, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_TRIANGLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 72
    .line 73
    iput-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 74
    .line 75
    iput-boolean v5, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    .line 76
    .line 77
    iput v9, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 78
    .line 79
    :cond_2
    iget-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->d:Lcom/nineoldandroids/animation/e;

    .line 80
    .line 81
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 82
    .line 83
    iget v4, v0, Lcom/mingle/widget/ShapeLoadingView;->g:I

    .line 84
    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->e:I

    .line 90
    .line 91
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v2, v3, v4, v5}, Lcom/nineoldandroids/animation/e;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 106
    .line 107
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    .line 109
    .line 110
    new-instance v2, Landroid/graphics/Path;

    .line 111
    .line 112
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 113
    .line 114
    .line 115
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 116
    .line 117
    mul-float v3, v3, v8

    .line 118
    .line 119
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {v2, v3, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 124
    .line 125
    .line 126
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 127
    .line 128
    mul-float v3, v3, v8

    .line 129
    .line 130
    sub-float v3, v9, v3

    .line 131
    .line 132
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    invoke-virtual {v2, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    .line 138
    .line 139
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 140
    .line 141
    iget v4, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 142
    .line 143
    mul-float v3, v3, v4

    .line 144
    .line 145
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 150
    .line 151
    sub-float/2addr v4, v5

    .line 152
    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 153
    .line 154
    mul-float v4, v4, v5

    .line 155
    .line 156
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    sub-float/2addr v5, v3

    .line 161
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    sub-float/2addr v6, v4

    .line 166
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    .line 168
    .line 169
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    add-float/2addr v5, v3

    .line 174
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    sub-float/2addr v3, v4

    .line 179
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 183
    .line 184
    .line 185
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 186
    .line 187
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_3
    iget-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 196
    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    sget v5, Lcom/mingle/shapeloading/R$color;->rect:I

    .line 202
    .line 203
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    .line 209
    .line 210
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    iput v2, v0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 215
    .line 216
    invoke-direct {v0, v7}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    iput v2, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 221
    .line 222
    new-instance v2, Landroid/graphics/Path;

    .line 223
    .line 224
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    .line 237
    .line 238
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    .line 248
    .line 249
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    .line 259
    .line 260
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 272
    .line 273
    .line 274
    iput v10, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 275
    .line 276
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 277
    .line 278
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_4
    iget-boolean v2, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    .line 284
    .line 285
    if-eqz v2, :cond_6

    .line 286
    .line 287
    iget v2, v0, Lcom/mingle/widget/ShapeLoadingView;->h:F

    .line 288
    .line 289
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 290
    .line 291
    add-float/2addr v2, v3

    .line 292
    float-to-double v3, v3

    .line 293
    const-wide v11, 0x3fbeb851eb851eb8L    # 0.12

    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    add-double/2addr v3, v11

    .line 299
    double-to-float v3, v3

    .line 300
    iput v3, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 301
    .line 302
    add-float v4, v2, v3

    .line 303
    .line 304
    const v7, 0x3ff33333    # 1.9f

    .line 305
    .line 306
    .line 307
    cmpl-float v4, v4, v7

    .line 308
    .line 309
    if-ltz v4, :cond_5

    .line 310
    .line 311
    sget-object v4, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_RECT:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 312
    .line 313
    iput-object v4, v0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 314
    .line 315
    iput-boolean v5, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    .line 316
    .line 317
    :cond_5
    iget-object v4, v0, Lcom/mingle/widget/ShapeLoadingView;->d:Lcom/nineoldandroids/animation/e;

    .line 318
    .line 319
    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->f:I

    .line 320
    .line 321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    iget v7, v0, Lcom/mingle/widget/ShapeLoadingView;->g:I

    .line 326
    .line 327
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v4, v3, v5, v7}, Lcom/nineoldandroids/animation/e;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    check-cast v3, Ljava/lang/Integer;

    .line 336
    .line 337
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    iget-object v4, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 342
    .line 343
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    .line 345
    .line 346
    new-instance v3, Landroid/graphics/Path;

    .line 347
    .line 348
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 360
    .line 361
    .line 362
    div-float/2addr v2, v6

    .line 363
    add-float v4, v2, v8

    .line 364
    .line 365
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 374
    .line 375
    .line 376
    move-result v14

    .line 377
    sub-float v2, v8, v2

    .line 378
    .line 379
    invoke-direct {v0, v2}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 380
    .line 381
    .line 382
    move-result v15

    .line 383
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 384
    .line 385
    .line 386
    move-result v16

    .line 387
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 388
    .line 389
    .line 390
    move-result v17

    .line 391
    move-object v11, v3

    .line 392
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 393
    .line 394
    .line 395
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 400
    .line 401
    .line 402
    move-result v13

    .line 403
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 404
    .line 405
    .line 406
    move-result v14

    .line 407
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 408
    .line 409
    .line 410
    move-result v15

    .line 411
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 412
    .line 413
    .line 414
    move-result v16

    .line 415
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 416
    .line 417
    .line 418
    move-result v17

    .line 419
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 420
    .line 421
    .line 422
    invoke-direct {v0, v2}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 423
    .line 424
    .line 425
    move-result v12

    .line 426
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 431
    .line 432
    .line 433
    move-result v14

    .line 434
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 435
    .line 436
    .line 437
    move-result v15

    .line 438
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 439
    .line 440
    .line 441
    move-result v16

    .line 442
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 443
    .line 444
    .line 445
    move-result v17

    .line 446
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 447
    .line 448
    .line 449
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 450
    .line 451
    .line 452
    move-result v12

    .line 453
    invoke-direct {v0, v2}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 454
    .line 455
    .line 456
    move-result v13

    .line 457
    invoke-direct {v0, v2}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 458
    .line 459
    .line 460
    move-result v14

    .line 461
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 462
    .line 463
    .line 464
    move-result v15

    .line 465
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 466
    .line 467
    .line 468
    move-result v16

    .line 469
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 470
    .line 471
    .line 472
    move-result v17

    .line 473
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 477
    .line 478
    .line 479
    iget-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 480
    .line 481
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_6
    iget-object v2, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 490
    .line 491
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    sget v4, Lcom/mingle/shapeloading/R$color;->circle:I

    .line 496
    .line 497
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    .line 503
    .line 504
    new-instance v2, Landroid/graphics/Path;

    .line 505
    .line 506
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 507
    .line 508
    .line 509
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->h:F

    .line 510
    .line 511
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 516
    .line 517
    .line 518
    move-result v5

    .line 519
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 520
    .line 521
    .line 522
    div-float/2addr v3, v6

    .line 523
    add-float v4, v3, v8

    .line 524
    .line 525
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 526
    .line 527
    .line 528
    move-result v12

    .line 529
    const/4 v13, 0x0

    .line 530
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 531
    .line 532
    .line 533
    move-result v14

    .line 534
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 535
    .line 536
    .line 537
    move-result v15

    .line 538
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 539
    .line 540
    .line 541
    move-result v16

    .line 542
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 543
    .line 544
    .line 545
    move-result v17

    .line 546
    move-object v11, v2

    .line 547
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 548
    .line 549
    .line 550
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 551
    .line 552
    .line 553
    move-result v12

    .line 554
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 555
    .line 556
    .line 557
    move-result v13

    .line 558
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 559
    .line 560
    .line 561
    move-result v14

    .line 562
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 563
    .line 564
    .line 565
    move-result v15

    .line 566
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 567
    .line 568
    .line 569
    move-result v16

    .line 570
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 571
    .line 572
    .line 573
    move-result v17

    .line 574
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 575
    .line 576
    .line 577
    sub-float v3, v8, v3

    .line 578
    .line 579
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 580
    .line 581
    .line 582
    move-result v12

    .line 583
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 584
    .line 585
    .line 586
    move-result v13

    .line 587
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 588
    .line 589
    .line 590
    move-result v14

    .line 591
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 592
    .line 593
    .line 594
    move-result v15

    .line 595
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 596
    .line 597
    .line 598
    move-result v16

    .line 599
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 600
    .line 601
    .line 602
    move-result v17

    .line 603
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 604
    .line 605
    .line 606
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 607
    .line 608
    .line 609
    move-result v12

    .line 610
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 611
    .line 612
    .line 613
    move-result v13

    .line 614
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 615
    .line 616
    .line 617
    move-result v14

    .line 618
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 619
    .line 620
    .line 621
    move-result v15

    .line 622
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 623
    .line 624
    .line 625
    move-result v16

    .line 626
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 627
    .line 628
    .line 629
    move-result v17

    .line 630
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 631
    .line 632
    .line 633
    iput v10, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 634
    .line 635
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 636
    .line 637
    .line 638
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 639
    .line 640
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_0

    .line 644
    .line 645
    :cond_7
    iget-boolean v2, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    .line 646
    .line 647
    if-eqz v2, :cond_9

    .line 648
    .line 649
    iget v2, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 650
    .line 651
    float-to-double v2, v2

    .line 652
    const-wide v11, 0x3fc49f4b8a420dc2L    # 0.1611113

    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    add-double/2addr v2, v11

    .line 658
    double-to-float v2, v2

    .line 659
    iput v2, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 660
    .line 661
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->d:Lcom/nineoldandroids/animation/e;

    .line 662
    .line 663
    iget v11, v0, Lcom/mingle/widget/ShapeLoadingView;->e:I

    .line 664
    .line 665
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 666
    .line 667
    .line 668
    move-result-object v11

    .line 669
    iget v12, v0, Lcom/mingle/widget/ShapeLoadingView;->f:I

    .line 670
    .line 671
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 672
    .line 673
    .line 674
    move-result-object v12

    .line 675
    invoke-virtual {v3, v2, v11, v12}, Lcom/nineoldandroids/animation/e;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    check-cast v2, Ljava/lang/Integer;

    .line 680
    .line 681
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 682
    .line 683
    .line 684
    move-result v2

    .line 685
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 686
    .line 687
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 688
    .line 689
    .line 690
    new-instance v2, Landroid/graphics/Path;

    .line 691
    .line 692
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 693
    .line 694
    .line 695
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 700
    .line 701
    .line 702
    move-result v11

    .line 703
    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 704
    .line 705
    .line 706
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 707
    .line 708
    cmpl-float v3, v3, v9

    .line 709
    .line 710
    if-ltz v3, :cond_8

    .line 711
    .line 712
    sget-object v3, Lcom/mingle/widget/ShapeLoadingView$Shape;->SHAPE_CIRCLE:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 713
    .line 714
    iput-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->b:Lcom/mingle/widget/ShapeLoadingView$Shape;

    .line 715
    .line 716
    iput-boolean v5, v0, Lcom/mingle/widget/ShapeLoadingView;->i:Z

    .line 717
    .line 718
    iput v9, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 719
    .line 720
    :cond_8
    iget v3, v0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 721
    .line 722
    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 723
    .line 724
    const v11, 0x3e82d82d

    .line 725
    .line 726
    .line 727
    mul-float v5, v5, v11

    .line 728
    .line 729
    invoke-direct {v0, v5}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 730
    .line 731
    .line 732
    move-result v5

    .line 733
    const v12, 0x3fddb3d7

    .line 734
    .line 735
    .line 736
    mul-float v5, v5, v12

    .line 737
    .line 738
    sub-float/2addr v3, v5

    .line 739
    iget v5, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 740
    .line 741
    iget v12, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 742
    .line 743
    mul-float v12, v12, v11

    .line 744
    .line 745
    invoke-direct {v0, v12}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 746
    .line 747
    .line 748
    move-result v12

    .line 749
    sub-float/2addr v5, v12

    .line 750
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 751
    .line 752
    .line 753
    move-result v9

    .line 754
    sub-float/2addr v9, v3

    .line 755
    const v12, 0x3f6ed9ec

    .line 756
    .line 757
    .line 758
    invoke-direct {v0, v12}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 759
    .line 760
    .line 761
    move-result v12

    .line 762
    invoke-direct {v0, v7}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 763
    .line 764
    .line 765
    move-result v13

    .line 766
    invoke-virtual {v2, v9, v5, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 767
    .line 768
    .line 769
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 770
    .line 771
    .line 772
    move-result v9

    .line 773
    iget v12, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 774
    .line 775
    mul-float v12, v12, v6

    .line 776
    .line 777
    mul-float v12, v12, v11

    .line 778
    .line 779
    add-float/2addr v12, v7

    .line 780
    invoke-direct {v0, v12}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 781
    .line 782
    .line 783
    move-result v6

    .line 784
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 785
    .line 786
    .line 787
    move-result v4

    .line 788
    invoke-direct {v0, v7}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 789
    .line 790
    .line 791
    move-result v7

    .line 792
    invoke-virtual {v2, v9, v6, v4, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 793
    .line 794
    .line 795
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 800
    .line 801
    .line 802
    move-result v6

    .line 803
    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 807
    .line 808
    .line 809
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 810
    .line 811
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 812
    .line 813
    .line 814
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 815
    .line 816
    .line 817
    goto :goto_0

    .line 818
    :cond_9
    new-instance v2, Landroid/graphics/Path;

    .line 819
    .line 820
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 821
    .line 822
    .line 823
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 824
    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    sget v5, Lcom/mingle/shapeloading/R$color;->triangle:I

    .line 830
    .line 831
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 836
    .line 837
    .line 838
    invoke-direct {v0, v8}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 839
    .line 840
    .line 841
    move-result v3

    .line 842
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 843
    .line 844
    .line 845
    move-result v4

    .line 846
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 847
    .line 848
    .line 849
    invoke-direct {v0, v9}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 850
    .line 851
    .line 852
    move-result v3

    .line 853
    const v4, 0x3f5db3d7

    .line 854
    .line 855
    .line 856
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 857
    .line 858
    .line 859
    move-result v5

    .line 860
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 861
    .line 862
    .line 863
    invoke-direct {v0, v10}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 864
    .line 865
    .line 866
    move-result v3

    .line 867
    invoke-direct {v0, v4}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 868
    .line 869
    .line 870
    move-result v4

    .line 871
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 872
    .line 873
    .line 874
    const v3, 0x3e912614

    .line 875
    .line 876
    .line 877
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->c(F)F

    .line 878
    .line 879
    .line 880
    move-result v3

    .line 881
    iput v3, v0, Lcom/mingle/widget/ShapeLoadingView;->k:F

    .line 882
    .line 883
    const/high16 v3, 0x3ec00000    # 0.375f

    .line 884
    .line 885
    invoke-direct {v0, v3}, Lcom/mingle/widget/ShapeLoadingView;->d(F)F

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    iput v3, v0, Lcom/mingle/widget/ShapeLoadingView;->l:F

    .line 890
    .line 891
    iput v10, v0, Lcom/mingle/widget/ShapeLoadingView;->m:F

    .line 892
    .line 893
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 894
    .line 895
    .line 896
    iget-object v3, v0, Lcom/mingle/widget/ShapeLoadingView;->j:Landroid/graphics/Paint;

    .line 897
    .line 898
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 899
    .line 900
    .line 901
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
