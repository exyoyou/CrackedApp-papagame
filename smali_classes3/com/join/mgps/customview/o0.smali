.class Lcom/join/mgps/customview/o0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/o0$b;
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

.field private i:Lcom/join/mgps/customview/SlidingTabLayout$d;

.field private final j:Lcom/join/mgps/customview/o0$b;


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/o0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-static {p1, v0}, Lcom/join/mgps/customview/o0;->c(IB)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/o0;->f:I

    .line 9
    new-instance v0, Lcom/join/mgps/customview/o0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/customview/o0$b;-><init>(Lcom/join/mgps/customview/o0$a;)V

    iput-object v0, p0, Lcom/join/mgps/customview/o0;->j:Lcom/join/mgps/customview/o0$b;

    const v1, -0xcc4a1b

    .line 10
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/o0$b;->b([I)V

    const/4 v0, 0x0

    mul-float v0, v0, p2

    float-to-int v0, v0

    .line 11
    iput v0, p0, Lcom/join/mgps/customview/o0;->b:I

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/o0;->c:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40400000    # 3.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/o0;->d:I

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/o0;->e:Landroid/graphics/Paint;

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

.method private static c(IB)I
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
.method b(IF)V
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
    iput p1, p0, Lcom/join/mgps/customview/o0;->g:I

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/o0;->h:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method d(Lcom/join/mgps/customview/SlidingTabLayout$d;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/o0;->i:Lcom/join/mgps/customview/SlidingTabLayout$d;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method varargs e([I)V
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
    iput-object v0, p0, Lcom/join/mgps/customview/o0;->i:Lcom/join/mgps/customview/SlidingTabLayout$d;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/o0;->j:Lcom/join/mgps/customview/o0$b;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/o0$b;->b([I)V

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
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Lcom/join/mgps/customview/o0;->i:Lcom/join/mgps/customview/SlidingTabLayout$d;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v3, v0, Lcom/join/mgps/customview/o0;->j:Lcom/join/mgps/customview/o0$b;

    .line 17
    .line 18
    :goto_0
    if-lez v2, :cond_3

    .line 19
    .line 20
    iget v2, v0, Lcom/join/mgps/customview/o0;->g:I

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v5, v0, Lcom/join/mgps/customview/o0;->g:I

    .line 35
    .line 36
    invoke-interface {v3, v5}, Lcom/join/mgps/customview/SlidingTabLayout$d;->a(I)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iget v6, v0, Lcom/join/mgps/customview/o0;->h:F

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    cmpl-float v6, v6, v7

    .line 44
    .line 45
    if-lez v6, :cond_2

    .line 46
    .line 47
    iget v6, v0, Lcom/join/mgps/customview/o0;->g:I

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    add-int/lit8 v7, v7, -0x1

    .line 54
    .line 55
    if-ge v6, v7, :cond_2

    .line 56
    .line 57
    iget v6, v0, Lcom/join/mgps/customview/o0;->g:I

    .line 58
    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    invoke-interface {v3, v6}, Lcom/join/mgps/customview/SlidingTabLayout$d;->a(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eq v5, v3, :cond_1

    .line 66
    .line 67
    iget v6, v0, Lcom/join/mgps/customview/o0;->h:F

    .line 68
    .line 69
    invoke-static {v3, v5, v6}, Lcom/join/mgps/customview/o0;->a(IIF)I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    move v5, v3

    .line 74
    :cond_1
    iget v3, v0, Lcom/join/mgps/customview/o0;->g:I

    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget v6, v0, Lcom/join/mgps/customview/o0;->h:F

    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    int-to-float v7, v7

    .line 89
    mul-float v6, v6, v7

    .line 90
    .line 91
    iget v7, v0, Lcom/join/mgps/customview/o0;->h:F

    .line 92
    .line 93
    const/high16 v8, 0x3f800000    # 1.0f

    .line 94
    .line 95
    sub-float v9, v8, v7

    .line 96
    .line 97
    int-to-float v4, v4

    .line 98
    mul-float v9, v9, v4

    .line 99
    .line 100
    add-float/2addr v6, v9

    .line 101
    float-to-int v4, v6

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    int-to-float v3, v3

    .line 107
    mul-float v7, v7, v3

    .line 108
    .line 109
    iget v3, v0, Lcom/join/mgps/customview/o0;->h:F

    .line 110
    .line 111
    sub-float/2addr v8, v3

    .line 112
    int-to-float v2, v2

    .line 113
    mul-float v8, v8, v2

    .line 114
    .line 115
    add-float/2addr v7, v8

    .line 116
    float-to-int v2, v7

    .line 117
    :cond_2
    iget-object v3, v0, Lcom/join/mgps/customview/o0;->e:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    .line 121
    .line 122
    int-to-float v7, v4

    .line 123
    iget v3, v0, Lcom/join/mgps/customview/o0;->d:I

    .line 124
    .line 125
    sub-int v3, v1, v3

    .line 126
    .line 127
    int-to-float v8, v3

    .line 128
    int-to-float v9, v2

    .line 129
    int-to-float v10, v1

    .line 130
    iget-object v11, v0, Lcom/join/mgps/customview/o0;->e:Landroid/graphics/Paint;

    .line 131
    .line 132
    move-object/from16 v6, p1

    .line 133
    .line 134
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    const/4 v13, 0x0

    .line 138
    iget v2, v0, Lcom/join/mgps/customview/o0;->b:I

    .line 139
    .line 140
    sub-int v2, v1, v2

    .line 141
    .line 142
    int-to-float v14, v2

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    int-to-float v15, v2

    .line 148
    int-to-float v1, v1

    .line 149
    iget-object v2, v0, Lcom/join/mgps/customview/o0;->c:Landroid/graphics/Paint;

    .line 150
    .line 151
    move-object/from16 v12, p1

    .line 152
    .line 153
    move/from16 v16, v1

    .line 154
    .line 155
    move-object/from16 v17, v2

    .line 156
    .line 157
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method
