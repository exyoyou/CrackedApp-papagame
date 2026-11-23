.class public Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# instance fields
.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private final r:F

.field private final s:F

.field private t:I

.field private final u:Lb3/a;

.field public v:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->n:Z

    .line 6
    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    iput v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 13
    .line 14
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->r:F

    .line 15
    .line 16
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->s:F

    .line 17
    .line 18
    new-instance p1, Lb3/a;

    .line 19
    .line 20
    invoke-direct {p1}, Lb3/a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->u:Lb3/a;

    .line 24
    .line 25
    return-void
.end method

.method private g(Landroid/view/View;La3/a;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->l(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    invoke-virtual {p2}, La3/a;->c()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    sub-float/2addr v2, v1

    .line 17
    mul-float v0, v0, v2

    .line 18
    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    div-float/2addr v0, v1

    .line 22
    float-to-int v0, v0

    .line 23
    invoke-virtual {p2}, La3/a;->d()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sub-int v4, v1, v0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-virtual {p2}, La3/a;->d()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 38
    .line 39
    add-int/2addr v1, v2

    .line 40
    sub-int v6, v1, v0

    .line 41
    .line 42
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->p:I

    .line 43
    .line 44
    add-int v7, v5, v0

    .line 45
    .line 46
    move-object v2, p0

    .line 47
    move-object v3, p1

    .line 48
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, La3/a;->c()F

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, La3/a;->c()F

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private k(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    neg-int v0, v0

    .line 15
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 16
    .line 17
    mul-int v0, v0, v1

    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 25
    .line 26
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 31
    .line 32
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 33
    .line 34
    mul-int v0, v0, v1

    .line 35
    .line 36
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method private l(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 6
    .line 7
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 8
    .line 9
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 13
    .line 14
    sub-int/2addr v1, v2

    .line 15
    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget v3, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->p:I

    .line 22
    .line 23
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    .line 25
    sub-int/2addr v3, v4

    .line 26
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 27
    .line 28
    sub-int/2addr v3, v0

    .line 29
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private m()F
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 8
    .line 9
    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 10
    .line 11
    iget v3, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 12
    .line 13
    mul-int v2, v2, v3

    .line 14
    .line 15
    add-int/2addr v0, v2

    .line 16
    int-to-float v0, v0

    .line 17
    mul-float v0, v0, v1

    .line 18
    .line 19
    int-to-float v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    mul-float v0, v0, v1

    .line 25
    .line 26
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    :goto_0
    div-float/2addr v0, v1

    .line 30
    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 6
    .line 7
    mul-int v0, v0, p1

    .line 8
    .line 9
    iget p1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 10
    .line 11
    add-int/2addr v0, p1

    .line 12
    return v0

    .line 13
    :cond_0
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->e(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    mul-int v0, v0, p1

    .line 22
    .line 23
    iget p1, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 24
    .line 25
    sub-int/2addr v0, p1

    .line 26
    return v0
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    sub-int/2addr v0, p1

    .line 6
    return v0
.end method

.method public canScrollHorizontally()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    sub-int/2addr v0, p1

    .line 6
    return v0
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->m()F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    float-to-double v2, v2

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    double-to-int v2, v2

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-boolean v4, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    iget v6, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 25
    .line 26
    sub-int/2addr v6, v5

    .line 27
    iget v7, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 28
    .line 29
    mul-int v6, v6, v7

    .line 30
    .line 31
    iget v8, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 32
    .line 33
    add-int/2addr v6, v8

    .line 34
    rem-int/2addr v6, v7

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget v6, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 37
    .line 38
    iget v7, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 39
    .line 40
    rem-int/2addr v6, v7

    .line 41
    :goto_0
    int-to-float v7, v6

    .line 42
    const/high16 v8, 0x3f800000    # 1.0f

    .line 43
    .line 44
    mul-float v7, v7, v8

    .line 45
    .line 46
    iget v9, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 47
    .line 48
    int-to-float v10, v9

    .line 49
    div-float/2addr v7, v10

    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    sub-int v11, v3, v9

    .line 55
    .line 56
    :goto_1
    if-eqz v4, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget v9, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 64
    .line 65
    sub-int v9, v4, v9

    .line 66
    .line 67
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v12, v2, -0x1

    .line 73
    .line 74
    const/4 v13, 0x1

    .line 75
    :goto_3
    if-ltz v12, :cond_8

    .line 76
    .line 77
    div-int/lit8 v14, v9, 0x2

    .line 78
    .line 79
    int-to-double v14, v14

    .line 80
    iget v5, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->s:F

    .line 81
    .line 82
    move/from16 v17, v9

    .line 83
    .line 84
    float-to-double v8, v5

    .line 85
    move/from16 v18, v11

    .line 86
    .line 87
    int-to-double v10, v13

    .line 88
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 89
    .line 90
    .line 91
    move-result-wide v8

    .line 92
    mul-double v14, v14, v8

    .line 93
    .line 94
    iget-boolean v8, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 95
    .line 96
    if-eqz v8, :cond_3

    .line 97
    .line 98
    neg-float v8, v7

    .line 99
    goto :goto_4

    .line 100
    :cond_3
    move v8, v7

    .line 101
    :goto_4
    move/from16 v11, v18

    .line 102
    .line 103
    int-to-double v9, v11

    .line 104
    move v11, v6

    .line 105
    float-to-double v5, v8

    .line 106
    mul-double v5, v5, v14

    .line 107
    .line 108
    sub-double v5, v9, v5

    .line 109
    .line 110
    double-to-int v5, v5

    .line 111
    iget v6, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->s:F

    .line 112
    .line 113
    move v8, v2

    .line 114
    float-to-double v1, v6

    .line 115
    add-int/lit8 v6, v13, -0x1

    .line 116
    .line 117
    move/from16 v20, v11

    .line 118
    .line 119
    move/from16 v19, v12

    .line 120
    .line 121
    int-to-double v11, v6

    .line 122
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    iget v6, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->s:F

    .line 127
    .line 128
    const/high16 v16, 0x3f800000    # 1.0f

    .line 129
    .line 130
    sub-float v6, v16, v6

    .line 131
    .line 132
    mul-float v6, v6, v7

    .line 133
    .line 134
    sub-float v6, v16, v6

    .line 135
    .line 136
    move-wide/from16 v21, v11

    .line 137
    .line 138
    float-to-double v11, v6

    .line 139
    mul-double v1, v1, v11

    .line 140
    .line 141
    double-to-float v1, v1

    .line 142
    int-to-float v2, v5

    .line 143
    mul-float v2, v2, v16

    .line 144
    .line 145
    int-to-float v6, v3

    .line 146
    div-float/2addr v2, v6

    .line 147
    new-instance v6, La3/a;

    .line 148
    .line 149
    invoke-direct {v6, v5, v1, v7, v2}, La3/a;-><init>(IFFF)V

    .line 150
    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    invoke-virtual {v4, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    iget-boolean v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 157
    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_4
    neg-double v14, v14

    .line 162
    :goto_5
    add-double/2addr v9, v14

    .line 163
    double-to-int v11, v9

    .line 164
    if-eqz v2, :cond_5

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->i()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-le v11, v2, :cond_6

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_5
    if-gtz v11, :cond_6

    .line 174
    .line 175
    :goto_6
    const/16 v18, 0x1

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_6
    const/16 v18, 0x0

    .line 179
    .line 180
    :goto_7
    if-eqz v18, :cond_7

    .line 181
    .line 182
    int-to-double v9, v11

    .line 183
    sub-double/2addr v9, v14

    .line 184
    double-to-int v2, v9

    .line 185
    invoke-virtual {v6, v2}, La3/a;->i(I)V

    .line 186
    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-virtual {v6, v2}, La3/a;->g(F)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, La3/a;->d()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    div-int/2addr v2, v3

    .line 197
    int-to-float v2, v2

    .line 198
    invoke-virtual {v6, v2}, La3/a;->f(F)V

    .line 199
    .line 200
    .line 201
    iget v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->s:F

    .line 202
    .line 203
    float-to-double v9, v2

    .line 204
    move-wide/from16 v11, v21

    .line 205
    .line 206
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    double-to-float v2, v9

    .line 211
    invoke-virtual {v6, v2}, La3/a;->h(F)V

    .line 212
    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_7
    add-int/lit8 v12, v19, -0x1

    .line 216
    .line 217
    add-int/lit8 v13, v13, 0x1

    .line 218
    .line 219
    move-object/from16 v1, p1

    .line 220
    .line 221
    move v2, v8

    .line 222
    move/from16 v9, v17

    .line 223
    .line 224
    move/from16 v6, v20

    .line 225
    .line 226
    const/4 v5, 0x1

    .line 227
    const/high16 v8, 0x3f800000    # 1.0f

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_8
    move v8, v2

    .line 232
    move/from16 v20, v6

    .line 233
    .line 234
    const/4 v1, 0x0

    .line 235
    :goto_8
    iget v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 236
    .line 237
    if-ge v8, v2, :cond_a

    .line 238
    .line 239
    iget-boolean v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 240
    .line 241
    if-eqz v2, :cond_9

    .line 242
    .line 243
    iget v2, v0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 244
    .line 245
    sub-int v6, v20, v2

    .line 246
    .line 247
    goto :goto_9

    .line 248
    :cond_9
    sub-int v6, v3, v20

    .line 249
    .line 250
    :goto_9
    new-instance v2, La3/a;

    .line 251
    .line 252
    int-to-float v5, v6

    .line 253
    const/high16 v9, 0x3f800000    # 1.0f

    .line 254
    .line 255
    mul-float v5, v5, v9

    .line 256
    .line 257
    int-to-float v3, v3

    .line 258
    div-float/2addr v5, v3

    .line 259
    invoke-direct {v2, v6, v9, v7, v5}, La3/a;-><init>(IFFF)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, La3/a;->e()La3/a;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move v2, v8

    .line 270
    goto :goto_a

    .line 271
    :cond_a
    add-int/lit8 v2, v8, -0x1

    .line 272
    .line 273
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    add-int/lit8 v5, v3, -0x1

    .line 278
    .line 279
    sub-int v5, v2, v5

    .line 280
    .line 281
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    const/4 v7, 0x1

    .line 286
    sub-int/2addr v6, v7

    .line 287
    :goto_b
    if-ltz v6, :cond_d

    .line 288
    .line 289
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 294
    .line 295
    .line 296
    move-result v8

    .line 297
    invoke-virtual {v0, v8}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->e(I)I

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    if-gt v8, v2, :cond_c

    .line 302
    .line 303
    if-ge v8, v5, :cond_b

    .line 304
    .line 305
    goto :goto_c

    .line 306
    :cond_b
    move-object/from16 v8, p1

    .line 307
    .line 308
    goto :goto_d

    .line 309
    :cond_c
    :goto_c
    move-object/from16 v8, p1

    .line 310
    .line 311
    invoke-virtual {v0, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 312
    .line 313
    .line 314
    :goto_d
    add-int/lit8 v6, v6, -0x1

    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_d
    move-object/from16 v8, p1

    .line 318
    .line 319
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 320
    .line 321
    .line 322
    const/4 v10, 0x0

    .line 323
    :goto_e
    if-ge v10, v3, :cond_e

    .line 324
    .line 325
    add-int v1, v5, v10

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b(I)I

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    check-cast v2, La3/a;

    .line 340
    .line 341
    invoke-direct {v0, v1, v2}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->g(Landroid/view/View;La3/a;)V

    .line 342
    .line 343
    .line 344
    add-int/lit8 v10, v10, 0x1

    .line 345
    .line 346
    goto :goto_e

    .line 347
    :cond_e
    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public h(IF)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->n:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 7
    .line 8
    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 9
    .line 10
    rem-int/2addr v0, v2

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->m()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez p1, :cond_1

    .line 19
    .line 20
    add-float/2addr v0, p2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    sub-float/2addr p1, p2

    .line 25
    add-float/2addr v0, p1

    .line 26
    :goto_0
    float-to-int p1, v0

    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->b(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_2
    return v1
.end method

.method public i()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public j()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->u:Lb3/a;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->n:Z

    .line 18
    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->j()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->p:I

    .line 26
    .line 27
    int-to-float p2, p2

    .line 28
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->r:F

    .line 29
    .line 30
    div-float/2addr p2, v0

    .line 31
    float-to-int p2, p2

    .line 32
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->n:Z

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 42
    .line 43
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 44
    .line 45
    invoke-direct {p0, p2}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->k(I)I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    iget-boolean p3, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->v:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    neg-int p1, p1

    .line 6
    :cond_0
    iget p3, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 7
    .line 8
    add-int/2addr p3, p1

    .line 9
    invoke-direct {p0, p3}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->k(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 16
    .line 17
    .line 18
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 19
    .line 20
    sub-int/2addr p2, p3

    .line 21
    add-int/2addr p2, p1

    .line 22
    return p2
.end method

.method public scrollToPosition(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->t:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->o:I

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->e(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    mul-int v0, v0, p1

    .line 16
    .line 17
    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/skidright/SkidRightLayoutManager;->q:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
