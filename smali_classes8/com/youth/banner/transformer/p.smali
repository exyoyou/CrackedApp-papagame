.class public Lcom/youth/banner/transformer/p;
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
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v2, p2, v1

    .line 5
    .line 6
    if-gez v2, :cond_0

    .line 7
    .line 8
    add-float v2, p2, v0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sub-float v2, v0, p2

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    const/high16 v4, 0x3f000000    # 0.5f

    .line 29
    .line 30
    mul-float v3, v3, v4

    .line 31
    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    int-to-float v3, v3

    .line 40
    mul-float v3, v3, v4

    .line 41
    .line 42
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 43
    .line 44
    .line 45
    const/high16 v3, -0x40800000    # -1.0f

    .line 46
    .line 47
    cmpg-float v3, p2, v3

    .line 48
    .line 49
    if-ltz v3, :cond_2

    .line 50
    .line 51
    cmpl-float p2, p2, v0

    .line 52
    .line 53
    if-lez p2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    sub-float/2addr v2, v0

    .line 57
    sub-float v1, v0, v2

    .line 58
    .line 59
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
