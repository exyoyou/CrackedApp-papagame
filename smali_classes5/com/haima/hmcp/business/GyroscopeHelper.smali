.class public Lcom/haima/hmcp/business/GyroscopeHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GyroscopeHelper"


# instance fields
.field private angleListener:Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;

.field private final gyroscopeSensor:Landroid/hardware/Sensor;

.field private volatile isCallbackRunning:Z

.field public isXAxisReverse:Z

.field public isYAxisReverse:Z

.field private lastCallbackAngles:[F

.field private lastTimestamp:J

.field private mScreenOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

.field private rotationAngles:[F

.field private scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;Lcom/haima/hmcp/enums/ScreenOrientation;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isXAxisReverse:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isYAxisReverse:Z

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    new-array v2, v1, [F

    .line 11
    .line 12
    iput-object v2, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->rotationAngles:[F

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastTimestamp:J

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isCallbackRunning:Z

    .line 19
    .line 20
    new-array v0, v1, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastCallbackAngles:[F

    .line 23
    .line 24
    const-string v0, "sensor"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/hardware/SensorManager;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->angleListener:Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->mScreenOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/haima/hmcp/business/GyroscopeHelper;->resetAngles()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/business/GyroscopeHelper;->lambda$createScheduledTask$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/GyroscopeHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isCallbackRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/business/GyroscopeHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/GyroscopeHelper;->checkAngleChangesAndCallback()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkAngleChangesAndCallback()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isCallbackRunning:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->angleListener:Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->rotationAngles:[F

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget v0, v0, v1

    .line 15
    .line 16
    float-to-double v2, v0

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    double-to-float v0, v2

    .line 22
    iget-object v2, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->rotationAngles:[F

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    aget v2, v2, v3

    .line 26
    .line 27
    float-to-double v4, v2

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    double-to-float v2, v4

    .line 33
    iget-object v4, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->rotationAngles:[F

    .line 34
    .line 35
    const/4 v5, 0x2

    .line 36
    aget v4, v4, v5

    .line 37
    .line 38
    float-to-double v6, v4

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    double-to-float v4, v6

    .line 44
    iget-object v6, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastCallbackAngles:[F

    .line 45
    .line 46
    aget v6, v6, v1

    .line 47
    .line 48
    sub-float v6, v0, v6

    .line 49
    .line 50
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    iget-object v7, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastCallbackAngles:[F

    .line 55
    .line 56
    aget v7, v7, v3

    .line 57
    .line 58
    sub-float v7, v2, v7

    .line 59
    .line 60
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    iget-object v8, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastCallbackAngles:[F

    .line 65
    .line 66
    aget v8, v8, v5

    .line 67
    .line 68
    sub-float v8, v4, v8

    .line 69
    .line 70
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 71
    .line 72
    .line 73
    sget v8, Lcom/haima/hmcp/Constants;->CONFIG_GYROSCOPE_SENSOR_DEGREE_THRESHOLD:F

    .line 74
    .line 75
    sget-object v9, Lcom/haima/hmcp/business/GyroscopeHelper;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v10, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v11, "checkAngleChangesAndCallback===rollChange="

    .line 83
    .line 84
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v11, " pitchChange="

    .line 91
    .line 92
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-static {v9, v10}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    cmpl-float v6, v6, v8

    .line 106
    .line 107
    if-gtz v6, :cond_1

    .line 108
    .line 109
    cmpl-float v6, v7, v8

    .line 110
    .line 111
    if-lez v6, :cond_3

    .line 112
    .line 113
    :cond_1
    iget-object v6, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->mScreenOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 114
    .line 115
    sget-object v7, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 116
    .line 117
    if-ne v6, v7, :cond_2

    .line 118
    .line 119
    iget-object v6, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->angleListener:Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;

    .line 120
    .line 121
    invoke-interface {v6, v2, v0, v4}, Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;->onAngleChanged(FFF)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    iget-object v6, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->angleListener:Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;

    .line 126
    .line 127
    invoke-interface {v6, v0, v2, v4}, Lcom/haima/hmcp/business/GyroscopeHelper$AngleListener;->onAngleChanged(FFF)V

    .line 128
    .line 129
    .line 130
    :goto_0
    const-string v6, "Gravity change detected, calling listener"

    .line 131
    .line 132
    invoke-static {v9, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v6, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastCallbackAngles:[F

    .line 136
    .line 137
    aput v0, v6, v1

    .line 138
    .line 139
    aput v2, v6, v3

    .line 140
    .line 141
    aput v4, v6, v5

    .line 142
    .line 143
    :cond_3
    :goto_1
    return-void
.end method

.method public static convertAngleToScreenCoords(FFII)Landroid/graphics/Point;
    .locals 3

    .line 1
    const/high16 v0, 0x43340000    # 180.0f

    .line 2
    .line 3
    div-float/2addr p0, v0

    .line 4
    div-float/2addr p1, v0

    .line 5
    sget-object v0, Lcom/haima/hmcp/business/GyroscopeHelper;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "nx="

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " ny="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    .line 37
    add-float/2addr p0, v1

    .line 38
    int-to-float p2, p2

    .line 39
    mul-float p0, p0, p2

    .line 40
    .line 41
    const/high16 p2, 0x3f000000    # 0.5f

    .line 42
    .line 43
    mul-float p0, p0, p2

    .line 44
    .line 45
    add-float/2addr p1, v1

    .line 46
    int-to-float p3, p3

    .line 47
    mul-float p1, p1, p3

    .line 48
    .line 49
    mul-float p1, p1, p2

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p3, "mappedX="

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p3, " mappedY="

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance p2, Landroid/graphics/Point;

    .line 80
    .line 81
    float-to-int p0, p0

    .line 82
    float-to-int p1, p1

    .line 83
    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 84
    .line 85
    .line 86
    return-object p2
.end method

.method private createScheduledTask()V
    .locals 8

    .line 1
    new-instance v0, Lcom/haima/hmcp/business/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/business/a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    new-instance v2, Lcom/haima/hmcp/business/GyroscopeHelper$1;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/haima/hmcp/business/GyroscopeHelper$1;-><init>(Lcom/haima/hmcp/business/GyroscopeHelper;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    sget v0, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SEND_INTERVAL_MS:I

    .line 20
    .line 21
    int-to-long v5, v0

    .line 22
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->scheduledTask:Ljava/util/concurrent/ScheduledFuture;

    .line 29
    .line 30
    return-void
.end method

.method private static synthetic lambda$createScheduledTask$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    const-string v1, "GravitySensorCallback"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public isXAxisReverse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isXAxisReverse:Z

    .line 2
    .line 3
    return v0
.end method

.method public isYAxisReverse()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isYAxisReverse:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastTimestamp:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastTimestamp:J

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/GyroscopeHelper;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "=sensorSampling=onSensorChanged===values[0]"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aget v2, v2, v3

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " values[1]="

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    aget v2, v2, v4

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    .line 65
    .line 66
    iget-wide v5, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastTimestamp:J

    .line 67
    .line 68
    sub-long v5, v0, v5

    .line 69
    .line 70
    long-to-float v2, v5

    .line 71
    const v5, 0x3089705f    # 1.0E-9f

    .line 72
    .line 73
    .line 74
    mul-float v2, v2, v5

    .line 75
    .line 76
    iput-wide v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastTimestamp:J

    .line 77
    .line 78
    iget-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->rotationAngles:[F

    .line 79
    .line 80
    aget v1, v0, v3

    .line 81
    .line 82
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 83
    .line 84
    aget v5, p1, v3

    .line 85
    .line 86
    mul-float v5, v5, v2

    .line 87
    .line 88
    add-float/2addr v1, v5

    .line 89
    aput v1, v0, v3

    .line 90
    .line 91
    aget v1, v0, v4

    .line 92
    .line 93
    aget v3, p1, v4

    .line 94
    .line 95
    mul-float v3, v3, v2

    .line 96
    .line 97
    add-float/2addr v1, v3

    .line 98
    aput v1, v0, v4

    .line 99
    .line 100
    const/4 v1, 0x2

    .line 101
    aget v3, v0, v1

    .line 102
    .line 103
    aget p1, p1, v1

    .line 104
    .line 105
    mul-float p1, p1, v2

    .line 106
    .line 107
    add-float/2addr v3, p1

    .line 108
    aput v3, v0, v1

    .line 109
    .line 110
    return-void
.end method

.method public resetAngles()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->lastCallbackAngles:[F

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput v2, v1, v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->rotationAngles:[F

    .line 11
    .line 12
    aput v2, v1, v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public setXAxisReverse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isXAxisReverse:Z

    .line 2
    .line 3
    return-void
.end method

.method public setYAxisReverse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isYAxisReverse:Z

    .line 2
    .line 3
    return-void
.end method

.method public startDetection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->gyroscopeSensor:Landroid/hardware/Sensor;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget v2, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SAMPLING_INTERVAL_US:I

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isCallbackRunning:Z

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/haima/hmcp/business/GyroscopeHelper;->createScheduledTask()V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/haima/hmcp/business/GyroscopeHelper;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Started detection with ScheduledExecutorService, interval: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    sget v2, Lcom/haima/hmcp/Constants;->CONFIG_SENSOR_SEND_INTERVAL_MS:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "ms"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "13291"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "13292"

    .line 56
    .line 57
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/haima/hmcp/business/GyroscopeHelper;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    const-string v1, "device not support, start gravitySensor failure!"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method public stopDetection()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->isCallbackRunning:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->scheduledTask:Ljava/util/concurrent/ScheduledFuture;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->scheduledTask:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/haima/hmcp/business/GyroscopeHelper;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/business/GyroscopeHelper;->resetAngles()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
