.class public Lcom/join/mgps/customview/MyTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field i:I

.field j:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/MyTextView;->c()V

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

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/MyTextView;->c()V

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/MyTextView;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dip"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p1, p1, p0

    .line 12
    .line 13
    const/high16 p0, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p1, p0

    .line 16
    float-to-int p0, p1

    .line 17
    return p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyTextView;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->i:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    filled-new-array {v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [[I

    .line 21
    .line 22
    iput-object v0, p0, Lcom/join/mgps/customview/MyTextView;->j:[[I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_0
    iget v6, p0, Lcom/join/mgps/customview/MyTextView;->i:I

    .line 30
    .line 31
    if-ge v3, v6, :cond_4

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    new-instance v7, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v8, p0, Lcom/join/mgps/customview/MyTextView;->d:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {v8, v6, v0, v2, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const-string v8, "\u300a"

    .line 56
    .line 57
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-nez v8, :cond_0

    .line 62
    .line 63
    const-string v8, "\uff08"

    .line 64
    .line 65
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_1

    .line 70
    .line 71
    :cond_0
    iget v8, p0, Lcom/join/mgps/customview/MyTextView;->h:I

    .line 72
    .line 73
    mul-int/lit8 v8, v8, 0x2

    .line 74
    .line 75
    add-int/2addr v7, v8

    .line 76
    :cond_1
    int-to-float v7, v7

    .line 77
    int-to-float v5, v5

    .line 78
    add-float/2addr v5, v7

    .line 79
    float-to-int v5, v5

    .line 80
    iget v8, p0, Lcom/join/mgps/customview/MyTextView;->c:I

    .line 81
    .line 82
    if-le v5, v8, :cond_2

    .line 83
    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    int-to-float v5, v5

    .line 89
    sub-float/2addr v5, v7

    .line 90
    float-to-int v5, v5

    .line 91
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/customview/MyTextView;->j:[[I

    .line 92
    .line 93
    aget-object v8, v8, v3

    .line 94
    .line 95
    aput v5, v8, v0

    .line 96
    .line 97
    iget v9, p0, Lcom/join/mgps/customview/MyTextView;->g:I

    .line 98
    .line 99
    mul-int v9, v9, v4

    .line 100
    .line 101
    iget v10, p0, Lcom/join/mgps/customview/MyTextView;->f:I

    .line 102
    .line 103
    add-int/lit8 v11, v4, -0x1

    .line 104
    .line 105
    mul-int v10, v10, v11

    .line 106
    .line 107
    add-int/2addr v9, v10

    .line 108
    aput v9, v8, v2

    .line 109
    .line 110
    invoke-virtual {p0, v6}, Lcom/join/mgps/customview/MyTextView;->d(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_3

    .line 115
    .line 116
    int-to-float v5, v5

    .line 117
    iget v6, p0, Lcom/join/mgps/customview/MyTextView;->h:I

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    int-to-float v5, v5

    .line 121
    iget v6, p0, Lcom/join/mgps/customview/MyTextView;->e:I

    .line 122
    .line 123
    :goto_2
    int-to-float v6, v6

    .line 124
    add-float/2addr v7, v6

    .line 125
    add-float/2addr v5, v7

    .line 126
    float-to-int v5, v5

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    iget p1, p0, Lcom/join/mgps/customview/MyTextView;->g:I

    .line 131
    .line 132
    iget v0, p0, Lcom/join/mgps/customview/MyTextView;->f:I

    .line 133
    .line 134
    add-int/2addr p1, v0

    .line 135
    mul-int p1, p1, v4

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/customview/MyTextView;->d:Landroid/graphics/Paint;

    .line 7
    .line 8
    const-string v1, "#787878"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/MyTextView;->d:Landroid/graphics/Paint;

    .line 18
    .line 19
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/customview/MyTextView;->d:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/high16 v2, 0x41600000    # 14.0f

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/join/mgps/customview/MyTextView;->a(Landroid/content/Context;F)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/customview/MyTextView;->d:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 47
    .line 48
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 49
    .line 50
    sub-float/2addr v1, v0

    .line 51
    float-to-double v0, v1

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 57
    .line 58
    add-double/2addr v0, v2

    .line 59
    double-to-int v0, v0

    .line 60
    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->g:I

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/high16 v1, 0x40800000    # 4.0f

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/join/mgps/customview/MyTextView;->a(Landroid/content/Context;F)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->e:I

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const/high16 v1, 0x41200000    # 10.0f

    .line 79
    .line 80
    invoke-static {v0, v1}, Lcom/join/mgps/customview/MyTextView;->a(Landroid/content/Context;F)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->f:I

    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const/high16 v1, 0x40000000    # 2.0f

    .line 91
    .line 92
    invoke-static {v0, v1}, Lcom/join/mgps/customview/MyTextView;->a(Landroid/content/Context;F)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->h:I

    .line 97
    .line 98
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    const-string v0, "^[A-Za-z0-9_]+$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/MyTextView;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/MyTextView;->i:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/customview/MyTextView;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/join/mgps/customview/MyTextView;->j:[[I

    .line 29
    .line 30
    aget-object v3, v3, v1

    .line 31
    .line 32
    aget v4, v3, v0

    .line 33
    .line 34
    int-to-float v4, v4

    .line 35
    const/4 v5, 0x1

    .line 36
    aget v3, v3, v5

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    iget-object v5, p0, Lcom/join/mgps/customview/MyTextView;->d:Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->c:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/MyTextView;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
