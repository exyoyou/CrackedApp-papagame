.class public Lcom/sigmob/sdk/base/common/al$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static e:[I

.field static f:[F

.field static g:[I

.field static h:[F

.field private static o:F


# instance fields
.field private A:Z

.field private B:F

.field private C:I

.field private D:J

.field private E:Ljava/lang/Integer;

.field private F:Z

.field private G:Z

.field private H:Ljava/util/Timer;

.field private final I:J

.field private J:J

.field protected a:I

.field public b:I

.field public c:I

.field public d:I

.field i:[F

.field j:[F

.field k:Ljava/lang/Float;

.field private l:Landroid/hardware/SensorEvent;

.field private m:Landroid/hardware/SensorEvent;

.field private n:Landroid/hardware/SensorEvent;

.field private p:Lcom/sigmob/sdk/base/common/al$c;

.field private q:F

.field private r:F

.field private s:F

.field private t:J

.field private u:Z

.field private final v:Lcom/sigmob/sdk/base/common/al$d;

.field private w:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sigmob/sdk/base/common/al$a;->e:[I

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sigmob/sdk/base/common/al$a;->f:[F

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/sigmob/sdk/base/common/al$a;->g:[I

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sigmob/sdk/base/common/al$a;->h:[F

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/sigmob/sdk/base/common/al$a;->o:F

    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0x3c
        0x32
        0x2d
        0x23
        0x19
        0x14
        0xf
        0xa
        0x5
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x40800000    # 4.0f
        0x41200000    # 10.0f
        0x41000000    # 8.0f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3fe66666    # 1.8f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xf
        0xf
        0xd
        0xb
        0xa
        0x8
        0x6
        0x4
        0x3
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x420c0000    # 35.0f
        0x420c0000    # 35.0f
        0x41f00000    # 30.0f
        0x41c80000    # 25.0f
        0x41a00000    # 20.0f
        0x41700000    # 15.0f
        0x41400000    # 12.0f
        0x41000000    # 8.0f
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sigmob/sdk/base/common/al$c;Lcom/sigmob/sdk/base/common/al$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "motionListener",
            "type"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->i:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->j:[F

    const/16 v0, 0x64

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->C:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/al$a;->I:J

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/al$a;->J:J

    invoke-static {}, Lcom/sigmob/sdk/base/common/al;->a()Lcom/sigmob/sdk/base/common/af;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/af;->a(Landroid/content/Context;)Lcom/sigmob/sdk/base/common/af;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/al;->a(Lcom/sigmob/sdk/base/common/af;)Lcom/sigmob/sdk/base/common/af;

    :cond_0
    iput-object p2, p0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/al$a;->v:Lcom/sigmob/sdk/base/common/al$d;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/al$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sigmob/sdk/base/common/al$a;->J:J

    return-wide v0
.end method

.method static synthetic a(Lcom/sigmob/sdk/base/common/al$a;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/sigmob/sdk/base/common/al$a;->J:J

    return-wide p1
.end method

.method private a(Landroid/hardware/SensorEvent;Landroid/hardware/SensorEvent;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "gyroscopeEvent"
        }
    .end annotation

    .line 5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/sigmob/sdk/base/common/al$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_14

    invoke-direct {v0, v2, v3}, Lcom/sigmob/sdk/base/common/al$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v1, v5

    const/4 v4, 0x1

    aget v6, v1, v4

    const/4 v7, 0x2

    aget v1, v1, v7

    iget-object v8, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v9, v8, v5

    aget v10, v8, v4

    aget v7, v8, v7

    iget-boolean v8, v0, Lcom/sigmob/sdk/base/common/al$a;->u:Z

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/16 v15, 0x0

    if-eqz v8, :cond_2

    iget-wide v4, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    cmp-long v17, v4, v11

    if-lez v17, :cond_1

    float-to-double v4, v9

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v9, v10

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v4, v9

    float-to-double v9, v7

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-wide v9, v2, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v11, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    sub-long/2addr v9, v11

    long-to-float v5, v9

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v5, v5, v9

    const v9, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v5, v9

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v15

    :cond_1
    iget-wide v4, v2, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    goto :goto_0

    :cond_2
    iput-wide v11, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    :goto_0
    float-to-double v4, v3

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v9, v6

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v4, v9

    float-to-double v9, v1

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v9, v0, Lcom/sigmob/sdk/base/common/al$a;->t:J

    sub-long v9, v4, v9

    iget v11, v0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    iput v3, v0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    :cond_3
    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v3, v3, v11

    if-gez v3, :cond_4

    iput v6, v0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    :cond_4
    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_5

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    :cond_5
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->E:Ljava/lang/Integer;

    if-nez v1, :cond_8

    iget v1, v0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    if-lez v1, :cond_6

    const/16 v3, 0xa

    if-le v1, v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    :cond_7
    sget-object v1, Lcom/sigmob/sdk/base/common/al$a;->g:[I

    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    aget v1, v1, v3

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    sput v1, Lcom/sigmob/sdk/base/common/al$a;->o:F

    float-to-double v11, v2

    const-wide v13, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v11, v13

    if-gtz v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/al$a;->t:J

    return-void

    :cond_9
    sget-object v1, Lcom/sigmob/sdk/base/common/al$a;->h:[F

    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    aget v1, v1, v3

    sget v3, Lcom/sigmob/sdk/base/common/al$a;->o:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_2
    iget-boolean v3, v0, Lcom/sigmob/sdk/base/common/al$a;->u:Z

    if-nez v3, :cond_c

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sigmob/sdk/base/common/al$a;->u:Z

    iput-wide v4, v0, Lcom/sigmob/sdk/base/common/al$a;->t:J

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-interface {v1}, Lcom/sigmob/sdk/base/common/al$c;->a()V

    :cond_b
    return-void

    :cond_c
    float-to-double v3, v1

    const/4 v1, 0x0

    cmpl-double v5, v15, v3

    if-lez v5, :cond_e

    if-eqz v2, :cond_e

    cmpl-float v3, v7, v1

    if-ltz v3, :cond_d

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sigmob/sdk/base/common/al$a;->F:Z

    goto :goto_3

    :cond_d
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sigmob/sdk/base/common/al$a;->G:Z

    goto :goto_3

    :cond_e
    const/4 v3, 0x1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/al$a;->e()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_f

    return-void

    :cond_f
    iget v4, v0, Lcom/sigmob/sdk/base/common/al$a;->b:I

    if-ne v4, v3, :cond_10

    iget-boolean v5, v0, Lcom/sigmob/sdk/base/common/al$a;->F:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v0, Lcom/sigmob/sdk/base/common/al$a;->G:Z

    if-nez v5, :cond_11

    :cond_10
    if-nez v4, :cond_12

    iget-boolean v4, v0, Lcom/sigmob/sdk/base/common/al$a;->F:Z

    if-nez v4, :cond_11

    iget-boolean v4, v0, Lcom/sigmob/sdk/base/common/al$a;->G:Z

    if-eqz v4, :cond_12

    :cond_11
    const/4 v4, 0x1

    goto :goto_4

    :cond_12
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_13

    if-eqz v2, :cond_13

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->d:I

    int-to-long v2, v2

    cmp-long v4, v9, v2

    if-ltz v4, :cond_13

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sigmob/sdk/base/common/al$a;->u:Z

    sget-object v3, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    const-string v4, "handleAccelerometerData: shake end"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    iput-boolean v2, v0, Lcom/sigmob/sdk/base/common/al$a;->F:Z

    iput-boolean v2, v0, Lcom/sigmob/sdk/base/common/al$a;->G:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->C:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "x_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->C:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "y_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->C:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "z_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/al$a;->a(Ljava/util/Map;)V

    :cond_13
    return-void

    :cond_14
    :goto_5
    sget-object v1, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    const-string v2, "handleAccelerometerData: event is unavailable."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/base/common/al$c;->a(Ljava/util/Map;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/al$a;->J:J

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/al$a;->d()V

    iget p1, p0, Lcom/sigmob/sdk/base/common/al$a;->c:I

    if-gtz p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->H:Ljava/util/Timer;

    new-instance v1, Lcom/sigmob/sdk/base/common/al$a$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/base/common/al$a$1;-><init>(Lcom/sigmob/sdk/base/common/al$a;)V

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "length"
        }
    .end annotation

    .line 8
    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz p1, :cond_1

    array-length p1, p1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private d()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cancelTimer"

    invoke-static {v0, v2, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->H:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->H:Ljava/util/Timer;

    return-void
.end method

.method private e()Z
    .locals 8

    .line 2
    iget-wide v0, p0, Lcom/sigmob/sdk/base/common/al$a;->J:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    iget v2, p0, Lcom/sigmob/sdk/base/common/al$a;->c:I

    int-to-long v2, v2

    cmp-long v6, v0, v2

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v6, p0, Lcom/sigmob/sdk/base/common/al$a;->D:J

    sub-long/2addr v1, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v1, v6

    if-ltz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    return v4
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3
    invoke-static {}, Lcom/sigmob/sdk/base/common/al;->a()Lcom/sigmob/sdk/base/common/af;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/al;->a()Lcom/sigmob/sdk/base/common/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/af;->b(Landroid/hardware/SensorEventListener;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/al;->a()Lcom/sigmob/sdk/base/common/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/af;->a(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation

    .line 4
    if-lez p1, :cond_0

    iput p1, p0, Lcom/sigmob/sdk/base/common/al$a;->C:I

    :cond_0
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/SensorEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    .line 6
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/sigmob/sdk/base/models/SensorEntity;->level:I

    :goto_0
    iput v1, p0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/sigmob/sdk/base/models/SensorEntity;->shakeTriggerType:I

    :goto_1
    iput v1, p0, Lcom/sigmob/sdk/base/common/al$a;->b:I

    if-nez p1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget v1, p1, Lcom/sigmob/sdk/base/models/SensorEntity;->widgetIntervalTime:I

    :goto_2
    iput v1, p0, Lcom/sigmob/sdk/base/common/al$a;->c:I

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget v0, p1, Lcom/sigmob/sdk/base/models/SensorEntity;->shakeTimeThreshold:I

    :goto_3
    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->d:I

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sigmob/sdk/base/common/al;->a()Lcom/sigmob/sdk/base/common/af;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sigmob/sdk/base/common/al;->a()Lcom/sigmob/sdk/base/common/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/af;->b(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    iput v0, p0, Lcom/sigmob/sdk/base/common/al$a;->B:F

    iput-wide v1, p0, Lcom/sigmob/sdk/base/common/al$a;->D:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitivity_raw"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/al$a;->E:Ljava/lang/Integer;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/al$a;->b()V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/al$a;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    return-void
.end method

.method public c(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeTriggerType"
        }
    .end annotation

    .line 2
    iput p1, p0, Lcom/sigmob/sdk/base/common/al$a;->b:I

    return-void
.end method

.method public e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widgetIntervalTime"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/sigmob/sdk/base/common/al$a;->c:I

    return-void
.end method

.method public f(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeTimeThreshold"
        }
    .end annotation

    iput p1, p0, Lcom/sigmob/sdk/base/common/al$a;->d:I

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sensor",
            "i"
        }
    .end annotation

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    iget-object v3, v0, Lcom/sigmob/sdk/base/common/al$a;->v:Lcom/sigmob/sdk/base/common/al$d;

    sget-object v4, Lcom/sigmob/sdk/base/common/al$d;->d:Lcom/sigmob/sdk/base/common/al$d;

    const/16 v5, 0xa

    if-ne v3, v4, :cond_0

    if-ne v2, v5, :cond_0

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->l:Landroid/hardware/SensorEvent;

    iget-object v2, v0, Lcom/sigmob/sdk/base/common/al$a;->n:Landroid/hardware/SensorEvent;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;->a(Landroid/hardware/SensorEvent;Landroid/hardware/SensorEvent;)V

    return-void

    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_1

    if-ne v2, v7, :cond_1

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->l:Landroid/hardware/SensorEvent;

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_2

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->m:Landroid/hardware/SensorEvent;

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->n:Landroid/hardware/SensorEvent;

    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->l:Landroid/hardware/SensorEvent;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->m:Landroid/hardware/SensorEvent;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_d

    :cond_4
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->i:[F

    iget-object v3, v0, Lcom/sigmob/sdk/base/common/al$a;->l:Landroid/hardware/SensorEvent;

    iget-object v3, v3, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/al$a;->m:Landroid/hardware/SensorEvent;

    iget-object v4, v4, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    invoke-static {v1, v8, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->i:[F

    iget-object v3, v0, Lcom/sigmob/sdk/base/common/al$a;->j:[F

    invoke-static {v1, v3}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->j:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v1, v9

    iget-object v4, v0, Lcom/sigmob/sdk/base/common/al$a;->j:[F

    aget v4, v4, v7

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v4, v9

    iget-object v9, v0, Lcom/sigmob/sdk/base/common/al$a;->j:[F

    aget v9, v9, v6

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v9, v9

    sget-object v10, Lcom/sigmob/sdk/base/common/al$1;->a:[I

    iget-object v11, v0, Lcom/sigmob/sdk/base/common/al$a;->v:Lcom/sigmob/sdk/base/common/al$d;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const-string v11, "turn_time"

    const-string v12, "turn_z"

    const-string v13, "turn_y"

    const-string v14, "turn_x"

    const/high16 v16, 0x41c80000    # 25.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x42c80000    # 100.0f

    move/from16 v19, v9

    const-wide/16 v8, 0x0

    const/4 v15, 0x0

    if-eq v10, v7, :cond_21

    if-eq v10, v6, :cond_14

    if-eq v10, v2, :cond_5

    goto/16 :goto_d

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/al$a;->e()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    iget-object v10, v0, Lcom/sigmob/sdk/base/common/al$a;->n:Landroid/hardware/SensorEvent;

    invoke-direct {v0, v10, v2}, Lcom/sigmob/sdk/base/common/al$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    const-string v2, "onSensorChanged: Gyroscope event not available for WRING type."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_7
    iget-object v2, v0, Lcom/sigmob/sdk/base/common/al$a;->n:Landroid/hardware/SensorEvent;

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v2, v3

    aget v16, v2, v7

    aget v2, v2, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v17

    if-gez v6, :cond_8

    iget-boolean v6, v0, Lcom/sigmob/sdk/base/common/al$a;->A:Z

    if-nez v6, :cond_8

    sget-object v1, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    const-string v2, "wring reset"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v8, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    return-void

    :cond_8
    iget-object v6, v0, Lcom/sigmob/sdk/base/common/al$a;->E:Ljava/lang/Integer;

    if-nez v6, :cond_b

    iget v6, v0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    if-lez v6, :cond_a

    if-le v6, v5, :cond_9

    goto :goto_1

    :cond_9
    sget-object v5, Lcom/sigmob/sdk/base/common/al$a;->f:[F

    aget v5, v5, v6

    goto :goto_2

    :cond_a
    :goto_1
    const/high16 v5, 0x40800000    # 4.0f

    goto :goto_2

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    :goto_2
    sput v5, Lcom/sigmob/sdk/base/common/al$a;->o:F

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v17, 0x3fb999999999999aL    # 0.1

    cmpl-double v20, v5, v17

    if-lez v20, :cond_c

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    :goto_3
    iput-boolean v7, v0, Lcom/sigmob/sdk/base/common/al$a;->A:Z

    iget-wide v5, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    cmp-long v17, v5, v8

    if-nez v17, :cond_e

    if-eqz v7, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    sget-object v1, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    const-string v2, "wring start"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/sigmob/sdk/base/common/al$c;->a()V

    :cond_d
    return-void

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v8, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    sub-long/2addr v5, v8

    const-wide/16 v7, 0xc8

    cmp-long v9, v5, v7

    if-gez v9, :cond_f

    return-void

    :cond_f
    iget v5, v0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_10

    iput v4, v0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    :cond_10
    iget v4, v0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_11

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    :cond_11
    iget v1, v0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_12

    move/from16 v8, v19

    iput v8, v0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    :cond_12
    iget-wide v4, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2e

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v4, Lcom/sigmob/sdk/base/common/al$a;->o:F

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_13

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v4, Lcom/sigmob/sdk/base/common/al$a;->o:F

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_13

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/sigmob/sdk/base/common/al$a;->o:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/al$a;->D:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v0, Lcom/sigmob/sdk/base/common/al$a;->D:J

    iget-wide v6, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/al$a;->a(Ljava/util/Map;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    iput-boolean v3, v0, Lcom/sigmob/sdk/base/common/al$a;->A:Z

    goto/16 :goto_d

    :cond_14
    move/from16 v8, v19

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/al$a;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void

    :cond_15
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    if-nez v1, :cond_17

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-interface {v1}, Lcom/sigmob/sdk/base/common/al$c;->a()V

    :cond_16
    return-void

    :cond_17
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->n:Landroid/hardware/SensorEvent;

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/al$a;->a(Landroid/hardware/SensorEvent;I)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/sigmob/sdk/base/common/al;->a:Ljava/lang/String;

    const-string v2, "onSensorChanged: Gyroscope event not available for SWING type."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_18
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->n:Landroid/hardware/SensorEvent;

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v1, v3

    aget v3, v1, v7

    aget v1, v1, v6

    iget v4, v0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_19

    iput v2, v0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    :cond_19
    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1a

    iput v3, v0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    :cond_1a
    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    :cond_1b
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->E:Ljava/lang/Integer;

    if-nez v1, :cond_1e

    iget v1, v0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    if-lez v1, :cond_1d

    if-le v1, v5, :cond_1c

    goto :goto_4

    :cond_1c
    sget-object v2, Lcom/sigmob/sdk/base/common/al$a;->e:[I

    aget v1, v2, v1

    goto :goto_5

    :cond_1d
    :goto_4
    sput v16, Lcom/sigmob/sdk/base/common/al$a;->o:F

    goto :goto_6

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_5
    int-to-float v1, v1

    sput v1, Lcom/sigmob/sdk/base/common/al$a;->o:F

    :goto_6
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/sigmob/sdk/base/common/al$a;->o:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_1f
    div-float v17, v1, v2

    move/from16 v1, v17

    :goto_7
    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->B:F

    mul-float v2, v2, v18

    float-to-int v2, v2

    mul-float v3, v1, v18

    float-to-int v3, v3

    if-eq v2, v3, :cond_20

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->B:F

    iget-object v2, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-interface {v2, v1}, Lcom/sigmob/sdk/base/common/al$c;->a(F)V

    :cond_20
    const v2, 0x3f7ae148    # 0.98f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/al$a;->D:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->C:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "x_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->C:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "y_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    iget v3, v0, Lcom/sigmob/sdk/base/common/al$a;->C:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "z_max_acc"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/al$a;->a(Ljava/util/Map;)V

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->q:F

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->r:F

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->s:F

    :goto_8
    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->B:F

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    goto/16 :goto_d

    :cond_21
    move/from16 v8, v19

    invoke-direct/range {p0 .. p0}, Lcom/sigmob/sdk/base/common/al$a;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-void

    :cond_22
    iget-object v2, v0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    if-nez v2, :cond_24

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-interface {v1}, Lcom/sigmob/sdk/base/common/al$c;->a()V

    :cond_23
    return-void

    :cond_24
    iget-object v2, v0, Lcom/sigmob/sdk/base/common/al$a;->E:Ljava/lang/Integer;

    if-nez v2, :cond_27

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->a:I

    if-lez v2, :cond_26

    if-le v2, v5, :cond_25

    goto :goto_9

    :cond_25
    sget-object v3, Lcom/sigmob/sdk/base/common/al$a;->e:[I

    aget v2, v3, v2

    goto :goto_a

    :cond_26
    :goto_9
    sput v16, Lcom/sigmob/sdk/base/common/al$a;->o:F

    goto :goto_b

    :cond_27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_a
    int-to-float v2, v2

    sput v2, Lcom/sigmob/sdk/base/common/al$a;->o:F

    :goto_b
    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_28

    iput v4, v0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    :cond_28
    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_29

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    :cond_29
    iget v1, v0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2a

    iput v8, v0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    :cond_2a
    iget-object v1, v0, Lcom/sigmob/sdk/base/common/al$a;->k:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2b

    return-void

    :cond_2b
    sget v2, Lcom/sigmob/sdk/base/common/al$a;->o:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2c

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_2c
    div-float v17, v1, v2

    move/from16 v1, v17

    :goto_c
    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->B:F

    mul-float v2, v2, v18

    float-to-int v2, v2

    mul-float v3, v1, v18

    float-to-int v3, v3

    if-eq v2, v3, :cond_2d

    iput v1, v0, Lcom/sigmob/sdk/base/common/al$a;->B:F

    iget-object v2, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/w;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/sigmob/sdk/base/common/al$a;->p:Lcom/sigmob/sdk/base/common/al$c;

    invoke-interface {v2, v1}, Lcom/sigmob/sdk/base/common/al$c;->a(F)V

    :cond_2d
    const v2, 0x3f7ae148    # 0.98f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sigmob/sdk/base/common/al$a;->D:J

    iget-wide v4, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/sigmob/sdk/base/common/al$a;->a(Ljava/util/Map;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sigmob/sdk/base/common/al$a;->w:J

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->y:F

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->z:F

    iput v15, v0, Lcom/sigmob/sdk/base/common/al$a;->x:F

    goto/16 :goto_8

    :cond_2e
    :goto_d
    return-void
.end method
