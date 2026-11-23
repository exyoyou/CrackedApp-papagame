.class public Lcom/youth/banner/transformer/o;
.super Lcom/youth/banner/transformer/a;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/Matrix;

.field private static final b:Landroid/graphics/Camera;

.field private static final c:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/youth/banner/transformer/o;->a:Landroid/graphics/Matrix;

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Camera;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/youth/banner/transformer/o;->b:Landroid/graphics/Camera;

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [F

    .line 17
    .line 18
    sput-object v0, Lcom/youth/banner/transformer/o;->c:[F

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected static final g(FII)F
    .locals 4

    .line 1
    sget-object v0, Lcom/youth/banner/transformer/o;->a:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/youth/banner/transformer/o;->b:Landroid/graphics/Camera;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 22
    .line 23
    .line 24
    neg-int v1, p1

    .line 25
    int-to-float v1, v1

    .line 26
    const/high16 v2, 0x3f000000    # 0.5f

    .line 27
    .line 28
    mul-float v1, v1, v2

    .line 29
    .line 30
    neg-int v3, p2

    .line 31
    int-to-float v3, v3

    .line 32
    mul-float v3, v3, v2

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 35
    .line 36
    .line 37
    int-to-float p1, p1

    .line 38
    mul-float v1, p1, v2

    .line 39
    .line 40
    int-to-float p2, p2

    .line 41
    mul-float v2, v2, p2

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/youth/banner/transformer/o;->c:[F

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    aput p1, v1, v2

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    aput p2, v1, v3

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 55
    .line 56
    .line 57
    aget p2, v1, v2

    .line 58
    .line 59
    sub-float/2addr p1, p2

    .line 60
    const/4 p2, 0x0

    .line 61
    cmpl-float p0, p0, p2

    .line 62
    .line 63
    if-lez p0, :cond_0

    .line 64
    .line 65
    const/high16 p0, 0x3f800000    # 1.0f

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 69
    .line 70
    :goto_0
    mul-float p1, p1, p0

    .line 71
    .line 72
    return p1
.end method


# virtual methods
.method protected f(Landroid/view/View;F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p2, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/high16 v1, 0x41f00000    # 30.0f

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/high16 v1, -0x3e100000    # -30.0f

    .line 10
    .line 11
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    mul-float v1, v1, p2

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1, p2, v2}, Lcom/youth/banner/transformer/o;->g(FII)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    int-to-float p2, p2

    .line 37
    const/high16 v2, 0x3f000000    # 0.5f

    .line 38
    .line 39
    mul-float p2, p2, v2

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
