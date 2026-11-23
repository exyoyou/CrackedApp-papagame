.class public Lcom/join/mgps/customview/CubeRotateView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final m:I = 0x5a


# instance fields
.field private b:Landroid/graphics/Camera;

.field private c:Landroid/graphics/Matrix;

.field private d:Landroid/view/animation/BaseInterpolator;

.field private e:J

.field private f:J

.field private g:Ljava/util/Timer;

.field private h:Z

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Z


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
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView;->d:Landroid/view/animation/BaseInterpolator;

    const-wide/16 v0, 0xbb8

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/customview/CubeRotateView;->e:J

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->h:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/CubeRotateView;->i:F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView;->d:Landroid/view/animation/BaseInterpolator;

    const-wide/16 p1, 0xbb8

    .line 11
    iput-wide p1, p0, Lcom/join/mgps/customview/CubeRotateView;->e:J

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->h:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 13
    iput p2, p0, Lcom/join/mgps/customview/CubeRotateView;->i:F

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 15
    iput-boolean p2, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 16
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->l:Z

    .line 17
    invoke-direct {p0}, Lcom/join/mgps/customview/CubeRotateView;->f()V

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

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView;->d:Landroid/view/animation/BaseInterpolator;

    const-wide/16 p1, 0xbb8

    .line 20
    iput-wide p1, p0, Lcom/join/mgps/customview/CubeRotateView;->e:J

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->h:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    iput p2, p0, Lcom/join/mgps/customview/CubeRotateView;->i:F

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 24
    iput-boolean p2, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 25
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->l:Z

    .line 26
    invoke-direct {p0}, Lcom/join/mgps/customview/CubeRotateView;->f()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CubeRotateView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CubeRotateView;->i:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/join/mgps/customview/CubeRotateView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 2
    .line 3
    return p1
.end method

.method private c(Landroid/graphics/Canvas;D)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "interpolation"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    iget-boolean v5, v0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawingTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    const-wide v8, -0x3fa9800000000000L    # -90.0

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    mul-double v8, v8, p2

    .line 51
    .line 52
    double-to-float v8, v8

    .line 53
    iget-object v9, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 54
    .line 55
    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 56
    .line 57
    .line 58
    iget-object v9, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 59
    .line 60
    int-to-double v10, v4

    .line 61
    mul-double v12, p2, v10

    .line 62
    .line 63
    sub-double/2addr v10, v12

    .line 64
    double-to-float v10, v10

    .line 65
    const/4 v11, 0x0

    .line 66
    invoke-virtual {v9, v10, v11, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 67
    .line 68
    .line 69
    iget-object v9, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 70
    .line 71
    invoke-virtual {v9, v8}, Landroid/graphics/Camera;->rotateY(F)V

    .line 72
    .line 73
    .line 74
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 75
    .line 76
    iget-object v9, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 77
    .line 78
    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 79
    .line 80
    .line 81
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 82
    .line 83
    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 84
    .line 85
    .line 86
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 87
    .line 88
    neg-int v9, v4

    .line 89
    int-to-float v10, v9

    .line 90
    neg-int v12, v5

    .line 91
    div-int/lit8 v12, v12, 0x2

    .line 92
    .line 93
    int-to-float v12, v12

    .line 94
    invoke-virtual {v8, v10, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 95
    .line 96
    .line 97
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 98
    .line 99
    div-int/lit8 v5, v5, 0x2

    .line 100
    .line 101
    int-to-float v5, v5

    .line 102
    invoke-virtual {v8, v11, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    .line 107
    .line 108
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 109
    .line 110
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    .line 118
    .line 119
    const-wide v13, 0x4056800000000000L    # 90.0

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    mul-double v15, p2, v13

    .line 125
    .line 126
    sub-double/2addr v13, v15

    .line 127
    double-to-float v2, v13

    .line 128
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 129
    .line 130
    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 131
    .line 132
    .line 133
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 134
    .line 135
    int-to-double v9, v9

    .line 136
    mul-double v9, v9, p2

    .line 137
    .line 138
    double-to-float v9, v9

    .line 139
    invoke-virtual {v8, v9, v11, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 140
    .line 141
    .line 142
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 143
    .line 144
    invoke-virtual {v8, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 148
    .line 149
    iget-object v8, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 150
    .line 151
    invoke-virtual {v2, v8}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 157
    .line 158
    .line 159
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 160
    .line 161
    int-to-float v4, v4

    .line 162
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 163
    .line 164
    .line 165
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 166
    .line 167
    invoke-virtual {v2, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 168
    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    .line 172
    .line 173
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method private d(Landroid/graphics/Canvas;D)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "interpolation"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    iget-boolean v5, v0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawingTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    const-wide v8, 0x4056800000000000L    # 90.0

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    mul-double v8, v8, p2

    .line 51
    .line 52
    double-to-float v10, v8

    .line 53
    iget-object v11, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 54
    .line 55
    invoke-virtual {v11}, Landroid/graphics/Camera;->save()V

    .line 56
    .line 57
    .line 58
    iget-object v11, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 59
    .line 60
    int-to-double v12, v5

    .line 61
    mul-double v12, v12, p2

    .line 62
    .line 63
    double-to-float v14, v12

    .line 64
    const/4 v15, 0x0

    .line 65
    invoke-virtual {v11, v15, v14, v15}, Landroid/graphics/Camera;->translate(FFF)V

    .line 66
    .line 67
    .line 68
    iget-object v11, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 69
    .line 70
    const/high16 v14, 0x40000000    # 2.0f

    .line 71
    .line 72
    mul-float v10, v10, v14

    .line 73
    .line 74
    const/high16 v16, 0x40400000    # 3.0f

    .line 75
    .line 76
    div-float v10, v10, v16

    .line 77
    .line 78
    invoke-virtual {v11, v10}, Landroid/graphics/Camera;->rotateX(F)V

    .line 79
    .line 80
    .line 81
    iget-object v10, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 82
    .line 83
    iget-object v11, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 84
    .line 85
    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 86
    .line 87
    .line 88
    iget-object v10, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 89
    .line 90
    invoke-virtual {v10}, Landroid/graphics/Camera;->restore()V

    .line 91
    .line 92
    .line 93
    iget-object v10, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 94
    .line 95
    neg-int v11, v4

    .line 96
    div-int/lit8 v11, v11, 0x2

    .line 97
    .line 98
    int-to-float v11, v11

    .line 99
    neg-int v14, v5

    .line 100
    int-to-float v15, v14

    .line 101
    invoke-virtual {v10, v11, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 102
    .line 103
    .line 104
    iget-object v10, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 105
    .line 106
    div-int/lit8 v4, v4, 0x2

    .line 107
    .line 108
    int-to-float v4, v4

    .line 109
    int-to-float v5, v5

    .line 110
    invoke-virtual {v10, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    .line 115
    .line 116
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 117
    .line 118
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    .line 126
    .line 127
    const-wide v17, -0x3fa9800000000000L    # -90.0

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    add-double v8, v8, v17

    .line 133
    .line 134
    double-to-float v2, v8

    .line 135
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 136
    .line 137
    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 138
    .line 139
    .line 140
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 141
    .line 142
    int-to-double v8, v14

    .line 143
    add-double/2addr v8, v12

    .line 144
    double-to-float v8, v8

    .line 145
    const/4 v9, 0x0

    .line 146
    invoke-virtual {v5, v9, v8, v9}, Landroid/graphics/Camera;->translate(FFF)V

    .line 147
    .line 148
    .line 149
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 150
    .line 151
    const/high16 v8, 0x40000000    # 2.0f

    .line 152
    .line 153
    mul-float v2, v2, v8

    .line 154
    .line 155
    div-float v2, v2, v16

    .line 156
    .line 157
    invoke-virtual {v5, v2}, Landroid/graphics/Camera;->rotateX(F)V

    .line 158
    .line 159
    .line 160
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 161
    .line 162
    iget-object v5, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 163
    .line 164
    invoke-virtual {v2, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 165
    .line 166
    .line 167
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 170
    .line 171
    .line 172
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 173
    .line 174
    invoke-virtual {v2, v4, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 175
    .line 176
    .line 177
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 178
    .line 179
    invoke-virtual {v2, v11, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 183
    .line 184
    .line 185
    iget-object v2, v0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method private e(Landroid/graphics/Canvas;IJF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "screen",
            "drawingTime",
            "angle"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int v1, p2, v0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int v3, v2, v0

    .line 12
    .line 13
    if-gt v1, v3, :cond_3

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    if-ge v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    int-to-float v5, v5

    .line 33
    div-float v5, p5, v5

    .line 34
    .line 35
    mul-float v4, v4, v5

    .line 36
    .line 37
    int-to-float p2, p2

    .line 38
    mul-float p2, p2, p5

    .line 39
    .line 40
    sub-float/2addr v4, p2

    .line 41
    const/high16 p2, 0x42b40000    # 90.0f

    .line 42
    .line 43
    cmpl-float p2, v4, p2

    .line 44
    .line 45
    if-gtz p2, :cond_3

    .line 46
    .line 47
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 48
    .line 49
    cmpg-float p2, v4, p2

    .line 50
    .line 51
    if-gez p2, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    if-ge v1, v2, :cond_2

    .line 55
    .line 56
    int-to-float p2, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    int-to-float p2, v1

    .line 59
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    div-int/lit8 v0, v0, 0x2

    .line 64
    .line 65
    int-to-float v0, v0

    .line 66
    iget-object v1, p0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    neg-int v4, v4

    .line 81
    int-to-float v4, v4

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-virtual {v1, v5, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 84
    .line 85
    .line 86
    neg-float p5, p5

    .line 87
    invoke-virtual {v1, p5}, Landroid/graphics/Camera;->rotateX(F)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 94
    .line 95
    .line 96
    neg-float p5, v0

    .line 97
    neg-float v1, p2

    .line 98
    invoke-virtual {v2, p5, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, v3, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Camera;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/CubeRotateView;->b:Landroid/graphics/Camera;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/customview/CubeRotateView;->c:Landroid/graphics/Matrix;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/join/mgps/customview/CubeRotateView;->f:J

    .line 20
    .line 21
    new-instance v0, Ljava/util/Timer;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/customview/CubeRotateView;->g:Ljava/util/Timer;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
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
    iget-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/join/mgps/customview/CubeRotateView;->i:F

    .line 6
    .line 7
    float-to-double v0, v0

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/customview/CubeRotateView;->d(Landroid/graphics/Canvas;D)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->k:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [F

    .line 14
    .line 15
    fill-array-data v1, :array_0

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v2, 0x2bc

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/join/mgps/customview/CubeRotateView$b;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/CubeRotateView$b;-><init>(Lcom/join/mgps/customview/CubeRotateView;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/join/mgps/customview/CubeRotateView$c;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/CubeRotateView$c;-><init>(Lcom/join/mgps/customview/CubeRotateView;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    .line 50
    .line 51
    iget-boolean v2, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 52
    .line 53
    xor-int/2addr v0, v2

    .line 54
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->j:Z

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTimeAnim()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/customview/CubeRotateView;->l:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/CubeRotateView;->g:Ljava/util/Timer;

    .line 10
    .line 11
    new-instance v2, Lcom/join/mgps/customview/CubeRotateView$a;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lcom/join/mgps/customview/CubeRotateView$a;-><init>(Lcom/join/mgps/customview/CubeRotateView;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v3, 0x1388

    .line 17
    .line 18
    const-wide/16 v5, 0x1388

    .line 19
    .line 20
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
