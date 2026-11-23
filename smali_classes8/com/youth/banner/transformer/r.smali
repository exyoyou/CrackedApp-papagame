.class public Lcom/youth/banner/transformer/r;
.super Lcom/youth/banner/transformer/a;
.source "SourceFile"


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
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    add-float/2addr v0, v1

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    const/high16 v3, 0x3f000000    # 0.5f

    .line 20
    .line 21
    mul-float v2, v2, v3

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    mul-float v2, v2, v3

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 34
    .line 35
    .line 36
    const/high16 v2, -0x40800000    # -1.0f

    .line 37
    .line 38
    cmpg-float v3, p2, v2

    .line 39
    .line 40
    if-ltz v3, :cond_1

    .line 41
    .line 42
    cmpl-float v3, p2, v1

    .line 43
    .line 44
    if-lez v3, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sub-float/2addr v0, v1

    .line 48
    sub-float/2addr v1, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 51
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 52
    .line 53
    .line 54
    cmpl-float p2, p2, v2

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    mul-int/lit8 p2, p2, -0x1

    .line 63
    .line 64
    int-to-float p2, p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method
