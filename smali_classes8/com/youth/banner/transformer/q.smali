.class public Lcom/youth/banner/transformer/q;
.super Lcom/youth/banner/transformer/a;
.source "SourceFile"


# static fields
.field private static final a:F = 0.85f

.field private static final b:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected f(Landroid/view/View;F)V
    .locals 8

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v0, p2, v0

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    cmpg-float v0, p2, v1

    .line 10
    .line 11
    if-gtz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-float v3, v1, v3

    .line 28
    .line 29
    const v4, 0x3f59999a    # 0.85f

    .line 30
    .line 31
    .line 32
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sub-float/2addr v1, v3

    .line 37
    mul-float v5, v0, v1

    .line 38
    .line 39
    const/high16 v6, 0x40000000    # 2.0f

    .line 40
    .line 41
    div-float/2addr v5, v6

    .line 42
    mul-float v1, v1, v2

    .line 43
    .line 44
    div-float/2addr v1, v6

    .line 45
    const/high16 v7, 0x3f000000    # 0.5f

    .line 46
    .line 47
    mul-float v0, v0, v7

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 50
    .line 51
    .line 52
    mul-float v2, v2, v7

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    cmpg-float p2, p2, v0

    .line 59
    .line 60
    if-gez p2, :cond_1

    .line 61
    .line 62
    div-float/2addr v5, v6

    .line 63
    sub-float/2addr v1, v5

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    neg-float p2, v1

    .line 69
    div-float/2addr v5, v6

    .line 70
    add-float/2addr p2, v5

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 78
    .line 79
    .line 80
    sub-float/2addr v3, v4

    .line 81
    const p2, 0x3e199998    # 0.14999998f

    .line 82
    .line 83
    .line 84
    div-float/2addr v3, p2

    .line 85
    mul-float v3, v3, v7

    .line 86
    .line 87
    add-float/2addr v3, v7

    .line 88
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method
