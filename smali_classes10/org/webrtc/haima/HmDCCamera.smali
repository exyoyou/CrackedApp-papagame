.class public Lorg/webrtc/haima/HmDCCamera;
.super Lorg/webrtc/haima/HmDCDevice;
.source "SourceFile"


# static fields
.field public static final APPLY_PERMISSION:I = 0x1

.field public static final LOW_OS_VERSION:I = 0x2

.field public static final NOT_GRANTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HmDCCamera"

.field private static final ZOOM:Ljava/lang/String; = "zoom"


# instance fields
.field private current_device_id:J

.field private mFps:I

.field private mHeight:I

.field private mLensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

.field private mVdTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/DataChannel;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmDCDevice;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->UNKNOWN:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/webrtc/haima/HmDCCamera;->mVdTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 7
    .line 8
    const/16 p1, 0x1e0

    .line 9
    .line 10
    iput p1, p0, Lorg/webrtc/haima/HmDCCamera;->mWidth:I

    .line 11
    .line 12
    const/16 p1, 0x280

    .line 13
    .line 14
    iput p1, p0, Lorg/webrtc/haima/HmDCCamera;->mHeight:I

    .line 15
    .line 16
    const/16 p1, 0xf

    .line 17
    .line 18
    iput p1, p0, Lorg/webrtc/haima/HmDCCamera;->mFps:I

    .line 19
    .line 20
    const p1, 0xc3500

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lorg/webrtc/haima/HmDCDevice;->mBitrate:I

    .line 24
    .line 25
    const/16 p1, 0x348f

    .line 26
    .line 27
    iget-object v0, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .line 1
    const-string v0, "HmDCCamera"

    .line 2
    .line 3
    const-string v1, "Got close camera request"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmDCCamera;->mVdTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 9
    .line 10
    sget-object v1, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_MEDIA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->stopVideoSource()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v1, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_DATA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/webrtc/haima/HmCameraWrapper;->stopRecord()V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method private openCamera(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Got open camera request: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HmDCCamera"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lorg/webrtc/haima/HmDCCamera;->mWidth:I

    .line 24
    .line 25
    const-string v2, "width"

    .line 26
    .line 27
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lorg/webrtc/haima/HmDCCamera;->mWidth:I

    .line 32
    .line 33
    iget v0, p0, Lorg/webrtc/haima/HmDCCamera;->mHeight:I

    .line 34
    .line 35
    const-string v3, "height"

    .line 36
    .line 37
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Lorg/webrtc/haima/HmDCCamera;->mHeight:I

    .line 42
    .line 43
    const-string v0, "fps"

    .line 44
    .line 45
    iget v4, p0, Lorg/webrtc/haima/HmDCCamera;->mFps:I

    .line 46
    .line 47
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lorg/webrtc/haima/HmDCCamera;->mFps:I

    .line 52
    .line 53
    const-string v0, "type"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v4, "front"

    .line 60
    .line 61
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    sget-object v0, Lorg/webrtc/haima/camerarecorder/LensFacing;->FRONT:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lorg/webrtc/haima/camerarecorder/LensFacing;->BACK:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 71
    .line 72
    :goto_0
    iput-object v0, p0, Lorg/webrtc/haima/HmDCCamera;->mLensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, "openCamera res: "

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v4, p0, Lorg/webrtc/haima/HmDCCamera;->mWidth:I

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, "x"

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v4, p0, Lorg/webrtc/haima/HmDCCamera;->mHeight:I

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v4, ", fps: "

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v4, p0, Lorg/webrtc/haima/HmDCCamera;->mFps:I

    .line 105
    .line 106
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, ", camera: "

    .line 110
    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v4, p0, Lorg/webrtc/haima/HmDCCamera;->mLensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lorg/webrtc/haima/HmDCCamera;->mVdTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 127
    .line 128
    sget-object v4, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_MEDIA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 129
    .line 130
    if-ne v0, v4, :cond_1

    .line 131
    .line 132
    iget v0, p0, Lorg/webrtc/haima/HmDCCamera;->mWidth:I

    .line 133
    .line 134
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, p0, Lorg/webrtc/haima/HmDCCamera;->mWidth:I

    .line 139
    .line 140
    iget v0, p0, Lorg/webrtc/haima/HmDCCamera;->mHeight:I

    .line 141
    .line 142
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    iput p1, p0, Lorg/webrtc/haima/HmDCCamera;->mHeight:I

    .line 147
    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v0, "FINGERPRINT: "

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1, p0}, Lorg/webrtc/haima/HmCameraWrapper;->startRecord(Lorg/webrtc/haima/HmDCCamera;)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_1
    sget-object p1, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_DATA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 179
    .line 180
    if-ne v0, p1, :cond_2

    .line 181
    .line 182
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lorg/webrtc/haima/HmCameraWrapper;->stopRecord()V

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1, p0}, Lorg/webrtc/haima/HmCameraWrapper;->startRecord(Lorg/webrtc/haima/HmDCCamera;)V

    .line 194
    .line 195
    .line 196
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v0, "openCamera over channel: "

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lorg/webrtc/haima/HmDCCamera;->mVdTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method private zoomCamera(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Got zoom camera request: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "HmDCCamera"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmDCDevice;->mBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getFps()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmDCCamera;->mFps:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmDCCamera;->mHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getLensFacing()Lorg/webrtc/haima/camerarecorder/LensFacing;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDCCamera;->mLensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVdTransportType()Lorg/webrtc/haima/enums/VirtualDeviceTransportType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmDCCamera;->mVdTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmDCCamera;->mWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public onText(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string v0, "HmDCCamera"

    .line 2
    .line 3
    invoke-super {p0, p1}, Lorg/webrtc/haima/HmDCDevice;->onText(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "behavior"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v5, "onText: "

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ", with camera receive remote behavior: "

    .line 32
    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ""

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const/4 v4, 0x1

    .line 46
    if-nez p1, :cond_6

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/4 v5, 0x3

    .line 53
    const/4 v6, 0x2

    .line 54
    sparse-switch p1, :sswitch_data_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :sswitch_0
    const-string p1, "dispose"

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    const/4 p1, 0x3

    .line 67
    goto :goto_1

    .line 68
    :sswitch_1
    const-string p1, "close"

    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    goto :goto_1

    .line 78
    :sswitch_2
    const-string p1, "zoom"

    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    const/4 p1, 0x2

    .line 87
    goto :goto_1

    .line 88
    :sswitch_3
    const-string p1, "open"

    .line 89
    .line 90
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    if-eqz p1, :cond_0

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    goto :goto_1

    .line 98
    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 99
    :goto_1
    const-string v7, "deviceID"

    .line 100
    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    if-eq p1, v4, :cond_4

    .line 104
    .line 105
    if-eq p1, v6, :cond_3

    .line 106
    .line 107
    if-eq p1, v5, :cond_1

    .line 108
    .line 109
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "Unknown camera behavior: "

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_1
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    const-wide/16 v5, 0x0

    .line 135
    .line 136
    cmp-long p1, v2, v5

    .line 137
    .line 138
    if-eqz p1, :cond_2

    .line 139
    .line 140
    iget-wide v5, p0, Lorg/webrtc/haima/HmDCCamera;->current_device_id:J

    .line 141
    .line 142
    cmp-long p1, v2, v5

    .line 143
    .line 144
    if-nez p1, :cond_2

    .line 145
    .line 146
    invoke-direct {p0}, Lorg/webrtc/haima/HmDCCamera;->closeCamera()V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v2, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Lorg/webrtc/haima/HmDataChannelManager;->destroyDCDevice(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v5, "ignore dispose for deviceID: "

    .line 165
    .line 166
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_3
    const-string p1, "values"

    .line 181
    .line 182
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmDCCamera;->zoomCamera(Lorg/json/JSONObject;)V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_4
    invoke-direct {p0}, Lorg/webrtc/haima/HmDCCamera;->closeCamera()V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 195
    .line 196
    .line 197
    move-result-wide v5

    .line 198
    iput-wide v5, p0, Lorg/webrtc/haima/HmDCCamera;->current_device_id:J

    .line 199
    .line 200
    invoke-direct {p0, v2}, Lorg/webrtc/haima/HmDCCamera;->openCamera(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .line 202
    .line 203
    :cond_6
    :goto_2
    return v4

    .line 204
    :catch_0
    move-exception p1

    .line 205
    const-string v2, "Parse signal message error: "

    .line 206
    .line 207
    invoke-static {v0, v2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    return v1

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x34264a -> :sswitch_3
        0x3923d3 -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x63a5261f -> :sswitch_0
    .end sparse-switch
.end method

.method public openACK(ZILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/webrtc/haima/HmDCDevice;->genSignalJson()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "open_ack"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    const-string p1, "code"

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string p1, "message"

    .line 16
    .line 17
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmDCDevice;->send(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lorg/webrtc/haima/HmDataChannelManager;->destroyDCDevice(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public setVdTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmDCCamera;->mVdTransportType:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 2
    .line 3
    return-void
.end method

.method public startRecordOverRtcChannel()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/webrtc/haima/HmDCCamera;->mWidth:I

    .line 6
    .line 7
    iget v2, p0, Lorg/webrtc/haima/HmDCCamera;->mHeight:I

    .line 8
    .line 9
    iget v3, p0, Lorg/webrtc/haima/HmDCCamera;->mFps:I

    .line 10
    .line 11
    iget-object v4, p0, Lorg/webrtc/haima/HmDCCamera;->mLensFacing:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 12
    .line 13
    sget-object v5, Lorg/webrtc/haima/camerarecorder/LensFacing;->FRONT:Lorg/webrtc/haima/camerarecorder/LensFacing;

    .line 14
    .line 15
    if-ne v4, v5, :cond_0

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/webrtc/haima/camera/HmCameraManager;->startVideoSource(IIIZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
