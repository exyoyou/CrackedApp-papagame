.class Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/zoomlayout/ZoomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field b:Z

.field c:Z

.field private d:J

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field final synthetic m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c:Z

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->d:J

    .line 16
    .line 17
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->c(F)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->c()V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c:Z

    .line 43
    .line 44
    return-void
.end method

.method private e()F
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->d:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-float v0, v0

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    mul-float v0, v0, v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    div-float/2addr v0, v2

    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2600(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/view/animation/Interpolator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method b()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->e:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->f:F

    .line 5
    .line 6
    float-to-double v2, v2

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isEqual(DD)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method c()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->i:F

    .line 2
    .line 3
    float-to-double v0, v0

    .line 4
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->k:F

    .line 5
    .line 6
    float-to-double v2, v2

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isEqual(DD)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->j:F

    .line 14
    .line 15
    float-to-double v0, v0

    .line 16
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->l:F

    .line 17
    .line 18
    float-to-double v2, v2

    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->isEqual(DD)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 29
    :goto_1
    return v0
.end method

.method g()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$900(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1000(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v2, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->clamp(FFF)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const/4 v6, 0x1

    .line 36
    move-object v1, p0

    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->h(FFFFZ)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    return v0

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    return v0
.end method

.method h(FFFFZ)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentZoom",
            "targetZoom",
            "focalX",
            "focalY",
            "ensureTranslations"
        }
    .end annotation

    .line 1
    iput p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->g:F

    .line 2
    .line 3
    iput p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->h:F

    .line 4
    .line 5
    iput p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->e:F

    .line 6
    .line 7
    iput p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->f:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getScale()F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->b(F)V

    .line 28
    .line 29
    .line 30
    :cond_0
    if-eqz p5, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosX()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->i:F

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->getPosY()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->j:F

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 55
    .line 56
    invoke-static {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/graphics/Matrix;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    iget p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->f:F

    .line 61
    .line 62
    iget p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->g:F

    .line 63
    .line 64
    iget p5, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->h:F

    .line 65
    .line 66
    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 67
    .line 68
    .line 69
    iget-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 70
    .line 71
    invoke-static {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2200(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2300(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/graphics/PointF;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget p3, p2, Landroid/graphics/PointF;->x:F

    .line 81
    .line 82
    iput p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->k:F

    .line 83
    .line 84
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 85
    .line 86
    iput p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->l:F

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2100(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Landroid/graphics/Matrix;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget p2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->e:F

    .line 97
    .line 98
    iget-object p3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 99
    .line 100
    invoke-static {p3}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    iget-object p4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 105
    .line 106
    invoke-static {p4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1800(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)F

    .line 107
    .line 108
    .line 109
    move-result p4

    .line 110
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2200(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->b()V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-object p0
.end method

.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->e()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->b()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->e:F

    .line 29
    .line 30
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->f:F

    .line 31
    .line 32
    sub-float/2addr v2, v1

    .line 33
    mul-float v2, v2, v0

    .line 34
    .line 35
    add-float/2addr v1, v2

    .line 36
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 37
    .line 38
    iget v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->g:F

    .line 39
    .line 40
    iget v4, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->h:F

    .line 41
    .line 42
    invoke-static {v2, v1, v3, v4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1900(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFF)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 46
    .line 47
    invoke-static {v2}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$1500(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2, v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$n;->a(F)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->c()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->i:F

    .line 61
    .line 62
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->k:F

    .line 63
    .line 64
    sub-float/2addr v2, v1

    .line 65
    mul-float v2, v2, v0

    .line 66
    .line 67
    add-float/2addr v1, v2

    .line 68
    iget v2, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->j:F

    .line 69
    .line 70
    iget v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->l:F

    .line 71
    .line 72
    sub-float/2addr v3, v2

    .line 73
    mul-float v3, v3, v0

    .line 74
    .line 75
    add-float/2addr v2, v3

    .line 76
    iget-object v3, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static {v3, v1, v2, v4}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$2400(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;FFZ)Z

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout;->access$700(Lcom/join/mgps/customview/zoomlayout/ZoomLayout;)Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$k;->a()V

    .line 89
    .line 90
    .line 91
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    .line 93
    cmpg-float v0, v0, v1

    .line 94
    .line 95
    if-gez v0, :cond_3

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->m:Lcom/join/mgps/customview/zoomlayout/ZoomLayout;

    .line 98
    .line 99
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-direct {p0}, Lcom/join/mgps/customview/zoomlayout/ZoomLayout$b;->d()V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_0
    return-void
.end method
