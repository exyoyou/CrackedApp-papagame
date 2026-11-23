.class public Lcom/youth/banner/transformer/h;
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
.method protected d(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/youth/banner/transformer/a;->d(Landroid/view/View;F)V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x41000000    # -0.5f

    .line 5
    .line 6
    cmpl-float v0, p2, v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/high16 v0, 0x3f000000    # 0.5f

    .line 11
    .line 12
    cmpg-float p2, p2, v0

    .line 13
    .line 14
    if-gez p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x4

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method protected f(Landroid/view/View;F)V
    .locals 2

    .line 1
    const/high16 v0, 0x43340000    # 180.0f

    .line 2
    .line 3
    mul-float p2, p2, v0

    .line 4
    .line 5
    const/high16 v0, 0x42b40000    # 90.0f

    .line 6
    .line 7
    cmpl-float v0, p2, v0

    .line 8
    .line 9
    if-gtz v0, :cond_1

    .line 10
    .line 11
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 12
    .line 13
    cmpg-float v0, p2, v0

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 22
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    const/high16 v1, 0x3f000000    # 0.5f

    .line 31
    .line 32
    mul-float v0, v0, v1

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    mul-float v0, v0, v1

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
