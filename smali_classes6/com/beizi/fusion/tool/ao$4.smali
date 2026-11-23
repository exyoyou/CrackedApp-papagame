.class Lcom/beizi/fusion/tool/ao$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/ao;->a(FFFF)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/beizi/fusion/tool/ao;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/ao;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/tool/ao$4;->a:F

    .line 4
    .line 5
    iput p3, p0, Lcom/beizi/fusion/tool/ao$4;->b:F

    .line 6
    .line 7
    iput p4, p0, Lcom/beizi/fusion/tool/ao$4;->c:F

    .line 8
    .line 9
    iput p5, p0, Lcom/beizi/fusion/tool/ao$4;->d:F

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/beizi/fusion/tool/ao$4;->a:F

    .line 6
    .line 7
    iget v1, p0, Lcom/beizi/fusion/tool/ao$4;->b:F

    .line 8
    .line 9
    sub-float/2addr v1, v0

    .line 10
    mul-float v1, v1, p1

    .line 11
    .line 12
    add-float/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/beizi/fusion/tool/ao$4;->c:F

    .line 14
    .line 15
    iget v2, p0, Lcom/beizi/fusion/tool/ao$4;->d:F

    .line 16
    .line 17
    sub-float/2addr v2, v1

    .line 18
    mul-float v2, v2, p1

    .line 19
    .line 20
    add-float/2addr v1, v2

    .line 21
    iget-object p1, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/beizi/fusion/tool/ao;->t(Lcom/beizi/fusion/tool/ao;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-float p1, p1

    .line 28
    iget-object v2, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/beizi/fusion/tool/ao;->u(Lcom/beizi/fusion/tool/ao;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    int-to-float v2, v2

    .line 35
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->v(Lcom/beizi/fusion/tool/ao;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    int-to-float v0, v0

    .line 50
    iget-object v2, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/beizi/fusion/tool/ao;->w(Lcom/beizi/fusion/tool/ao;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/beizi/fusion/tool/ao;->x(Lcom/beizi/fusion/tool/ao;)Landroid/widget/ImageView;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/beizi/fusion/tool/ao;->x(Lcom/beizi/fusion/tool/ao;)Landroid/widget/ImageView;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/beizi/fusion/tool/ao;->y(Lcom/beizi/fusion/tool/ao;)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    int-to-float v2, v2

    .line 86
    sub-float/2addr p1, v2

    .line 87
    invoke-virtual {v1, p1}, Landroid/view/View;->setX(F)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/beizi/fusion/tool/ao;->x(Lcom/beizi/fusion/tool/ao;)Landroid/widget/ImageView;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v1, p0, Lcom/beizi/fusion/tool/ao$4;->e:Lcom/beizi/fusion/tool/ao;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/beizi/fusion/tool/ao;->z(Lcom/beizi/fusion/tool/ao;)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    int-to-float v1, v1

    .line 103
    sub-float/2addr v0, v1

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :cond_0
    :goto_0
    return-void
.end method
