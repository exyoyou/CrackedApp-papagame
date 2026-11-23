.class public Lcom/join/mgps/anim/a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:Z

.field private h:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromDegrees",
            "toDegrees",
            "centerX",
            "centerY",
            "depthZ",
            "reverse"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/join/mgps/anim/a;->b:F

    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/anim/a;->c:F

    .line 7
    .line 8
    iput p3, p0, Lcom/join/mgps/anim/a;->d:F

    .line 9
    .line 10
    iput p4, p0, Lcom/join/mgps/anim/a;->e:F

    .line 11
    .line 12
    iput p5, p0, Lcom/join/mgps/anim/a;->f:F

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/join/mgps/anim/a;->g:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
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
    iget v0, p0, Lcom/join/mgps/anim/a;->b:F

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/anim/a;->c:F

    .line 4
    .line 5
    sub-float/2addr v1, v0

    .line 6
    mul-float v1, v1, p1

    .line 7
    .line 8
    add-float/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/join/mgps/anim/a;->d:F

    .line 10
    .line 11
    iget v2, p0, Lcom/join/mgps/anim/a;->e:F

    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/anim/a;->h:Landroid/graphics/Camera;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, ""

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 33
    .line 34
    .line 35
    iget-boolean v4, p0, Lcom/join/mgps/anim/a;->g:Z

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget v4, p0, Lcom/join/mgps/anim/a;->f:F

    .line 41
    .line 42
    mul-float v4, v4, p1

    .line 43
    .line 44
    invoke-virtual {v3, v5, v5, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget v4, p0, Lcom/join/mgps/anim/a;->f:F

    .line 49
    .line 50
    const/high16 v6, 0x3f800000    # 1.0f

    .line 51
    .line 52
    sub-float/2addr v6, p1

    .line 53
    mul-float v4, v4, v6

    .line 54
    .line 55
    invoke-virtual {v3, v5, v5, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 65
    .line 66
    .line 67
    neg-float p1, v1

    .line 68
    neg-float v0, v2

    .line 69
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 73
    .line 74
    .line 75
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
    iput-object p1, p0, Lcom/join/mgps/anim/a;->h:Landroid/graphics/Camera;

    .line 10
    .line 11
    return-void
.end method
