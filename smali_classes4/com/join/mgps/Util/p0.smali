.class public Lcom/join/mgps/Util/p0;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/p0$a;
    }
.end annotation


# instance fields
.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private f:Landroid/graphics/Camera;

.field private g:Z

.field private h:Lcom/join/mgps/Util/p0$a;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromDegrees",
            "toDegrees",
            "centerX",
            "centerY"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/Util/p0;->g:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/join/mgps/Util/p0;->b:F

    .line 8
    .line 9
    iput p2, p0, Lcom/join/mgps/Util/p0;->c:F

    .line 10
    .line 11
    iput p3, p0, Lcom/join/mgps/Util/p0;->d:F

    .line 12
    .line 13
    iput p4, p0, Lcom/join/mgps/Util/p0;->e:F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/Util/p0;->g:Z

    .line 3
    .line 4
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpolatedTime",
            "t"
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/join/mgps/Util/p0;->b:F

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/Util/p0;->c:F

    .line 4
    .line 5
    sub-float/2addr v1, v0

    .line 6
    mul-float v1, v1, p1

    .line 7
    .line 8
    add-float/2addr v0, v1

    .line 9
    iget p1, p0, Lcom/join/mgps/Util/p0;->d:F

    .line 10
    .line 11
    iget v1, p0, Lcom/join/mgps/Util/p0;->e:F

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/Util/p0;->f:Landroid/graphics/Camera;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 20
    .line 21
    .line 22
    const/high16 v3, 0x42b40000    # 90.0f

    .line 23
    .line 24
    cmpl-float v4, v0, v3

    .line 25
    .line 26
    if-gtz v4, :cond_0

    .line 27
    .line 28
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 29
    .line 30
    cmpg-float v4, v0, v4

    .line 31
    .line 32
    if-gez v4, :cond_4

    .line 33
    .line 34
    :cond_0
    iget-boolean v4, p0, Lcom/join/mgps/Util/p0;->g:Z

    .line 35
    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    iget-object v4, p0, Lcom/join/mgps/Util/p0;->h:Lcom/join/mgps/Util/p0$a;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v4}, Lcom/join/mgps/Util/p0$a;->a()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v4, 0x1

    .line 46
    iput-boolean v4, p0, Lcom/join/mgps/Util/p0;->g:Z

    .line 47
    .line 48
    :cond_2
    const/4 v4, 0x0

    .line 49
    cmpl-float v5, v0, v4

    .line 50
    .line 51
    if-lez v5, :cond_3

    .line 52
    .line 53
    const/high16 v4, 0x43870000    # 270.0f

    .line 54
    .line 55
    add-float/2addr v0, v4

    .line 56
    sub-float/2addr v0, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    cmpg-float v4, v0, v4

    .line 59
    .line 60
    if-gez v4, :cond_4

    .line 61
    .line 62
    const/high16 v4, -0x3c790000    # -270.0f

    .line 63
    .line 64
    add-float/2addr v0, v3

    .line 65
    add-float/2addr v0, v4

    .line 66
    :cond_4
    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    .line 73
    .line 74
    .line 75
    neg-float v0, p1

    .line 76
    neg-float v2, v1

    .line 77
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :goto_1
    return-void
.end method

.method public b(Lcom/join/mgps/Util/p0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/p0;->h:Lcom/join/mgps/Util/p0$a;

    .line 2
    .line 3
    return-void
.end method

.method public initialize(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "parentWidth",
            "parentHeight"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Camera;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/join/mgps/Util/p0;->f:Landroid/graphics/Camera;

    .line 10
    .line 11
    return-void
.end method
