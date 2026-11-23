.class public Lcom/join/mgps/customview/SlidingTabLayout5;
.super Lcom/join/mgps/customview/SlidingTabLayout1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayout5$c;,
        Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
    }
.end annotation


# instance fields
.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Landroid/os/Handler;

.field private P:Lcom/join/mgps/customview/SlidingTabLayout5$c;

.field private Q:I

.field private R:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

.field private S:I

.field private T:Ljava/lang/Runnable;


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

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;)V

    const v0, -0x98967f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->Q:I

    .line 3
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->R:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    const/16 v0, 0x32

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->S:I

    .line 5
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout5$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/SlidingTabLayout5$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout5;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->T:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout5;->q(Landroid/content/Context;)V

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

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, -0x98967f

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->Q:I

    .line 9
    sget-object p2, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->R:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    const/16 p2, 0x32

    .line 10
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->S:I

    .line 11
    new-instance p2, Lcom/join/mgps/customview/SlidingTabLayout5$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabLayout5$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout5;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->T:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout5;->q(Landroid/content/Context;)V

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
            "defStyle"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x98967f

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->Q:I

    .line 15
    sget-object p2, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->R:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    const/16 p2, 0x32

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->S:I

    .line 17
    new-instance p2, Lcom/join/mgps/customview/SlidingTabLayout5$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabLayout5$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout5;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->T:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout5;->q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic j(Lcom/join/mgps/customview/SlidingTabLayout5;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->Q:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/join/mgps/customview/SlidingTabLayout5;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->Q:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lcom/join/mgps/customview/SlidingTabLayout5;)Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->R:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/join/mgps/customview/SlidingTabLayout5;Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;)Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->R:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic n(Lcom/join/mgps/customview/SlidingTabLayout5;)Lcom/join/mgps/customview/SlidingTabLayout5$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->P:Lcom/join/mgps/customview/SlidingTabLayout5$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/customview/SlidingTabLayout5;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->O:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/customview/SlidingTabLayout5;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->S:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method protected b(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "resId"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout5;->c(ILandroid/view/View;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected c(ILandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "tab"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout5$a;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout5$a;-><init>(Lcom/join/mgps/customview/SlidingTabLayout5;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected d(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "position",
            "title"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x11

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 19
    .line 20
    .line 21
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const v1, 0x7f0713ac

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    int-to-float p2, p2

    .line 43
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout5;->c(ILandroid/view/View;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
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
    sub-float/2addr v3, v6

    .line 92
    mul-float v3, v3, v1

    .line 93
    .line 94
    add-float v1, v4, v3

    .line 95
    .line 96
    :cond_1
    sub-float v3, v1, v2

    .line 97
    .line 98
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->K:I

    .line 99
    .line 100
    int-to-float v4, v4

    .line 101
    sub-float/2addr v3, v4

    .line 102
    const/high16 v4, 0x40000000    # 2.0f

    .line 103
    .line 104
    div-float/2addr v3, v4

    .line 105
    float-to-int v3, v3

    .line 106
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->L:I

    .line 107
    .line 108
    sub-int v5, v0, v4

    .line 109
    .line 110
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->M:I

    .line 111
    .line 112
    sub-int/2addr v5, v6

    .line 113
    int-to-float v3, v3

    .line 114
    add-float v7, v2, v3

    .line 115
    .line 116
    int-to-float v8, v5

    .line 117
    sub-float v9, v1, v3

    .line 118
    .line 119
    add-int/2addr v5, v4

    .line 120
    int-to-float v10, v5

    .line 121
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->N:I

    .line 122
    .line 123
    int-to-float v11, v1

    .line 124
    int-to-float v12, v1

    .line 125
    iget-object v13, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 126
    .line 127
    move-object v6, p1

    .line 128
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

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
    const/4 v4, 0x0

    .line 139
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 140
    .line 141
    sub-int v1, v0, v1

    .line 142
    .line 143
    int-to-float v5, v1

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
    int-to-float v6, v1

    .line 151
    int-to-float v7, v0

    .line 152
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->k:Landroid/graphics/Paint;

    .line 153
    .line 154
    move-object v3, p1

    .line 155
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:Landroid/graphics/Paint;

    .line 159
    .line 160
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:I

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 167
    .line 168
    add-int/lit8 v2, v2, -0x1

    .line 169
    .line 170
    if-ge v1, v2, :cond_2

    .line 171
    .line 172
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroid/widget/LinearLayout;

    .line 173
    .line 174
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    int-to-float v5, v3

    .line 183
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 184
    .line 185
    int-to-float v6, v3

    .line 186
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    int-to-float v7, v2

    .line 191
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    .line 192
    .line 193
    sub-int v2, v0, v2

    .line 194
    .line 195
    int-to-float v8, v2

    .line 196
    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:Landroid/graphics/Paint;

    .line 197
    .line 198
    move-object v4, p1

    .line 199
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 200
    .line 201
    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_2
    :goto_1
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x4

    .line 15
    if-gt v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 2
    .line 3
    return v0
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
    if-ge v1, v2, :cond_2

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
    if-eqz v3, :cond_1

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
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->g:Landroidx/viewpager/widget/ViewPager;

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-ne v1, v3, :cond_0

    .line 45
    .line 46
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->C:Landroid/graphics/Typeface;

    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->C:Landroid/graphics/Typeface;

    .line 58
    .line 59
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 60
    .line 61
    .line 62
    :goto_1
    iget-boolean v3, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->q:Z

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 67
    .line 68
    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;->TOUCH_SCROLL:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->R:Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->P:Lcom/join/mgps/customview/SlidingTabLayout5$c;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout5$c;->a(Lcom/join/mgps/customview/SlidingTabLayout5$ScrollType;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->O:Landroid/os/Handler;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->T:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->O:Landroid/os/Handler;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->T:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    return p1
.end method

.method q(Landroid/content/Context;)V
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
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->p:Z

    .line 3
    .line 4
    const p1, -0xb8b00

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->m:I

    .line 8
    .line 9
    const p1, -0x575758

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->A:I

    .line 13
    .line 14
    const/high16 p1, -0x1000000

    .line 15
    .line 16
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->B:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->w:I

    .line 20
    .line 21
    new-instance v0, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout5;->setHandler(Landroid/os/Handler;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v1, 0x7f0713ac

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->y:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f07133d

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->K:I

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const v1, 0x7f0714f8

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->L:I

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const v1, 0x7f071645

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->M:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v1, 0x7f0713ab

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->N:I

    .line 113
    .line 114
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->u:I

    .line 115
    .line 116
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->O:Landroid/os/Handler;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/join/mgps/customview/SlidingTabLayout5$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5;->P:Lcom/join/mgps/customview/SlidingTabLayout5$c;

    .line 2
    .line 3
    return-void
.end method
