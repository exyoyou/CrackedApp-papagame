.class public Lcom/join/mgps/customview/SimpleViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final l:I = -0x1000000

.field private static final m:I = -0xb8b00


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:Landroid/widget/ScrollView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SimpleViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, -0xb8b00

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->d:I

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->f:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 6
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 7
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->f:Landroid/graphics/Paint;

    iget p2, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->d:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->f:Landroid/graphics/Paint;

    const/high16 p2, 0x41100000    # 9.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private a()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v1, v0

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_4

    .line 23
    .line 24
    const/high16 v3, 0x41600000    # 14.0f

    .line 25
    .line 26
    const/high16 v4, -0x1000000

    .line 27
    .line 28
    const/16 v5, 0x11

    .line 29
    .line 30
    const/high16 v6, 0x3f800000    # 1.0f

    .line 31
    .line 32
    const/4 v7, -0x1

    .line 33
    const/4 v8, 0x2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    if-eq v2, v9, :cond_2

    .line 38
    .line 39
    if-eq v2, v8, :cond_1

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_1
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    .line 45
    invoke-direct {v9, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49
    .line 50
    iget-object v6, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 61
    .line 62
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Ljava/lang/CharSequence;

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v4, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .line 91
    invoke-direct {v9, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .line 93
    .line 94
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 95
    .line 96
    iget-object v6, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    .line 100
    .line 101
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 107
    .line 108
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Ljava/lang/CharSequence;

    .line 115
    .line 116
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {v4, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 125
    .line 126
    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 130
    .line 131
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 136
    .line 137
    invoke-direct {v9, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    iput v6, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 141
    .line 142
    iget-object v6, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    .line 146
    .line 147
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 153
    .line 154
    iget-object v5, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Ljava/lang/CharSequence;

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    iget-object v4, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v4, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    .line 169
    .line 170
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    iget-object v3, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_4
    return-void
.end method


# virtual methods
.method public b(IF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "offset"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->c:I

    .line 6
    .line 7
    div-int/2addr v0, v1

    .line 8
    int-to-float v0, v0

    .line 9
    int-to-float p1, p1

    .line 10
    add-float/2addr p1, p2

    .line 11
    mul-float v0, v0, p1

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->e:F

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->e:F

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, -0x2

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:I

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "window"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/WindowManager;

    .line 34
    .line 35
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->c:I

    .line 44
    .line 45
    div-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:I

    .line 47
    .line 48
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:I

    .line 49
    .line 50
    int-to-double v1, v0

    .line 51
    const-wide v3, 0x3fc3333333333333L    # 0.15

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    mul-double v1, v1, v3

    .line 57
    .line 58
    double-to-int v1, v1

    .line 59
    int-to-float v6, v1

    .line 60
    const/4 v7, 0x0

    .line 61
    int-to-double v1, v0

    .line 62
    mul-double v1, v1, v3

    .line 63
    .line 64
    double-to-int v1, v1

    .line 65
    sub-int/2addr v0, v1

    .line 66
    int-to-float v8, v0

    .line 67
    const/4 v9, 0x0

    .line 68
    iget-object v10, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->f:Landroid/graphics/Paint;

    .line 69
    .line 70
    move-object v5, p1

    .line 71
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/ScrollView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/ScrollView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/ScrollView;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/ScrollView;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public getTv()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTv1()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTv2()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->c:I

    .line 5
    .line 6
    if-lez p2, :cond_0

    .line 7
    .line 8
    div-int/2addr p1, p2

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->g:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indicatorColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public setParentScrollView(Landroid/widget/ScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->h:Landroid/widget/ScrollView;

    .line 2
    .line 3
    return-void
.end method

.method public setTitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setTv(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tv"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public setTv1(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tv1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public setTv2(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tv2"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SimpleViewPagerIndicator;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method
