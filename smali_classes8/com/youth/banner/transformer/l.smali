.class public Lcom/youth/banner/transformer/l;
.super Lcom/youth/banner/transformer/a;
.source "SourceFile"


# static fields
.field private static final a:F = -15.0f


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
.method protected b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method protected f(Landroid/view/View;F)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, -0x3e900000    # -15.0f

    .line 7
    .line 8
    mul-float p2, p2, v1

    .line 9
    .line 10
    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    .line 12
    mul-float v0, v0, v1

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
