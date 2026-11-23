.class public Lcom/youth/banner/transformer/c;
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
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/high16 v3, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpg-float v2, p2, v2

    .line 15
    .line 16
    if-gez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sub-float/2addr v3, p2

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    :goto_0
    const/high16 v4, 0x3f000000    # 0.5f

    .line 25
    .line 26
    invoke-static {v3, v4}, Lcom/youth/banner/transformer/a;->c(FF)F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 34
    .line 35
    .line 36
    mul-float v3, v1, v4

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 39
    .line 40
    .line 41
    mul-float v0, v0, v4

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 44
    .line 45
    .line 46
    if-gez v2, :cond_1

    .line 47
    .line 48
    mul-float v1, v1, p2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    neg-float v0, v1

    .line 52
    mul-float v0, v0, p2

    .line 53
    .line 54
    const/high16 p2, 0x3e800000    # 0.25f

    .line 55
    .line 56
    mul-float v1, v0, p2

    .line 57
    .line 58
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
