.class Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hmwebrtc/Camera2Session;


# direct methods
.method private constructor <init>(Lorg/hmwebrtc/Camera2Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/hmwebrtc/Camera2Session;Lorg/hmwebrtc/Camera2Session$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;-><init>(Lorg/hmwebrtc/Camera2Session;)V

    return-void
.end method

.method public static synthetic a(Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;Lorg/hmwebrtc/VideoFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->lambda$onConfigured$0(Lorg/hmwebrtc/VideoFrame;)V

    return-void
.end method

.method private chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1700(Lorg/hmwebrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [I

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    const-string v3, "Camera2Session"

    .line 18
    .line 19
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    aget v4, v0, v2

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    if-ne v4, v5, :cond_0

    .line 25
    .line 26
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 27
    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "Using continuous video auto-focus."

    .line 36
    .line 37
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string p1, "Auto-focus is not available."

    .line 45
    .line 46
    invoke-static {v3, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1700(Lorg/hmwebrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [I

    .line 14
    .line 15
    const-string v1, "Camera2Session"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    array-length v6, v0

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_0
    if-ge v7, v6, :cond_1

    .line 32
    .line 33
    aget v8, v0, v7

    .line 34
    .line 35
    if-ne v8, v4, :cond_0

    .line 36
    .line 37
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 43
    .line 44
    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "Using optical stabilization."

    .line 48
    .line 49
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 57
    .line 58
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1700(Lorg/hmwebrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 63
    .line 64
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, [I

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    array-length v6, v0

    .line 73
    :goto_1
    if-ge v2, v6, :cond_3

    .line 74
    .line 75
    aget v7, v0, v2

    .line 76
    .line 77
    if-ne v7, v4, :cond_2

    .line 78
    .line 79
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 80
    .line 81
    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 85
    .line 86
    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const-string p1, "Using video stabilization."

    .line 90
    .line 91
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    const-string p1, "Stabilization not available."

    .line 99
    .line 100
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method private synthetic lambda$onConfigured$0(Lorg/hmwebrtc/VideoFrame;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$000(Lorg/hmwebrtc/Camera2Session;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$200(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lorg/hmwebrtc/Camera2Session$SessionState;->RUNNING:Lorg/hmwebrtc/Camera2Session$SessionState;

    .line 13
    .line 14
    const-string v2, "Camera2Session"

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const-string p1, "Texture frame captured but camera is no longer running."

    .line 19
    .line 20
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 25
    .line 26
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1800(Lorg/hmwebrtc/Camera2Session;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lorg/hmwebrtc/Camera2Session;->access$1802(Lorg/hmwebrtc/Camera2Session;Z)Z

    .line 36
    .line 37
    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iget-object v5, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 45
    .line 46
    invoke-static {v5}, Lorg/hmwebrtc/Camera2Session;->access$1900(Lorg/hmwebrtc/Camera2Session;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    sub-long/2addr v3, v5

    .line 51
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    long-to-int v0, v3

    .line 56
    invoke-static {}, Lorg/hmwebrtc/Camera2Session;->access$2000()Lorg/hmwebrtc/Histogram;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3, v0}, Lorg/hmwebrtc/Histogram;->addSample(I)V

    .line 61
    .line 62
    .line 63
    :cond_1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 64
    .line 65
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1200(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 72
    .line 73
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1200(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CaptureIdImageGenerator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lorg/hmwebrtc/CaptureIdImageGenerator;->getCaptureId()Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x0

    .line 83
    :goto_0
    if-eqz v0, :cond_3

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "mCaptureId:"

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v4, v0, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;->mCaptureId:I

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v4, " , mTrackId:"

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v4, v0, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;->mTrackId:I

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, ",cameraOrientation:"

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v4, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 116
    .line 117
    invoke-static {v4}, Lorg/hmwebrtc/Camera2Session;->access$1100(Lorg/hmwebrtc/Camera2Session;)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v4, ",isCameraFrontFacing:"

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 130
    .line 131
    invoke-static {v4}, Lorg/hmwebrtc/Camera2Session;->access$1300(Lorg/hmwebrtc/Camera2Session;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    iget-object v3, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 146
    .line 147
    invoke-static {v3}, Lorg/hmwebrtc/Camera2Session;->access$1300(Lorg/hmwebrtc/Camera2Session;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_4

    .line 152
    .line 153
    sget v3, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationFrontCamera2:I

    .line 154
    .line 155
    iget-object v4, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 156
    .line 157
    invoke-static {v4}, Lorg/hmwebrtc/Camera2Session;->access$1100(Lorg/hmwebrtc/Camera2Session;)I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    goto :goto_1

    .line 162
    :cond_4
    sget v3, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationBackCamera2:I

    .line 163
    .line 164
    iget-object v4, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 165
    .line 166
    invoke-static {v4}, Lorg/hmwebrtc/Camera2Session;->access$1100(Lorg/hmwebrtc/Camera2Session;)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    :goto_1
    sub-int/2addr v3, v4

    .line 171
    rem-int/lit16 v3, v3, 0x168

    .line 172
    .line 173
    new-instance v13, Lorg/hmwebrtc/VideoFrame;

    .line 174
    .line 175
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    check-cast v4, Lorg/hmwebrtc/TextureBufferImpl;

    .line 180
    .line 181
    iget-object v5, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 182
    .line 183
    invoke-static {v5}, Lorg/hmwebrtc/Camera2Session;->access$1300(Lorg/hmwebrtc/Camera2Session;)Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_6

    .line 188
    .line 189
    sget-boolean v5, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isFrontMirrorCamera2:Z

    .line 190
    .line 191
    if-nez v5, :cond_5

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_5
    const/4 v1, 0x0

    .line 195
    goto :goto_2

    .line 196
    :cond_6
    sget-boolean v1, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isBackMirrorCamera2:Z

    .line 197
    .line 198
    :goto_2
    invoke-static {v4, v1, v3}, Lorg/hmwebrtc/e;->a(Lorg/hmwebrtc/TextureBufferImpl;ZI)Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    iget-object v1, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 203
    .line 204
    invoke-static {v1}, Lorg/hmwebrtc/Camera2Session;->access$2100(Lorg/hmwebrtc/Camera2Session;)I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getTimestampNs()J

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    const/4 v1, -0x1

    .line 213
    if-eqz v0, :cond_7

    .line 214
    .line 215
    iget v4, v0, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;->mTrackId:I

    .line 216
    .line 217
    move v9, v4

    .line 218
    goto :goto_3

    .line 219
    :cond_7
    const/4 v9, -0x1

    .line 220
    :goto_3
    if-eqz v0, :cond_8

    .line 221
    .line 222
    iget v0, v0, Lorg/hmwebrtc/CaptureIdImageGenerator$CaptureInfo;->mCaptureId:I

    .line 223
    .line 224
    move v10, v0

    .line 225
    goto :goto_4

    .line 226
    :cond_8
    const/4 v10, -0x1

    .line 227
    :goto_4
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getInputTimestampMs()J

    .line 228
    .line 229
    .line 230
    move-result-wide v11

    .line 231
    move-object v4, v13

    .line 232
    invoke-direct/range {v4 .. v12}, Lorg/hmwebrtc/VideoFrame;-><init>(Lorg/hmwebrtc/VideoFrame$Buffer;IJIIJ)V

    .line 233
    .line 234
    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v0, "DeviceOrientation: "

    .line 241
    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 246
    .line 247
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$2200(Lorg/hmwebrtc/Camera2Session;)Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v0}, Lorg/hmwebrtc/e;->b(Landroid/content/Context;)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string v0, "cameraOrientation: "

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v0, "getFrameOrientation: "

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 272
    .line 273
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$2100(Lorg/hmwebrtc/Camera2Session;)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v0, ", isCameraFrontFacing: "

    .line 281
    .line 282
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 286
    .line 287
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$1300(Lorg/hmwebrtc/Camera2Session;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 302
    .line 303
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$500(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraSession$Events;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 308
    .line 309
    invoke-interface {p1, v0, v13}, Lorg/hmwebrtc/CameraSession$Events;->onFrameCaptured(Lorg/hmwebrtc/CameraSession;Lorg/hmwebrtc/VideoFrame;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v13}, Lorg/hmwebrtc/VideoFrame;->release()V

    .line 313
    .line 314
    .line 315
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$000(Lorg/hmwebrtc/Camera2Session;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 10
    .line 11
    const-string v0, "Failed to configure capture session."

    .line 12
    .line 13
    invoke-static {p1, v0}, Lorg/hmwebrtc/Camera2Session;->access$600(Lorg/hmwebrtc/Camera2Session;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$000(Lorg/hmwebrtc/Camera2Session;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Camera capture session configured."

    .line 7
    .line 8
    const-string v1, "Camera2Session"

    .line 9
    .line 10
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lorg/hmwebrtc/Camera2Session;->access$102(Lorg/hmwebrtc/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Session;->access$700(Lorg/hmwebrtc/Camera2Session;)Landroid/hardware/camera2/CameraDevice;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 49
    .line 50
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0}, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 62
    .line 63
    invoke-static {v2}, Lorg/hmwebrtc/Camera2Session;->access$1000(Lorg/hmwebrtc/Camera2Session;)Landroid/view/Surface;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v2, Lorg/hmwebrtc/Camera2Session$CameraCaptureCallback;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v2, v3}, Lorg/hmwebrtc/Camera2Session$CameraCaptureCallback;-><init>(Lorg/hmwebrtc/Camera2Session$1;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 81
    .line 82
    invoke-static {v3}, Lorg/hmwebrtc/Camera2Session;->access$1500(Lorg/hmwebrtc/Camera2Session;)Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {p1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 90
    .line 91
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$900(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance v0, Lorg/hmwebrtc/d;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lorg/hmwebrtc/d;-><init>(Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->startListening(Lorg/hmwebrtc/VideoSink;)V

    .line 101
    .line 102
    .line 103
    const-string p1, "Camera device successfully started."

    .line 104
    .line 105
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 109
    .line 110
    invoke-static {p1}, Lorg/hmwebrtc/Camera2Session;->access$400(Lorg/hmwebrtc/Camera2Session;)Lorg/hmwebrtc/CameraSession$CreateSessionCallback;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 115
    .line 116
    invoke-interface {p1, v0}, Lorg/hmwebrtc/CameraSession$CreateSessionCallback;->onDone(Lorg/hmwebrtc/CameraSession;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catch_0
    move-exception p1

    .line 121
    iget-object v0, p0, Lorg/hmwebrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/hmwebrtc/Camera2Session;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v2, "Failed to start capture request. "

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v0, p1}, Lorg/hmwebrtc/Camera2Session;->access$600(Lorg/hmwebrtc/Camera2Session;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
