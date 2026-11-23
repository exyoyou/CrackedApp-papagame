.class public Lcom/byazt/gr/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/an/ViewPager$n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xc4,
        0xd
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;F)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    cmpg-float v1, p2, v1

    .line 9
    .line 10
    if-ltz v1, :cond_1

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpg-float v3, p2, v1

    .line 15
    .line 16
    if-gtz v3, :cond_1

    .line 17
    .line 18
    cmpg-float v3, p2, v2

    .line 19
    .line 20
    if-gez v3, :cond_0

    .line 21
    .line 22
    neg-int v0, v0

    .line 23
    int-to-float v0, v0

    .line 24
    mul-float v0, v0, p2

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    int-to-float v3, v0

    .line 31
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 32
    .line 33
    .line 34
    neg-int v0, v0

    .line 35
    int-to-float v0, v0

    .line 36
    mul-float v0, v0, p2

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    sub-float/2addr v1, p2

    .line 46
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
