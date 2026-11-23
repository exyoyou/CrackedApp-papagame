.class public final Lcom/join/kotlin/domain/widget/WFTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016R$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R$\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R$\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R$\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000e\"\u0004\u0008\u001c\u0010\u0010R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/join/kotlin/domain/widget/WFTextView;",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "",
        "cornerRadius",
        "getCornerRadius",
        "()F",
        "setCornerRadius",
        "(F)V",
        "cornerTopLeft",
        "getCornerTopLeft",
        "setCornerTopLeft",
        "cornerTopRight",
        "getCornerTopRight",
        "setCornerTopRight",
        "cornerBottomRight",
        "getCornerBottomRight",
        "setCornerBottomRight",
        "cornerBottomLeft",
        "getCornerBottomLeft",
        "setCornerBottomLeft",
        "clipPath",
        "Landroid/graphics/Path;",
        "rectF",
        "Landroid/graphics/RectF;",
        "draw",
        "",
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

.field private cornerBottomLeft:F

.field private cornerBottomRight:F

.field private cornerRadius:F

.field private cornerTopLeft:F

.field private cornerTopRight:F

.field private final rectF:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/domain/widget/WFTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/domain/widget/WFTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/join/kotlin/domain/widget/WFTextView;->clipPath:Landroid/graphics/Path;

    .line 6
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/join/kotlin/domain/widget/WFTextView;->rectF:Landroid/graphics/RectF;

    if-eqz p2, :cond_0

    .line 7
    sget-object p3, Lcom/join/android/app/mgsim/wufun/R$styleable;->WFTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x4

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/join/kotlin/domain/widget/WFTextView;->setCornerRadius(F)V

    const/4 p2, 0x2

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/join/kotlin/domain/widget/WFTextView;->setCornerTopLeft(F)V

    const/4 p2, 0x3

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/join/kotlin/domain/widget/WFTextView;->setCornerTopRight(F)V

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/join/kotlin/domain/widget/WFTextView;->setCornerBottomRight(F)V

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/join/kotlin/domain/widget/WFTextView;->setCornerBottomLeft(F)V

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/domain/widget/WFTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    iget-object v2, p0, Lcom/join/kotlin/domain/widget/WFTextView;->rectF:Landroid/graphics/RectF;

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
    iget-object v0, p0, Lcom/join/kotlin/domain/widget/WFTextView;->clipPath:Landroid/graphics/Path;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerRadius:F

    .line 33
    .line 34
    cmpl-float v1, v0, v3

    .line 35
    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->clipPath:Landroid/graphics/Path;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/kotlin/domain/widget/WFTextView;->rectF:Landroid/graphics/RectF;

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
    iget v1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerTopLeft:F

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    aput v1, v0, v2

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    aput v1, v0, v2

    .line 59
    .line 60
    iget v1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerTopRight:F

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    aput v1, v0, v2

    .line 64
    .line 65
    const/4 v2, 0x3

    .line 66
    aput v1, v0, v2

    .line 67
    .line 68
    iget v1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerBottomRight:F

    .line 69
    .line 70
    const/4 v2, 0x4

    .line 71
    aput v1, v0, v2

    .line 72
    .line 73
    const/4 v2, 0x5

    .line 74
    aput v1, v0, v2

    .line 75
    .line 76
    iget v1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerBottomLeft:F

    .line 77
    .line 78
    const/4 v2, 0x6

    .line 79
    aput v1, v0, v2

    .line 80
    .line 81
    const/4 v2, 0x7

    .line 82
    aput v1, v0, v2

    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->clipPath:Landroid/graphics/Path;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/join/kotlin/domain/widget/WFTextView;->rectF:Landroid/graphics/RectF;

    .line 87
    .line 88
    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 89
    .line 90
    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->clipPath:Landroid/graphics/Path;

    .line 98
    .line 99
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 100
    .line 101
    .line 102
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception v1

    .line 110
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final getCornerBottomLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerBottomLeft:F

    .line 2
    .line 3
    return v0
.end method

.method public final getCornerBottomRight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerBottomRight:F

    .line 2
    .line 3
    return v0
.end method

.method public final getCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public final getCornerTopLeft()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerTopLeft:F

    .line 2
    .line 3
    return v0
.end method

.method public final getCornerTopRight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerTopRight:F

    .line 2
    .line 3
    return v0
.end method

.method public final setCornerBottomLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerBottomLeft:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCornerBottomRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerBottomRight:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerRadius:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCornerTopLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerTopLeft:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCornerTopRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/domain/widget/WFTextView;->cornerTopRight:F

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
