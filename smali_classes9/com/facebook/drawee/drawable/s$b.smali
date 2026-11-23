.class public Lcom/facebook/drawee/drawable/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/drawee/drawable/s$c;
.implements Lcom/facebook/drawee/drawable/s$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final l:Lcom/facebook/drawee/drawable/s$c;

.field private final m:Lcom/facebook/drawee/drawable/s$c;

.field private final n:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final o:Landroid/graphics/Rect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final p:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final q:Landroid/graphics/PointF;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final r:[F

.field private final s:[F

.field private final t:[F

.field private u:F


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/drawable/s$c;Lcom/facebook/drawee/drawable/s$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scaleTypeFrom",
            "scaleTypeTo"
        }
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/drawee/drawable/s$b;-><init>(Lcom/facebook/drawee/drawable/s$c;Lcom/facebook/drawee/drawable/s$c;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/drawable/s$c;Lcom/facebook/drawee/drawable/s$c;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleTypeFrom",
            "scaleTypeTo",
            "boundsFrom",
            "boundsTo"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/drawable/s$b;-><init>(Lcom/facebook/drawee/drawable/s$c;Lcom/facebook/drawee/drawable/s$c;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/drawable/s$c;Lcom/facebook/drawee/drawable/s$c;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2
    .param p3    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
            "scaleTypeFrom",
            "scaleTypeTo",
            "boundsFrom",
            "boundsTo",
            "focusPointFrom",
            "focusPointTo"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/facebook/drawee/drawable/s$b;->r:[F

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcom/facebook/drawee/drawable/s$b;->s:[F

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/facebook/drawee/drawable/s$b;->t:[F

    .line 5
    iput-object p1, p0, Lcom/facebook/drawee/drawable/s$b;->l:Lcom/facebook/drawee/drawable/s$c;

    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/drawable/s$b;->m:Lcom/facebook/drawee/drawable/s$c;

    .line 7
    iput-object p3, p0, Lcom/facebook/drawee/drawable/s$b;->n:Landroid/graphics/Rect;

    .line 8
    iput-object p4, p0, Lcom/facebook/drawee/drawable/s$b;->o:Landroid/graphics/Rect;

    .line 9
    iput-object p5, p0, Lcom/facebook/drawee/drawable/s$b;->p:Landroid/graphics/PointF;

    .line 10
    iput-object p6, p0, Lcom/facebook/drawee/drawable/s$b;->q:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
    .locals 10
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
            "transform",
            "parentBounds",
            "childWidth",
            "childHeight",
            "focusX",
            "focusY"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v8, p1

    .line 3
    iget-object v1, v0, Lcom/facebook/drawee/drawable/s$b;->n:Landroid/graphics/Rect;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v3, p2

    .line 10
    :goto_0
    iget-object v1, v0, Lcom/facebook/drawee/drawable/s$b;->o:Landroid/graphics/Rect;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    move-object v9, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v9, p2

    .line 17
    :goto_1
    iget-object v1, v0, Lcom/facebook/drawee/drawable/s$b;->l:Lcom/facebook/drawee/drawable/s$c;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/facebook/drawee/drawable/s$b;->p:Landroid/graphics/PointF;

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    move v6, p5

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 26
    .line 27
    move v6, v4

    .line 28
    :goto_2
    if-nez v2, :cond_3

    .line 29
    .line 30
    move/from16 v7, p6

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 34
    .line 35
    move v7, v2

    .line 36
    :goto_3
    move-object v2, p1

    .line 37
    move v4, p3

    .line 38
    move v5, p4

    .line 39
    invoke-interface/range {v1 .. v7}, Lcom/facebook/drawee/drawable/s$c;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/facebook/drawee/drawable/s$b;->r:[F

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/facebook/drawee/drawable/s$b;->m:Lcom/facebook/drawee/drawable/s$c;

    .line 48
    .line 49
    iget-object v2, v0, Lcom/facebook/drawee/drawable/s$b;->q:Landroid/graphics/PointF;

    .line 50
    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    move v6, p5

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 56
    .line 57
    move v6, v3

    .line 58
    :goto_4
    if-nez v2, :cond_5

    .line 59
    .line 60
    move/from16 v7, p6

    .line 61
    .line 62
    goto :goto_5

    .line 63
    :cond_5
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 64
    .line 65
    move v7, v2

    .line 66
    :goto_5
    move-object v2, p1

    .line 67
    move-object v3, v9

    .line 68
    move v4, p3

    .line 69
    move v5, p4

    .line 70
    invoke-interface/range {v1 .. v7}, Lcom/facebook/drawee/drawable/s$c;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/facebook/drawee/drawable/s$b;->s:[F

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    :goto_6
    const/16 v2, 0x9

    .line 80
    .line 81
    if-ge v1, v2, :cond_6

    .line 82
    .line 83
    iget-object v2, v0, Lcom/facebook/drawee/drawable/s$b;->t:[F

    .line 84
    .line 85
    iget-object v3, v0, Lcom/facebook/drawee/drawable/s$b;->r:[F

    .line 86
    .line 87
    aget v3, v3, v1

    .line 88
    .line 89
    iget v4, v0, Lcom/facebook/drawee/drawable/s$b;->u:F

    .line 90
    .line 91
    const/high16 v5, 0x3f800000    # 1.0f

    .line 92
    .line 93
    sub-float/2addr v5, v4

    .line 94
    mul-float v3, v3, v5

    .line 95
    .line 96
    iget-object v5, v0, Lcom/facebook/drawee/drawable/s$b;->s:[F

    .line 97
    .line 98
    aget v5, v5, v1

    .line 99
    .line 100
    mul-float v5, v5, v4

    .line 101
    .line 102
    add-float/2addr v3, v5

    .line 103
    aput v3, v2, v1

    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_6
    iget-object v1, v0, Lcom/facebook/drawee/drawable/s$b;->t:[F

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 111
    .line 112
    .line 113
    return-object v8
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/s$b;->n:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/s$b;->o:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/s$b;->p:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/s$b;->q:Landroid/graphics/PointF;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lcom/facebook/drawee/drawable/s$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/s$b;->l:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/facebook/drawee/drawable/s$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/s$b;->m:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/s$b;->u:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/drawee/drawable/s$b;->u:F

    .line 2
    .line 3
    return v0
.end method

.method public i(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/drawee/drawable/s$b;->u:F

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/facebook/drawee/drawable/s$b;->l:Lcom/facebook/drawee/drawable/s$c;

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/facebook/drawee/drawable/s$b;->p:Landroid/graphics/PointF;

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/facebook/drawee/drawable/s$b;->m:Lcom/facebook/drawee/drawable/s$c;

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/facebook/drawee/drawable/s$b;->q:Landroid/graphics/PointF;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    const-string v1, "InterpolatingScaleType(%s (%s) -> %s (%s))"

    .line 41
    .line 42
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
