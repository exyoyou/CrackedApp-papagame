.class public Lcom/join/mgps/customview/IconButton;
.super Landroid/widget/Button;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/IconButton$DrawablePositions;
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:Lcom/join/mgps/customview/IconButton$DrawablePositions;

.field protected d:I

.field e:Landroid/graphics/Rect;


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
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->e:Landroid/graphics/Rect;

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
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->e:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/IconButton;->a(Landroid/util/AttributeSet;)V

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

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->e:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/IconButton;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/IconButton;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/IconButton;->e:Landroid/graphics/Rect;

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->IconButton:[I

    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/IconButton;->setIconPadding(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    iget-object p4, p0, Lcom/join/mgps/customview/IconButton;->e:Landroid/graphics/Rect;

    .line 21
    .line 22
    const/4 p5, 0x0

    .line 23
    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/IconButton;->e:Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object p2, p0, Lcom/join/mgps/customview/IconButton;->c:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 33
    .line 34
    sget-object p3, Lcom/join/mgps/customview/IconButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 35
    .line 36
    const/4 p4, 0x2

    .line 37
    const/4 v0, 0x1

    .line 38
    if-ne p2, p3, :cond_0

    .line 39
    .line 40
    const/4 p2, 0x2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p2, 0x1

    .line 43
    :goto_0
    iget p3, p0, Lcom/join/mgps/customview/IconButton;->b:I

    .line 44
    .line 45
    iget v1, p0, Lcom/join/mgps/customview/IconButton;->d:I

    .line 46
    .line 47
    mul-int v1, v1, p2

    .line 48
    .line 49
    add-int/2addr p3, v1

    .line 50
    add-int/2addr p3, p1

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-double p1, p1

    .line 56
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    .line 57
    .line 58
    div-double/2addr p1, v1

    .line 59
    int-to-double v3, p3

    .line 60
    div-double/2addr v3, v1

    .line 61
    sub-double/2addr p1, v3

    .line 62
    double-to-int p1, p1

    .line 63
    neg-int p2, p1

    .line 64
    iget p3, p0, Lcom/join/mgps/customview/IconButton;->d:I

    .line 65
    .line 66
    add-int/2addr p2, p3

    .line 67
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 68
    .line 69
    .line 70
    sget-object p2, Lcom/join/mgps/customview/IconButton$a;->a:[I

    .line 71
    .line 72
    iget-object p3, p0, Lcom/join/mgps/customview/IconButton;->c:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    aget p2, p2, p3

    .line 79
    .line 80
    if-eq p2, v0, :cond_3

    .line 81
    .line 82
    if-eq p2, p4, :cond_2

    .line 83
    .line 84
    const/4 p3, 0x3

    .line 85
    if-eq p2, p3, :cond_1

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    invoke-virtual {p0, p5, p1, p5, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    invoke-virtual {p0, p1, p2, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    invoke-virtual {p0, p5, p2, p1, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    invoke-virtual {p0, p1, p2, p5, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    .line 133
    .line 134
    :goto_1
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    add-int/2addr p1, p2

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/IconButton;->b:I

    .line 18
    .line 19
    sget-object p1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->LEFT_AND_RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->c:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/join/mgps/customview/IconButton;->b:I

    .line 31
    .line 32
    sget-object p1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->LEFT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->c:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p3, :cond_2

    .line 38
    .line 39
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/join/mgps/customview/IconButton;->b:I

    .line 44
    .line 45
    sget-object p1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->RIGHT:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->c:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    sget-object p1, Lcom/join/mgps/customview/IconButton$DrawablePositions;->NONE:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/join/mgps/customview/IconButton;->c:Lcom/join/mgps/customview/IconButton$DrawablePositions;

    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public setIconPadding(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/IconButton;->d:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
