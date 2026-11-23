.class public Lru/noties/scrollable/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/noties/scrollable/n$a;
    }
.end annotation


# static fields
.field private static final A:I = 0x0

.field private static final B:I = 0x1

.field private static C:F = 0.0f

.field private static final D:F = 0.35f

.field private static final E:F = 0.5f

.field private static final F:F = 1.0f

.field private static final G:F = 0.175f

.field private static final H:F = 0.35000002f

.field private static final I:I = 0x64

.field private static final J:[F


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:Z

.field private s:Z

.field private t:F

.field private u:F

.field private v:I

.field private w:F

.field private x:F

.field private final y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    div-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    sput v0, Lru/noties/scrollable/n;->C:F

    .line 22
    .line 23
    const/16 v0, 0x65

    .line 24
    .line 25
    new-array v0, v0, [F

    .line 26
    .line 27
    sput-object v0, Lru/noties/scrollable/n;->J:[F

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    const/16 v3, 0x64

    .line 34
    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    .line 37
    if-ge v2, v3, :cond_4

    .line 38
    .line 39
    int-to-float v3, v2

    .line 40
    const/high16 v5, 0x42c80000    # 100.0f

    .line 41
    .line 42
    div-float v5, v3, v5

    .line 43
    .line 44
    const/high16 v3, 0x3f800000    # 1.0f

    .line 45
    .line 46
    :goto_1
    sub-float v6, v3, v0

    .line 47
    .line 48
    const/high16 v7, 0x40000000    # 2.0f

    .line 49
    .line 50
    div-float/2addr v6, v7

    .line 51
    add-float/2addr v6, v0

    .line 52
    const/high16 v8, 0x40400000    # 3.0f

    .line 53
    .line 54
    mul-float v9, v6, v8

    .line 55
    .line 56
    sub-float v10, v4, v6

    .line 57
    .line 58
    mul-float v9, v9, v10

    .line 59
    .line 60
    const v11, 0x3e333333    # 0.175f

    .line 61
    .line 62
    .line 63
    mul-float v11, v11, v10

    .line 64
    .line 65
    const v12, 0x3eb33334    # 0.35000002f

    .line 66
    .line 67
    .line 68
    mul-float v12, v12, v6

    .line 69
    .line 70
    add-float/2addr v11, v12

    .line 71
    mul-float v11, v11, v9

    .line 72
    .line 73
    mul-float v12, v6, v6

    .line 74
    .line 75
    mul-float v12, v12, v6

    .line 76
    .line 77
    add-float/2addr v11, v12

    .line 78
    sub-float v13, v11, v5

    .line 79
    .line 80
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    float-to-double v13, v13

    .line 85
    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmpg-double v17, v13, v15

    .line 91
    .line 92
    if-gez v17, :cond_2

    .line 93
    .line 94
    sget-object v3, Lru/noties/scrollable/n;->J:[F

    .line 95
    .line 96
    const/high16 v13, 0x3f000000    # 0.5f

    .line 97
    .line 98
    mul-float v10, v10, v13

    .line 99
    .line 100
    add-float/2addr v10, v6

    .line 101
    mul-float v9, v9, v10

    .line 102
    .line 103
    add-float/2addr v9, v12

    .line 104
    aput v9, v3, v2

    .line 105
    .line 106
    const/high16 v3, 0x3f800000    # 1.0f

    .line 107
    .line 108
    :goto_2
    sub-float v6, v3, v1

    .line 109
    .line 110
    div-float/2addr v6, v7

    .line 111
    add-float/2addr v6, v1

    .line 112
    mul-float v9, v6, v8

    .line 113
    .line 114
    sub-float v10, v4, v6

    .line 115
    .line 116
    mul-float v9, v9, v10

    .line 117
    .line 118
    mul-float v10, v10, v13

    .line 119
    .line 120
    add-float/2addr v10, v6

    .line 121
    mul-float v9, v9, v10

    .line 122
    .line 123
    mul-float v10, v6, v6

    .line 124
    .line 125
    mul-float v10, v10, v6

    .line 126
    .line 127
    add-float/2addr v9, v10

    .line 128
    sub-float v10, v9, v5

    .line 129
    .line 130
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    float-to-double v10, v10

    .line 135
    cmpg-double v12, v10, v15

    .line 136
    .line 137
    if-gez v12, :cond_0

    .line 138
    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    cmpl-float v9, v9, v5

    .line 143
    .line 144
    if-lez v9, :cond_1

    .line 145
    .line 146
    move v3, v6

    .line 147
    goto :goto_2

    .line 148
    :cond_1
    move v1, v6

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    cmpl-float v7, v11, v5

    .line 151
    .line 152
    if-lez v7, :cond_3

    .line 153
    .line 154
    move v3, v6

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    move v0, v6

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    sget-object v0, Lru/noties/scrollable/n;->J:[F

    .line 159
    .line 160
    aput v4, v0, v3

    .line 161
    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lru/noties/scrollable/n;->w:F

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    new-instance p2, Lru/noties/scrollable/n$a;

    .line 16
    .line 17
    invoke-direct {p2}, Lru/noties/scrollable/n$a;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lru/noties/scrollable/n;->a:Landroid/view/animation/Interpolator;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-object p2, p0, Lru/noties/scrollable/n;->a:Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .line 35
    const/high16 p2, 0x43200000    # 160.0f

    .line 36
    .line 37
    mul-float p1, p1, p2

    .line 38
    .line 39
    iput p1, p0, Lru/noties/scrollable/n;->y:F

    .line 40
    .line 41
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->b(F)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lru/noties/scrollable/n;->x:F

    .line 50
    .line 51
    iput-boolean p3, p0, Lru/noties/scrollable/n;->s:Z

    .line 52
    .line 53
    const p1, 0x3f570a3d    # 0.84f

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->b(F)F

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lru/noties/scrollable/n;->z:F

    .line 61
    .line 62
    return-void
.end method

.method private b(F)F
    .locals 2

    .line 1
    const v0, 0x43c10b3d

    .line 2
    .line 3
    .line 4
    iget v1, p0, Lru/noties/scrollable/n;->y:F

    .line 5
    .line 6
    mul-float v1, v1, v0

    .line 7
    .line 8
    mul-float v1, v1, p1

    .line 9
    .line 10
    return v1
.end method

.method private i(F)D
    .locals 2

    .line 1
    const v0, 0x3eb33333    # 0.35f

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    mul-float p1, p1, v0

    .line 9
    .line 10
    iget v0, p0, Lru/noties/scrollable/n;->w:F

    .line 11
    .line 12
    iget v1, p0, Lru/noties/scrollable/n;->z:F

    .line 13
    .line 14
    mul-float v0, v0, v1

    .line 15
    .line 16
    div-float/2addr p1, v0

    .line 17
    float-to-double v0, p1

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0
.end method

.method private j(F)D
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->i(F)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget p1, Lru/noties/scrollable/n;->C:F

    .line 6
    .line 7
    float-to-double v2, p1

    .line 8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    sub-double/2addr v2, v4

    .line 11
    iget v4, p0, Lru/noties/scrollable/n;->w:F

    .line 12
    .line 13
    iget v5, p0, Lru/noties/scrollable/n;->z:F

    .line 14
    .line 15
    mul-float v4, v4, v5

    .line 16
    .line 17
    float-to-double v4, v4

    .line 18
    float-to-double v6, p1

    .line 19
    div-double/2addr v6, v2

    .line 20
    mul-double v6, v6, v0

    .line 21
    .line 22
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    mul-double v4, v4, v0

    .line 27
    .line 28
    return-wide v4
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->e:I

    .line 2
    .line 3
    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 4
    .line 5
    iget v0, p0, Lru/noties/scrollable/n;->f:I

    .line 6
    .line 7
    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    .line 11
    .line 12
    return-void
.end method

.method public c()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lru/noties/scrollable/n;->m:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    long-to-int v1, v0

    .line 15
    iget v0, p0, Lru/noties/scrollable/n;->n:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-ge v1, v0, :cond_4

    .line 19
    .line 20
    iget v3, p0, Lru/noties/scrollable/n;->b:I

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    if-eq v3, v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    int-to-float v1, v1

    .line 29
    int-to-float v3, v0

    .line 30
    div-float/2addr v1, v3

    .line 31
    const/high16 v3, 0x42c80000    # 100.0f

    .line 32
    .line 33
    mul-float v4, v1, v3

    .line 34
    .line 35
    float-to-int v4, v4

    .line 36
    const/16 v5, 0x64

    .line 37
    .line 38
    if-ge v4, v5, :cond_2

    .line 39
    .line 40
    int-to-float v5, v4

    .line 41
    div-float/2addr v5, v3

    .line 42
    add-int/lit8 v6, v4, 0x1

    .line 43
    .line 44
    int-to-float v7, v6

    .line 45
    div-float/2addr v7, v3

    .line 46
    sget-object v3, Lru/noties/scrollable/n;->J:[F

    .line 47
    .line 48
    aget v4, v3, v4

    .line 49
    .line 50
    aget v3, v3, v6

    .line 51
    .line 52
    sub-float/2addr v3, v4

    .line 53
    sub-float/2addr v7, v5

    .line 54
    div-float/2addr v3, v7

    .line 55
    sub-float/2addr v1, v5

    .line 56
    mul-float v1, v1, v3

    .line 57
    .line 58
    add-float/2addr v4, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    :goto_0
    iget v1, p0, Lru/noties/scrollable/n;->v:I

    .line 64
    .line 65
    int-to-float v1, v1

    .line 66
    mul-float v3, v3, v1

    .line 67
    .line 68
    int-to-float v0, v0

    .line 69
    div-float/2addr v3, v0

    .line 70
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 71
    .line 72
    mul-float v3, v3, v0

    .line 73
    .line 74
    iput v3, p0, Lru/noties/scrollable/n;->u:F

    .line 75
    .line 76
    iget v0, p0, Lru/noties/scrollable/n;->c:I

    .line 77
    .line 78
    iget v1, p0, Lru/noties/scrollable/n;->e:I

    .line 79
    .line 80
    sub-int/2addr v1, v0

    .line 81
    int-to-float v1, v1

    .line 82
    mul-float v1, v1, v4

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v0, v1

    .line 89
    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 90
    .line 91
    iget v1, p0, Lru/noties/scrollable/n;->h:I

    .line 92
    .line 93
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 98
    .line 99
    iget v1, p0, Lru/noties/scrollable/n;->g:I

    .line 100
    .line 101
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 106
    .line 107
    iget v0, p0, Lru/noties/scrollable/n;->d:I

    .line 108
    .line 109
    iget v1, p0, Lru/noties/scrollable/n;->f:I

    .line 110
    .line 111
    sub-int/2addr v1, v0

    .line 112
    int-to-float v1, v1

    .line 113
    mul-float v4, v4, v1

    .line 114
    .line 115
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    add-int/2addr v0, v1

    .line 120
    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 121
    .line 122
    iget v1, p0, Lru/noties/scrollable/n;->j:I

    .line 123
    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 129
    .line 130
    iget v1, p0, Lru/noties/scrollable/n;->i:I

    .line 131
    .line 132
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 137
    .line 138
    iget v1, p0, Lru/noties/scrollable/n;->k:I

    .line 139
    .line 140
    iget v3, p0, Lru/noties/scrollable/n;->e:I

    .line 141
    .line 142
    if-ne v1, v3, :cond_5

    .line 143
    .line 144
    iget v1, p0, Lru/noties/scrollable/n;->f:I

    .line 145
    .line 146
    if-ne v0, v1, :cond_5

    .line 147
    .line 148
    iput-boolean v2, p0, Lru/noties/scrollable/n;->r:Z

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lru/noties/scrollable/n;->a:Landroid/view/animation/Interpolator;

    .line 152
    .line 153
    int-to-float v1, v1

    .line 154
    iget v3, p0, Lru/noties/scrollable/n;->o:F

    .line 155
    .line 156
    mul-float v1, v1, v3

    .line 157
    .line 158
    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iget v1, p0, Lru/noties/scrollable/n;->c:I

    .line 163
    .line 164
    iget v3, p0, Lru/noties/scrollable/n;->p:F

    .line 165
    .line 166
    mul-float v3, v3, v0

    .line 167
    .line 168
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    add-int/2addr v1, v3

    .line 173
    iput v1, p0, Lru/noties/scrollable/n;->k:I

    .line 174
    .line 175
    iget v1, p0, Lru/noties/scrollable/n;->d:I

    .line 176
    .line 177
    iget v3, p0, Lru/noties/scrollable/n;->q:F

    .line 178
    .line 179
    mul-float v0, v0, v3

    .line 180
    .line 181
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    add-int/2addr v1, v0

    .line 186
    iput v1, p0, Lru/noties/scrollable/n;->l:I

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    iget v0, p0, Lru/noties/scrollable/n;->e:I

    .line 190
    .line 191
    iput v0, p0, Lru/noties/scrollable/n;->k:I

    .line 192
    .line 193
    iget v0, p0, Lru/noties/scrollable/n;->f:I

    .line 194
    .line 195
    iput v0, p0, Lru/noties/scrollable/n;->l:I

    .line 196
    .line 197
    iput-boolean v2, p0, Lru/noties/scrollable/n;->r:Z

    .line 198
    .line 199
    :cond_5
    :goto_1
    return v2
.end method

.method public d(IIIIIIII)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lru/noties/scrollable/n;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lru/noties/scrollable/n;->e()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lru/noties/scrollable/n;->e:I

    .line 14
    .line 15
    iget v2, p0, Lru/noties/scrollable/n;->c:I

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    int-to-float v1, v1

    .line 19
    iget v2, p0, Lru/noties/scrollable/n;->f:I

    .line 20
    .line 21
    iget v3, p0, Lru/noties/scrollable/n;->d:I

    .line 22
    .line 23
    sub-int/2addr v2, v3

    .line 24
    int-to-float v2, v2

    .line 25
    float-to-double v3, v1

    .line 26
    float-to-double v5, v2

    .line 27
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    double-to-float v3, v3

    .line 32
    div-float/2addr v1, v3

    .line 33
    div-float/2addr v2, v3

    .line 34
    mul-float v1, v1, v0

    .line 35
    .line 36
    mul-float v2, v2, v0

    .line 37
    .line 38
    int-to-float v0, p3

    .line 39
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    cmpl-float v3, v3, v4

    .line 48
    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    int-to-float v3, p4

    .line 52
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    cmpl-float v4, v4, v5

    .line 61
    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    add-float/2addr v0, v1

    .line 65
    float-to-int p3, v0

    .line 66
    add-float/2addr v3, v2

    .line 67
    float-to-int p4, v3

    .line 68
    :cond_0
    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lru/noties/scrollable/n;->b:I

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lru/noties/scrollable/n;->r:Z

    .line 73
    .line 74
    int-to-double v0, p3

    .line 75
    int-to-double v2, p4

    .line 76
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    double-to-float v0, v0

    .line 81
    iput v0, p0, Lru/noties/scrollable/n;->t:F

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lru/noties/scrollable/n;->k(F)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, p0, Lru/noties/scrollable/n;->n:I

    .line 88
    .line 89
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    iput-wide v1, p0, Lru/noties/scrollable/n;->m:J

    .line 94
    .line 95
    iput p1, p0, Lru/noties/scrollable/n;->c:I

    .line 96
    .line 97
    iput p2, p0, Lru/noties/scrollable/n;->d:I

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    const/high16 v2, 0x3f800000    # 1.0f

    .line 101
    .line 102
    cmpl-float v1, v0, v1

    .line 103
    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    const/high16 p3, 0x3f800000    # 1.0f

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    int-to-float p3, p3

    .line 110
    div-float/2addr p3, v0

    .line 111
    :goto_0
    if-nez v1, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    int-to-float p4, p4

    .line 115
    div-float v2, p4, v0

    .line 116
    .line 117
    :goto_1
    invoke-direct {p0, v0}, Lru/noties/scrollable/n;->j(F)D

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    float-to-double v0, p4

    .line 126
    mul-double v0, v0, v3

    .line 127
    .line 128
    double-to-int p4, v0

    .line 129
    iput p4, p0, Lru/noties/scrollable/n;->v:I

    .line 130
    .line 131
    iput p5, p0, Lru/noties/scrollable/n;->g:I

    .line 132
    .line 133
    iput p6, p0, Lru/noties/scrollable/n;->h:I

    .line 134
    .line 135
    iput p7, p0, Lru/noties/scrollable/n;->i:I

    .line 136
    .line 137
    iput p8, p0, Lru/noties/scrollable/n;->j:I

    .line 138
    .line 139
    float-to-double p3, p3

    .line 140
    mul-double p3, p3, v3

    .line 141
    .line 142
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    .line 143
    .line 144
    .line 145
    move-result-wide p3

    .line 146
    long-to-int p4, p3

    .line 147
    add-int/2addr p1, p4

    .line 148
    iput p1, p0, Lru/noties/scrollable/n;->e:I

    .line 149
    .line 150
    iget p3, p0, Lru/noties/scrollable/n;->h:I

    .line 151
    .line 152
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    iput p1, p0, Lru/noties/scrollable/n;->e:I

    .line 157
    .line 158
    iget p3, p0, Lru/noties/scrollable/n;->g:I

    .line 159
    .line 160
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    iput p1, p0, Lru/noties/scrollable/n;->e:I

    .line 165
    .line 166
    float-to-double p3, v2

    .line 167
    mul-double v3, v3, p3

    .line 168
    .line 169
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 170
    .line 171
    .line 172
    move-result-wide p3

    .line 173
    long-to-int p1, p3

    .line 174
    add-int/2addr p2, p1

    .line 175
    iput p2, p0, Lru/noties/scrollable/n;->f:I

    .line 176
    .line 177
    iget p1, p0, Lru/noties/scrollable/n;->j:I

    .line 178
    .line 179
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    iput p1, p0, Lru/noties/scrollable/n;->f:I

    .line 184
    .line 185
    iget p2, p0, Lru/noties/scrollable/n;->i:I

    .line 186
    .line 187
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    iput p1, p0, Lru/noties/scrollable/n;->f:I

    .line 192
    .line 193
    return-void
.end method

.method public e()F
    .locals 3

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lru/noties/scrollable/n;->u:F

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lru/noties/scrollable/n;->t:F

    .line 10
    .line 11
    iget v1, p0, Lru/noties/scrollable/n;->x:F

    .line 12
    .line 13
    invoke-virtual {p0}, Lru/noties/scrollable/n;->n()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    mul-float v1, v1, v2

    .line 19
    .line 20
    const/high16 v2, 0x44fa0000    # 2000.0f

    .line 21
    .line 22
    div-float/2addr v1, v2

    .line 23
    sub-float/2addr v0, v1

    .line 24
    :goto_0
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lru/noties/scrollable/n;->f:I

    .line 2
    .line 3
    return v0
.end method

.method k(F)I
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->i(F)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget p1, Lru/noties/scrollable/n;->C:F

    .line 6
    .line 7
    float-to-double v2, p1

    .line 8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    sub-double/2addr v2, v4

    .line 11
    div-double/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    mul-double v0, v0, v2

    .line 22
    .line 23
    double-to-int p1, v0

    .line 24
    return p1
.end method

.method public l(I)V
    .locals 1

    .line 1
    iput p1, p0, Lru/noties/scrollable/n;->f:I

    .line 2
    .line 3
    iget v0, p0, Lru/noties/scrollable/n;->d:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    int-to-float p1, p1

    .line 7
    iput p1, p0, Lru/noties/scrollable/n;->q:F

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lru/noties/scrollable/n;->r:Z

    .line 11
    .line 12
    return-void
.end method

.method public final m(F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lru/noties/scrollable/n;->b(F)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lru/noties/scrollable/n;->x:F

    .line 6
    .line 7
    iput p1, p0, Lru/noties/scrollable/n;->w:F

    .line 8
    .line 9
    return-void
.end method

.method public n()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lru/noties/scrollable/n;->m:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-int v1, v0

    .line 9
    return v1
.end method
