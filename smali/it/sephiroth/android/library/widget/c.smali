.class public Lit/sephiroth/android/library/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/c$a;
    }
.end annotation


# static fields
.field private static final f:I = 0xfa

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static i:F = 8.0f

.field private static j:F = 1.0f


# instance fields
.field private a:I

.field private final b:Lit/sephiroth/android/library/widget/c$a;

.field private final c:Lit/sephiroth/android/library/widget/c$a;

.field private d:Landroid/view/animation/Interpolator;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c;->B(F)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    sput v0, Lit/sephiroth/android/library/widget/c;->j:F

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "interpolator"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "interpolator",
            "bounceCoefficientX",
            "bounceCoefficientY"
        }
    .end annotation

    const/4 p3, 0x1

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
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
            "context",
            "interpolator",
            "bounceCoefficientX",
            "bounceCoefficientY",
            "flywheel"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p5}, Lit/sephiroth/android/library/widget/c;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "interpolator",
            "flywheel"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lit/sephiroth/android/library/widget/c;->d:Landroid/view/animation/Interpolator;

    .line 5
    iput-boolean p3, p0, Lit/sephiroth/android/library/widget/c;->e:Z

    .line 6
    new-instance p2, Lit/sephiroth/android/library/widget/c$a;

    invoke-direct {p2, p1}, Lit/sephiroth/android/library/widget/c$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 7
    new-instance p2, Lit/sephiroth/android/library/widget/c$a;

    invoke-direct {p2, p1}, Lit/sephiroth/android/library/widget/c$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    return-void
.end method

.method public static B(F)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1
    sget v0, Lit/sephiroth/android/library/widget/c;->i:F

    .line 2
    .line 3
    mul-float p0, p0, v0

    .line 4
    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpg-float v1, p0, v0

    .line 8
    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    neg-float v1, p0

    .line 12
    float-to-double v1, v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    double-to-float v1, v1

    .line 18
    sub-float/2addr v0, v1

    .line 19
    sub-float/2addr p0, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sub-float p0, v0, p0

    .line 22
    .line 23
    float-to-double v1, p0

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    double-to-float p0, v1

    .line 29
    sub-float/2addr v0, p0

    .line 30
    const p0, 0x3f21d2a7

    .line 31
    .line 32
    .line 33
    mul-float v0, v0, p0

    .line 34
    .line 35
    const p0, 0x3ebc5ab2

    .line 36
    .line 37
    .line 38
    add-float/2addr p0, v0

    .line 39
    :goto_0
    sget v0, Lit/sephiroth/android/library/widget/c;->j:F

    .line 40
    .line 41
    mul-float p0, p0, v0

    .line 42
    .line 43
    return p0
.end method


# virtual methods
.method public A()I
    .locals 6

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 6
    .line 7
    invoke-static {v2}, Lit/sephiroth/android/library/widget/c$a;->h(Lit/sephiroth/android/library/widget/c$a;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v4, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 12
    .line 13
    invoke-static {v4}, Lit/sephiroth/android/library/widget/c$a;->h(Lit/sephiroth/android/library/widget/c$a;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    long-to-int v1, v0

    .line 23
    return v1
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c$a;->m()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c$a;->m()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/c;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/c;->a:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 19
    .line 20
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->a(Lit/sephiroth/android/library/widget/c$a;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 27
    .line 28
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c$a;->update()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 35
    .line 36
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c$a;->k()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c$a;->m()V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 48
    .line 49
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->a(Lit/sephiroth/android/library/widget/c$a;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 56
    .line 57
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c$a;->update()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 62
    .line 63
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 64
    .line 65
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c$a;->k()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_6

    .line 70
    .line 71
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 72
    .line 73
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c$a;->m()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 82
    .line 83
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->h(Lit/sephiroth/android/library/widget/c$a;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    sub-long/2addr v2, v4

    .line 88
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 89
    .line 90
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->g(Lit/sephiroth/android/library/widget/c$a;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    int-to-long v4, v0

    .line 95
    cmp-long v6, v2, v4

    .line 96
    .line 97
    if-gez v6, :cond_5

    .line 98
    .line 99
    long-to-float v2, v2

    .line 100
    int-to-float v0, v0

    .line 101
    div-float/2addr v2, v0

    .line 102
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->d:Landroid/view/animation/Interpolator;

    .line 103
    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    invoke-static {v2}, Lit/sephiroth/android/library/widget/c;->B(F)F

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-interface {v0, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    :goto_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/c$a;->C(F)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/c$a;->C(F)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/c;->a()V

    .line 127
    .line 128
    .line 129
    :cond_6
    :goto_1
    return v1
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extend"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/c$a;->l(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/c$a;->l(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d(IIIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "velocityX",
            "velocityY",
            "minX",
            "maxX",
            "minY",
            "maxY"
        }
    .end annotation

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v10, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move/from16 v5, p5

    .line 9
    .line 10
    move/from16 v6, p6

    .line 11
    .line 12
    move/from16 v7, p7

    .line 13
    .line 14
    move/from16 v8, p8

    .line 15
    .line 16
    invoke-virtual/range {v0 .. v10}, Lit/sephiroth/android/library/widget/c;->e(IIIIIIIIII)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public e(IIIIIIIIII)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "velocityX",
            "velocityY",
            "minX",
            "maxX",
            "minY",
            "maxY",
            "overX",
            "overY"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/c;->e:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/c;->o()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 13
    .line 14
    invoke-static {v1}, Lit/sephiroth/android/library/widget/c$a;->d(Lit/sephiroth/android/library/widget/c$a;)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, v0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 19
    .line 20
    invoke-static {v2}, Lit/sephiroth/android/library/widget/c$a;->d(Lit/sephiroth/android/library/widget/c$a;)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    move v3, p3

    .line 25
    int-to-float v4, v3

    .line 26
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    cmpl-float v5, v5, v6

    .line 35
    .line 36
    if-nez v5, :cond_1

    .line 37
    .line 38
    move/from16 v5, p4

    .line 39
    .line 40
    int-to-float v6, v5

    .line 41
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    cmpl-float v7, v7, v8

    .line 50
    .line 51
    if-nez v7, :cond_2

    .line 52
    .line 53
    add-float/2addr v4, v1

    .line 54
    float-to-int v1, v4

    .line 55
    add-float/2addr v6, v2

    .line 56
    float-to-int v2, v6

    .line 57
    move v5, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v3, p3

    .line 60
    :cond_1
    move/from16 v5, p4

    .line 61
    .line 62
    :cond_2
    move v2, v5

    .line 63
    move v5, v3

    .line 64
    :goto_0
    const/4 v1, 0x1

    .line 65
    iput v1, v0, Lit/sephiroth/android/library/widget/c;->a:I

    .line 66
    .line 67
    iget-object v3, v0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 68
    .line 69
    move v4, p1

    .line 70
    move/from16 v6, p5

    .line 71
    .line 72
    move/from16 v7, p6

    .line 73
    .line 74
    move/from16 v8, p9

    .line 75
    .line 76
    invoke-virtual/range {v3 .. v8}, Lit/sephiroth/android/library/widget/c$a;->o(IIIII)V

    .line 77
    .line 78
    .line 79
    iget-object v6, v0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 80
    .line 81
    move v7, p2

    .line 82
    move v8, v2

    .line 83
    move/from16 v9, p7

    .line 84
    .line 85
    move/from16 v10, p8

    .line 86
    .line 87
    move/from16 v11, p10

    .line 88
    .line 89
    invoke-virtual/range {v6 .. v11}, Lit/sephiroth/android/library/widget/c$a;->o(IIIII)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final f(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finished"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 4
    .line 5
    invoke-static {v1, p1}, Lit/sephiroth/android/library/widget/c$a;->b(Lit/sephiroth/android/library/widget/c$a;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/c$a;->b(Lit/sephiroth/android/library/widget/c$a;Z)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g()F
    .locals 3

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->d(Lit/sephiroth/android/library/widget/c$a;)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 8
    .line 9
    invoke-static {v1}, Lit/sephiroth/android/library/widget/c$a;->d(Lit/sephiroth/android/library/widget/c$a;)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-float v0, v0, v1

    .line 14
    .line 15
    iget-object v1, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 16
    .line 17
    invoke-static {v1}, Lit/sephiroth/android/library/widget/c$a;->d(Lit/sephiroth/android/library/widget/c$a;)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 22
    .line 23
    invoke-static {v2}, Lit/sephiroth/android/library/widget/c$a;->d(Lit/sephiroth/android/library/widget/c$a;)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    mul-float v1, v1, v2

    .line 28
    .line 29
    add-float/2addr v0, v1

    .line 30
    float-to-double v0, v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    double-to-float v0, v0

    .line 36
    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->c(Lit/sephiroth/android/library/widget/c$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->c(Lit/sephiroth/android/library/widget/c$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final j()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->g(Lit/sephiroth/android/library/widget/c$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 8
    .line 9
    invoke-static {v1}, Lit/sephiroth/android/library/widget/c$a;->g(Lit/sephiroth/android/library/widget/c$a;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->f(Lit/sephiroth/android/library/widget/c$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->f(Lit/sephiroth/android/library/widget/c$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->e(Lit/sephiroth/android/library/widget/c$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->e(Lit/sephiroth/android/library/widget/c$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->a(Lit/sephiroth/android/library/widget/c$a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 10
    .line 11
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->a(Lit/sephiroth/android/library/widget/c$a;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->a(Lit/sephiroth/android/library/widget/c$a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 10
    .line 11
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->i(Lit/sephiroth/android/library/widget/c$a;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 18
    .line 19
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->a(Lit/sephiroth/android/library/widget/c$a;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 26
    .line 27
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->i(Lit/sephiroth/android/library/widget/c$a;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public q(FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xvel",
            "yvel"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-static {v0}, Lit/sephiroth/android/library/widget/c$a;->f(Lit/sephiroth/android/library/widget/c$a;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 8
    .line 9
    invoke-static {v1}, Lit/sephiroth/android/library/widget/c$a;->e(Lit/sephiroth/android/library/widget/c$a;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 15
    .line 16
    invoke-static {v1}, Lit/sephiroth/android/library/widget/c$a;->f(Lit/sephiroth/android/library/widget/c$a;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 21
    .line 22
    invoke-static {v2}, Lit/sephiroth/android/library/widget/c$a;->e(Lit/sephiroth/android/library/widget/c$a;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/c;->o()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-float v0, v0

    .line 38
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    cmpl-float p1, p1, v0

    .line 43
    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-float p2, v1

    .line 51
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    cmpl-float p1, p1, p2

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p1, 0x0

    .line 62
    :goto_0
    return p1
.end method

.method public r(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "finalX",
            "overX"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/c$a;->t(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startY",
            "finalY",
            "overY"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/c$a;->t(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public t(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newX"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/c$a;->v(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public u(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newY"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/c$a;->v(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final v(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/c$a;->w(F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/c$a;->w(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method w(Landroid/view/animation/Interpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolator"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/c;->d:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-void
.end method

.method public x(IIIIII)Z
    .locals 2
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
            "startX",
            "startY",
            "minX",
            "maxX",
            "minY",
            "maxY"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lit/sephiroth/android/library/widget/c;->a:I

    .line 3
    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p3, p4}, Lit/sephiroth/android/library/widget/c$a;->x(III)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p3, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 11
    .line 12
    invoke-virtual {p3, p2, p5, p6}, Lit/sephiroth/android/library/widget/c$a;->x(III)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :cond_1
    :goto_0
    return v0
.end method

.method public y(IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    const/16 v5, 0xfa

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/c;->z(IIIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public z(IIIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "dx",
            "dy",
            "duration"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lit/sephiroth/android/library/widget/c;->a:I

    .line 3
    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/c;->b:Lit/sephiroth/android/library/widget/c$a;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p3, p5}, Lit/sephiroth/android/library/widget/c$a;->A(III)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lit/sephiroth/android/library/widget/c;->c:Lit/sephiroth/android/library/widget/c$a;

    .line 10
    .line 11
    invoke-virtual {p1, p2, p4, p5}, Lit/sephiroth/android/library/widget/c$a;->A(III)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
