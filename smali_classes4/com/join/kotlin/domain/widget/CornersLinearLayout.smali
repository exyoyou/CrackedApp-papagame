.class public final Lcom/join/kotlin/domain/widget/CornersLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010&\u001a\u00020!2\u0006\u0010\'\u001a\u00020(H\u0016R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0014\"\u0004\u0008\u001f\u0010\u0016R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/join/kotlin/domain/widget/CornersLinearLayout;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "corner",
        "",
        "getCorner",
        "()F",
        "setCorner",
        "(F)V",
        "conner_top_left",
        "getConner_top_left",
        "()I",
        "setConner_top_left",
        "(I)V",
        "conner_top_right",
        "getConner_top_right",
        "setConner_top_right",
        "conner_bottom_left",
        "getConner_bottom_left",
        "setConner_bottom_left",
        "conner_bottom_right",
        "getConner_bottom_right",
        "setConner_bottom_right",
        "init",
        "",
        "clipPath",
        "Landroid/graphics/Path;",
        "rectF",
        "Landroid/graphics/RectF;",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final clipPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private conner_bottom_left:I

.field private conner_bottom_right:I

.field private conner_top_left:I

.field private conner_top_right:I

.field private corner:F

.field private final rectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->clipPath:Landroid/graphics/Path;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->clipPath:Landroid/graphics/Path;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->rectF:Landroid/graphics/RectF;

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->clipPath:Landroid/graphics/Path;

    .line 10
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->rectF:Landroid/graphics/RectF;

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->CornersLinearLayout:[I

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "obtainStyledAttributes(...)"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput p2, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->corner:F

    .line 19
    .line 20
    const/4 p2, 0x2

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_top_left:I

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iput p2, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_top_right:I

    .line 34
    .line 35
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iput p2, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_bottom_left:I

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_bottom_right:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v0, :cond_2

    .line 15
    .line 16
    if-gtz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->rectF:Landroid/graphics/RectF;

    .line 20
    .line 21
    int-to-float v0, v0

    .line 22
    int-to-float v1, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->clipPath:Landroid/graphics/Path;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->corner:F

    .line 33
    .line 34
    cmpl-float v1, v0, v3

    .line 35
    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->clipPath:Landroid/graphics/Path;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->rectF:Landroid/graphics/RectF;

    .line 41
    .line 42
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 43
    .line 44
    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 v0, 0x8

    .line 49
    .line 50
    new-array v0, v0, [F

    .line 51
    .line 52
    iget v1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_top_left:I

    .line 53
    .line 54
    int-to-float v2, v1

    .line 55
    const/4 v3, 0x0

    .line 56
    aput v2, v0, v3

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    int-to-float v1, v1

    .line 60
    aput v1, v0, v2

    .line 61
    .line 62
    iget v1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_top_right:I

    .line 63
    .line 64
    int-to-float v2, v1

    .line 65
    const/4 v3, 0x2

    .line 66
    aput v2, v0, v3

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    int-to-float v1, v1

    .line 70
    aput v1, v0, v2

    .line 71
    .line 72
    iget v1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_bottom_right:I

    .line 73
    .line 74
    int-to-float v2, v1

    .line 75
    const/4 v3, 0x4

    .line 76
    aput v2, v0, v3

    .line 77
    .line 78
    const/4 v2, 0x5

    .line 79
    int-to-float v1, v1

    .line 80
    aput v1, v0, v2

    .line 81
    .line 82
    iget v1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_bottom_left:I

    .line 83
    .line 84
    int-to-float v2, v1

    .line 85
    const/4 v3, 0x6

    .line 86
    aput v2, v0, v3

    .line 87
    .line 88
    const/4 v2, 0x7

    .line 89
    int-to-float v1, v1

    .line 90
    aput v1, v0, v2

    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->clipPath:Landroid/graphics/Path;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->rectF:Landroid/graphics/RectF;

    .line 95
    .line 96
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 97
    .line 98
    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object v1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->clipPath:Landroid/graphics/Path;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 108
    .line 109
    .line 110
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception v1

    .line 118
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final getConner_bottom_left()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_bottom_left:I

    .line 2
    .line 3
    return v0
.end method

.method public final getConner_bottom_right()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_bottom_right:I

    .line 2
    .line 3
    return v0
.end method

.method public final getConner_top_left()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_top_left:I

    .line 2
    .line 3
    return v0
.end method

.method public final getConner_top_right()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_top_right:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCorner()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->corner:F

    .line 2
    .line 3
    return v0
.end method

.method public final setConner_bottom_left(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_bottom_left:I

    .line 2
    .line 3
    return-void
.end method

.method public final setConner_bottom_right(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_bottom_right:I

    .line 2
    .line 3
    return-void
.end method

.method public final setConner_top_left(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_top_left:I

    .line 2
    .line 3
    return-void
.end method

.method public final setConner_top_right(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->conner_top_right:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCorner(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->corner:F

    .line 2
    .line 3
    return-void
.end method
