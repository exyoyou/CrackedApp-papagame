.class public Lcom/join/mgps/shake/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/shake/a$a;
    }
.end annotation


# static fields
.field private static final o:I = 0xbb8

.field private static final p:I = 0x46

.field private static final q:I = 0x0

.field private static final r:I = 0x1

.field private static final s:I = 0x2


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Landroid/hardware/Sensor;

.field private e:Lcom/join/mgps/shake/a$a;

.field private f:Landroid/content/Context;

.field private g:J

.field h:[F

.field i:[F

.field j:[F

.field k:[F

.field private l:I

.field private m:I

.field n:Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    iput-object v1, p0, Lcom/join/mgps/shake/a;->h:[F

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    new-array v1, v1, [F

    .line 12
    .line 13
    iput-object v1, p0, Lcom/join/mgps/shake/a;->i:[F

    .line 14
    .line 15
    new-array v1, v0, [F

    .line 16
    .line 17
    iput-object v1, p0, Lcom/join/mgps/shake/a;->j:[F

    .line 18
    .line 19
    new-array v0, v0, [F

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/shake/a;->k:[F

    .line 22
    .line 23
    iput-object p1, p0, Lcom/join/mgps/shake/a;->f:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/shake/a;->d()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public a()[D
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/join/mgps/shake/a;->i:[F

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/shake/a;->h:[F

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/shake/a;->j:[F

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v0, v3, v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x3

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/shake/a;->i:[F

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/shake/a;->k:[F

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/shake/a;->k:[F

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aget v0, v0, v2

    .line 26
    .line 27
    float-to-double v3, v0

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    iget-object v0, p0, Lcom/join/mgps/shake/a;->k:[F

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    aget v0, v0, v5

    .line 36
    .line 37
    float-to-double v6, v0

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    iget-object v0, p0, Lcom/join/mgps/shake/a;->k:[F

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    aget v0, v0, v8

    .line 46
    .line 47
    float-to-double v9, v0

    .line 48
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v9

    .line 52
    new-array v0, v1, [D

    .line 53
    .line 54
    aput-wide v6, v0, v2

    .line 55
    .line 56
    aput-wide v9, v0, v5

    .line 57
    .line 58
    aput-wide v3, v0, v8

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_0
    new-array v0, v1, [D

    .line 62
    .line 63
    fill-array-data v0, :array_0

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public b(Lcom/join/mgps/shake/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/shake/a;->e:Lcom/join/mgps/shake/a$a;

    .line 2
    .line 3
    return-void
.end method

.method public c(Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shakeConfBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/shake/a;->n:Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;->getAcceleration()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/join/mgps/shake/a;->l:I

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xf

    .line 15
    .line 16
    iput v0, p0, Lcom/join/mgps/shake/a;->l:I

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;->getRotation_angle()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/join/mgps/shake/a;->m:I

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/shake/a;->f:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "sensor"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/SensorManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/shake/a;->b:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/shake/a;->c:Landroid/hardware/Sensor;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/shake/a;->b:Landroid/hardware/SensorManager;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/shake/a;->d:Landroid/hardware/Sensor;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/shake/a;->c:Landroid/hardware/Sensor;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/shake/a;->b:Landroid/hardware/SensorManager;

    .line 37
    .line 38
    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/shake/a;->d:Landroid/hardware/Sensor;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/shake/a;->b:Landroid/hardware/SensorManager;

    .line 46
    .line 47
    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/shake/a;->b:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4
    .line 5
    .line 6
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
            "accuracy"
        }
    .end annotation

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/join/mgps/shake/a;->g:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x46

    .line 10
    .line 11
    cmp-long v6, v2, v4

    .line 12
    .line 13
    if-gez v6, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-wide v0, p0, Lcom/join/mgps/shake/a;->g:J

    .line 17
    .line 18
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/shake/a;->j:[F

    .line 30
    .line 31
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v2, 0xa

    .line 38
    .line 39
    if-ne v0, v2, :cond_3

    .line 40
    .line 41
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/shake/a;->h:[F

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/join/mgps/shake/a;->a()[D

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v2, 0x0

    .line 50
    aget-wide v3, v0, v2

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    aget-wide v6, v0, v5

    .line 54
    .line 55
    aget-wide v8, v0, v1

    .line 56
    .line 57
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 58
    .line 59
    aget v0, p1, v2

    .line 60
    .line 61
    aget v2, p1, v5

    .line 62
    .line 63
    aget p1, p1, v1

    .line 64
    .line 65
    mul-float v0, v0, v0

    .line 66
    .line 67
    mul-float v2, v2, v2

    .line 68
    .line 69
    add-float/2addr v0, v2

    .line 70
    mul-float p1, p1, p1

    .line 71
    .line 72
    add-float/2addr v0, p1

    .line 73
    float-to-double v0, v0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    iget p1, p0, Lcom/join/mgps/shake/a;->l:I

    .line 79
    .line 80
    int-to-double v8, p1

    .line 81
    cmpl-double p1, v0, v8

    .line 82
    .line 83
    if-ltz p1, :cond_3

    .line 84
    .line 85
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iget p1, p0, Lcom/join/mgps/shake/a;->m:I

    .line 90
    .line 91
    int-to-double v2, p1

    .line 92
    cmpl-double p1, v0, v2

    .line 93
    .line 94
    if-gez p1, :cond_2

    .line 95
    .line 96
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    iget p1, p0, Lcom/join/mgps/shake/a;->m:I

    .line 101
    .line 102
    int-to-double v2, p1

    .line 103
    cmpl-double p1, v0, v2

    .line 104
    .line 105
    if-ltz p1, :cond_3

    .line 106
    .line 107
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/shake/a;->e:Lcom/join/mgps/shake/a$a;

    .line 108
    .line 109
    invoke-interface {p1}, Lcom/join/mgps/shake/a$a;->a()V

    .line 110
    .line 111
    .line 112
    :cond_3
    return-void
.end method
