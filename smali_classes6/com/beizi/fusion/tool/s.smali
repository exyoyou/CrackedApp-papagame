.class public Lcom/beizi/fusion/tool/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/tool/s$a;
    }
.end annotation


# static fields
.field private static j:Landroid/hardware/SensorManager;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:Landroid/hardware/SensorEventListener;

.field private a:Landroid/content/Context;

.field private b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

.field private c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

.field private d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

.field private e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

.field private f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

.field private g:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

.field private h:F

.field private i:[F

.field private k:Landroid/hardware/Sensor;

.field private l:D

.field private m:D

.field private n:D

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:I

.field private t:F

.field private u:Lcom/beizi/fusion/widget/EulerAngleView;

.field private v:Lcom/beizi/fusion/tool/s$a;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/Boolean;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3089705f    # 1.0E-9f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/beizi/fusion/tool/s;->h:F

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/beizi/fusion/tool/s;->l:D

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/beizi/fusion/tool/s;->n:D

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/s;->r:Z

    .line 24
    .line 25
    iput v0, p0, Lcom/beizi/fusion/tool/s;->s:I

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/s;->w:Z

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->x:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v0, Lcom/beizi/fusion/tool/s$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/beizi/fusion/tool/s$1;-><init>(Lcom/beizi/fusion/tool/s;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->F:Landroid/hardware/SensorEventListener;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "sensor"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/hardware/SensorManager;

    .line 50
    .line 51
    sput-object v0, Lcom/beizi/fusion/tool/s;->j:Landroid/hardware/SensorManager;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/beizi/fusion/tool/s;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 56
    .line 57
    iput-object p4, p0, Lcom/beizi/fusion/tool/s;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p3, "splash_cool_"

    .line 65
    .line 66
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/beizi/fusion/tool/s;->x:Ljava/lang/String;

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/beizi/fusion/tool/s;->c()V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/beizi/fusion/tool/s;->d()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/s;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/tool/s;->l:D

    return-wide p1
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/s;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/tool/s;->t:F

    return p1
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "%.4f"

    if-eqz v0, :cond_b

    .line 56
    :try_start_0
    iget-boolean v3, v1, Lcom/beizi/fusion/tool/s;->w:Z

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 57
    :cond_0
    iget-object v3, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 58
    iget-object v4, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 59
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-eqz v4, :cond_a

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    goto/16 :goto_3

    .line 60
    :cond_1
    iget v3, v1, Lcom/beizi/fusion/tool/s;->t:F

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    .line 61
    aget v7, v4, v6

    const/4 v8, 0x1

    .line 62
    aget v9, v4, v8

    const/4 v10, 0x2

    .line 63
    aget v4, v4, v10

    .line 64
    iget-wide v11, v0, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v11, v11

    sub-float/2addr v11, v3

    iget v3, v1, Lcom/beizi/fusion/tool/s;->h:F

    mul-float v11, v11, v3

    .line 65
    iget-object v3, v1, Lcom/beizi/fusion/tool/s;->i:[F

    aget v12, v3, v6

    float-to-double v12, v12

    mul-float v7, v7, v11

    float-to-double v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    double-to-float v7, v12

    aput v7, v3, v6

    .line 66
    iget-object v3, v1, Lcom/beizi/fusion/tool/s;->i:[F

    aget v7, v3, v8

    float-to-double v12, v7

    mul-float v9, v9, v11

    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    double-to-float v7, v12

    aput v7, v3, v8

    .line 67
    iget-object v3, v1, Lcom/beizi/fusion/tool/s;->i:[F

    aget v7, v3, v10

    float-to-double v12, v7

    mul-float v4, v4, v11

    float-to-double v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    double-to-float v4, v12

    aput v4, v3, v10

    .line 68
    iget-object v3, v1, Lcom/beizi/fusion/tool/s;->i:[F

    aget v4, v3, v6

    cmpl-float v7, v4, v5

    if-lez v7, :cond_2

    .line 69
    iget v7, v1, Lcom/beizi/fusion/tool/s;->C:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_3

    .line 70
    iput v4, v1, Lcom/beizi/fusion/tool/s;->C:F

    goto :goto_0

    .line 71
    :cond_2
    iget v7, v1, Lcom/beizi/fusion/tool/s;->z:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    .line 72
    iput v4, v1, Lcom/beizi/fusion/tool/s;->z:F

    .line 73
    :cond_3
    :goto_0
    aget v4, v3, v8

    cmpl-float v7, v4, v5

    if-lez v7, :cond_4

    .line 74
    iget v7, v1, Lcom/beizi/fusion/tool/s;->D:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_5

    .line 75
    iput v4, v1, Lcom/beizi/fusion/tool/s;->D:F

    goto :goto_1

    .line 76
    :cond_4
    iget v7, v1, Lcom/beizi/fusion/tool/s;->A:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_5

    .line 77
    iput v4, v1, Lcom/beizi/fusion/tool/s;->A:F

    .line 78
    :cond_5
    :goto_1
    aget v3, v3, v10

    cmpl-float v4, v3, v5

    if-lez v4, :cond_6

    .line 79
    iget v4, v1, Lcom/beizi/fusion/tool/s;->E:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_7

    .line 80
    iput v3, v1, Lcom/beizi/fusion/tool/s;->E:F

    goto :goto_2

    .line 81
    :cond_6
    iget v4, v1, Lcom/beizi/fusion/tool/s;->B:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_7

    .line 82
    iput v3, v1, Lcom/beizi/fusion/tool/s;->B:F

    .line 83
    :cond_7
    :goto_2
    iget-object v11, v1, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    if-eqz v11, :cond_8

    .line 84
    iget-wide v12, v1, Lcom/beizi/fusion/tool/s;->l:D

    iget-wide v14, v1, Lcom/beizi/fusion/tool/s;->m:D

    iget-wide v3, v1, Lcom/beizi/fusion/tool/s;->n:D

    move-wide/from16 v16, v3

    invoke-virtual/range {v11 .. v17}, Lcom/beizi/fusion/widget/EulerAngleView;->setAngle(DDD)V

    .line 85
    iget-object v3, v1, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    iget-object v4, v1, Lcom/beizi/fusion/tool/s;->i:[F

    aget v5, v4, v6

    float-to-double v11, v5

    aget v5, v4, v8

    float-to-double v13, v5

    aget v4, v4, v10

    float-to-double v4, v4

    move-object/from16 v16, v3

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    move-wide/from16 v21, v4

    invoke-virtual/range {v16 .. v22}, Lcom/beizi/fusion/widget/EulerAngleView;->setCurrentProgress(DDD)V

    :cond_8
    const-string v3, "ShakeUtil"

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotate  x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/beizi/fusion/tool/s;->i:[F

    aget v7, v7, v6

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/beizi/fusion/tool/s;->i:[F

    aget v7, v7, v8

    .line 87
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",z: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/beizi/fusion/tool/s;->i:[F

    aget v7, v7, v10

    .line 88
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",x : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/beizi/fusion/tool/s;->l:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",y : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/beizi/fusion/tool/s;->m:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",z : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/beizi/fusion/tool/s;->n:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v3, v2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/beizi/fusion/tool/s;->e()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/beizi/fusion/tool/s;->f()V

    .line 92
    :cond_9
    iget-wide v2, v0, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v0, v2

    iput v0, v1, Lcom/beizi/fusion/tool/s;->t:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_a
    :goto_3
    return-void

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/s;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/beizi/fusion/tool/s;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private a(J)Z
    .locals 6

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/beizi/fusion/tool/s;->x:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v1

    cmp-long v1, v3, p1

    if-gez v1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/s;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/tool/s;->r:Z

    return p1
.end method

.method static synthetic a(Lcom/beizi/fusion/tool/s;)[F
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/beizi/fusion/tool/s;->i:[F

    return-object p0
.end method

.method static synthetic b(Lcom/beizi/fusion/tool/s;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/tool/s;->m:D

    return-wide p1
.end method

.method private b(J)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/beizi/fusion/tool/au;->p(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v1

    cmp-long v1, v3, p1

    if-gez v1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/beizi/fusion/tool/s;D)D
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/tool/s;->n:D

    return-wide p1
.end method

.method private c()V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getCoolRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getNomalRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->c:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getRender()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->g:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getNomalRule()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->b:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewBean;->getRender()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->g:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 11
    iput-boolean v1, p0, Lcom/beizi/fusion/tool/s;->r:Z

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    return-void

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getCoolTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/beizi/fusion/tool/s;->a(J)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 14
    iput-boolean v2, p0, Lcom/beizi/fusion/tool/s;->r:Z

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    return-void

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getUserProtectTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/beizi/fusion/tool/s;->b(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iput-boolean v2, p0, Lcom/beizi/fusion/tool/s;->r:Z

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    return-void

    .line 19
    :cond_5
    iput-boolean v1, p0, Lcom/beizi/fusion/tool/s;->r:Z

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private d()V
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getRules()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_a

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;->getPassivationTime()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    move-wide v6, v2

    .line 33
    move-wide v8, v6

    .line 34
    move-wide v10, v8

    .line 35
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_9

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const-string v5, "x"

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_5

    .line 61
    .line 62
    if-lez v1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    cmpl-double v7, v5, v2

    .line 69
    .line 70
    if-lez v7, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 73
    .line 74
    .line 75
    move-result-wide v5

    .line 76
    iput-wide v5, p0, Lcom/beizi/fusion/tool/s;->l:D

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    iput-wide v5, p0, Lcom/beizi/fusion/tool/s;->l:D

    .line 84
    .line 85
    :goto_1
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    iput-object v4, p0, Lcom/beizi/fusion/tool/s;->o:Ljava/lang/String;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const-string v5, "y"

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    if-lez v1, :cond_6

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 111
    .line 112
    .line 113
    move-result-wide v8

    .line 114
    cmpl-double v5, v8, v2

    .line 115
    .line 116
    if-lez v5, :cond_6

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 119
    .line 120
    .line 121
    move-result-wide v8

    .line 122
    iput-wide v8, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_6
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 126
    .line 127
    .line 128
    move-result-wide v8

    .line 129
    iput-wide v8, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 130
    .line 131
    :goto_2
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 132
    .line 133
    .line 134
    move-result-wide v8

    .line 135
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iput-object v4, p0, Lcom/beizi/fusion/tool/s;->p:Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_7
    const-string v5, "z"

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAxis()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_2

    .line 153
    .line 154
    if-lez v1, :cond_8

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 157
    .line 158
    .line 159
    move-result-wide v10

    .line 160
    cmpl-double v5, v10, v2

    .line 161
    .line 162
    if-lez v5, :cond_8

    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getPangle()D

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    iput-wide v10, p0, Lcom/beizi/fusion/tool/s;->n:D

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_8
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 172
    .line 173
    .line 174
    move-result-wide v10

    .line 175
    iput-wide v10, p0, Lcom/beizi/fusion/tool/s;->n:D

    .line 176
    .line 177
    :goto_3
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getAngle()D

    .line 178
    .line 179
    .line 180
    move-result-wide v10

    .line 181
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRuleBean;->getDirection()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    iput-object v4, p0, Lcom/beizi/fusion/tool/s;->q:Ljava/lang/String;

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_9
    if-lez v1, :cond_a

    .line 190
    .line 191
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->b(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    new-instance v1, Landroid/os/Handler;

    .line 196
    .line 197
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 198
    .line 199
    .line 200
    new-instance v2, Lcom/beizi/fusion/tool/s$2;

    .line 201
    .line 202
    move-object v4, v2

    .line 203
    move-object v5, p0

    .line 204
    invoke-direct/range {v4 .. v11}, Lcom/beizi/fusion/tool/s$2;-><init>(Lcom/beizi/fusion/tool/s;DDD)V

    .line 205
    .line 206
    .line 207
    int-to-long v3, v0

    .line 208
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    .line 211
    nop

    .line 212
    :catch_0
    :cond_a
    :goto_4
    return-void
.end method

.method private e()Z
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/beizi/fusion/tool/s;->l:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    const-string v3, "3"

    .line 5
    .line 6
    const-string v4, "0"

    .line 7
    .line 8
    const-string v5, "1"

    .line 9
    .line 10
    const-string v6, "2"

    .line 11
    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x1

    .line 16
    cmpl-double v11, v1, v7

    .line 17
    .line 18
    if-lez v11, :cond_3

    .line 19
    .line 20
    :try_start_1
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->o:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 29
    .line 30
    aget v1, v1, v0

    .line 31
    .line 32
    cmpl-float v2, v1, v9

    .line 33
    .line 34
    if-lez v2, :cond_3

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    float-to-double v1, v1

    .line 41
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->l:D

    .line 42
    .line 43
    cmpl-double v13, v1, v11

    .line 44
    .line 45
    if-ltz v13, :cond_3

    .line 46
    .line 47
    return v10

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->o:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 57
    .line 58
    aget v1, v1, v0

    .line 59
    .line 60
    cmpg-float v2, v1, v9

    .line 61
    .line 62
    if-gez v2, :cond_3

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    float-to-double v1, v1

    .line 69
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->l:D

    .line 70
    .line 71
    cmpl-double v13, v1, v11

    .line 72
    .line 73
    if-ltz v13, :cond_3

    .line 74
    .line 75
    return v10

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->o:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 85
    .line 86
    aget v1, v1, v0

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    float-to-double v1, v1

    .line 93
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->l:D

    .line 94
    .line 95
    cmpl-double v13, v1, v11

    .line 96
    .line 97
    if-ltz v13, :cond_3

    .line 98
    .line 99
    return v10

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->o:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    iget v1, p0, Lcom/beizi/fusion/tool/s;->z:F

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    float-to-double v1, v1

    .line 115
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->l:D

    .line 116
    .line 117
    cmpl-double v13, v1, v11

    .line 118
    .line 119
    if-ltz v13, :cond_3

    .line 120
    .line 121
    iget v1, p0, Lcom/beizi/fusion/tool/s;->C:F

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    float-to-double v1, v1

    .line 128
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->l:D

    .line 129
    .line 130
    cmpl-double v13, v1, v11

    .line 131
    .line 132
    if-lez v13, :cond_3

    .line 133
    .line 134
    return v10

    .line 135
    :cond_3
    iget-wide v1, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 136
    .line 137
    cmpl-double v11, v1, v7

    .line 138
    .line 139
    if-lez v11, :cond_7

    .line 140
    .line 141
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->p:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_4

    .line 148
    .line 149
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 150
    .line 151
    aget v1, v1, v10

    .line 152
    .line 153
    cmpg-float v2, v1, v9

    .line 154
    .line 155
    if-gez v2, :cond_7

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    float-to-double v1, v1

    .line 162
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 163
    .line 164
    cmpl-double v13, v1, v11

    .line 165
    .line 166
    if-ltz v13, :cond_7

    .line 167
    .line 168
    return v10

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->p:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_5

    .line 176
    .line 177
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 178
    .line 179
    aget v1, v1, v10

    .line 180
    .line 181
    cmpl-float v2, v1, v9

    .line 182
    .line 183
    if-lez v2, :cond_7

    .line 184
    .line 185
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    float-to-double v1, v1

    .line 190
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 191
    .line 192
    cmpl-double v13, v1, v11

    .line 193
    .line 194
    if-ltz v13, :cond_7

    .line 195
    .line 196
    return v10

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->p:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_6

    .line 204
    .line 205
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 206
    .line 207
    aget v1, v1, v10

    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    float-to-double v1, v1

    .line 214
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 215
    .line 216
    cmpl-double v13, v1, v11

    .line 217
    .line 218
    if-ltz v13, :cond_7

    .line 219
    .line 220
    return v10

    .line 221
    :cond_6
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->p:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_7

    .line 228
    .line 229
    iget v1, p0, Lcom/beizi/fusion/tool/s;->A:F

    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    float-to-double v1, v1

    .line 236
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 237
    .line 238
    cmpl-double v13, v1, v11

    .line 239
    .line 240
    if-ltz v13, :cond_7

    .line 241
    .line 242
    iget v1, p0, Lcom/beizi/fusion/tool/s;->D:F

    .line 243
    .line 244
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    float-to-double v1, v1

    .line 249
    iget-wide v11, p0, Lcom/beizi/fusion/tool/s;->m:D

    .line 250
    .line 251
    cmpl-double v13, v1, v11

    .line 252
    .line 253
    if-lez v13, :cond_7

    .line 254
    .line 255
    return v10

    .line 256
    :cond_7
    iget-wide v1, p0, Lcom/beizi/fusion/tool/s;->n:D

    .line 257
    .line 258
    cmpl-double v11, v1, v7

    .line 259
    .line 260
    if-lez v11, :cond_b

    .line 261
    .line 262
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->q:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    const/4 v2, 0x2

    .line 269
    if-eqz v1, :cond_8

    .line 270
    .line 271
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 272
    .line 273
    aget v1, v1, v2

    .line 274
    .line 275
    cmpl-float v2, v1, v9

    .line 276
    .line 277
    if-lez v2, :cond_b

    .line 278
    .line 279
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    float-to-double v1, v1

    .line 284
    iget-wide v3, p0, Lcom/beizi/fusion/tool/s;->n:D

    .line 285
    .line 286
    cmpl-double v5, v1, v3

    .line 287
    .line 288
    if-ltz v5, :cond_b

    .line 289
    .line 290
    return v10

    .line 291
    :cond_8
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->q:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_9

    .line 298
    .line 299
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 300
    .line 301
    aget v1, v1, v2

    .line 302
    .line 303
    cmpg-float v2, v1, v9

    .line 304
    .line 305
    if-gez v2, :cond_b

    .line 306
    .line 307
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    float-to-double v1, v1

    .line 312
    iget-wide v3, p0, Lcom/beizi/fusion/tool/s;->n:D

    .line 313
    .line 314
    cmpl-double v5, v1, v3

    .line 315
    .line 316
    if-ltz v5, :cond_b

    .line 317
    .line 318
    return v10

    .line 319
    :cond_9
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->q:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_a

    .line 326
    .line 327
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->i:[F

    .line 328
    .line 329
    aget v1, v1, v2

    .line 330
    .line 331
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    float-to-double v1, v1

    .line 336
    iget-wide v3, p0, Lcom/beizi/fusion/tool/s;->n:D

    .line 337
    .line 338
    cmpl-double v5, v1, v3

    .line 339
    .line 340
    if-ltz v5, :cond_b

    .line 341
    .line 342
    return v10

    .line 343
    :cond_a
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->q:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_b

    .line 350
    .line 351
    iget v1, p0, Lcom/beizi/fusion/tool/s;->B:F

    .line 352
    .line 353
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    float-to-double v1, v1

    .line 358
    iget-wide v3, p0, Lcom/beizi/fusion/tool/s;->n:D

    .line 359
    .line 360
    cmpl-double v5, v1, v3

    .line 361
    .line 362
    if-ltz v5, :cond_b

    .line 363
    .line 364
    iget v1, p0, Lcom/beizi/fusion/tool/s;->E:F

    .line 365
    .line 366
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    float-to-double v1, v1

    .line 371
    iget-wide v3, p0, Lcom/beizi/fusion/tool/s;->n:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    .line 373
    cmpl-double v5, v1, v3

    .line 374
    .line 375
    if-lez v5, :cond_b

    .line 376
    .line 377
    return v10

    .line 378
    :catch_0
    move-exception v1

    .line 379
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 380
    .line 381
    .line 382
    :cond_b
    return v0
.end method

.method private f()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->v:Lcom/beizi/fusion/tool/s$a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/tool/s;->w:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/tool/aw;->b(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/beizi/fusion/tool/s;->w:Z

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/beizi/fusion/tool/s;->r:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->f:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->x:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->v:Lcom/beizi/fusion/tool/s$a;

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/beizi/fusion/tool/s$a;->a()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/beizi/fusion/tool/s;->b()V

    .line 52
    .line 53
    .line 54
    const-string v0, "ShakeUtil"

    .line 55
    .line 56
    const-string v1, "onEulerAngleHappened"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 8
    :try_start_0
    sget-object v0, Lcom/beizi/fusion/tool/s;->j:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->k:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 10
    sget-object v1, Lcom/beizi/fusion/tool/s;->j:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/beizi/fusion/tool/s;->F:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;II)V
    .locals 10

    const-string v0, "%"

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->g:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    if-eqz v1, :cond_12

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getCenterX()Ljava/lang/String;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/beizi/fusion/tool/s;->g:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getCenterY()Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/beizi/fusion/tool/s;->g:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getWidth()Ljava/lang/String;

    move-result-object v3

    .line 15
    iget-object v4, p0, Lcom/beizi/fusion/tool/s;->g:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;->getHeight()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 16
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "0"

    if-nez v5, :cond_2

    :try_start_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const-string v1, "85%"

    .line 17
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v2, "50%"

    .line 18
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "120"

    if-nez v5, :cond_6

    :try_start_2
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move-object v3, v7

    .line 19
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move-object v4, v7

    .line 20
    :cond_9
    iget-object v5, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/beizi/fusion/tool/au;->i(Landroid/content/Context;)F

    move-result v5

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x64

    const/4 v8, 0x0

    if-eqz v6, :cond_a

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p2

    div-int/2addr v1, v7

    goto :goto_1

    .line 23
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 24
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int v2, v2, p3

    div-int/2addr v2, v7

    goto :goto_2

    .line 26
    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 27
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    float-to-int v5, v5

    mul-int v5, v5, v3

    .line 29
    div-int/2addr v5, v7

    goto :goto_3

    .line 30
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 31
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, v5

    div-int/2addr v0, v7

    goto :goto_4

    .line 33
    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_4
    if-nez v5, :cond_e

    const/16 v5, 0x64

    :cond_e
    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    move v7, v0

    :goto_5
    if-nez v2, :cond_10

    .line 34
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    int-to-float v2, p3

    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    :cond_10
    if-nez v1, :cond_11

    .line 35
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    int-to-float v1, p2

    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 36
    :cond_11
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    int-to-float v3, v5

    invoke-static {v0, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v0

    .line 37
    iget-object v3, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    int-to-float v4, v7

    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v3

    .line 38
    iget-object v4, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v4, v1}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v1

    .line 39
    iget-object v4, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v4, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    move-result v2

    .line 40
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 41
    new-instance v5, Lcom/beizi/fusion/widget/EulerAngleView;

    iget-object v6, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/beizi/fusion/widget/EulerAngleView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    .line 42
    iget-object v6, p0, Lcom/beizi/fusion/tool/s;->d:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;

    invoke-virtual {v5, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->setEulerAngleViewRuleBean(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleViewRuleBean;)V

    .line 43
    iget-object v5, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    iget-object v6, p0, Lcom/beizi/fusion/tool/s;->g:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;

    invoke-virtual {v5, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->setEulerAngleRenderBean(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$EulerAngleRenderBean;)V

    .line 44
    iget-object v5, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    invoke-virtual {v5, v0, v3}, Lcom/beizi/fusion/widget/EulerAngleView;->setAnimationViewWidthAndHeight(II)V

    .line 45
    iget-object v5, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    iget-object v6, p0, Lcom/beizi/fusion/tool/s;->y:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Lcom/beizi/fusion/widget/EulerAngleView;->setDownloadApp(Ljava/lang/Boolean;)V

    .line 46
    iget-object v5, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    invoke-virtual {v5}, Lcom/beizi/fusion/widget/EulerAngleView;->buildEulerAngleView()V

    .line 47
    iget-object v5, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    invoke-virtual {v5, v8, v8}, Landroid/view/View;->measure(II)V

    .line 48
    iget-object v5, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 49
    iget-object v6, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const-string v7, "BeiZis"

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "centerYInt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",centerXInt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",adWidthDp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",adHeightDp = "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",widthInt = "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",heightInt = "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",viewWidth = "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",viewHeight = "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 52
    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 53
    iget-object p2, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    invoke-virtual {p1, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object p1, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    invoke-virtual {p1}, Lcom/beizi/fusion/widget/EulerAngleView;->startContinuousRotations()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    :catch_0
    :cond_12
    :goto_6
    return-void
.end method

.method public a(Lcom/beizi/fusion/tool/s$a;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/beizi/fusion/tool/s;->v:Lcom/beizi/fusion/tool/s$a;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/beizi/fusion/tool/s;->y:Ljava/lang/Boolean;

    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    const-string v0, "BeiZis"

    const-string v1, "enter unRegisterListener"

    .line 4
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/beizi/fusion/tool/s;->j:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/beizi/fusion/tool/s;->F:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/EulerAngleView;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->u:Lcom/beizi/fusion/widget/EulerAngleView;

    .line 10
    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->a:Landroid/content/Context;

    .line 11
    iput-object v0, p0, Lcom/beizi/fusion/tool/s;->v:Lcom/beizi/fusion/tool/s$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
