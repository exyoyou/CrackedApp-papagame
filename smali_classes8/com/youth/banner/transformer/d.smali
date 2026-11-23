.class public Lcom/youth/banner/transformer/d;
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
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method protected f(Landroid/view/View;F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 3
    .line 4
    if-lez v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 17
    .line 18
    .line 19
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 20
    .line 21
    mul-float p2, p2, v0

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
