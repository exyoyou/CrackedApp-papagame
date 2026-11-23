.class public Lcom/byazt/zy/i;
.super Lcom/byazt/zy/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a2,
        0x2a
    }
.end annotation


# instance fields
.field public final a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final da:I

.field public final i:Lcom/byazt/jx/sp;

.field public final n:Z

.field public final sl:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Lcom/byazt/jx/uj;",
            "Lcom/byazt/jx/uj;",
            ">;"
        }
    .end annotation
.end field

.field public final sp:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/byazt/dg/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/dg/c<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Ljava/lang/String;

.field public final x:Landroid/graphics/RectF;

.field public yp:Lcom/byazt/dg/nu;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Lcom/byazt/jx/a;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lcom/byazt/jx/a;->x()Lcom/byazt/jx/rh$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/jx/rh$c;->c()Landroid/graphics/Paint$Cap;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p3}, Lcom/byazt/jx/a;->i()Lcom/byazt/jx/rh$tt;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/byazt/jx/rh$tt;->c()Landroid/graphics/Paint$Join;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p3}, Lcom/byazt/jx/a;->t()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p3}, Lcom/byazt/jx/a;->uj()Lcom/byazt/kd/uj;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p3}, Lcom/byazt/jx/a;->sp()Lcom/byazt/kd/tt;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p3}, Lcom/byazt/jx/a;->da()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p3}, Lcom/byazt/jx/a;->sl()Lcom/byazt/kd/tt;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-direct/range {v1 .. v10}, Lcom/byazt/zy/c;-><init>(Lcom/byazt/ga/x;Lcom/byazt/zk/ve;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/byazt/kd/uj;Lcom/byazt/kd/tt;Ljava/util/List;Lcom/byazt/kd/tt;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Landroid/util/LongSparseArray;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/byazt/zy/i;->a:Landroid/util/LongSparseArray;

    .line 49
    .line 50
    new-instance v0, Landroid/util/LongSparseArray;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/byazt/zy/i;->sp:Landroid/util/LongSparseArray;

    .line 56
    .line 57
    new-instance v0, Landroid/graphics/RectF;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/byazt/zy/i;->x:Landroid/graphics/RectF;

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/byazt/jx/a;->c()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/byazt/zy/i;->uj:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/byazt/jx/a;->tt()Lcom/byazt/jx/sp;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/byazt/zy/i;->i:Lcom/byazt/jx/sp;

    .line 75
    .line 76
    invoke-virtual {p3}, Lcom/byazt/jx/a;->u()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lcom/byazt/zy/i;->n:Z

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/byazt/ga/x;->p()Lcom/byazt/ga/a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/byazt/ga/a;->n()F

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/high16 v0, 0x42000000    # 32.0f

    .line 91
    .line 92
    div-float/2addr p1, v0

    .line 93
    float-to-int p1, p1

    .line 94
    iput p1, p0, Lcom/byazt/zy/i;->da:I

    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/byazt/jx/a;->ve()Lcom/byazt/kd/ve;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/byazt/kd/ve;->c()Lcom/byazt/dg/c;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/byazt/zy/i;->sl:Lcom/byazt/dg/c;

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/byazt/jx/a;->n()Lcom/byazt/kd/a;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/byazt/kd/a;->c()Lcom/byazt/dg/c;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, Lcom/byazt/zy/i;->t:Lcom/byazt/dg/c;

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Lcom/byazt/jx/a;->a()Lcom/byazt/kd/a;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/byazt/kd/a;->c()Lcom/byazt/dg/c;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lcom/byazt/zy/i;->u:Lcom/byazt/dg/c;

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Lcom/byazt/dg/c;->c(Lcom/byazt/dg/c$c;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Lcom/byazt/zk/ve;->c(Lcom/byazt/dg/c;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private c([I)[I
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/byazt/zy/i;->yp:Lcom/byazt/dg/nu;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/byazt/dg/nu;->sp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 11
    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 12
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 13
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_0
    array-length p1, v0

    new-array p1, p1, [I

    .line 15
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 16
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method private tt()Landroid/graphics/LinearGradient;
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/byazt/zy/i;->uj()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/byazt/zy/i;->a:Landroid/util/LongSparseArray;

    .line 6
    .line 7
    int-to-long v2, v0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/LinearGradient;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/zy/i;->t:Lcom/byazt/dg/c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/PointF;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/zy/i;->u:Lcom/byazt/dg/c;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/PointF;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/byazt/zy/i;->sl:Lcom/byazt/dg/c;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/byazt/jx/uj;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/byazt/jx/uj;->tt()[I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {p0, v5}, Lcom/byazt/zy/i;->c([I)[I

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    invoke-virtual {v4}, Lcom/byazt/jx/uj;->c()[F

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 54
    .line 55
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 58
    .line 59
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 62
    .line 63
    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 64
    .line 65
    move-object v6, v0

    .line 66
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/byazt/zy/i;->a:Landroid/util/LongSparseArray;

    .line 70
    .line 71
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method private uj()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/zy/i;->t:Lcom/byazt/dg/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/dg/c;->x()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/byazt/zy/i;->da:I

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    mul-float v0, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/byazt/zy/i;->u:Lcom/byazt/dg/c;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/byazt/dg/c;->x()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget v2, p0, Lcom/byazt/zy/i;->da:I

    .line 23
    .line 24
    int-to-float v2, v2

    .line 25
    mul-float v1, v1, v2

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/byazt/zy/i;->sl:Lcom/byazt/dg/c;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/byazt/dg/c;->x()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget v3, p0, Lcom/byazt/zy/i;->da:I

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    mul-float v2, v2, v3

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    mul-int/lit16 v0, v0, 0x20f

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/16 v0, 0x11

    .line 52
    .line 53
    :goto_0
    if-eqz v1, :cond_1

    .line 54
    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    mul-int v0, v0, v1

    .line 58
    .line 59
    :cond_1
    if-eqz v2, :cond_2

    .line 60
    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    mul-int v0, v0, v2

    .line 64
    .line 65
    :cond_2
    return v0
.end method

.method private ve()Landroid/graphics/RadialGradient;
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/byazt/zy/i;->uj()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/byazt/zy/i;->sp:Landroid/util/LongSparseArray;

    .line 6
    .line 7
    int-to-long v2, v0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/graphics/RadialGradient;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/zy/i;->t:Lcom/byazt/dg/c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/graphics/PointF;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/zy/i;->u:Lcom/byazt/dg/c;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/graphics/PointF;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/byazt/zy/i;->sl:Lcom/byazt/dg/c;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/byazt/dg/c;->sp()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/byazt/jx/uj;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/byazt/jx/uj;->tt()[I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {p0, v5}, Lcom/byazt/zy/i;->c([I)[I

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    invoke-virtual {v4}, Lcom/byazt/jx/uj;->c()[F

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 54
    .line 55
    iget v8, v0, Landroid/graphics/PointF;->y:F

    .line 56
    .line 57
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 58
    .line 59
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 60
    .line 61
    sub-float/2addr v0, v7

    .line 62
    float-to-double v4, v0

    .line 63
    sub-float/2addr v1, v8

    .line 64
    float-to-double v0, v1

    .line 65
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    double-to-float v9, v0

    .line 70
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 71
    .line 72
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 73
    .line 74
    move-object v6, v0

    .line 75
    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/byazt/zy/i;->sp:Landroid/util/LongSparseArray;

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method


# virtual methods
.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/zy/i;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/zy/i;->x:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/byazt/zy/c;->c(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 3
    iget-object v0, p0, Lcom/byazt/zy/i;->i:Lcom/byazt/jx/sp;

    sget-object v1, Lcom/byazt/jx/sp;->c:Lcom/byazt/jx/sp;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/byazt/zy/i;->tt()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/byazt/zy/i;->ve()Landroid/graphics/RadialGradient;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Lcom/byazt/zy/c;->tt:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/byazt/zy/c;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
