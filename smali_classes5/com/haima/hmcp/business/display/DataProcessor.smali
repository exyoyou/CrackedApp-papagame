.class public Lcom/haima/hmcp/business/display/DataProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/business/display/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/haima/hmcp/business/display/TimeoutListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final ROM_SIDE_LANDSCAPE:I = 0x0

.field private static final ROM_SIDE_PORTRAIT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_OUT_COUNTS_LIMIT:I = -0x1

.field private static final TYPE_SCREEN_ORIENTATION:Ljava/lang/String; = "type_screen_orientation"


# instance fields
.field private config:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/haima/hmcp/business/display/TimeoutTrigger<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private webSocket:Lcom/haima/hmcp/business/IWebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/display/HmScreenMonitor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    sput-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/business/IWebSocket;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    .line 5
    .line 6
    const-string v1, "ScreenMonitorHandler"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handlerThread:Landroid/os/HandlerThread;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->webSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 30
    .line 31
    new-instance p1, Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/haima/hmcp/business/display/TimeoutTrigger;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Lcom/haima/hmcp/business/display/TimeoutTrigger;->setTimeoutListener(Lcom/haima/hmcp/business/display/TimeoutListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/business/display/DataProcessor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->lambda$onTimeout$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/business/display/DataProcessor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->lambda$receivePayload$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/haima/hmcp/business/display/DataProcessor;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->lambda$sendData$0(I)V

    return-void
.end method

.method private cancelTimeout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "can`t cancel timeout, cause trigger is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "can`t cancel timeout, cause handler is null"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "cancel timeout"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private convertToBean(Ljava/lang/String;)Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    new-instance v0, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "type"

    .line 20
    .line 21
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, v0, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->type:Ljava/lang/String;

    .line 26
    .line 27
    const-string p1, "code"

    .line 28
    .line 29
    const/16 v3, -0x3e7

    .line 30
    .line 31
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, v0, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->code:I

    .line 36
    .line 37
    const-string p1, "message"

    .line 38
    .line 39
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, v0, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->message:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    :catch_0
    return-object v1
.end method

.method private convertToJsonData(Lcom/haima/hmcp/business/display/ws/HmScreenOrientationBaseMsg;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/business/display/ws/HmScreenOrientationBaseMsg<",
            "Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    iget-object v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->bid:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "can`t convert order data, cause bid is empty"

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    iget-object v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->cid:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "can`t convert order data, cause cid is empty"

    .line 37
    .line 38
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    iget-object v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->mid:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "can`t convert order data, cause mid is empty"

    .line 53
    .line 54
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    iget-object v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->type:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "can`t convert order data, cause type is empty"

    .line 69
    .line 70
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    iget-object v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 75
    .line 76
    move-object v2, v1

    .line 77
    check-cast v2, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;

    .line 78
    .line 79
    iget v2, v2, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;->orientation:I

    .line 80
    .line 81
    const/4 v3, 0x3

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    move-object v2, v1

    .line 85
    check-cast v2, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;

    .line 86
    .line 87
    iget v2, v2, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;->orientation:I

    .line 88
    .line 89
    if-eq v2, v3, :cond_5

    .line 90
    .line 91
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    const-string v1, "can`t convert order data, cause orientation is validate"

    .line 94
    .line 95
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_5
    move-object v2, v1

    .line 100
    check-cast v2, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;

    .line 101
    .line 102
    iget v2, v2, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;->rotation:I

    .line 103
    .line 104
    if-ltz v2, :cond_7

    .line 105
    .line 106
    check-cast v1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;

    .line 107
    .line 108
    iget v1, v1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;->rotation:I

    .line 109
    .line 110
    if-le v1, v3, :cond_6

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    .line 114
    .line 115
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .line 117
    .line 118
    :try_start_0
    const-string v1, "bid"

    .line 119
    .line 120
    iget-object v2, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->bid:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string v1, "cid"

    .line 126
    .line 127
    iget-object v2, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->cid:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string v1, "mid"

    .line 133
    .line 134
    iget-object v2, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->mid:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    const-string v1, "type"

    .line 140
    .line 141
    iget-object v2, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->type:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    new-instance v1, Lorg/json/JSONObject;

    .line 147
    .line 148
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v2, "orientation"

    .line 152
    .line 153
    iget-object v3, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v3, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;

    .line 156
    .line 157
    iget v3, v3, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;->orientation:I

    .line 158
    .line 159
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    const-string v2, "rotation"

    .line 163
    .line 164
    iget-object p1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;

    .line 167
    .line 168
    iget p1, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;->rotation:I

    .line 169
    .line 170
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    const-string p1, "data"

    .line 174
    .line 175
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :catch_0
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 180
    .line 181
    const-string v1, "convert to json data error"

    .line 182
    .line 183
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    return-object p1

    .line 191
    :cond_7
    :goto_1
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 192
    .line 193
    const-string v1, "can`t convert order data, cause rotation is out of range"

    .line 194
    .line 195
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-object v0

    .line 199
    :cond_8
    :goto_2
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 200
    .line 201
    const-string v1, "can`t convert order data, cause data is null"

    .line 202
    .line 203
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-object v0
.end method

.method private convertToRomOrientation(I)I
    .locals 2

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private getBaseMsg()Lcom/haima/hmcp/business/display/ws/HmScreenOrientationBaseMsg;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/haima/hmcp/business/display/ws/HmScreenOrientationBaseMsg<",
            "Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationBaseMsg;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/countly/CountlyUtil;->mCloudID:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v2, Lcom/haima/hmcp/countly/CountlyUtil;->mAccessKey:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "type_screen_orientation"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationBaseMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private getSendScreenOrientationData(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->convertToRomOrientation(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "get screen orientation data, unknown orientation = "

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :cond_0
    sget-object v1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "get screen orientation data, orientation = "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;

    .line 58
    .line 59
    invoke-direct {v1, v0, p1}, Lcom/haima/hmcp/business/display/ws/HmScreenOrientation;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/DataProcessor;->getBaseMsg()Lcom/haima/hmcp/business/display/ws/HmScreenOrientationBaseMsg;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object v1, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->data:Ljava/lang/Object;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v1, "A"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/DataProcessor;->getSystemTimeMs()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p1, Lcom/haima/hmcp/business/sensor/bean/ws/HmSensorBaseMsg;->mid:Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->convertToJsonData(Lcom/haima/hmcp/business/display/ws/HmScreenOrientationBaseMsg;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1
.end method

.method private getSystemTimeMs()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private internalParsePayload(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->convertToBean(Ljava/lang/String;)Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "parse payload is error"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->type:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "type_screen_orientation"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "payload type is not match: "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p1, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->type:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/DataProcessor;->cancelTimeout()V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "payload code: "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v2, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->code:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v1, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->code:I

    .line 78
    .line 79
    const/16 v2, -0x3e7

    .line 80
    .line 81
    const-string v3, "12724"

    .line 82
    .line 83
    const-string v4, "message:"

    .line 84
    .line 85
    const-string v5, "; "

    .line 86
    .line 87
    const-string v6, "code:"

    .line 88
    .line 89
    if-ne v1, v2, :cond_2

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuffer;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    iget v2, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->code:I

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->message:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string p1, "payload code is not validate"

    .line 123
    .line 124
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_2
    if-eqz v1, :cond_3

    .line 129
    .line 130
    const/4 v2, 0x3

    .line 131
    if-eq v1, v2, :cond_3

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuffer;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    .line 140
    .line 141
    iget v2, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->code:I

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    .line 151
    .line 152
    iget-object p1, p1, Lcom/haima/hmcp/business/display/ws/HmScreenOrientationResult;->message:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v2, "screen orientation change fail: "

    .line 163
    .line 164
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {v3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_3
    const-string p1, "screen orientation change success"

    .line 186
    .line 187
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string p1, "12723"

    .line 191
    .line 192
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_0
    return-void
.end method

.method private internalProcessData(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->getSendScreenOrientationData(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "not send screen orientation, cause sendMsg is null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->webSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 16
    .line 17
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->internalSendMessage(Lcom/haima/hmcp/business/IWebSocket;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->config:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "config is null, do not start timeout"

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->reset()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->config:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->getTimeout()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, -0x1

    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "timeout counts is out of limit"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    int-to-long v0, v0

    .line 53
    invoke-direct {p0, v0, v1, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->startTimeout(JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private internalSendMessage(Lcom/haima/hmcp/business/IWebSocket;Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ready to send data"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p1, "not send screen orientation data to ws, cause msg is null"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-string p1, "not send screen orientation data to ws, cause IWebSocket is null"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    sget-object v2, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 26
    .line 27
    invoke-interface {p1, v2}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {p1, v2, p2}, Lcom/haima/hmcp/business/IWebSocket;->sendTextMessage(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :cond_2
    const-string p1, "not send screen orientation data to ws, cause ws server is not connect"

    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v1
.end method

.method private synthetic lambda$onTimeout$2(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->webSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->internalSendMessage(Lcom/haima/hmcp/business/IWebSocket;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$receivePayload$1(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->internalParsePayload(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$sendData$0(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->internalProcessData(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private startTimeout(JLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p2, "can`t start timeout, cause trigger is null"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "can`t start timeout, cause handler is null"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/DataProcessor;->cancelTimeout()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 29
    .line 30
    invoke-virtual {v0, p3}, Lcom/haima/hmcp/business/display/TimeoutTrigger;->setData(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p3, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 36
    .line 37
    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic onTimeout(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/display/DataProcessor;->onTimeout(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeout(Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->config:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    invoke-virtual {v0}, Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;->getTimeout()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    const-string v0, "timeout counts is out of limit"

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "12726"

    .line 4
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 6
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    const-string v0, "handler is null and can`t retry when timeout"

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    sget-object v1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    const-string v2, "send data timeout and retry"

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "12725"

    .line 8
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/haima/hmcp/business/display/a;

    invoke-direct {v2, p0, p1}, Lcom/haima/hmcp/business/display/a;-><init>(Lcom/haima/hmcp/business/display/DataProcessor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    invoke-virtual {v1, p1}, Lcom/haima/hmcp/business/display/TimeoutTrigger;->setData(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public receivePayload(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "can`t parse payload, cause handler is null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/haima/hmcp/business/display/c;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/business/display/c;-><init>(Lcom/haima/hmcp/business/display/DataProcessor;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handlerThread:Landroid/os/HandlerThread;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/display/TimeoutTrigger;->setData(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/display/TimeoutTrigger;->setTimeoutListener(Lcom/haima/hmcp/business/display/TimeoutListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->timeoutTrigger:Lcom/haima/hmcp/business/display/TimeoutTrigger;

    .line 37
    .line 38
    :cond_2
    iput-object v1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->webSocket:Lcom/haima/hmcp/business/IWebSocket;

    .line 39
    .line 40
    return-void
.end method

.method public sendData(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/display/DataProcessor;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "is already release, need to new class"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/haima/hmcp/business/display/b;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/business/display/b;-><init>(Lcom/haima/hmcp/business/display/DataProcessor;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setConfig(Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/display/DataProcessor;->config:Lcom/haima/hmcp/business/display/HmScreenMonitorConfig;

    .line 2
    .line 3
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/display/DataProcessor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "data processor is stop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/business/display/DataProcessor;->cancelTimeout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
