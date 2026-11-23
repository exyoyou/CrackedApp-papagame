.class public Lcom/byazt/gr/ve;
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
        0x36
    }
.end annotation


# instance fields
.field public final c:F

.field public final tt:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3f4ccccd    # 0.8f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/gr/ve;->c:F

    .line 8
    .line 9
    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    .line 11
    iput v0, p0, Lcom/byazt/gr/ve;->tt:F

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;F)V
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
    const v3, 0x3e4ccccc    # 0.19999999f

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const v3, -0x41b33334    # -0.19999999f

    .line 13
    .line 14
    .line 15
    :goto_0
    mul-float v3, v3, p2

    .line 16
    .line 17
    add-float/2addr v3, v0

    .line 18
    if-gez v2, :cond_1

    .line 19
    .line 20
    const/high16 v4, 0x3f000000    # 0.5f

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/high16 v4, -0x41000000    # -0.5f

    .line 24
    .line 25
    :goto_1
    mul-float p2, p2, v4

    .line 26
    .line 27
    add-float/2addr p2, v0

    .line 28
    if-gez v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-float v0, v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    div-int/lit8 v0, v0, 0x2

    .line 43
    .line 44
    int-to-float v0, v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    div-int/lit8 v0, v0, 0x2

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 60
    .line 61
    .line 62
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
