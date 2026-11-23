.class Lcom/join/mgps/customview/LightningView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/LightningView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/LightningView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/LightningView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->c(Lcom/join/mgps/customview/LightningView;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    mul-int/lit8 v1, v1, 0x4

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    mul-float v1, v1, p1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/join/mgps/customview/LightningView;->c(Lcom/join/mgps/customview/LightningView;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    mul-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    int-to-float v2, v2

    .line 31
    sub-float/2addr v1, v2

    .line 32
    invoke-static {v0, v1}, Lcom/join/mgps/customview/LightningView;->b(Lcom/join/mgps/customview/LightningView;F)F

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->f(Lcom/join/mgps/customview/LightningView;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    int-to-float v1, v1

    .line 42
    mul-float v1, v1, p1

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/join/mgps/customview/LightningView;->e(Lcom/join/mgps/customview/LightningView;F)F

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/customview/LightningView;->g(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Matrix;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/mgps/customview/LightningView;->g(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Matrix;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->a(Lcom/join/mgps/customview/LightningView;)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/join/mgps/customview/LightningView;->d(Lcom/join/mgps/customview/LightningView;)F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/join/mgps/customview/LightningView;->h(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Shader;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/join/mgps/customview/LightningView;->h(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Shader;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/join/mgps/customview/LightningView;->g(Lcom/join/mgps/customview/LightningView;)Landroid/graphics/Matrix;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/LightningView$a;->b:Lcom/join/mgps/customview/LightningView;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 102
    .line 103
    .line 104
    return-void
.end method
