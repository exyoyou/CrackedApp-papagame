.class public Lcom/join/mgps/customview/SlidingTabLayout6;
.super Lcom/join/mgps/customview/SlidingTabLayout1;
.source "SourceFile"


# instance fields
.field protected K:I


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
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->K:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->K:I

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

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->K:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->K:I

    return-void
.end method


# virtual methods
.method protected e(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 18
    .line 19
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    int-to-float v2, v2

    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    mul-float v2, v2, v3

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    int-to-float v1, v1

    .line 46
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:F

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    cmpl-float v4, v4, v5

    .line 50
    .line 51
    if-lez v4, :cond_1

    .line 52
    .line 53
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 54
    .line 55
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 56
    .line 57
    add-int/lit8 v5, v5, -0x1

    .line 58
    .line 59
    if-ge v4, v5, :cond_1

    .line 60
    .line 61
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    int-to-float v5, v5

    .line 74
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    int-to-float v4, v4

    .line 79
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->j:F

    .line 80
    .line 81
    mul-float v5, v5, v6

    .line 82
    .line 83
    sub-float v7, v3, v6

    .line 84
    .line 85
    mul-float v7, v7, v2

    .line 86
    .line 87
    add-float v2, v5, v7

    .line 88
    .line 89
    mul-float v4, v4, v6

    .line 90
    .line 91
    sub-float v5, v3, v6

    .line 92
    .line 93
    mul-float v5, v5, v1

    .line 94
    .line 95
    add-float v1, v4, v5

    .line 96
    .line 97
    :cond_1
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:F

    .line 98
    .line 99
    sub-float/2addr v3, v4

    .line 100
    sub-float v4, v1, v2

    .line 101
    .line 102
    mul-float v3, v3, v4

    .line 103
    .line 104
    const/high16 v4, 0x40000000    # 2.0f

    .line 105
    .line 106
    div-float/2addr v3, v4

    .line 107
    float-to-int v3, v3

    .line 108
    new-instance v4, Landroid/graphics/RectF;

    .line 109
    .line 110
    int-to-float v3, v3

    .line 111
    add-float/2addr v2, v3

    .line 112
    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->s:I

    .line 113
    .line 114
    sub-int v5, v0, v5

    .line 115
    .line 116
    int-to-float v5, v5

    .line 117
    sub-float/2addr v1, v3

    .line 118
    int-to-float v10, v0

    .line 119
    invoke-direct {v4, v2, v5, v1, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 120
    .line 121
    .line 122
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout6;->K:I

    .line 123
    .line 124
    int-to-float v2, v1

    .line 125
    int-to-float v1, v1

    .line 126
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 127
    .line 128
    invoke-virtual {p1, v4, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 132
    .line 133
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->n:I

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 140
    .line 141
    sub-int v1, v0, v1

    .line 142
    .line 143
    int-to-float v8, v1

    .line 144
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 145
    .line 146
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    int-to-float v9, v1

    .line 151
    iget-object v11, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 152
    .line 153
    move-object v6, p1

    .line 154
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:Landroid/graphics/Paint;

    .line 158
    .line 159
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 166
    .line 167
    add-int/lit8 v2, v2, -0x1

    .line 168
    .line 169
    if-ge v1, v2, :cond_2

    .line 170
    .line 171
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    int-to-float v5, v3

    .line 182
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 183
    .line 184
    int-to-float v6, v3

    .line 185
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    int-to-float v7, v2

    .line 190
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 191
    .line 192
    sub-int v2, v0, v2

    .line 193
    .line 194
    int-to-float v8, v2

    .line 195
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:Landroid/graphics/Paint;

    .line 196
    .line 197
    move-object v4, p1

    .line 198
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    .line 200
    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_2
    :goto_1
    return-void
.end method

.method protected i()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->F:I

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    .line 17
    .line 18
    instance-of v3, v2, Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    check-cast v2, Landroid/widget/TextView;

    .line 23
    .line 24
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    .line 25
    .line 26
    int-to-float v3, v3

    .line 27
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->C:Landroid/graphics/Typeface;

    .line 31
    .line 32
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->D:I

    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 35
    .line 36
    .line 37
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ne v1, v3, :cond_0

    .line 59
    .line 60
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    .line 71
    .line 72
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    .line 73
    .line 74
    int-to-float v3, v3

    .line 75
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->H:Ljava/util/List;

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 83
    .line 84
    if-ne v1, v3, :cond_1

    .line 85
    .line 86
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    .line 97
    .line 98
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->z:I

    .line 99
    .line 100
    int-to-float v3, v3

    .line 101
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 102
    .line 103
    .line 104
    :cond_1
    iget-boolean v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->q:Z

    .line 105
    .line 106
    if-eqz v3, :cond_2

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 109
    .line 110
    .line 111
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    return-void
.end method
