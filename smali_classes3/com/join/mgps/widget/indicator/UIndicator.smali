.class public Lcom/join/mgps/widget/indicator/UIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lrc/a;


# static fields
.field public static final A:I = 0x0

.field public static final B:I = 0x1

.field private static final w:Ljava/lang/String; = "LineCircleNavigator"

.field public static final x:I = 0x0

.field public static final y:I = 0x1

.field public static final z:I = 0x2


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/content/res/ColorStateList;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/RectF;

.field private s:I

.field private t:I

.field private u:I

.field private v:I


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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/widget/indicator/UIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/widget/indicator/UIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->d:I

    .line 5
    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->g:I

    .line 6
    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->h:I

    .line 7
    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->i:I

    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->j:I

    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->k:I

    .line 8
    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->l:I

    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->m:I

    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->n:I

    .line 9
    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->o:I

    .line 10
    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 11
    iput p3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 12
    iput-object p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->b:Landroid/content/Context;

    .line 13
    invoke-direct {p0, p2}, Lcom/join/mgps/widget/indicator/UIndicator;->b(Landroid/util/AttributeSet;)V

    .line 14
    invoke-direct {p0}, Lcom/join/mgps/widget/indicator/UIndicator;->c()V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->b:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->UIndicator:[I

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->e:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    const/4 v0, 0x5

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->f:Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    const/high16 v0, 0x40c00000    # 6.0f

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/join/mgps/widget/indicator/UIndicator;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v1, 0xb

    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 37
    .line 38
    const/4 v0, 0x6

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->d:I

    .line 45
    .line 46
    const/16 v0, 0xc

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iput v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->g:I

    .line 53
    .line 54
    const/high16 v0, 0x40400000    # 3.0f

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/join/mgps/widget/indicator/UIndicator;->a(F)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->h:I

    .line 65
    .line 66
    const/4 v2, 0x7

    .line 67
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    iput v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->k:I

    .line 72
    .line 73
    const/16 v2, 0x8

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/join/mgps/widget/indicator/UIndicator;->a(F)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iput v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->j:I

    .line 84
    .line 85
    const/high16 v2, 0x41700000    # 15.0f

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Lcom/join/mgps/widget/indicator/UIndicator;->a(F)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    const/16 v4, 0x9

    .line 92
    .line 93
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    iput v3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->i:I

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->n:I

    .line 105
    .line 106
    const/4 v1, 0x4

    .line 107
    invoke-virtual {p0, v0}, Lcom/join/mgps/widget/indicator/UIndicator;->a(F)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    iput v1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->o:I

    .line 116
    .line 117
    const/4 v1, 0x2

    .line 118
    invoke-virtual {p0, v0}, Lcom/join/mgps/widget/indicator/UIndicator;->a(F)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->m:I

    .line 127
    .line 128
    const/4 v0, 0x3

    .line 129
    invoke-virtual {p0, v2}, Lcom/join/mgps/widget/indicator/UIndicator;->a(F)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->l:I

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 7
    .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->f:Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const v2, -0x777778

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 42
    .line 43
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->e:Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const/high16 v1, -0x10000

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/graphics/RectF;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    mul-float p1, p1, v0

    .line 16
    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    .line 18
    .line 19
    add-float/2addr p1, v0

    .line 20
    float-to-int p1, p1

    .line 21
    return p1
.end method

.method public e()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    return-void
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
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->d:I

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-nez v0, :cond_7

    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->g:I

    .line 12
    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-eq v0, v2, :cond_3

    .line 17
    .line 18
    if-eq v0, v3, :cond_0

    .line 19
    .line 20
    goto/16 :goto_e

    .line 21
    .line 22
    :cond_0
    :goto_0
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 23
    .line 24
    if-ge v1, v0, :cond_f

    .line 25
    .line 26
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 27
    .line 28
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->o:I

    .line 29
    .line 30
    mul-int/lit8 v5, v2, 0x2

    .line 31
    .line 32
    iget v6, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 33
    .line 34
    add-int/2addr v5, v6

    .line 35
    mul-int v5, v5, v0

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 40
    .line 41
    int-to-float v2, v5

    .line 42
    iget v6, p0, Lcom/join/mgps/widget/indicator/UIndicator;->l:I

    .line 43
    .line 44
    add-int/2addr v5, v6

    .line 45
    int-to-float v5, v5

    .line 46
    iget v6, p0, Lcom/join/mgps/widget/indicator/UIndicator;->m:I

    .line 47
    .line 48
    mul-int/lit8 v6, v6, 0x2

    .line 49
    .line 50
    int-to-float v6, v6

    .line 51
    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 55
    .line 56
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->n:I

    .line 57
    .line 58
    int-to-float v5, v2

    .line 59
    int-to-float v2, v2

    .line 60
    iget-object v6, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 67
    .line 68
    mul-int/lit8 v7, v2, 0x2

    .line 69
    .line 70
    sub-int/2addr v5, v7

    .line 71
    div-int/2addr v5, v3

    .line 72
    add-int/2addr v5, v2

    .line 73
    int-to-float v5, v5

    .line 74
    if-ge v0, v1, :cond_2

    .line 75
    .line 76
    add-int/lit8 v0, v1, -0x1

    .line 77
    .line 78
    mul-int v0, v0, v2

    .line 79
    .line 80
    mul-int/lit8 v0, v0, 0x2

    .line 81
    .line 82
    mul-int v6, v6, v1

    .line 83
    .line 84
    add-int/2addr v0, v6

    .line 85
    iget v6, p0, Lcom/join/mgps/widget/indicator/UIndicator;->l:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    mul-int/lit8 v0, v2, 0x2

    .line 89
    .line 90
    mul-int v0, v0, v1

    .line 91
    .line 92
    mul-int v6, v6, v1

    .line 93
    .line 94
    :goto_1
    add-int/2addr v0, v6

    .line 95
    add-int/2addr v0, v2

    .line 96
    int-to-float v0, v0

    .line 97
    int-to-float v2, v2

    .line 98
    iget-object v6, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p1, v0, v5, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    :goto_3
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 107
    .line 108
    if-ge v1, v0, :cond_f

    .line 109
    .line 110
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->i:I

    .line 111
    .line 112
    mul-int v2, v1, v0

    .line 113
    .line 114
    iget v3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 115
    .line 116
    mul-int v3, v3, v1

    .line 117
    .line 118
    add-int/2addr v2, v3

    .line 119
    iget-object v3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 120
    .line 121
    int-to-float v5, v2

    .line 122
    add-int/2addr v2, v0

    .line 123
    int-to-float v0, v2

    .line 124
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->j:I

    .line 125
    .line 126
    int-to-float v2, v2

    .line 127
    invoke-virtual {v3, v5, v4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 131
    .line 132
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->k:I

    .line 133
    .line 134
    int-to-float v3, v2

    .line 135
    int-to-float v2, v2

    .line 136
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 137
    .line 138
    if-ne v1, v5, :cond_4

    .line 139
    .line 140
    iget-object v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    iget-object v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 144
    .line 145
    :goto_4
    invoke-virtual {p1, v0, v3, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 152
    .line 153
    div-int/2addr v0, v3

    .line 154
    int-to-float v0, v0

    .line 155
    :goto_5
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 156
    .line 157
    if-ge v1, v2, :cond_f

    .line 158
    .line 159
    add-int/lit8 v2, v1, 0x1

    .line 160
    .line 161
    iget v3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->h:I

    .line 162
    .line 163
    mul-int v4, v2, v3

    .line 164
    .line 165
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 166
    .line 167
    mul-int v5, v5, v1

    .line 168
    .line 169
    add-int/2addr v4, v5

    .line 170
    int-to-float v4, v4

    .line 171
    int-to-float v3, v3

    .line 172
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 173
    .line 174
    if-ne v1, v5, :cond_6

    .line 175
    .line 176
    iget-object v1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 180
    .line 181
    :goto_6
    invoke-virtual {p1, v4, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    move v1, v2

    .line 185
    goto :goto_5

    .line 186
    :cond_7
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->g:I

    .line 187
    .line 188
    if-eqz v0, :cond_d

    .line 189
    .line 190
    if-eq v0, v2, :cond_b

    .line 191
    .line 192
    if-eq v0, v3, :cond_8

    .line 193
    .line 194
    goto/16 :goto_e

    .line 195
    .line 196
    :cond_8
    :goto_7
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 197
    .line 198
    if-ge v1, v0, :cond_f

    .line 199
    .line 200
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 201
    .line 202
    if-ne v0, v1, :cond_9

    .line 203
    .line 204
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 205
    .line 206
    iget v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->l:I

    .line 207
    .line 208
    sub-int/2addr v2, v4

    .line 209
    div-int/2addr v2, v3

    .line 210
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->o:I

    .line 211
    .line 212
    mul-int/lit8 v5, v5, 0x2

    .line 213
    .line 214
    iget v6, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 215
    .line 216
    add-int/2addr v5, v6

    .line 217
    mul-int v0, v0, v5

    .line 218
    .line 219
    iget-object v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 220
    .line 221
    int-to-float v6, v2

    .line 222
    int-to-float v7, v0

    .line 223
    add-int/2addr v2, v4

    .line 224
    int-to-float v2, v2

    .line 225
    iget v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->m:I

    .line 226
    .line 227
    add-int/2addr v0, v4

    .line 228
    int-to-float v0, v0

    .line 229
    invoke-virtual {v5, v6, v7, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 233
    .line 234
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->n:I

    .line 235
    .line 236
    int-to-float v4, v2

    .line 237
    int-to-float v2, v2

    .line 238
    iget-object v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 239
    .line 240
    invoke-virtual {p1, v0, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 241
    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_9
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 245
    .line 246
    iget v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->o:I

    .line 247
    .line 248
    mul-int/lit8 v5, v4, 0x2

    .line 249
    .line 250
    sub-int/2addr v2, v5

    .line 251
    div-int/2addr v2, v3

    .line 252
    add-int/2addr v2, v4

    .line 253
    if-ge v0, v1, :cond_a

    .line 254
    .line 255
    add-int/lit8 v0, v1, -0x1

    .line 256
    .line 257
    mul-int v0, v0, v4

    .line 258
    .line 259
    mul-int/lit8 v0, v0, 0x2

    .line 260
    .line 261
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 262
    .line 263
    mul-int v5, v5, v1

    .line 264
    .line 265
    add-int/2addr v0, v5

    .line 266
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->m:I

    .line 267
    .line 268
    goto :goto_8

    .line 269
    :cond_a
    mul-int/lit8 v0, v4, 0x2

    .line 270
    .line 271
    mul-int v0, v0, v1

    .line 272
    .line 273
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 274
    .line 275
    mul-int v5, v5, v1

    .line 276
    .line 277
    :goto_8
    add-int/2addr v0, v5

    .line 278
    add-int/2addr v0, v4

    .line 279
    int-to-float v0, v0

    .line 280
    int-to-float v2, v2

    .line 281
    int-to-float v4, v4

    .line 282
    iget-object v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 283
    .line 284
    invoke-virtual {p1, v2, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 285
    .line 286
    .line 287
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_b
    :goto_a
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 291
    .line 292
    if-ge v1, v0, :cond_f

    .line 293
    .line 294
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->j:I

    .line 295
    .line 296
    mul-int v2, v1, v0

    .line 297
    .line 298
    iget v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 299
    .line 300
    mul-int v4, v4, v1

    .line 301
    .line 302
    add-int/2addr v2, v4

    .line 303
    iget v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 304
    .line 305
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->i:I

    .line 306
    .line 307
    sub-int/2addr v4, v5

    .line 308
    div-int/2addr v4, v3

    .line 309
    iget-object v6, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 310
    .line 311
    int-to-float v7, v4

    .line 312
    int-to-float v8, v2

    .line 313
    add-int/2addr v4, v5

    .line 314
    int-to-float v4, v4

    .line 315
    add-int/2addr v2, v0

    .line 316
    int-to-float v0, v2

    .line 317
    invoke-virtual {v6, v7, v8, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 318
    .line 319
    .line 320
    iget-object v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->r:Landroid/graphics/RectF;

    .line 321
    .line 322
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->k:I

    .line 323
    .line 324
    int-to-float v4, v2

    .line 325
    int-to-float v2, v2

    .line 326
    iget v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 327
    .line 328
    if-ne v1, v5, :cond_c

    .line 329
    .line 330
    iget-object v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 331
    .line 332
    goto :goto_b

    .line 333
    :cond_c
    iget-object v5, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 334
    .line 335
    :goto_b
    invoke-virtual {p1, v0, v4, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 336
    .line 337
    .line 338
    add-int/lit8 v1, v1, 0x1

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_d
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 342
    .line 343
    div-int/2addr v0, v3

    .line 344
    int-to-float v0, v0

    .line 345
    :goto_c
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 346
    .line 347
    if-ge v1, v2, :cond_f

    .line 348
    .line 349
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->h:I

    .line 350
    .line 351
    mul-int/lit8 v3, v2, 0x2

    .line 352
    .line 353
    iget v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 354
    .line 355
    add-int/2addr v3, v4

    .line 356
    mul-int v3, v3, v1

    .line 357
    .line 358
    add-int/2addr v3, v2

    .line 359
    int-to-float v3, v3

    .line 360
    int-to-float v2, v2

    .line 361
    iget v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 362
    .line 363
    if-ne v1, v4, :cond_e

    .line 364
    .line 365
    iget-object v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->q:Landroid/graphics/Paint;

    .line 366
    .line 367
    goto :goto_d

    .line 368
    :cond_e
    iget-object v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->p:Landroid/graphics/Paint;

    .line 369
    .line 370
    :goto_d
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 371
    .line 372
    .line 373
    add-int/lit8 v1, v1, 0x1

    .line 374
    .line 375
    goto :goto_c

    .line 376
    :cond_f
    :goto_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
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
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->g:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    if-eq v0, v2, :cond_2

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->d:I

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->o:I

    .line 29
    .line 30
    mul-int/lit8 v0, p1, 0x2

    .line 31
    .line 32
    iget v3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 33
    .line 34
    add-int/lit8 v4, v3, -0x1

    .line 35
    .line 36
    mul-int v4, v4, v0

    .line 37
    .line 38
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->l:I

    .line 39
    .line 40
    add-int/2addr v4, v0

    .line 41
    sub-int/2addr v3, v2

    .line 42
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 43
    .line 44
    mul-int v3, v3, v0

    .line 45
    .line 46
    add-int/2addr v4, v3

    .line 47
    iput v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 48
    .line 49
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->m:I

    .line 50
    .line 51
    mul-int/lit8 p1, p1, 0x2

    .line 52
    .line 53
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :cond_1
    iget p2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->o:I

    .line 66
    .line 67
    mul-int/lit8 v0, p2, 0x2

    .line 68
    .line 69
    iget v3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 70
    .line 71
    add-int/lit8 v4, v3, -0x1

    .line 72
    .line 73
    mul-int v4, v4, v0

    .line 74
    .line 75
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->m:I

    .line 76
    .line 77
    add-int/2addr v4, v0

    .line 78
    sub-int/2addr v3, v2

    .line 79
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 80
    .line 81
    mul-int v3, v3, v0

    .line 82
    .line 83
    add-int/2addr v4, v3

    .line 84
    iput v4, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 85
    .line 86
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->l:I

    .line 87
    .line 88
    mul-int/lit8 p2, p2, 0x2

    .line 89
    .line 90
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->d:I

    .line 102
    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    iget p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->i:I

    .line 106
    .line 107
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 108
    .line 109
    mul-int p1, p1, v0

    .line 110
    .line 111
    sub-int/2addr v0, v2

    .line 112
    iget v1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 113
    .line 114
    mul-int v0, v0, v1

    .line 115
    .line 116
    add-int/2addr p1, v0

    .line 117
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 118
    .line 119
    iget p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->j:I

    .line 120
    .line 121
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    iget p2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->j:I

    .line 129
    .line 130
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 131
    .line 132
    mul-int p2, p2, v0

    .line 133
    .line 134
    sub-int/2addr v0, v2

    .line 135
    iget v1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 136
    .line 137
    mul-int v0, v0, v1

    .line 138
    .line 139
    add-int/2addr p2, v0

    .line 140
    iput p2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 141
    .line 142
    iget p2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->i:I

    .line 143
    .line 144
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    iget v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->d:I

    .line 152
    .line 153
    if-nez v0, :cond_5

    .line 154
    .line 155
    iget p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->h:I

    .line 156
    .line 157
    mul-int/lit8 v0, p1, 0x2

    .line 158
    .line 159
    iget v3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 160
    .line 161
    mul-int v0, v0, v3

    .line 162
    .line 163
    sub-int/2addr v3, v2

    .line 164
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 165
    .line 166
    mul-int v3, v3, v2

    .line 167
    .line 168
    add-int/2addr v0, v3

    .line 169
    iput v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 170
    .line 171
    mul-int/lit8 p1, p1, 0x2

    .line 172
    .line 173
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_5
    iget p2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->h:I

    .line 181
    .line 182
    mul-int/lit8 v0, p2, 0x2

    .line 183
    .line 184
    iget v3, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 185
    .line 186
    mul-int v0, v0, v3

    .line 187
    .line 188
    sub-int/2addr v3, v2

    .line 189
    iget v2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->c:I

    .line 190
    .line 191
    mul-int v3, v3, v2

    .line 192
    .line 193
    add-int/2addr v0, v3

    .line 194
    iput v0, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 195
    .line 196
    mul-int/lit8 p2, p2, 0x2

    .line 197
    .line 198
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 203
    .line 204
    :goto_0
    iget p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->s:I

    .line 205
    .line 206
    iget p2, p0, Lcom/join/mgps/widget/indicator/UIndicator;->t:I

    .line 207
    .line 208
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "v",
            "i1"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->u:I

    .line 2
    .line 3
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selection"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/widget/indicator/UIndicator;->v:I

    .line 2
    .line 3
    return-void
.end method
