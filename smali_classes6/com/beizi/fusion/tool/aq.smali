.class public Lcom/beizi/fusion/tool/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/tool/aq$a;
    }
.end annotation


# static fields
.field private static c:Landroid/hardware/SensorManager;


# instance fields
.field private A:I

.field private B:Z

.field private C:Ljava/util/Map;

.field private D:Z

.field private E:D

.field private F:[F

.field private G:[F

.field private final H:Landroid/hardware/SensorEventListener;

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:I

.field private N:Landroid/hardware/Sensor;

.field private O:F

.field private P:F

.field private Q:[F

.field private R:F

.field private S:F

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field private X:Z

.field private Y:Z

.field private Z:J

.field a:Lcom/beizi/fusion/widget/ShakeView;

.field private aa:Z

.field private ab:I

.field private ac:I

.field private ad:Ljava/lang/String;

.field private ae:J

.field private af:J

.field private ag:D

.field private ah:[F

.field private ai:Ljava/util/Random;

.field final b:F

.field private d:Landroid/content/Context;

.field private e:D

.field private f:D

.field private g:D

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:Lcom/beizi/fusion/tool/aq$a;

.field private s:Z

.field private t:I

.field private u:J

.field private v:Lcom/beizi/fusion/update/ShakeArcView;

.field private w:I

.field private x:Z

.field private y:D

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->l:I

    .line 6
    .line 7
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->m:I

    .line 8
    .line 9
    const/high16 v1, -0x3d380000    # -100.0f

    .line 10
    .line 11
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->n:F

    .line 12
    .line 13
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->o:F

    .line 14
    .line 15
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->p:F

    .line 16
    .line 17
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->q:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->r:Lcom/beizi/fusion/tool/aq$a;

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->s:Z

    .line 23
    .line 24
    const/16 v2, 0xc8

    .line 25
    .line 26
    iput v2, p0, Lcom/beizi/fusion/tool/aq;->t:I

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    iput-wide v2, p0, Lcom/beizi/fusion/tool/aq;->u:J

    .line 31
    .line 32
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    .line 33
    .line 34
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->w:I

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    new-array v1, v0, [F

    .line 38
    .line 39
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->F:[F

    .line 40
    .line 41
    new-array v1, v0, [F

    .line 42
    .line 43
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->G:[F

    .line 44
    .line 45
    new-instance v1, Lcom/beizi/fusion/tool/aq$1;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/beizi/fusion/tool/aq$1;-><init>(Lcom/beizi/fusion/tool/aq;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->H:Landroid/hardware/SensorEventListener;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->I:F

    .line 54
    .line 55
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->K:F

    .line 56
    .line 57
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->L:F

    .line 58
    .line 59
    const v1, 0x3f59999a    # 0.85f

    .line 60
    .line 61
    .line 62
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->b:F

    .line 63
    .line 64
    const v1, 0x3089705f    # 1.0E-9f

    .line 65
    .line 66
    .line 67
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->P:F

    .line 68
    .line 69
    new-array v1, v0, [F

    .line 70
    .line 71
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->Q:[F

    .line 72
    .line 73
    const-wide v1, 0x3fd6666666666666L    # 0.35

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    iput-wide v1, p0, Lcom/beizi/fusion/tool/aq;->ag:D

    .line 79
    .line 80
    new-array v0, v0, [F

    .line 81
    .line 82
    iput-object v0, p0, Lcom/beizi/fusion/tool/aq;->ah:[F

    .line 83
    .line 84
    new-instance v0, Ljava/util/Random;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/beizi/fusion/tool/aq;->ai:Ljava/util/Random;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "sensor"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/hardware/SensorManager;

    .line 104
    .line 105
    sput-object p1, Lcom/beizi/fusion/tool/aq;->c:Landroid/hardware/SensorManager;

    .line 106
    .line 107
    return-void
.end method

.method private a(FFF)D
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 180
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private a(FFFD)D
    .locals 4

    float-to-double p4, p1

    const-wide v0, 0x402399999999999aL    # 9.8

    div-double/2addr p4, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 102
    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p4

    float-to-double p1, p2

    div-double/2addr p1, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p4, p1

    float-to-double p1, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p4, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private a(DDDD)V
    .locals 9

    move-object v0, p0

    .line 84
    iget-object v1, v0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    if-nez v1, :cond_0

    return-void

    .line 85
    :cond_0
    iget v2, v0, Lcom/beizi/fusion/tool/aq;->w:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 86
    iget v2, v0, Lcom/beizi/fusion/tool/aq;->l:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/beizi/fusion/update/ShakeArcView;->setCurrentProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    return-void

    .line 87
    :cond_1
    iget v2, v0, Lcom/beizi/fusion/tool/aq;->i:I

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    if-lez v2, :cond_6

    iget-wide v7, v0, Lcom/beizi/fusion/tool/aq;->g:D

    cmpl-double v2, v7, v5

    if-lez v2, :cond_6

    cmpl-double v1, p1, p3

    if-ltz v1, :cond_2

    cmpl-double v1, p1, p5

    if-ltz v1, :cond_2

    move-wide v1, p1

    goto :goto_0

    :cond_2
    cmpl-double v1, p3, p1

    if-ltz v1, :cond_3

    cmpl-double v1, p3, p5

    if-ltz v1, :cond_3

    move-wide v1, p3

    goto :goto_0

    :cond_3
    cmpl-double v1, p5, p1

    if-ltz v1, :cond_4

    cmpl-double v1, p5, p3

    if-ltz v1, :cond_4

    move-wide v1, p5

    goto :goto_0

    :cond_4
    move-wide v1, v5

    .line 88
    :goto_0
    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 89
    invoke-virtual {v7, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v7, v1, v3

    if-ltz v7, :cond_5

    .line 90
    iget-object v3, v0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    invoke-virtual {v3, v1, v2}, Lcom/beizi/fusion/update/ShakeArcView;->setCurrentProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    goto :goto_1

    :cond_5
    cmpg-double v7, v1, v3

    if-gez v7, :cond_9

    .line 91
    iget-object v1, v0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    invoke-virtual {v1, v5, v6}, Lcom/beizi/fusion/update/ShakeArcView;->setCurrentProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    goto :goto_1

    .line 92
    :cond_6
    iget v2, v0, Lcom/beizi/fusion/tool/aq;->h:I

    if-lez v2, :cond_7

    iget v7, v0, Lcom/beizi/fusion/tool/aq;->l:I

    if-lt v7, v2, :cond_7

    .line 93
    iget-wide v2, v0, Lcom/beizi/fusion/tool/aq;->e:D

    invoke-virtual {v1, v2, v3}, Lcom/beizi/fusion/update/ShakeArcView;->setCurrentProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    return-void

    .line 94
    :cond_7
    new-instance v1, Ljava/math/BigDecimal;

    move-wide/from16 v7, p7

    invoke-direct {v1, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    .line 95
    invoke-virtual {v1, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    cmpl-double v7, v1, v3

    if-ltz v7, :cond_8

    .line 96
    iget-object v3, v0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    invoke-virtual {v3, v1, v2}, Lcom/beizi/fusion/update/ShakeArcView;->setCurrentProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    goto :goto_1

    :cond_8
    cmpg-double v7, v1, v3

    if-gez v7, :cond_9

    .line 97
    iget-object v1, v0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    invoke-virtual {v1, v5, v6}, Lcom/beizi/fusion/update/ShakeArcView;->setCurrentProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    :cond_9
    :goto_1
    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 20

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v1, :cond_10

    .line 5
    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    aget v6, v1, v2

    const/4 v10, 0x1

    .line 7
    aget v7, v1, v10

    const/4 v8, 0x2

    .line 8
    aget v11, v1, v8

    .line 9
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->n:F

    const/high16 v3, -0x3d380000    # -100.0f

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 10
    iput v6, v9, Lcom/beizi/fusion/tool/aq;->n:F

    .line 11
    :cond_2
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->o:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    .line 12
    iput v7, v9, Lcom/beizi/fusion/tool/aq;->o:F

    .line 13
    :cond_3
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->p:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    .line 14
    iput v11, v9, Lcom/beizi/fusion/tool/aq;->p:F

    .line 15
    :cond_4
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->n:F

    sub-float v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v12, 0x402399999999999aL    # 9.8

    div-double v14, v3, v12

    .line 16
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->o:F

    sub-float v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    div-double v16, v3, v12

    .line 17
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->p:F

    sub-float v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    div-double v12, v3, v12

    .line 18
    iget-wide v3, v9, Lcom/beizi/fusion/tool/aq;->g:D

    cmpl-double v1, v14, v3

    if-lez v1, :cond_5

    .line 19
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->m:I

    add-int/2addr v1, v10

    iput v1, v9, Lcom/beizi/fusion/tool/aq;->m:I

    .line 20
    iput v6, v9, Lcom/beizi/fusion/tool/aq;->n:F

    :cond_5
    cmpl-double v1, v16, v3

    if-lez v1, :cond_6

    .line 21
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->m:I

    add-int/2addr v1, v10

    iput v1, v9, Lcom/beizi/fusion/tool/aq;->m:I

    .line 22
    iput v7, v9, Lcom/beizi/fusion/tool/aq;->o:F

    :cond_6
    cmpl-double v1, v12, v3

    if-lez v1, :cond_7

    .line 23
    iget v1, v9, Lcom/beizi/fusion/tool/aq;->m:I

    add-int/2addr v1, v10

    iput v1, v9, Lcom/beizi/fusion/tool/aq;->m:I

    .line 24
    iput v11, v9, Lcom/beizi/fusion/tool/aq;->p:F

    .line 25
    :cond_7
    iget-boolean v1, v9, Lcom/beizi/fusion/tool/aq;->D:Z

    if-eqz v1, :cond_8

    iget-boolean v1, v9, Lcom/beizi/fusion/tool/aq;->B:Z

    if-eqz v1, :cond_8

    .line 26
    iget-object v1, v0, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v9, Lcom/beizi/fusion/tool/aq;->F:[F

    .line 27
    aget v3, v1, v2

    const v4, 0x3f59999a    # 0.85f

    mul-float v3, v3, v4

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v0, v2

    const v18, 0x3e199998    # 0.14999998f

    mul-float v5, v5, v18

    add-float/2addr v3, v5

    aput v3, v1, v2

    .line 28
    aget v2, v1, v10

    mul-float v2, v2, v4

    aget v3, v0, v10

    mul-float v3, v3, v18

    add-float/2addr v2, v3

    aput v2, v1, v10

    .line 29
    aget v2, v1, v8

    mul-float v2, v2, v4

    aget v0, v0, v8

    mul-float v0, v0, v18

    add-float/2addr v2, v0

    aput v2, v1, v8

    .line 30
    invoke-direct/range {p0 .. p0}, Lcom/beizi/fusion/tool/aq;->l()V

    .line 31
    :cond_8
    iget-wide v4, v9, Lcom/beizi/fusion/tool/aq;->e:D

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/beizi/fusion/tool/aq;->a(FFFD)D

    move-result-wide v18

    .line 32
    iget-wide v0, v9, Lcom/beizi/fusion/tool/aq;->e:D

    cmpl-double v2, v18, v0

    if-lez v2, :cond_a

    .line 33
    iget-boolean v0, v9, Lcom/beizi/fusion/tool/aq;->D:Z

    if-eqz v0, :cond_9

    iget v0, v9, Lcom/beizi/fusion/tool/aq;->q:I

    if-nez v0, :cond_9

    .line 34
    invoke-direct {v9, v6, v7, v11}, Lcom/beizi/fusion/tool/aq;->a(FFF)D

    move-result-wide v0

    .line 35
    iget-wide v2, v9, Lcom/beizi/fusion/tool/aq;->y:D

    cmpg-double v4, v2, v0

    if-gez v4, :cond_9

    .line 36
    iput-wide v0, v9, Lcom/beizi/fusion/tool/aq;->y:D

    .line 37
    :cond_9
    iput v10, v9, Lcom/beizi/fusion/tool/aq;->q:I

    .line 38
    :cond_a
    iget v0, v9, Lcom/beizi/fusion/tool/aq;->q:I

    if-ne v0, v10, :cond_b

    iget-wide v4, v9, Lcom/beizi/fusion/tool/aq;->f:D

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/beizi/fusion/tool/aq;->b(FFFD)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 39
    iput v8, v9, Lcom/beizi/fusion/tool/aq;->q:I

    .line 40
    iget v0, v9, Lcom/beizi/fusion/tool/aq;->l:I

    add-int/2addr v0, v10

    iput v0, v9, Lcom/beizi/fusion/tool/aq;->l:I

    :cond_b
    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide/from16 v3, v16

    move-wide v5, v12

    move-wide/from16 v7, v18

    .line 41
    invoke-direct/range {v0 .. v8}, Lcom/beizi/fusion/tool/aq;->a(DDDD)V

    .line 42
    iget v0, v9, Lcom/beizi/fusion/tool/aq;->h:I

    if-lez v0, :cond_c

    iget v1, v9, Lcom/beizi/fusion/tool/aq;->l:I

    if-ge v1, v0, :cond_d

    :cond_c
    iget v0, v9, Lcom/beizi/fusion/tool/aq;->i:I

    if-lez v0, :cond_10

    iget v1, v9, Lcom/beizi/fusion/tool/aq;->m:I

    if-lt v1, v0, :cond_10

    .line 43
    :cond_d
    iget-boolean v0, v9, Lcom/beizi/fusion/tool/aq;->D:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v9, Lcom/beizi/fusion/tool/aq;->B:Z

    if-eqz v0, :cond_e

    iget-wide v0, v9, Lcom/beizi/fusion/tool/aq;->E:D

    iget v2, v9, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_e

    .line 44
    iget v0, v9, Lcom/beizi/fusion/tool/aq;->l:I

    sub-int/2addr v0, v10

    iput v0, v9, Lcom/beizi/fusion/tool/aq;->l:I

    return-void

    .line 45
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShakeCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/beizi/fusion/tool/aq;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dstShakeCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/beizi/fusion/tool/aq;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRotateCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/beizi/fusion/tool/aq;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dstRotateCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v9, Lcom/beizi/fusion/tool/aq;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShakeUtil"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-boolean v10, v9, Lcom/beizi/fusion/tool/aq;->Y:Z

    .line 47
    iget-boolean v0, v9, Lcom/beizi/fusion/tool/aq;->X:Z

    if-nez v0, :cond_f

    return-void

    .line 48
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/beizi/fusion/tool/aq;->a()V

    :cond_10
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/aq;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/tool/aq;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/aq;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/aq;[F)[F
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/tool/aq;->G:[F

    return-object p1
.end method

.method private b(Landroid/hardware/SensorEvent;)V
    .locals 14

    const-string v0, "%.4f"

    if-eqz p1, :cond_f

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcom/beizi/fusion/tool/aq;->s:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/beizi/fusion/tool/aq;->Z:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x32

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return-void

    .line 9
    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 10
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 11
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eqz v2, :cond_e

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto/16 :goto_3

    .line 12
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/beizi/fusion/tool/aq;->Z:J

    .line 13
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->O:F

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    .line 14
    aget v5, v2, v4

    const/4 v6, 0x1

    .line 15
    aget v7, v2, v6

    const/4 v8, 0x2

    .line 16
    aget v2, v2, v8

    .line 17
    iget-wide v9, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v9, v9

    sub-float/2addr v9, v1

    iget v1, p0, Lcom/beizi/fusion/tool/aq;->P:F

    mul-float v9, v9, v1

    .line 18
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->Q:[F

    aget v10, v1, v4

    float-to-double v10, v10

    mul-float v5, v5, v9

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v5, v10

    aput v5, v1, v4

    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->Q:[F

    aget v5, v1, v6

    float-to-double v10, v5

    mul-float v7, v7, v9

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v5, v10

    aput v5, v1, v6

    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->Q:[F

    aget v5, v1, v8

    float-to-double v10, v5

    mul-float v2, v2, v9

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v2, v10

    aput v2, v1, v8

    .line 21
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->Q:[F

    aget v2, v1, v4

    cmpl-float v5, v2, v3

    if-lez v5, :cond_3

    .line 22
    iget v5, p0, Lcom/beizi/fusion/tool/aq;->U:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_4

    .line 23
    iput v2, p0, Lcom/beizi/fusion/tool/aq;->U:F

    goto :goto_0

    .line 24
    :cond_3
    iget v5, p0, Lcom/beizi/fusion/tool/aq;->R:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_4

    .line 25
    iput v2, p0, Lcom/beizi/fusion/tool/aq;->R:F

    .line 26
    :cond_4
    :goto_0
    aget v2, v1, v6

    cmpl-float v5, v2, v3

    if-lez v5, :cond_5

    .line 27
    iget v5, p0, Lcom/beizi/fusion/tool/aq;->V:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_6

    .line 28
    iput v2, p0, Lcom/beizi/fusion/tool/aq;->V:F

    goto :goto_1

    .line 29
    :cond_5
    iget v5, p0, Lcom/beizi/fusion/tool/aq;->S:F

    cmpg-float v5, v2, v5

    if-gez v5, :cond_6

    .line 30
    iput v2, p0, Lcom/beizi/fusion/tool/aq;->S:F

    .line 31
    :cond_6
    :goto_1
    aget v1, v1, v8

    cmpl-float v2, v1, v3

    if-lez v2, :cond_7

    .line 32
    iget v2, p0, Lcom/beizi/fusion/tool/aq;->W:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_8

    .line 33
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->W:F

    goto :goto_2

    .line 34
    :cond_7
    iget v2, p0, Lcom/beizi/fusion/tool/aq;->T:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_8

    .line 35
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->T:F

    .line 36
    :cond_8
    :goto_2
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->R:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    iget v1, p0, Lcom/beizi/fusion/tool/aq;->U:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_b

    :cond_9
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->S:F

    .line 37
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    iget v1, p0, Lcom/beizi/fusion/tool/aq;->V:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_b

    :cond_a
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->T:F

    .line 38
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    iget v1, p0, Lcom/beizi/fusion/tool/aq;->W:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    :cond_b
    const-string v1, "ShakeUtil"

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate  xMin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/fusion/tool/aq;->R:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",xMax: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/fusion/tool/aq;->U:F

    .line 40
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",yMin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/fusion/tool/aq;->S:F

    .line 41
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",yMax: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/fusion/tool/aq;->V:F

    .line 42
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",zMin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/fusion/tool/aq;->T:F

    .line 43
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",zMax: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/beizi/fusion/tool/aq;->W:F

    .line 44
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-boolean v6, p0, Lcom/beizi/fusion/tool/aq;->X:Z

    .line 47
    :cond_c
    iget-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->Y:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->X:Z

    if-eqz v0, :cond_d

    .line 48
    invoke-virtual {p0}, Lcom/beizi/fusion/tool/aq;->a()V

    .line 49
    :cond_d
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/beizi/fusion/tool/aq;->O:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_e
    :goto_3
    return-void

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_4
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/tool/aq;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/tool/aq;->c(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private b(FFFD)Z
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x402399999999999aL    # 9.8

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    cmpg-double p3, p1, p4

    if-gez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Landroid/hardware/SensorEvent;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_9

    .line 11
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 12
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 13
    aget v2, p1, v1

    const/4 v3, 0x2

    .line 14
    aget p1, p1, v3

    .line 15
    invoke-direct {p0, v0, v2, p1}, Lcom/beizi/fusion/tool/aq;->a(FFF)D

    move-result-wide v2

    const-wide v4, 0x4025666666666666L    # 10.7

    cmpl-double p1, v2, v4

    if-lez p1, :cond_2

    .line 16
    iget-wide v4, p0, Lcom/beizi/fusion/tool/aq;->ae:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_2

    .line 17
    iget-wide v4, p0, Lcom/beizi/fusion/tool/aq;->af:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/beizi/fusion/tool/aq;->ae:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/beizi/fusion/tool/aq;->af:J

    .line 18
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/beizi/fusion/tool/aq;->ae:J

    .line 19
    iget-wide v4, p0, Lcom/beizi/fusion/tool/aq;->y:D

    cmpg-double p1, v4, v2

    if-gez p1, :cond_3

    .line 20
    iput-wide v2, p0, Lcom/beizi/fusion/tool/aq;->y:D

    .line 21
    :cond_3
    iget p1, p0, Lcom/beizi/fusion/tool/aq;->ac:I

    int-to-double v4, p1

    cmpl-double p1, v2, v4

    if-lez p1, :cond_4

    const-string p1, "ShakeUtil"

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempShakeAcc:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ";shakeMaxAngle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/beizi/fusion/tool/aq;->E:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ";mShakeDurationTime:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/beizi/fusion/tool/aq;->af:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";mDirection:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/fusion/tool/aq;->ad:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beizi/fusion/tool/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_4
    iget-wide v2, p0, Lcom/beizi/fusion/tool/aq;->y:D

    iget p1, p0, Lcom/beizi/fusion/tool/aq;->ac:I

    int-to-double v4, p1

    cmpg-double p1, v2, v4

    if-gez p1, :cond_5

    return-void

    .line 24
    :cond_5
    iget-wide v2, p0, Lcom/beizi/fusion/tool/aq;->E:D

    iget p1, p0, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-double v4, p1

    cmpg-double p1, v2, v4

    if-gez p1, :cond_6

    return-void

    .line 25
    :cond_6
    iget-wide v2, p0, Lcom/beizi/fusion/tool/aq;->af:J

    iget p1, p0, Lcom/beizi/fusion/tool/aq;->ab:I

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_7

    return-void

    .line 26
    :cond_7
    iput-boolean v1, p0, Lcom/beizi/fusion/tool/aq;->Y:Z

    .line 27
    iget-boolean p1, p0, Lcom/beizi/fusion/tool/aq;->X:Z

    if-nez p1, :cond_8

    return-void

    .line 28
    :cond_8
    invoke-virtual {p0}, Lcom/beizi/fusion/tool/aq;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_9
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/beizi/fusion/tool/aq;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/tool/aq;->b(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private d(Landroid/hardware/SensorEvent;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "%.4f"

    if-eqz v0, :cond_17

    .line 26
    :try_start_0
    iget-boolean v3, v1, Lcom/beizi/fusion/tool/aq;->s:Z

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/beizi/fusion/tool/aq;->Z:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x32

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    return-void

    .line 28
    :cond_1
    iget-object v3, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 29
    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 30
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-eqz v4, :cond_16

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    goto/16 :goto_4

    .line 31
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/beizi/fusion/tool/aq;->Z:J

    .line 32
    iget v3, v1, Lcom/beizi/fusion/tool/aq;->O:F

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    if-eqz v7, :cond_15

    const/4 v7, 0x0

    .line 33
    aget v8, v4, v7

    const/4 v9, 0x1

    .line 34
    aget v10, v4, v9

    const/4 v11, 0x2

    .line 35
    aget v4, v4, v11

    .line 36
    iget-wide v12, v1, Lcom/beizi/fusion/tool/aq;->ag:D

    float-to-double v14, v8

    mul-double v14, v14, v12

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v18, v16, v12

    iget-object v8, v1, Lcom/beizi/fusion/tool/aq;->ah:[F

    aget v5, v8, v7

    move-wide/from16 v20, v12

    float-to-double v11, v5

    mul-double v18, v18, v11

    add-double v14, v14, v18

    double-to-float v5, v14

    .line 37
    aput v5, v8, v7

    float-to-double v10, v10

    mul-double v12, v20, v10

    sub-double v10, v16, v20

    .line 38
    aget v14, v8, v9

    float-to-double v14, v14

    mul-double v10, v10, v14

    add-double/2addr v12, v10

    double-to-float v10, v12

    .line 39
    aput v10, v8, v9

    float-to-double v11, v4

    mul-double v12, v20, v11

    sub-double v16, v16, v20

    const/4 v4, 0x2

    .line 40
    aget v11, v8, v4

    float-to-double v14, v11

    mul-double v16, v16, v14

    add-double v12, v12, v16

    double-to-float v11, v12

    .line 41
    aput v11, v8, v4

    .line 42
    iget-wide v12, v0, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v4, v12

    sub-float/2addr v4, v3

    iget v3, v1, Lcom/beizi/fusion/tool/aq;->P:F

    mul-float v4, v4, v3

    .line 43
    iget-object v3, v1, Lcom/beizi/fusion/tool/aq;->Q:[F

    aget v8, v3, v7

    float-to-double v12, v8

    mul-float v5, v5, v4

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    double-to-float v5, v12

    aput v5, v3, v7

    .line 44
    iget-object v3, v1, Lcom/beizi/fusion/tool/aq;->Q:[F

    aget v5, v3, v9

    float-to-double v12, v5

    mul-float v10, v10, v4

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    double-to-float v5, v12

    aput v5, v3, v9

    .line 45
    iget-object v3, v1, Lcom/beizi/fusion/tool/aq;->Q:[F

    const/4 v5, 0x2

    aget v8, v3, v5

    float-to-double v12, v8

    mul-float v11, v11, v4

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    add-double/2addr v12, v10

    double-to-float v4, v12

    aput v4, v3, v5

    .line 46
    iget-object v3, v1, Lcom/beizi/fusion/tool/aq;->Q:[F

    aget v4, v3, v7

    cmpl-float v5, v4, v6

    if-lez v5, :cond_3

    .line 47
    iget v5, v1, Lcom/beizi/fusion/tool/aq;->U:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 48
    iput v4, v1, Lcom/beizi/fusion/tool/aq;->U:F

    goto :goto_0

    .line 49
    :cond_3
    iget v5, v1, Lcom/beizi/fusion/tool/aq;->R:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4

    .line 50
    iput v4, v1, Lcom/beizi/fusion/tool/aq;->R:F

    .line 51
    :cond_4
    :goto_0
    aget v4, v3, v9

    cmpl-float v5, v4, v6

    if-lez v5, :cond_5

    .line 52
    iget v5, v1, Lcom/beizi/fusion/tool/aq;->V:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 53
    iput v4, v1, Lcom/beizi/fusion/tool/aq;->V:F

    goto :goto_1

    .line 54
    :cond_5
    iget v5, v1, Lcom/beizi/fusion/tool/aq;->S:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_6

    .line 55
    iput v4, v1, Lcom/beizi/fusion/tool/aq;->S:F

    :cond_6
    :goto_1
    const/4 v4, 0x2

    .line 56
    aget v3, v3, v4

    cmpl-float v4, v3, v6

    if-lez v4, :cond_7

    .line 57
    iget v4, v1, Lcom/beizi/fusion/tool/aq;->W:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_8

    .line 58
    iput v3, v1, Lcom/beizi/fusion/tool/aq;->W:F

    goto :goto_2

    .line 59
    :cond_7
    iget v4, v1, Lcom/beizi/fusion/tool/aq;->T:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_8

    .line 60
    iput v3, v1, Lcom/beizi/fusion/tool/aq;->T:F

    .line 61
    :cond_8
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/beizi/fusion/tool/aq;->n()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 62
    iget v3, v1, Lcom/beizi/fusion/tool/aq;->R:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iget v3, v1, Lcom/beizi/fusion/tool/aq;->U:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_b

    :cond_9
    iget v3, v1, Lcom/beizi/fusion/tool/aq;->S:F

    .line 63
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    iget v3, v1, Lcom/beizi/fusion/tool/aq;->V:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_b

    :cond_a
    iget v3, v1, Lcom/beizi/fusion/tool/aq;->T:F

    .line 64
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    iget v3, v1, Lcom/beizi/fusion/tool/aq;->W:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    :cond_b
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Float;

    .line 65
    iget v4, v1, Lcom/beizi/fusion/tool/aq;->R:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->U:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->S:F

    .line 66
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->V:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->T:F

    .line 67
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v3, v6

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->W:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v3, v6

    .line 68
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 69
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 70
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 71
    iget-wide v10, v1, Lcom/beizi/fusion/tool/aq;->E:D

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v12, v8

    cmpg-double v8, v10, v12

    if-gez v8, :cond_10

    .line 72
    iget-wide v10, v1, Lcom/beizi/fusion/tool/aq;->y:D

    iget v8, v1, Lcom/beizi/fusion/tool/aq;->ac:I

    int-to-double v12, v8

    cmpg-double v8, v10, v12

    if-ltz v8, :cond_c

    iget-wide v10, v1, Lcom/beizi/fusion/tool/aq;->E:D

    iget v8, v1, Lcom/beizi/fusion/tool/aq;->A:I

    int-to-double v12, v8

    cmpg-double v8, v10, v12

    if-gez v8, :cond_10

    .line 73
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v10, v4

    iput-wide v10, v1, Lcom/beizi/fusion/tool/aq;->E:D

    if-eqz v3, :cond_f

    if-eq v3, v9, :cond_f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_e

    if-eq v3, v5, :cond_e

    const/4 v4, 0x4

    if-eq v3, v4, :cond_d

    if-eq v3, v6, :cond_d

    goto :goto_3

    :cond_d
    const-string v3, "z"

    .line 74
    iput-object v3, v1, Lcom/beizi/fusion/tool/aq;->ad:Ljava/lang/String;

    goto :goto_3

    :cond_e
    const-string v3, "y"

    .line 75
    iput-object v3, v1, Lcom/beizi/fusion/tool/aq;->ad:Ljava/lang/String;

    goto :goto_3

    :cond_f
    const-string v3, "x"

    .line 76
    iput-object v3, v1, Lcom/beizi/fusion/tool/aq;->ad:Ljava/lang/String;

    .line 77
    :cond_10
    :goto_3
    iget v3, v1, Lcom/beizi/fusion/tool/aq;->M:I

    if-lez v3, :cond_15

    .line 78
    iget v3, v1, Lcom/beizi/fusion/tool/aq;->R:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_11

    iget v3, v1, Lcom/beizi/fusion/tool/aq;->U:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_13

    :cond_11
    iget v3, v1, Lcom/beizi/fusion/tool/aq;->S:F

    .line 79
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    iget v3, v1, Lcom/beizi/fusion/tool/aq;->V:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_13

    :cond_12
    iget v3, v1, Lcom/beizi/fusion/tool/aq;->T:F

    .line 80
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_14

    iget v3, v1, Lcom/beizi/fusion/tool/aq;->W:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v1, Lcom/beizi/fusion/tool/aq;->M:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_14

    :cond_13
    const-string v3, "ShakeUtil"

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotate  xMin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/beizi/fusion/tool/aq;->R:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",xMax: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/beizi/fusion/tool/aq;->U:F

    .line 82
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",yMin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/beizi/fusion/tool/aq;->S:F

    .line 83
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",yMax: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/beizi/fusion/tool/aq;->V:F

    .line 84
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",zMin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/beizi/fusion/tool/aq;->T:F

    .line 85
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",zMax: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v1, Lcom/beizi/fusion/tool/aq;->W:F

    .line 86
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v3, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-boolean v9, v1, Lcom/beizi/fusion/tool/aq;->X:Z

    .line 89
    :cond_14
    iget-boolean v2, v1, Lcom/beizi/fusion/tool/aq;->Y:Z

    if-eqz v2, :cond_15

    iget-boolean v2, v1, Lcom/beizi/fusion/tool/aq;->X:Z

    if-eqz v2, :cond_15

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/beizi/fusion/tool/aq;->a()V

    .line 91
    :cond_15
    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v0, v2

    iput v0, v1, Lcom/beizi/fusion/tool/aq;->O:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_16
    :goto_4
    return-void

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_5
    return-void
.end method

.method static synthetic d(Lcom/beizi/fusion/tool/aq;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/tool/aq;->d(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public static f(I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    if-gt v0, p0, :cond_0

    .line 7
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/beizi/fusion/tool/aq;->w:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->i:I

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/beizi/fusion/tool/aq;->g:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/update/ShakeArcView;->setMaxProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v1, p0, Lcom/beizi/fusion/tool/aq;->e:D

    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/update/ShakeArcView;->setMaxProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 5
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->h:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/update/ShakeArcView;->setMaxProgress(D)Lcom/beizi/fusion/update/ShakeArcView;

    :cond_3
    :goto_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/beizi/fusion/tool/aq;->k:I

    invoke-static {v0}, Lcom/beizi/fusion/tool/aq;->f(I)Landroid/util/Pair;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/beizi/fusion/tool/aq$2;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/tool/aq$2;-><init>(Lcom/beizi/fusion/tool/aq;)V

    iget v2, p0, Lcom/beizi/fusion/tool/aq;->j:I

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v2, v0

    int-to-long v2, v2

    .line 5
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/tool/w;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private h()Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "actionType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->C:Ljava/util/Map;

    const-string v2, "maxAcc"

    const-string v3, "angle"

    if-nez v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->i()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v1, p0, Lcom/beizi/fusion/tool/aq;->B:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 8
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->C:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_0

    :cond_2
    move-wide v6, v4

    :goto_0
    cmpg-double v1, v6, v4

    if-gtz v1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->i()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 11
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-boolean v1, p0, Lcom/beizi/fusion/tool/aq;->B:Z

    if-eqz v1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->C:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->C:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-lez v2, :cond_5

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-object v0
.end method

.method private i()Ljava/lang/Double;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x5dc

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    int-to-double v2, v0

    .line 16
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 17
    .line 18
    div-double/2addr v2, v4

    .line 19
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    .line 20
    .line 21
    add-double/2addr v2, v4

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object v0, v1, v2

    .line 28
    .line 29
    const-string v0, "%.2f"

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method private j()I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->A:I

    .line 7
    .line 8
    rsub-int v1, v1, 0x96

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->A:I

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    const/16 v0, 0x78

    .line 18
    .line 19
    if-le v1, v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/util/Random;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x1e

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sub-int/2addr v1, v0

    .line 33
    :cond_0
    return v1
.end method

.method private k()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "actionType"

    .line 12
    .line 13
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/beizi/fusion/tool/aq;->y:D

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v2, v1, v3

    .line 26
    .line 27
    const-string v2, "%.2f"

    .line 28
    .line 29
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "maxAcc"

    .line 42
    .line 43
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/beizi/fusion/tool/aq;->B:Z

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-wide v1, p0, Lcom/beizi/fusion/tool/aq;->E:D

    .line 51
    .line 52
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "angle"

    .line 61
    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_0
    return-object v0
.end method

.method private l()V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    new-array v1, v1, [F

    .line 7
    .line 8
    iget-object v2, p0, Lcom/beizi/fusion/tool/aq;->F:[F

    .line 9
    .line 10
    iget-object v3, p0, Lcom/beizi/fusion/tool/aq;->G:[F

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v1, v4, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aget v2, v0, v1

    .line 21
    .line 22
    float-to-double v2, v2

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    double-to-float v2, v2

    .line 28
    aput v2, v0, v1

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    cmpl-float v4, v2, v3

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget v4, p0, Lcom/beizi/fusion/tool/aq;->I:F

    .line 37
    .line 38
    cmpl-float v3, v4, v3

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    iput v2, p0, Lcom/beizi/fusion/tool/aq;->I:F

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    sub-float/2addr v2, v4

    .line 46
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/high16 v4, 0x43340000    # 180.0f

    .line 51
    .line 52
    cmpl-float v3, v3, v4

    .line 53
    .line 54
    if-lez v3, :cond_2

    .line 55
    .line 56
    aget v0, v0, v1

    .line 57
    .line 58
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->I:F

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    iget v3, p0, Lcom/beizi/fusion/tool/aq;->J:F

    .line 62
    .line 63
    add-float/2addr v3, v2

    .line 64
    iput v3, p0, Lcom/beizi/fusion/tool/aq;->J:F

    .line 65
    .line 66
    iget v2, p0, Lcom/beizi/fusion/tool/aq;->K:F

    .line 67
    .line 68
    cmpg-float v2, v3, v2

    .line 69
    .line 70
    if-gez v2, :cond_3

    .line 71
    .line 72
    iput v3, p0, Lcom/beizi/fusion/tool/aq;->K:F

    .line 73
    .line 74
    :cond_3
    iget v2, p0, Lcom/beizi/fusion/tool/aq;->L:F

    .line 75
    .line 76
    cmpl-float v2, v3, v2

    .line 77
    .line 78
    if-lez v2, :cond_4

    .line 79
    .line 80
    iput v3, p0, Lcom/beizi/fusion/tool/aq;->L:F

    .line 81
    .line 82
    :cond_4
    iget v2, p0, Lcom/beizi/fusion/tool/aq;->L:F

    .line 83
    .line 84
    iget v3, p0, Lcom/beizi/fusion/tool/aq;->K:F

    .line 85
    .line 86
    sub-float/2addr v2, v3

    .line 87
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    float-to-double v2, v2

    .line 92
    const-wide v4, 0x4076800000000000L    # 360.0

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    cmpl-double v6, v2, v4

    .line 98
    .line 99
    if-lez v6, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const-wide v6, 0x4066800000000000L    # 180.0

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    cmpl-double v8, v2, v6

    .line 108
    .line 109
    if-lez v8, :cond_6

    .line 110
    .line 111
    sub-double/2addr v4, v2

    .line 112
    iput-wide v4, p0, Lcom/beizi/fusion/tool/aq;->E:D

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    iput-wide v2, p0, Lcom/beizi/fusion/tool/aq;->E:D

    .line 116
    .line 117
    :goto_0
    iget-wide v2, p0, Lcom/beizi/fusion/tool/aq;->E:D

    .line 118
    .line 119
    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    .line 120
    .line 121
    cmpl-double v6, v2, v4

    .line 122
    .line 123
    if-lez v6, :cond_7

    .line 124
    .line 125
    new-instance v4, Ljava/util/Random;

    .line 126
    .line 127
    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 128
    .line 129
    .line 130
    const/16 v5, 0x1e

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    int-to-double v4, v4

    .line 137
    sub-double/2addr v2, v4

    .line 138
    iput-wide v2, p0, Lcom/beizi/fusion/tool/aq;->E:D

    .line 139
    .line 140
    :cond_7
    aget v0, v0, v1

    .line 141
    .line 142
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->I:F

    .line 143
    .line 144
    return-void
.end method

.method private m()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/beizi/fusion/tool/aq;->c:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/beizi/fusion/tool/aq;->N:Landroid/hardware/Sensor;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/beizi/fusion/tool/aq;->c:Landroid/hardware/SensorManager;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/beizi/fusion/tool/aq;->H:Landroid/hardware/SensorEventListener;

    .line 18
    .line 19
    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v1, p0, Lcom/beizi/fusion/tool/aq;->X:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private n()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/beizi/fusion/tool/aq;->z:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->aa:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method


# virtual methods
.method public a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;)Landroid/view/View;
    .locals 9

    const-string v0, "enter getShakeView"

    const-string v1, "BeiZis"

    .line 121
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    if-eqz v0, :cond_13

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 123
    :cond_0
    new-instance v0, Lcom/beizi/fusion/widget/ShakeView;

    iget-object v2, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/beizi/fusion/widget/ShakeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/tool/aq;->a:Lcom/beizi/fusion/widget/ShakeView;

    .line 124
    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterX()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getCenterY()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getWidth()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;->getHeight()Ljava/lang/String;

    move-result-object p3

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "50%"

    const-string v6, "0"

    if-nez v4, :cond_1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v0, v5

    .line 129
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v2, v5

    .line 130
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "180"

    if-nez v4, :cond_5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object v3, v5

    .line 131
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move-object p3, v5

    .line 132
    :cond_8
    iget-object v4, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/beizi/fusion/tool/au;->i(Landroid/content/Context;)F

    move-result v4

    const-string v5, "%"

    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_9

    .line 134
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 135
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 136
    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 137
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int v2, v2, p2

    div-int/lit8 v2, v2, 0x64

    goto :goto_1

    .line 138
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 139
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v8, 0x190

    if-eqz v6, :cond_c

    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/high16 v6, 0x43c80000    # 400.0f

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_b

    mul-int/lit16 v3, v3, 0x190

    .line 141
    div-int/lit8 v3, v3, 0x64

    goto :goto_2

    :cond_b
    float-to-int v4, v4

    mul-int v4, v4, v3

    .line 142
    div-int/lit8 v4, v4, 0x64

    move v8, v4

    goto :goto_3

    .line 143
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v8, :cond_d

    goto :goto_3

    :cond_d
    :goto_2
    move v8, v3

    .line 144
    :goto_3
    invoke-virtual {p3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 145
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    mul-int p3, p3, v8

    div-int/lit8 p3, p3, 0x64

    goto :goto_4

    .line 146
    :cond_e
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 147
    :goto_4
    iget-object v3, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    int-to-float v4, v8

    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v3

    .line 148
    iget-object v4, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    int-to-float p3, p3

    invoke-static {v4, p3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result p3

    .line 149
    iget-object v4, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v4, v0}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    .line 150
    iget-object v4, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v4, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widthInt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",heightInt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_f

    const/16 v3, 0xb4

    :cond_f
    if-nez p3, :cond_10

    move p3, v3

    .line 152
    :cond_10
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "centerYInt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",centerXInt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",adWidthDp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",adHeightDp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_11

    .line 154
    iget-object v2, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    int-to-float p2, p2

    invoke-static {v2, p2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result p2

    div-int/lit8 v2, p2, 0x2

    :cond_11
    if-nez v0, :cond_12

    .line 155
    iget-object p2, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {p2, p1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result p1

    div-int/lit8 v0, p1, 0x2

    .line 156
    :cond_12
    div-int/lit8 p1, p3, 0x2

    sub-int/2addr v2, p1

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 157
    div-int/lit8 p1, v3, 0x2

    sub-int/2addr v0, p1

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 158
    iget-object p1, p0, Lcom/beizi/fusion/tool/aq;->a:Lcom/beizi/fusion/widget/ShakeView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "topMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",leftMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",widthInt = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/beizi/fusion/tool/aq;->a:Lcom/beizi/fusion/widget/ShakeView;

    iget-boolean p2, p0, Lcom/beizi/fusion/tool/aq;->x:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/beizi/fusion/widget/ShakeView;->setDownloadApp(Ljava/lang/Boolean;)V

    .line 161
    iget-object p1, p0, Lcom/beizi/fusion/tool/aq;->a:Lcom/beizi/fusion/widget/ShakeView;

    invoke-virtual {p1}, Lcom/beizi/fusion/widget/ShakeView;->startShake()V

    .line 162
    invoke-virtual {p0}, Lcom/beizi/fusion/tool/aq;->b()V

    .line 163
    iget-object p1, p0, Lcom/beizi/fusion/tool/aq;->a:Lcom/beizi/fusion/widget/ShakeView;

    return-object p1

    :cond_13
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method protected declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "BeiZis"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter callBackShakeHappened and mShakeStateListener != null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beizi/fusion/tool/aq;->r:Lcom/beizi/fusion/tool/aq$a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",!isCallBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/beizi/fusion/tool/aq;->s:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq;->r:Lcom/beizi/fusion/tool/aq$a;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->s:Z

    if-nez v0, :cond_3

    const-string v0, "BeiZis"

    const-string v1, "callback onShakeHappened()"

    .line 105
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/beizi/fusion/tool/aw;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ShakeUtil"

    const-string v1, "mShakeCount onShakeHappened mShakeArcView is not show"

    .line 107
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x3d380000    # -100.0f

    .line 108
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->n:F

    .line 109
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->o:F

    .line 110
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->p:F

    .line 111
    iput v4, p0, Lcom/beizi/fusion/tool/aq;->l:I

    .line 112
    iput v4, p0, Lcom/beizi/fusion/tool/aq;->m:I

    .line 113
    iput v4, p0, Lcom/beizi/fusion/tool/aq;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 115
    :cond_2
    :try_start_1
    iput-boolean v3, p0, Lcom/beizi/fusion/tool/aq;->s:Z

    .line 116
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq;->r:Lcom/beizi/fusion/tool/aq$a;

    invoke-interface {v0}, Lcom/beizi/fusion/tool/aq$a;->b()V

    .line 117
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq;->a:Lcom/beizi/fusion/widget/ShakeView;

    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/ShakeView;->stopShake()V

    .line 119
    invoke-virtual {p0}, Lcom/beizi/fusion/tool/aq;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(D)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/beizi/fusion/tool/aq;->e:D

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/beizi/fusion/tool/aq;->w:I

    return-void
.end method

.method public a(IIZLjava/util/Map;)V
    .locals 1

    const-string v0, "forceUnreal"

    .line 164
    :try_start_0
    iput p1, p0, Lcom/beizi/fusion/tool/aq;->z:I

    .line 165
    iput p2, p0, Lcom/beizi/fusion/tool/aq;->A:I

    .line 166
    iput-boolean p3, p0, Lcom/beizi/fusion/tool/aq;->B:Z

    .line 167
    iput-object p4, p0, Lcom/beizi/fusion/tool/aq;->C:Ljava/util/Map;

    if-gtz p2, :cond_0

    const/16 p2, 0x23

    .line 168
    iput p2, p0, Lcom/beizi/fusion/tool/aq;->A:I

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    if-nez p4, :cond_1

    .line 169
    iput-boolean p2, p0, Lcom/beizi/fusion/tool/aq;->D:Z

    return-void

    .line 170
    :cond_1
    invoke-interface {p4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 171
    iput-boolean p2, p0, Lcom/beizi/fusion/tool/aq;->D:Z

    return-void

    .line 172
    :cond_2
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 173
    instance-of p4, p1, Ljava/lang/Boolean;

    if-eqz p4, :cond_3

    .line 174
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 175
    iput-boolean p2, p0, Lcom/beizi/fusion/tool/aq;->D:Z

    .line 176
    :cond_4
    iget-boolean p1, p0, Lcom/beizi/fusion/tool/aq;->D:Z

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 177
    sget-object p1, Lcom/beizi/fusion/tool/aq;->c:Landroid/hardware/SensorManager;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 178
    :cond_5
    sget-object p3, Lcom/beizi/fusion/tool/aq;->c:Landroid/hardware/SensorManager;

    iget-object p4, p0, Lcom/beizi/fusion/tool/aq;->H:Landroid/hardware/SensorEventListener;

    invoke-virtual {p3, p4, p1, p2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShakeAliaseParams mShakeCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mRotateCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShakeUtil"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/tool/aq;->b(I)V

    .line 75
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeStartAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->a(D)V

    .line 76
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getShakeEndAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->b(D)V

    .line 77
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->c(D)V

    .line 78
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$AliaseShakeViewBean;->getRotatCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/tool/aq;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShakeCoolParams mShakeCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mRotateCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShakeUtil"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/tool/aq;->b(I)V

    .line 68
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeStartAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->a(D)V

    .line 69
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getShakeEndAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->b(D)V

    .line 70
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->c(D)V

    .line 71
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getRotatCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/tool/aq;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShakeParams mShakeCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mRotateCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShakeUtil"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x3d380000    # -100.0f

    .line 50
    :try_start_0
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->n:F

    .line 51
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->o:F

    .line 52
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->p:F

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->l:I

    .line 54
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->m:I

    .line 55
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->q:I

    .line 56
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/tool/aq;->b(I)V

    .line 57
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeStartAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->a(D)V

    .line 58
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeEndAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->b(D)V

    .line 59
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatAmplitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/beizi/fusion/tool/aq;->c(D)V

    .line 60
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRotatCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/tool/aq;->e(I)V

    .line 61
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRandomClickTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/tool/aq;->c(I)V

    .line 62
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRandomClickNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/tool/aq;->d(I)V

    .line 63
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getAnimationInterval()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/tool/aq;->g(I)V

    .line 64
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/tool/aq$a;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/beizi/fusion/tool/aq;->r:Lcom/beizi/fusion/tool/aq$a;

    return-void
.end method

.method public a(Lcom/beizi/fusion/update/ShakeArcView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    return-void
.end method

.method public a(Lcom/beizi/fusion/update/ShakeArcView;I)V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShakeFeedback feedback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShakeUtil"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/update/ShakeArcView;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/beizi/fusion/tool/aq;->a(I)V

    .line 83
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->f()V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/beizi/fusion/tool/aq;->x:Z

    return-void
.end method

.method public b()V
    .locals 4

    .line 5
    sget-object v0, Lcom/beizi/fusion/tool/aq;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->H:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const v3, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public b(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/tool/aq;->f:D

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/beizi/fusion/tool/aq;->h:I

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "BeiZis"

    const-string v1, "enter unRegisterShakeListenerAndSetDefault"

    .line 4
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/beizi/fusion/tool/aq;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/beizi/fusion/tool/aq;->H:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/tool/aq;->d()V

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq;->a:Lcom/beizi/fusion/widget/ShakeView;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/ShakeView;->stopShake()V

    :cond_1
    return-void
.end method

.method public c(D)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/tool/aq;->g:D

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/beizi/fusion/tool/aq;->j:I

    return-void
.end method

.method protected d()V
    .locals 3

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->s:Z

    .line 5
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->l:I

    .line 6
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->m:I

    const/high16 v1, -0x3d380000    # -100.0f

    .line 7
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->n:F

    .line 8
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->o:F

    .line 9
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->p:F

    .line 10
    iput v0, p0, Lcom/beizi/fusion/tool/aq;->q:I

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->r:Lcom/beizi/fusion/tool/aq$a;

    .line 12
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->d:Landroid/content/Context;

    .line 13
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->a:Lcom/beizi/fusion/widget/ShakeView;

    const/16 v2, 0xc8

    .line 14
    iput v2, p0, Lcom/beizi/fusion/tool/aq;->t:I

    .line 15
    iput-object v1, p0, Lcom/beizi/fusion/tool/aq;->v:Lcom/beizi/fusion/update/ShakeArcView;

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->R:F

    .line 17
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->S:F

    .line 18
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->T:F

    .line 19
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->U:F

    .line 20
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->V:F

    .line 21
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->W:F

    .line 22
    iput v1, p0, Lcom/beizi/fusion/tool/aq;->O:F

    .line 23
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->Y:Z

    .line 24
    iget v1, p0, Lcom/beizi/fusion/tool/aq;->M:I

    if-lez v1, :cond_0

    .line 25
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->X:Z

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/tool/aq;->k:I

    if-lez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->g()V

    :cond_0
    return-void
.end method

.method public e()Ljava/util/Map;
    .locals 3

    .line 2
    iget v0, p0, Lcom/beizi/fusion/tool/aq;->z:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 4
    iget-boolean v0, p0, Lcom/beizi/fusion/tool/aq;->D:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/tool/aq;->i:I

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/beizi/fusion/tool/aq;->t:I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/beizi/fusion/tool/aq;->M:I

    if-lez p1, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/beizi/fusion/tool/aq;->m()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/beizi/fusion/tool/aq;->X:Z

    :goto_0
    return-void
.end method
