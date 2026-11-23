.class public Lcom/join/mgps/ptr/indicator/b;
.super Lcom/join/mgps/ptr/indicator/a;
.source "SourceFile"


# instance fields
.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/ptr/indicator/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f000000    # 0.5f

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->o:F

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 10
    .line 11
    const/high16 v0, -0x40800000    # -1.0f

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->u:F

    .line 14
    .line 15
    return-void
.end method

.method private O(F)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollTop"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 2
    .line 3
    div-float v0, p1, v0

    .line 4
    .line 5
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->s:F

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 17
    .line 18
    sub-float/2addr p1, v0

    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    mul-float v0, v0, v1

    .line 22
    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 28
    .line 29
    div-float/2addr p1, v0

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/high16 v1, 0x40800000    # 4.0f

    .line 36
    .line 37
    div-float/2addr p1, v1

    .line 38
    float-to-double v1, p1

    .line 39
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 40
    .line 41
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 42
    .line 43
    .line 44
    return v0
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/ptr/indicator/a;->A()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->t:I

    .line 9
    .line 10
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->s:F

    .line 11
    .line 12
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->u:F

    .line 13
    .line 14
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->t:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/b;->N()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/join/mgps/ptr/indicator/b;->u:F

    .line 12
    .line 13
    return-void
.end method

.method protected D(FFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentX",
            "currentY",
            "offsetX",
            "offsetY"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->p:F

    .line 2
    .line 3
    cmpg-float v1, p2, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/ptr/indicator/a;->D(FFFF)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sub-float/2addr p2, v0

    .line 12
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->o:F

    .line 13
    .line 14
    mul-float p2, p2, p4

    .line 15
    .line 16
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->q:F

    .line 17
    .line 18
    add-float/2addr p2, p4

    .line 19
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 20
    .line 21
    div-float p4, p2, p4

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    cmpg-float v1, p4, v0

    .line 25
    .line 26
    if-gez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p3, v0}, Lcom/join/mgps/ptr/indicator/a;->G(FF)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iput p4, p0, Lcom/join/mgps/ptr/indicator/b;->s:F

    .line 33
    .line 34
    const/high16 p3, 0x3f800000    # 1.0f

    .line 35
    .line 36
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 45
    .line 46
    sub-float/2addr p2, p4

    .line 47
    const/high16 v1, 0x40000000    # 2.0f

    .line 48
    .line 49
    mul-float p4, p4, v1

    .line 50
    .line 51
    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 56
    .line 57
    div-float/2addr p2, p4

    .line 58
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    const/high16 p4, 0x40800000    # 4.0f

    .line 63
    .line 64
    div-float/2addr p2, p4

    .line 65
    float-to-double v2, p2

    .line 66
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 67
    .line 68
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 69
    .line 70
    .line 71
    move-result-wide v4

    .line 72
    sub-double/2addr v2, v4

    .line 73
    double-to-float p2, v2

    .line 74
    mul-float p2, p2, v1

    .line 75
    .line 76
    iget p4, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 77
    .line 78
    mul-float p2, p2, p4

    .line 79
    .line 80
    div-float/2addr p2, v1

    .line 81
    mul-float p4, p4, p3

    .line 82
    .line 83
    add-float/2addr p4, p2

    .line 84
    float-to-int p2, p4

    .line 85
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    sub-int/2addr p2, p3

    .line 90
    int-to-float p2, p2

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/ptr/indicator/a;->G(FF)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public F(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ptr/indicator/a;->F(I)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    const/high16 v0, 0x40800000    # 4.0f

    .line 6
    .line 7
    mul-float p1, p1, v0

    .line 8
    .line 9
    const/high16 v0, 0x40a00000    # 5.0f

    .line 10
    .line 11
    div-float/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 13
    .line 14
    return-void
.end method

.method public N()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->s:F

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->u:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    cmpg-float v1, v0, v1

    .line 14
    .line 15
    if-gtz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    mul-float v0, v0, v1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/b;->h()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :goto_0
    int-to-float v1, v1

    .line 31
    div-float/2addr v0, v1

    .line 32
    return v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    mul-float v0, v0, v1

    .line 39
    .line 40
    iget v1, p0, Lcom/join/mgps/ptr/indicator/b;->t:I

    .line 41
    .line 42
    goto :goto_0
.end method

.method public h()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/b;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/indicator/b;->r:F

    .line 2
    .line 3
    float-to-int v0, v0

    .line 4
    return v0
.end method

.method public z(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/ptr/indicator/a;->z(FF)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/join/mgps/ptr/indicator/b;->p:F

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/ptr/indicator/a;->d()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    iput p1, p0, Lcom/join/mgps/ptr/indicator/b;->q:F

    .line 12
    .line 13
    return-void
.end method
