.class public Lcom/join/mgps/customview/MStarBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/MStarBar$a;
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lcom/join/mgps/customview/MStarBar$a;

.field private i:Landroid/graphics/Paint;

.field private j:Z


# direct methods
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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/MStarBar;->j:Z

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/MStarBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 8
    iput p3, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    const/4 p3, 0x5

    .line 9
    iput p3, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    const/4 p3, 0x0

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/join/mgps/customview/MStarBar;->j:Z

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/MStarBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 6
    .line 7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/graphics/Canvas;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p1, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 3
    .line 4
    .line 5
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->RatingBar:[I

    .line 6
    .line 7
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 p2, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    float-to-int p2, p2

    .line 18
    iput p2, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    .line 19
    .line 20
    const/high16 p2, 0x41a00000    # 20.0f

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    float-to-int p2, p2

    .line 28
    iput p2, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput p2, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    .line 35
    .line 36
    const/4 p2, 0x3

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/join/mgps/customview/MStarBar;->g:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    iput-boolean p2, p0, Lcom/join/mgps/customview/MStarBar;->j:Z

    .line 49
    .line 50
    const/4 p2, 0x4

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/MStarBar;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Lcom/join/mgps/customview/MStarBar;->f:Landroid/graphics/Bitmap;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .line 63
    .line 64
    new-instance p1, Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/join/mgps/customview/MStarBar;->i:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/customview/MStarBar;->i:Landroid/graphics/Paint;

    .line 75
    .line 76
    new-instance p2, Landroid/graphics/BitmapShader;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/MStarBar;->f:Landroid/graphics/Bitmap;

    .line 79
    .line 80
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 81
    .line 82
    invoke-direct {p2, v0, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 86
    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public getStarMark()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
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
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/MStarBar;->f:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/MStarBar;->g:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    .line 17
    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/customview/MStarBar;->g:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    iget v3, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    .line 23
    .line 24
    iget v4, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 25
    .line 26
    add-int v5, v3, v4

    .line 27
    .line 28
    mul-int v5, v5, v1

    .line 29
    .line 30
    add-int/2addr v3, v4

    .line 31
    mul-int v3, v3, v1

    .line 32
    .line 33
    add-int/2addr v3, v4

    .line 34
    invoke-virtual {v2, v5, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/customview/MStarBar;->g:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 46
    .line 47
    const/high16 v6, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float v1, v0, v6

    .line 50
    .line 51
    if-lez v1, :cond_4

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 56
    .line 57
    int-to-float v3, v0

    .line 58
    int-to-float v4, v0

    .line 59
    iget-object v5, p0, Lcom/join/mgps/customview/MStarBar;->i:Landroid/graphics/Paint;

    .line 60
    .line 61
    move-object v0, p1

    .line 62
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 66
    .line 67
    float-to-int v1, v0

    .line 68
    int-to-float v1, v1

    .line 69
    sub-float/2addr v0, v1

    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v1, 0x1

    .line 72
    cmpl-float v0, v0, v7

    .line 73
    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    :goto_1
    int-to-float v0, v6

    .line 78
    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 79
    .line 80
    cmpg-float v0, v0, v1

    .line 81
    .line 82
    if-gez v0, :cond_5

    .line 83
    .line 84
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    .line 85
    .line 86
    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 87
    .line 88
    add-int/2addr v0, v1

    .line 89
    int-to-float v0, v0

    .line 90
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 96
    .line 97
    int-to-float v3, v0

    .line 98
    int-to-float v4, v0

    .line 99
    iget-object v5, p0, Lcom/join/mgps/customview/MStarBar;->i:Landroid/graphics/Paint;

    .line 100
    .line 101
    move-object v0, p1

    .line 102
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    const/4 v8, 0x1

    .line 109
    :goto_2
    int-to-float v0, v8

    .line 110
    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 111
    .line 112
    sub-float/2addr v1, v6

    .line 113
    cmpg-float v0, v0, v1

    .line 114
    .line 115
    if-gez v0, :cond_3

    .line 116
    .line 117
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    .line 118
    .line 119
    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 120
    .line 121
    add-int/2addr v0, v1

    .line 122
    int-to-float v0, v0

    .line 123
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 124
    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    const/4 v2, 0x0

    .line 128
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 129
    .line 130
    int-to-float v3, v0

    .line 131
    int-to-float v4, v0

    .line 132
    iget-object v5, p0, Lcom/join/mgps/customview/MStarBar;->i:Landroid/graphics/Paint;

    .line 133
    .line 134
    move-object v0, p1

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v8, v8, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    .line 142
    .line 143
    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 144
    .line 145
    add-int/2addr v0, v1

    .line 146
    int-to-float v0, v0

    .line 147
    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 148
    .line 149
    .line 150
    const/4 v1, 0x0

    .line 151
    const/4 v2, 0x0

    .line 152
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 153
    .line 154
    int-to-float v0, v0

    .line 155
    iget v3, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 156
    .line 157
    float-to-int v4, v3

    .line 158
    int-to-float v4, v4

    .line 159
    sub-float/2addr v3, v4

    .line 160
    const/high16 v4, 0x41200000    # 10.0f

    .line 161
    .line 162
    mul-float v3, v3, v4

    .line 163
    .line 164
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    int-to-float v3, v3

    .line 169
    mul-float v3, v3, v6

    .line 170
    .line 171
    div-float/2addr v3, v4

    .line 172
    mul-float v3, v3, v0

    .line 173
    .line 174
    iget v0, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 175
    .line 176
    int-to-float v4, v0

    .line 177
    iget-object v5, p0, Lcom/join/mgps/customview/MStarBar;->i:Landroid/graphics/Paint;

    .line 178
    .line 179
    move-object v0, p1

    .line 180
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    const/4 v1, 0x0

    .line 185
    const/4 v2, 0x0

    .line 186
    iget v3, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 187
    .line 188
    int-to-float v4, v3

    .line 189
    mul-float v4, v4, v0

    .line 190
    .line 191
    int-to-float v5, v3

    .line 192
    iget-object v6, p0, Lcom/join/mgps/customview/MStarBar;->i:Landroid/graphics/Paint;

    .line 193
    .line 194
    move-object v0, p1

    .line 195
    move v3, v4

    .line 196
    move v4, v5

    .line 197
    move-object v5, v6

    .line 198
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 199
    .line 200
    .line 201
    :cond_5
    :goto_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/join/mgps/customview/MStarBar;->d:I

    .line 5
    .line 6
    iget p2, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    .line 7
    .line 8
    mul-int v0, p1, p2

    .line 9
    .line 10
    iget v1, p0, Lcom/join/mgps/customview/MStarBar;->b:I

    .line 11
    .line 12
    add-int/lit8 p2, p2, -0x1

    .line 13
    .line 14
    mul-int v1, v1, p2

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    float-to-int v0, v0

    .line 14
    if-gez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-le v0, v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    if-eq v1, v3, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    int-to-float v0, v0

    .line 40
    mul-float v0, v0, v2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    int-to-float v1, v1

    .line 47
    mul-float v1, v1, v2

    .line 48
    .line 49
    iget v2, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    div-float/2addr v1, v2

    .line 53
    div-float/2addr v0, v1

    .line 54
    float-to-double v0, v0

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    int-to-float v0, v0

    .line 60
    mul-float v0, v0, v2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-float v1, v1

    .line 67
    mul-float v1, v1, v2

    .line 68
    .line 69
    iget v2, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    .line 70
    .line 71
    int-to-float v2, v2

    .line 72
    div-float/2addr v1, v2

    .line 73
    div-float/2addr v0, v1

    .line 74
    float-to-double v0, v0

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 79
    .line 80
    .line 81
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    return p1
.end method

.method public setIntegerMark(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "integerMark"
        }
    .end annotation

    return-void
.end method

.method public setOnStarChangeListener(Lcom/join/mgps/customview/MStarBar$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onStarChangeListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MStarBar;->h:Lcom/join/mgps/customview/MStarBar$a;

    .line 2
    .line 3
    return-void
.end method

.method public setStarCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "starCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/MStarBar;->c:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStarMark(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mark"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/MStarBar;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    double-to-int p1, p1

    .line 10
    int-to-float p1, p1

    .line 11
    iput p1, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 15
    .line 16
    mul-double p1, p1, v0

    .line 17
    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    long-to-float p1, p1

    .line 23
    const/high16 p2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    mul-float p1, p1, p2

    .line 26
    .line 27
    const/high16 p2, 0x41200000    # 10.0f

    .line 28
    .line 29
    div-float/2addr p1, p2

    .line 30
    iput p1, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 31
    .line 32
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/MStarBar;->h:Lcom/join/mgps/customview/MStarBar$a;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget p2, p0, Lcom/join/mgps/customview/MStarBar;->e:F

    .line 37
    .line 38
    invoke-interface {p1, p2}, Lcom/join/mgps/customview/MStarBar$a;->a(F)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
