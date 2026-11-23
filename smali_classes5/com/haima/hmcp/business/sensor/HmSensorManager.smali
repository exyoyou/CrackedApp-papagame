.class public Lcom/haima/hmcp/business/sensor/HmSensorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/sensor/HmSensorManager$SourceFrom;
    }
.end annotation


# instance fields
.field private final SENSOR_GET_SENSOR_LIST_MSG_KEY:Ljava/lang/String;

.field private final SENSOR_ORIGIN_DATA_MSG_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mIHmSensorStatusListener:Lcom/haima/hmcp/business/sensor/IHmSensorStatusListener;

.field private final mLocalDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/haima/hmcp/business/sensor/HmSensorManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "sensor"

    .line 13
    .line 14
    iput-object v1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->SENSOR_ORIGIN_DATA_MSG_KEY:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "getSensorList"

    .line 17
    .line 18
    iput-object v2, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->SENSOR_GET_SENSOR_LIST_MSG_KEY:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mLocalDataMap:Ljava/util/Map;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput-object v2, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mWindowManager:Landroid/view/WindowManager;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/hardware/SensorManager;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    .line 43
    const-string v0, "window"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/view/WindowManager;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mWindowManager:Landroid/view/WindowManager;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "HmSensorManager init failed : Context is"

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ",IWebSocket is "

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private correctData(I[F)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->needCorrect(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mWindowManager:Landroid/view/WindowManager;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x4

    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p1, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->minusData(I[F)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->minusData(I[F)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method private getSensorSampleMin()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getInstance()Lcom/haima/hmcp/business/sensor/HmSensorConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getSensorSamplingMinUs()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private isSensorDataReport()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getInstance()Lcom/haima/hmcp/business/sensor/HmSensorConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getSensorCountlySwitch()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method private minusData(I[F)V
    .locals 1

    .line 1
    array-length v0, p2

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    if-le p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    aget v0, p2, p1

    .line 8
    .line 9
    neg-float v0, v0

    .line 10
    aput v0, p2, p1

    .line 11
    .line 12
    return-void
.end method

.method private needCorrect(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static newInstance(Landroid/content/Context;Lcom/haima/hmcp/business/IWebSocket;)Lcom/haima/hmcp/business/sensor/HmSensorManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/business/sensor/HmSensorManager;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/business/sensor/HmSensorManager;-><init>(Landroid/content/Context;Lcom/haima/hmcp/business/IWebSocket;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private newMsgInstance(Ljava/lang/String;)Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, v2}, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private onFailedProcess(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mIHmSensorStatusListener:Lcom/haima/hmcp/business/sensor/IHmSensorStatusListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v1, "sensorType"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mIHmSensorStatusListener:Lcom/haima/hmcp/business/sensor/IHmSensorStatusListener;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1, v0}, Lcom/haima/hmcp/business/sensor/IHmSensorStatusListener;->onSensorFailure(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private processSamplingPeriodUs(I)I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->getSensorSampleMin()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-le p1, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->getSensorSampleMin()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :cond_1
    :goto_0
    return p1
.end method

.method private processSensorInternal(Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;I)V
    .locals 6
    .param p2    # I
        .annotation build Lcom/haima/hmcp/business/sensor/HmSensorManager$SourceFrom;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;->sensorType:I

    .line 5
    .line 6
    iget v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;->sendPeriodMs:I

    .line 7
    .line 8
    iget p1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;->samplingPeriodUs:I

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->processSamplingPeriodUs(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v2, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "start processSensorInternal,sensorType is "

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, ",samplingPeriodUs is "

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, ",sendPeriodMs is "

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;

    .line 53
    .line 54
    invoke-direct {v2, v0, p1, v1}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;-><init>(III)V

    .line 55
    .line 56
    .line 57
    const-string v3, "13290"

    .line 58
    .line 59
    invoke-virtual {p0, v3, v2}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_1

    .line 71
    .line 72
    iget-object p2, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "sensorType is "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, ",getDefaultSensor failed!"

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {p2, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->onFailedProcess(I)V

    .line 100
    .line 101
    .line 102
    new-instance p2, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;

    .line 103
    .line 104
    invoke-direct {p2, v0, p1, v1}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;-><init>(III)V

    .line 105
    .line 106
    .line 107
    const-string p1, "13292"

    .line 108
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    if-ltz p1, :cond_2

    .line 114
    .line 115
    iget-object v3, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "sensorType ="

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v5, " register succeed!"

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v3, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;

    .line 143
    .line 144
    new-instance v4, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;

    .line 145
    .line 146
    invoke-direct {v4}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-direct {v3, v1, v4}, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;-><init>(ILcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;)V

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mLocalDataMap:Ljava/util/Map;

    .line 153
    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    iget-object v3, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 162
    .line 163
    invoke-virtual {v3, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 164
    .line 165
    .line 166
    iget-object v3, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 167
    .line 168
    invoke-virtual {v3, p0, v2, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 169
    .line 170
    .line 171
    new-instance v2, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;

    .line 172
    .line 173
    invoke-direct {v2, v0, p1, v1, p2}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;-><init>(IIII)V

    .line 174
    .line 175
    .line 176
    const-string p1, "13291"

    .line 177
    .line 178
    invoke-virtual {p0, p1, v2}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    :goto_0
    return-void
.end method

.method private sendSensorData(Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorSendMsg;)V
    .locals 1

    .line 1
    const-string v0, "sensor"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->newMsgInstance(Ljava/lang/String;)Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object p1, v0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->sendWsMsg(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private sendWsMsg(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private unregisterSensor(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "unregister the sensor which type is "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 34
    .line 35
    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mLocalDataMap:Ljava/util/Map;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorAccuracyReportInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-direct {v0, p1, p2}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorAccuracyReportInfo;-><init>(II)V

    .line 8
    .line 9
    .line 10
    const-string p1, "13298"

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

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
    iget-object v1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mLocalDataMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "eventType="

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " has not been registered!"

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget v2, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->sendPeriodMs:I

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iget-object v5, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->report:Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;

    .line 56
    .line 57
    iget-wide v6, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->timeStamp:J

    .line 58
    .line 59
    const-wide/16 v8, 0x0

    .line 60
    .line 61
    cmp-long v10, v6, v8

    .line 62
    .line 63
    if-nez v10, :cond_1

    .line 64
    .line 65
    iput-wide v3, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->timeStamp:J

    .line 66
    .line 67
    :cond_1
    iget-wide v6, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->timeStamp:J

    .line 68
    .line 69
    sub-long v6, v3, v6

    .line 70
    .line 71
    int-to-long v10, v2

    .line 72
    cmp-long v2, v6, v10

    .line 73
    .line 74
    if-ltz v2, :cond_2

    .line 75
    .line 76
    iput-wide v3, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->timeStamp:J

    .line 77
    .line 78
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 79
    .line 80
    invoke-direct {p0, v0, v2}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->correctData(I[F)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorSendMsg;

    .line 84
    .line 85
    iget v6, p1, Landroid/hardware/SensorEvent;->accuracy:I

    .line 86
    .line 87
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 88
    .line 89
    invoke-direct {v2, v0, v6, v7}, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorSendMsg;-><init>(II[F)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v2}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->sendSensorData(Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorSendMsg;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->isSensorDataReport()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    if-eqz v5, :cond_2

    .line 102
    .line 103
    iput v0, v5, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;->type:I

    .line 104
    .line 105
    iget-object v0, v5, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;->data:Ljava/util/List;

    .line 106
    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    new-instance v2, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo$InnerData;

    .line 110
    .line 111
    invoke-direct {v2}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo$InnerData;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-wide v3, v2, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo$InnerData;->timestamp:J

    .line 115
    .line 116
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 117
    .line 118
    array-length v6, p1

    .line 119
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, v2, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo$InnerData;->value:[F

    .line 124
    .line 125
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->isSensorDataReport()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-nez p1, :cond_3

    .line 133
    .line 134
    return-void

    .line 135
    :cond_3
    iget-object p1, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->report:Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;

    .line 136
    .line 137
    if-nez p1, :cond_4

    .line 138
    .line 139
    return-void

    .line 140
    :cond_4
    iget-object p1, p1, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;->data:Ljava/util/List;

    .line 141
    .line 142
    if-nez p1, :cond_5

    .line 143
    .line 144
    return-void

    .line 145
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    return-void

    .line 152
    :cond_6
    iget-wide v6, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->reportTimeStamp:J

    .line 153
    .line 154
    cmp-long p1, v6, v8

    .line 155
    .line 156
    if-nez p1, :cond_7

    .line 157
    .line 158
    iput-wide v3, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->reportTimeStamp:J

    .line 159
    .line 160
    :cond_7
    iget-wide v6, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->reportTimeStamp:J

    .line 161
    .line 162
    sub-long v6, v3, v6

    .line 163
    .line 164
    invoke-static {}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getInstance()Lcom/haima/hmcp/business/sensor/HmSensorConfig;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/haima/hmcp/business/sensor/HmSensorConfig;->getCountlyDataIntervalMs()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    int-to-long v8, p1

    .line 173
    cmp-long p1, v6, v8

    .line 174
    .line 175
    if-ltz p1, :cond_8

    .line 176
    .line 177
    iput-wide v3, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->reportTimeStamp:J

    .line 178
    .line 179
    const-string p1, "13296"

    .line 180
    .line 181
    invoke-virtual {p0, p1, v5}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, v1, Lcom/haima/hmcp/business/sensor/bean/HmSensorLocalData;->report:Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorDataReportInfo;->data:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 189
    .line 190
    .line 191
    :cond_8
    return-void
.end method

.method public processSensorList(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "start processSensorList : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :try_start_0
    new-instance v1, Lcom/haima/hmcp/business/sensor/HmSensorManager$2;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/haima/hmcp/business/sensor/HmSensorManager$2;-><init>(Lcom/haima/hmcp/business/sensor/HmSensorManager;)V

    .line 34
    .line 35
    .line 36
    new-array v2, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 37
    .line 38
    invoke-static {p1, v1, v2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "parse json exception : "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    :goto_0
    if-eqz p1, :cond_4

    .line 70
    .line 71
    iget-object v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 72
    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    new-instance v1, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionListReportInfo;

    .line 77
    .line 78
    invoke-direct {v1}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionListReportInfo;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v2, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p1, Ljava/util/List;

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ge v3, v4, :cond_3

    .line 96
    .line 97
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;

    .line 102
    .line 103
    invoke-direct {p0, v4, v0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->processSensorInternal(Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;I)V

    .line 104
    .line 105
    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    new-instance v5, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;

    .line 109
    .line 110
    iget v6, v4, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;->sensorType:I

    .line 111
    .line 112
    iget v7, v4, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;->samplingPeriodUs:I

    .line 113
    .line 114
    iget v4, v4, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;->sendPeriodMs:I

    .line 115
    .line 116
    invoke-direct {v5, v6, v7, v4}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;-><init>(III)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    iget-object p1, v1, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionListReportInfo;->sensors:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    .line 129
    .line 130
    const-string p1, "13297"

    .line 131
    .line 132
    invoke-virtual {p0, p1, v1}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_2
    return-void
.end method

.method public processSensorSingle(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "start processSensorSingle : "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    :try_start_0
    new-instance v0, Lcom/haima/hmcp/business/sensor/HmSensorManager$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/haima/hmcp/business/sensor/HmSensorManager$1;-><init>(Lcom/haima/hmcp/business/sensor/HmSensorManager;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    .line 37
    .line 38
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/h;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "processSensorSingle : parse json exception : "

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    :goto_0
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object p1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 72
    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    move-object v0, p1

    .line 77
    check-cast v0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;

    .line 78
    .line 79
    iget v0, v0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;->cmd:I

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    if-ne v0, v1, :cond_2

    .line 83
    .line 84
    check-cast p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;

    .line 85
    .line 86
    invoke-direct {p0, p1, v1}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->processSensorInternal(Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    check-cast p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;

    .line 91
    .line 92
    iget p1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorReceivedMsg;->sensorType:I

    .line 93
    .line 94
    new-instance v0, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;

    .line 95
    .line 96
    invoke-direct {v0, p1}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;-><init>(I)V

    .line 97
    .line 98
    .line 99
    const-string v1, "13293"

    .line 100
    .line 101
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->unregisterSensor(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    return-void

    .line 108
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 109
    .line 110
    const-string v0, "processSensorSingle content is empty!"

    .line 111
    .line 112
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "jsonContent reportImmediately "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public sendToGetSensorList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "getSensorList from screen_ws"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "getSensorList"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->newMsgInstance(Ljava/lang/String;)Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    iput-object v1, v0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "A"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->mid:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->sendWsMsg(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public setSensorStatusListener(Lcom/haima/hmcp/business/sensor/IHmSensorStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mIHmSensorStatusListener:Lcom/haima/hmcp/business/sensor/IHmSensorStatusListener;

    .line 2
    .line 3
    return-void
.end method

.method public stopAllSensors()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "stop all the sensors"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mLocalDataMap:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Integer;

    .line 36
    .line 37
    new-instance v2, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-direct {v2, v1}, Lcom/haima/hmcp/business/sensor/bean/report/HmSensorActionReportInfo;-><init>(I)V

    .line 44
    .line 45
    .line 46
    const-string v1, "13293"

    .line 47
    .line 48
    invoke-virtual {p0, v1, v2}, Lcom/haima/hmcp/business/sensor/HmSensorManager;->reportImmediately(Ljava/lang/String;Lcom/haima/hmcp/beans/ReportInfo;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/sensor/HmSensorManager;->mLocalDataMap:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
