.class Lcom/join/mgps/customview/p0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/p0$b;
    }
.end annotation


# static fields
.field private static final k:I = 0x0

.field private static final l:B = 0x26t

.field private static final m:I = 0x3

.field private static final n:I = -0xcc4a1b


# instance fields
.field private final b:I

.field private final c:Landroid/graphics/Paint;

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private g:I

.field private h:F

.field private i:Lcom/join/mgps/customview/SlidingTabLayout2$d;

.field private final j:Lcom/join/mgps/customview/p0$b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/p0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 5
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x1010030

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 7
    iget p1, v0, Landroid/util/TypedValue;->data:I

    const/16 v0, 0x26

    .line 8
    invoke-static {p1, v0}, Lcom/join/mgps/customview/p0;->d(IB)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/p0;->f:I

    .line 9
    new-instance v0, Lcom/join/mgps/customview/p0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/customview/p0$b;-><init>(Lcom/join/mgps/customview/p0$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->j:Lcom/join/mgps/customview/p0$b;

    const v1, -0xcc4a1b

    .line 10
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/p0$b;->b([I)V

    const/4 v0, 0x0

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/p0;->b:I

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/p0;->c:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40400000    # 3.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/p0;->d:I

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/p0;->e:Landroid/graphics/Paint;

    return-void
.end method

.method private static a(IIF)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color1",
            "color2",
            "ratio"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr v0, p2

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    int-to-float v1, v1

    .line 9
    mul-float v1, v1, p2

    .line 10
    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-float v2, v2

    .line 16
    mul-float v2, v2, v0

    .line 17
    .line 18
    add-float/2addr v1, v2

    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    int-to-float v2, v2

    .line 24
    mul-float v2, v2, p2

    .line 25
    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    mul-float v3, v3, v0

    .line 32
    .line 33
    add-float/2addr v2, v3

    .line 34
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    int-to-float p0, p0

    .line 39
    mul-float p0, p0, p2

    .line 40
    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    int-to-float p1, p1

    .line 46
    mul-float p1, p1, v0

    .line 47
    .line 48
    add-float/2addr p0, p1

    .line 49
    float-to-int p1, v1

    .line 50
    float-to-int p2, v2

    .line 51
    float-to-int p0, p0

    .line 52
    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method private static d(IB)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "alpha"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method


# virtual methods
.method public b(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontSize"
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
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 14
    .line 15
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 16
    .line 17
    sub-float/2addr v0, p1

    .line 18
    float-to-double v0, v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    double-to-int p1, v0

    .line 24
    add-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    return p1
.end method

.method c(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/p0;->g:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/p0;->h:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method e(Lcom/join/mgps/customview/SlidingTabLayout2$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customTabColorizer"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/p0;->i:Lcom/join/mgps/customview/SlidingTabLayout2$d;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method varargs f([I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/p0;->i:Lcom/join/mgps/customview/SlidingTabLayout2$d;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/p0;->j:Lcom/join/mgps/customview/p0$b;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/p0$b;->b([I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
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
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->i:Lcom/join/mgps/customview/SlidingTabLayout2$d;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->j:Lcom/join/mgps/customview/p0$b;

    .line 15
    .line 16
    :goto_0
    if-lez v1, :cond_4

    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/customview/p0;->g:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget v5, p0, Lcom/join/mgps/customview/p0;->g:I

    .line 33
    .line 34
    invoke-interface {v2, v5}, Lcom/join/mgps/customview/SlidingTabLayout2$d;->a(I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    iget v6, p0, Lcom/join/mgps/customview/p0;->h:F

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/high16 v8, 0x3f800000    # 1.0f

    .line 42
    .line 43
    const/4 v9, 0x1

    .line 44
    cmpl-float v6, v6, v7

    .line 45
    .line 46
    if-lez v6, :cond_2

    .line 47
    .line 48
    iget v6, p0, Lcom/join/mgps/customview/p0;->g:I

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    sub-int/2addr v7, v9

    .line 55
    if-ge v6, v7, :cond_2

    .line 56
    .line 57
    iget v6, p0, Lcom/join/mgps/customview/p0;->g:I

    .line 58
    .line 59
    add-int/2addr v6, v9

    .line 60
    invoke-interface {v2, v6}, Lcom/join/mgps/customview/SlidingTabLayout2$d;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eq v5, v2, :cond_1

    .line 65
    .line 66
    iget v6, p0, Lcom/join/mgps/customview/p0;->h:F

    .line 67
    .line 68
    invoke-static {v2, v5, v6}, Lcom/join/mgps/customview/p0;->a(IIF)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    move v5, v2

    .line 73
    :cond_1
    iget v2, p0, Lcom/join/mgps/customview/p0;->g:I

    .line 74
    .line 75
    add-int/2addr v2, v9

    .line 76
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget v6, p0, Lcom/join/mgps/customview/p0;->h:F

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    int-to-float v7, v7

    .line 87
    mul-float v6, v6, v7

    .line 88
    .line 89
    iget v7, p0, Lcom/join/mgps/customview/p0;->h:F

    .line 90
    .line 91
    sub-float v10, v8, v7

    .line 92
    .line 93
    int-to-float v3, v3

    .line 94
    mul-float v10, v10, v3

    .line 95
    .line 96
    add-float/2addr v6, v10

    .line 97
    float-to-int v3, v6

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    int-to-float v2, v2

    .line 103
    mul-float v7, v7, v2

    .line 104
    .line 105
    iget v2, p0, Lcom/join/mgps/customview/p0;->h:F

    .line 106
    .line 107
    sub-float v2, v8, v2

    .line 108
    .line 109
    int-to-float v4, v4

    .line 110
    mul-float v2, v2, v4

    .line 111
    .line 112
    add-float/2addr v7, v2

    .line 113
    float-to-int v4, v7

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->e:Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    .line 118
    .line 119
    instance-of v2, v1, Landroid/widget/TextView;

    .line 120
    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    check-cast v1, Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/p0;->b(F)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->e:Landroid/graphics/Paint;

    .line 134
    .line 135
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->e:Landroid/graphics/Paint;

    .line 139
    .line 140
    const/high16 v5, 0x40000000    # 2.0f

    .line 141
    .line 142
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/join/mgps/customview/p0;->e:Landroid/graphics/Paint;

    .line 146
    .line 147
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 148
    .line 149
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const/high16 v5, 0x40c00000    # 6.0f

    .line 157
    .line 158
    invoke-static {v2, v5}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    int-to-float v2, v2

    .line 163
    new-instance v5, Landroid/graphics/RectF;

    .line 164
    .line 165
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-static {v6, v8}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    add-int/2addr v3, v6

    .line 177
    int-to-float v3, v3

    .line 178
    iput v3, v5, Landroid/graphics/RectF;->left:F

    .line 179
    .line 180
    sub-int v1, v0, v1

    .line 181
    .line 182
    div-int/lit8 v1, v1, 0x2

    .line 183
    .line 184
    mul-int/lit8 v1, v1, 0x1

    .line 185
    .line 186
    int-to-float v3, v1

    .line 187
    iput v3, v5, Landroid/graphics/RectF;->top:F

    .line 188
    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-static {v3, v8}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    sub-int/2addr v4, v3

    .line 198
    int-to-float v3, v4

    .line 199
    iput v3, v5, Landroid/graphics/RectF;->right:F

    .line 200
    .line 201
    sub-int v1, v0, v1

    .line 202
    .line 203
    int-to-float v1, v1

    .line 204
    iput v1, v5, Landroid/graphics/RectF;->bottom:F

    .line 205
    .line 206
    iget-object v1, p0, Lcom/join/mgps/customview/p0;->e:Landroid/graphics/Paint;

    .line 207
    .line 208
    invoke-virtual {p1, v5, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_3
    int-to-float v7, v3

    .line 213
    iget v1, p0, Lcom/join/mgps/customview/p0;->d:I

    .line 214
    .line 215
    sub-int v1, v0, v1

    .line 216
    .line 217
    int-to-float v8, v1

    .line 218
    int-to-float v9, v4

    .line 219
    int-to-float v10, v0

    .line 220
    iget-object v11, p0, Lcom/join/mgps/customview/p0;->e:Landroid/graphics/Paint;

    .line 221
    .line 222
    move-object v6, p1

    .line 223
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 224
    .line 225
    .line 226
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 227
    iget v1, p0, Lcom/join/mgps/customview/p0;->b:I

    .line 228
    .line 229
    sub-int v1, v0, v1

    .line 230
    .line 231
    int-to-float v3, v1

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    int-to-float v4, v1

    .line 237
    int-to-float v5, v0

    .line 238
    iget-object v6, p0, Lcom/join/mgps/customview/p0;->c:Landroid/graphics/Paint;

    .line 239
    .line 240
    move-object v1, p1

    .line 241
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method
